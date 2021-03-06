DESTDIR	= /usr/local

APPS = rtkrcv rnx2rtkp str2str convbin pos2kml

# source files
SRC_DIR_1	 = src
SRC_DIR_2	 = src/rcv
SRC_DIR_MATH     = src/math
SRC_DIR_MATH_LSQ = src/math/lsq
SRC_DIR_GLO_IFB_PACK = src/extensions/glo_ifb
SRC_DIR_TDPD_PACK= src/extensions/tdiff_phases
SRC_DIR_APPS     = $(addprefix ./app/,$(APPS))
SRC_DIRS	 = $(SRC_DIR_1) $(SRC_DIR_2) $(SRC_DIR_MATH) $(SRC_DIR_MATH_LSQ) $(SRC_DIR_GLO_IFB_PACK) \
	$(SRC_DIR_TDPD_PACK) $(SRC_DIR_APPS)
IERS_DIR	 = lib/iers
vpath %.c $(SRC_DIRS)

SRC_NAMES_1  = $(notdir $(wildcard $(SRC_DIR_1)/*.c))
SRC_NAMES_2  = $(notdir $(wildcard $(SRC_DIR_2)/*.c))
SRC_NAMES_MATH = $(notdir $(wildcard $(SRC_DIR_MATH)/*.c))
SRC_NAMES_MATH_LSQ = $(notdir $(wildcard $(SRC_DIR_MATH_LSQ)/*.c))
SRC_NAMES_GLO_IFB_PACK = $(notdir $(wildcard $(SRC_DIR_GLO_IFB_PACK)/*.c))
SRC_NAMES_TDPD_PACK = $(notdir $(wildcard $(SRC_DIR_TDPD_PACK)/*.c))
SRC_NAMES_RTKRCV = rtkrcv.c vt.c
SRC_NAMES_RNX2RTKP = rnx2rtkp.c
SRC_NAMES_POS2KML = pos2kml.c
SRC_NAMES_CONVBIN = convbin.c
SRC_NAMES_STR2STR = str2str.c
SRC_NAMES    = $(SRC_NAMES_1) $(SRC_NAMES_2) $(SRC_NAMES_MATH) $(SRC_NAMES_MATH_LSQ) \
	$(SRC_NAMES_GLO_IFB_PACK) $(SRC_NAMES_TDPD_PACK)

# object files
OBJ_NAMES =$(patsubst %.c,%.o,$(SRC_NAMES))

# common compile options
INCLUDEDIR := -I$(SRC_DIR_1) -I$(SRC_DIR_MATH) -I$(SRC_DIR_MATH_LSQ) -I$(SRC_DIR_GLO_IFB_PACK) -I$(SRC_DIR_TDPD_PACK)
OPTIONS	   = -DTRACE -DENAGLO -DENAQZS -DENAGAL -DENACMP -DENAIRN -DNFREQ=3 -DSVR_REUSEADDR
CFLAGS_CMN = -std=c99 -pedantic -Wall -Werror -fpic -fno-strict-overflow -Wno-error=unused-but-set-variable \
					-Wno-error=unused-function -Wno-error=unused-result $(INCLUDEDIR) $(OPTIONS)
LDLIBS	   = lib/iers/gcc/iers.a -lm -lrt -lpthread
LDFLAGS    = -shared
TARGET_LIB = librtk.so

# target-specific options
REL_OPTS    = -O3 -DNDEBUG
PREREL_OPTS = -O3
DBG_OPTS    = -O0 -g

####################################################################
##### release / prerelease / debug targets

.DEFAULT_GOAL = all
.PHONY: all release prerelease debug mkdir install clean IERS deps \
		qt_apps qt_appimages qmake qt_debs make_qt clean_qt

all: release

REL_DIR    = build/release
PREREL_DIR = build/prerelease
DBG_DIR    = build/debug

# default dirs
BUILD_DIR = $(REL_DIR)
DEPDIR = build/release/.d

ifneq "$(findstring release, $(MAKECMDGOALS))" ""
 DEPDIR = build/release/.d
 BUILD_DIR=$(REL_DIR)
endif

ifneq "$(findstring prerelease, $(MAKECMDGOALS))" ""
 DEPDIR = build/prerelease/.d
 BUILD_DIR=$(PREREL_DIR)
endif

ifneq "$(findstring debug, $(MAKECMDGOALS))" ""
 DEPDIR = build/debug/.d
 BUILD_DIR=$(DBG_DIR)
endif

deps:
	 mkdir -p $(DEPDIR)
deps: DEPFLAGS = -MT $@ -MMD -MP -MF $(DEPDIR)/$*.Td
deps: POSTCOMPILE = @mv -f $(DEPDIR)/$*.Td $(DEPDIR)/$*.d && touch $@

LIB = $(addprefix $(BUILD_DIR)/,$(TARGET_LIB))
OBJS = $(addprefix $(BUILD_DIR)/src/,$(OBJ_NAMES))

release: deps
release: IERS
release: CFLAGS  = $(CFLAGS_CMN) $(REL_OPTS)
release: mkdir
release: $(LIB) | $(APPS)

prerelease: deps
prerelease: IERS
prerelease: CFLAGS  = $(CFLAGS_CMN) $(PREREL_OPTS)
prerelease: mkdir
prerelease: $(LIB) | $(APPS)

debug: deps
debug: IERS
debug: CFLAGS  = $(CFLAGS_CMN) $(DBG_OPTS)
debug: mkdir
debug: |$(LIB) $(APPS)

####################################################################
IERS:
	@$(MAKE) -C $(IERS_DIR)/gcc
# release lib
$(LIB):  $(OBJS)
	$(CC) $(LDFLAGS) $^ -o $@ $(LDLIBS)

$(BUILD_DIR)/src/%.o: %.c  $(DEPDIR)/%.d
	$(CC) $(DEPFLAGS) -c $(CFLAGS) -fpic -DSHARED $< -o $@
	$(POSTCOMPILE)

$(DEPDIR)/%.d: ;
.PRECIOUS: $(DEPDIR)/%.d
####################################################################

# apps
rtkrcv: $(addprefix $(BUILD_DIR)/app/, $(SRC_NAMES_RTKRCV:%.c=%.o)) | $(LIB)
	$(CC) $^ -o $(BUILD_DIR)/$@ $(LDLIBS)  -L$(BUILD_DIR) -lrtk

rnx2rtkp: $(addprefix $(BUILD_DIR)/app/, $(SRC_NAMES_RNX2RTKP:%.c=%.o)) | $(LIB)
	$(CC) $^ -o $(BUILD_DIR)/$@ $(LDLIBS) -L$(abspath $(BUILD_DIR)) -lrtk

pos2kml: $(addprefix $(BUILD_DIR)/app/, $(SRC_NAMES_POS2KML:%.c=%.o))  | $(LIB)
	$(CC) $^ -o $(BUILD_DIR)/$@ $(LDLIBS) -L$(BUILD_DIR) -lrtk

convbin: $(addprefix $(BUILD_DIR)/app/, $(SRC_NAMES_CONVBIN:%.c=%.o)) | $(LIB)
	$(CC) $^ -o $(BUILD_DIR)/$@ $(LDLIBS) -L$(BUILD_DIR) -lrtk

str2str: $(addprefix $(BUILD_DIR)/app/, $(SRC_NAMES_STR2STR:%.c=%.o)) | $(LIB)
	$(CC) $^ -o $(BUILD_DIR)/$@ $(LDLIBS) -L$(BUILD_DIR) -lrtk

$(BUILD_DIR)/app/%.o: %.c $(DEPDIR)/%.d
	$(CC) $(DEPFLAGS) -c $(CFLAGS) $< -o $@
	$(POSTCOMPILE)

####################################################################

mkdir:
	mkdir -p $(addsuffix /src, $(BUILD_DIR)) \
			  $(addsuffix /app, $(BUILD_DIR))
install:
	cp $(LIB) $(addprefix $(DESTDIR), /lib)
	cp $(addprefix $(BUILD_DIR)/, $(APPS)) $(addprefix $(DESTDIR), /bin)


clean: clean_qt
	rm -rf build/
	@$(MAKE) -C $(IERS_DIR)/gcc clean

include $(wildcard $(patsubst %,$(DEPDIR)/%.d,$(basename $(SRC_NAMES))))

####################################################################
LINUX_DEPLOY_QT = $(realpath squashfs-root/usr/bin/linuxdeployqt)
qt_apps: qmake make_qt

qmake:
	qmake RTKLib.pro -spec linux-g++ -o QtMakefile

make_qt: qmake
	make -f QtMakefile -j `nproc`

clean_qt:
	make -f QtMakefile clean -j `nproc`
	rm QtMakefile
	rm -rf build/Qt
	rm -rf $(LINUX_DEPLOY_QT)
	rm -rf ./linuxdeployqt-continuous-x86_64.AppImage

linuxdeployqt-continuous-x86_64.AppImage:
	curl -LOJ 'https://github.com/probonopd/linuxdeployqt/releases/download/continuous/linuxdeployqt-continuous-x86_64.AppImage'
	chmod +x linuxdeployqt-continuous-x86_64.AppImage
	./linuxdeployqt-continuous-x86_64.AppImage --appimage-extract

qt_appimages: qt_apps linuxdeployqt-continuous-x86_64.AppImage
	./util/build_scripts/AppImageDeploy.sh $(LINUX_DEPLOY_QT)

qt_debs: qt_apps
	./util/build_scripts/debdeploy.sh

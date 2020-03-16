# makefile for iers.a

SRC      = ../src

FC = gfortran
FCFLAGS = -O3 -ffixed-line-length-132

OBS = cal2jd.o dat.o dehanttideinel.o gmf.o gpt.o norm8.o sprod.o st1idiu.o \
      st1isem.o st1l1.o step2diu.o step2lon.o vmf1.o vmf1_ht.o zero_vec8.o

iers.a     : $(OBS)
	ar r iers.a $(OBS)
cal2jd.o   : $(SRC)/cal2jd.f
	$(FC) -c $(FCFLAGS) $(SRC)/cal2jd.f
dat.o      : $(SRC)/dat.f
	$(FC) -c $(FCFLAGS) $(SRC)/dat.f
dehanttideinel.o : $(SRC)/dehanttideinel.f
	$(FC) -c $(FCFLAGS) $(SRC)/dehanttideinel.f
gmf.o      : $(SRC)/gmf.f
	$(FC) -c $(FCFLAGS) $(SRC)/gmf.f
gpt.o      : $(SRC)/gpt.f
	$(FC) -c $(FCFLAGS) $(SRC)/gpt.f
norm8.o    : $(SRC)/norm8.f
	$(FC) -c $(FCFLAGS) $(SRC)/norm8.f
sprod.o    : $(SRC)/sprod.f
	$(FC) -c $(FCFLAGS) $(SRC)/sprod.f
st1idiu.o  : $(SRC)/st1idiu.f
	$(FC) -c $(FCFLAGS) $(SRC)/st1idiu.f
st1isem.o  : $(SRC)/st1isem.f
	$(FC) -c $(FCFLAGS) $(SRC)/st1isem.f
st1l1.o    : $(SRC)/st1l1.f
	$(FC) -c $(FCFLAGS) $(SRC)/st1l1.f
step2diu.o : $(SRC)/step2diu.f
	$(FC) -c $(FCFLAGS) $(SRC)/step2diu.f
step2lon.o : $(SRC)/step2lon.f
	$(FC) -c $(FCFLAGS) $(SRC)/step2lon.f
vmf1.o     : $(SRC)/vmf1.f
	$(FC) -c $(FCFLAGS) $(SRC)/vmf1.f
vmf1_ht.o  : $(SRC)/vmf1_ht.f
	$(FC) -c $(FCFLAGS) $(SRC)/vmf1_ht.f
zero_vec8.o: $(SRC)/zero_vec8.f
	$(FC) -c $(FCFLAGS) $(SRC)/zero_vec8.f

clean :
	rm -f *.o *.a


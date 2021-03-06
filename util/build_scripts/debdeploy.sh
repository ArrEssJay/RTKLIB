#!/bin/bash
RELEASE_DIR="build/Qt/rtklib-linux-x86_64-2.4.3"
RELEASE_TARGET="rtklib-qt-linux-x64_1.0_amd64.deb"


rm -rf $RELEASE_DIR
mkdir -p $RELEASE_DIR
cp -f -t $RELEASE_DIR   app/rtkpost_qt/rtkpost_qt app/rtkpost_qt/rtkpost_Icon.ico \
                        app/rtkplot_qt/rtkplot_qt app/rtkplot_qt/rtkplot_Icon.ico \
                        app/rtkconv_qt/rtkconv_qt app/rtkconv_qt/rtkconv_Icon.ico \
                        app/rtknavi_qt/rtknavi_qt app/rtknavi_qt/rtknavi_Icon.ico \
                        util/deb_deploy_data/rtkpost_qt.desktop \
                        util/deb_deploy_data/rtkplot_qt.desktop \
                        util/deb_deploy_data/rtkconv_qt.desktop \
                        util/deb_deploy_data/rtknavi_qt.desktop \
                        util/deb_deploy_data/after-install.sh

fpm -s dir -t deb -n $RELEASE_TARGET -p $RELEASE_DIR/$RELEASE_TARGET --depends qt5-default --depends libqt5serialport5 \
    --after-install $RELEASE_DIR/after-install.sh \
    $RELEASE_DIR/rtkconv_qt=/usr/bin/ \
    $RELEASE_DIR/rtknavi_qt=/usr/bin/ \
    $RELEASE_DIR/rtkpost_qt=/usr/bin/ \
    $RELEASE_DIR/rtkplot_qt=/usr/bin/ \
    $RELEASE_DIR/rtkconv_qt.desktop=/usr/share/applications/ \
    $RELEASE_DIR/rtkconv_Icon.ico=/usr/share/pixmaps/ \
    $RELEASE_DIR/rtknavi_qt.desktop=/usr/share/applications/ \
    $RELEASE_DIR/rtknavi_Icon.ico=/usr/share/pixmaps/ \
    $RELEASE_DIR/rtkpost_qt.desktop=/usr/share/applications/ \
    $RELEASE_DIR/rtkpost_Icon.ico=/usr/share/pixmaps/ \
    $RELEASE_DIR/rtkplot_qt.desktop=/usr/share/applications/ \
    $RELEASE_DIR/rtkplot_Icon.ico=/usr/share/pixmaps/

md5sum $RELEASE_DIR/$RELEASE_TARGET > $RELEASE_DIR/$RELEASE_TARGET".md5"

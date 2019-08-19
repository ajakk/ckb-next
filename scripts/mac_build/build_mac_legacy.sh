#!/bin/bash
mkdir build
cd build
Qt5_DIR=~/Qt5.6.2/5.6/clang_64/ cmake -DCMAKE_BUILD_TYPE=Release -DSAFE_INSTALL=ON -DSAFE_UNINSTALL=ON -DMAC_LEGACY=1 .. -DUSE_BREW_QUAZIP=0 -DUSE_BREW_QT5=0 -DUSE_PORTAUDIO=1
make -j4 macos-package

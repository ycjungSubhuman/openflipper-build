#!/bin/bash

cd build &&
    CC=/usr/bin/gcc-6 CXX=/usr/bin/g++-6 cmake ../OpenFlipper-3.1 &&
    MAKEFLAGS="-j$(expr $(nproc) \+ 1)" make

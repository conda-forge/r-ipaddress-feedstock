#!/bin/bash
export DISABLE_AUTOBREW=1

## tolerate older osx sdk
export PKG_CPPFLAGS="-D_LIBCPP_DISABLE_AVAILABILITY"

${R} CMD INSTALL --build . ${R_ARGS}

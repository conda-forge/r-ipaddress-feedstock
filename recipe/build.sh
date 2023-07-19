#!/bin/bash
export DISABLE_AUTOBREW=1

if [[ $target_platform =~ .*osx.* ]]; then
  ## stick with C++14
  echo "CXX_STD=CXX14" >> src/Makevars
fi

${R} CMD INSTALL --build . ${R_ARGS}

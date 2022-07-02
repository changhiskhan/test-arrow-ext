#!/usr/bin/bash

rm -rf *.so
INC_PYARROW=$(python -c 'import pyarrow; print(pyarrow.get_include())')
LIB=$(python -c 'import pyarrow; print(pyarrow.get_library_dirs()[0])')
g++ -fPIC \
  -I${INC_INC_PYARROW} \
  $(python3-config --includes) \
  test.cc \
  -shared -o libtest.so \
  -L$LIB \
  -larrow -larrow_dataset -larrow_python

python test.py

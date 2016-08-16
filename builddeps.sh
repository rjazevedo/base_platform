#!/bin/bash

BASE=$PWD
cd ${BASE}/systemc
./autogen.sh
./configure --prefix=${BASE}/install/systemc
make all install

cd ${BASE}/archc
./autogen.sh
./configure --prefix=${BASE}/install/archc --with-systemc=${BASE}/install/systemc
make all install

cd ${BASE}
ln -s install/archc/etc/env.sh acenv.sh

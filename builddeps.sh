#!/bin/bash

BASE=$PWD

echo "Downloading submodules..." 
git submodule update --init --recursive

echo "Installing SystemC..."
cd ${BASE}/systemc
./autogen.sh
./configure --prefix=${BASE}/install/systemc
make all install

echo "Installing ArchC..."
cd ${BASE}/archc
./autogen.sh
./configure --prefix=${BASE}/install/archc --with-systemc=${BASE}/install/systemc
make all install

echo "Installing GCC for MIPS..."
cd ${BASE}/install
wget http://archc.lsc.ic.unicamp.br/downloads/Tools/mips/archc_mips_toolchain_20141215_64bit.tar.bz2
tar -jxf archc_mips_toolchain_20141215_64bit.tar.bz2 
rm -f archc_mips_toolchain_20141215_64bit.tar.bz2

cd ${BASE}
cp install/archc/etc/env.sh acenv.sh
echo "export PATH=${BASE}/install/mips-newlib-elf/bin:\$PATH" >> acenv.sh


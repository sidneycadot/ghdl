#! /bin/sh

. ../../testenv.sh

export GHDL_STD_FLAGS=--std=08
analyze example.vhdl
elab_simulate example

clean

echo "Test successful"
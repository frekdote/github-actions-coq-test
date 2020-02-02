#!/usr/bin/env sh

coq_makefile -f _CoqProject *.v -o Makefile
make
r=$?
make clean
exit $r

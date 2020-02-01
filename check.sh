#!/usr/bin/env bash

PATH=$PATH:/home/coq/.opam/$COMPILER/bin

coq_makefile -f _CoqProject *.v -o Makefile
make
r=$?
make clean
exit $r

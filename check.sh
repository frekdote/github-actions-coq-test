#!/usr/bin/env bash

eval $(opam env)

coq_makefile -f _CoqProject *.v -o Makefile
make
r=$?
make clean
exit $r

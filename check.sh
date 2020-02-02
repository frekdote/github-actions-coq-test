#!/usr/bin/env sh

eval $(opam env)
env

coq_makefile -f _CoqProject *.v -o Makefile
make
r=$?
make clean
exit $r

#!/usr/bin/env sh

env
echo "----------"

yes "n" | opam init

coq_makefile -f _CoqProject *.v -o Makefile
make
r=$?
make clean
exit $r

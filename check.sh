#!/usr/bin/env sh

sudo chown -R coq:coq /workspace

coq_makefile -f _CoqProject *.v -o Makefile
make
r=$?
make clean
exit $r

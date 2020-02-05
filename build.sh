#!/usr/bin/env sh

eval $(opam env)
sudo chown -R coq:coq $GITHUB_WORKSPACE

coq_makefile -f _CoqProject *.v -o Makefile
make

Set Warnings "-notation-overridden".
From mathcomp Require Import all_ssreflect.
Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Lemma lem :
  forall s n, n \in s -> n <= \max_(x <- s) x.
Proof.
  elim => // h t IHt n.
  rewrite -foldrE /= in_cons => /orP [/eqP-> | H].
  - by rewrite leq_maxl.
  - rewrite foldrE (@leq_trans (\max_(x <- t) x)) //.
    + by apply: IHt.
    + by rewrite leq_maxr.
Qed.

Theorem th :
  forall (s : seq nat), exists n, n \notin s.
Proof.
  move=> s.
  set mx := \max_(x <- s) x.
  exists mx.+1.
  apply/memPn => x Hx.
  rewrite neq_ltn.
  have -> // : x < mx.+1.
  rewrite ltnS lem //.
Qed.

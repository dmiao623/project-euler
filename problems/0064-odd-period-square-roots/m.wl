(* ::Package:: *)

(* ::Input:: *)
(*continuedFracLen[x_]:=If[IntegerQ[Sqrt[x]],0,Length[ContinuedFraction[Sqrt[x]][[2]]]]*)


(* ::Input:: *)
(*n=10000;*)
(*g=Table[f[x],{x,2,n}];*)
(*ans=Length[Select[Table[continuedFracLen[x],{x,2,n}],OddQ]];*)


(* ::Input:: *)
(*Export[NotebookDirectory[]<>"answer.txt",ans];*)

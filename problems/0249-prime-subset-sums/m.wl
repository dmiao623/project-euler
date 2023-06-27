(* ::Package:: *)

(* ::Input:: *)
(*primes=Select[Range[2,5000],PrimeQ];*)


(* ::Input:: *)
(*poly={1};*)
(*For[i=1,i<=Length[primes],i++,*)
(*poly=ListConvolve[poly,Reverse[Join[{1},ConstantArray[0,primes[[i]]-1],{1}]],{1,-1},0]*)
(*]*)


(* ::Input:: *)
(*ans=0;*)
(*p=2;*)
(*While[p<=Length[poly]-1,*)
(*ans=Mod[ans+If[PrimeQ[p],poly[[p+1]],0],10^16];*)
(*p=NextPrime[p]*)
(*]*)


(* ::Input:: *)
(*Export[NotebookDirectory[]<>"answer.txt",ans];*)

(* ::Package:: *)

(* ::Input:: *)
(*n=1000;*)


(* ::Input:: *)
(*PellSolve[(m_Integer)?Positive]:=Module[{cf,n,s},cf=ContinuedFraction[Sqrt[m]];n=Length[Last[cf]];If[n==0,Return[{}]];If[OddQ[n],n=2n];s=FromContinuedFraction[ContinuedFraction[Sqrt[m],n]];{Numerator[s],Denominator[s]}];*)
(*xs=DeleteCases[PellSolve/@Range[n],{}][[All,1]] ;*)


(* ::Input:: *)
(*m=0;*)
(*w=-1;*)
(*p=1;*)
(*For[i=1,i<=Length[xs],i++,*)
(*If[Floor[Sqrt[i]]^2==i,p+=1,If[xs[[i]]>m,m=xs[[i]];w=p,Nothing]];*)
(*p+=1*)
(*]*)


(* ::Input:: *)
(*Export[NotebookDirectory[]<>"answer.txt",w];*)

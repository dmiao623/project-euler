(* ::Package:: *)

(* ::Input:: *)
(*height[x_,y_]=(5000-0.005*(x*x+y*y+x*y)+12.5*(x+y))*Exp[-Abs[0.000001*(x*x+y*y)-0.0015*(x+y)+0.7]];*)
(*startPoint3D={200,200,height[200,200]};*)
(*endPoint3D={1400,1400,height[1400,1400]};*)
(*startPoint2D={200,200};*)
(*endPoint2D={1400,1400};*)


(* ::Input:: *)
(*Show[*)
(*Plot3D[height[x,y],{x,0,1600},{y,0,1600},ColorFunction->"Rainbow",ImageSize->Large],*)
(*ListPointPlot3D[{{Style[startPoint3D,Black],Style[endPoint3D,Black]}}]*)
(*]*)
(*Show[*)
(*ContourPlot[height[x,y],{x,0,1600},{y,0,1600},Contours->30,ImageSize->Large,PlotLegends->Automatic,ColorFunction->"Rainbow"],*)
(*Graphics[{PointSize[Large],Point[startPoint2D],Point[endPoint2D]}]*)
(*]*)
(*Manipulate[*)
(*Show[*)
(*ContourPlot[height[x,y]==h,{x,0,1600},{y,0,1600},Contours->10,ImageSize->Large,PlotLegends->Automatic,ColorFunction->"Rainbow"],*)
(*Graphics[{PointSize[Large],Point[startPoint2D],Point[endPoint2D]}]*)
(*],*)
(*{h,10000,13000,100}*)
(*]*)


(* ::Input:: *)
(*leftWall[y_]=height[0,y]*)
(*Plot[leftWall[y],{y,0,1600}]*)
(*topWall[x_]=height[x,1600]*)
(*Plot[topWall[x],{x,0,1600}]*)


(* ::Input:: *)
(*altitude=Max[FindMaximum[leftWall[x],{x,1000}][[1]],FindMaximum[topWall[x],{x,1000}][[1]]]*)
(*altitudePlot=ContourPlot[height[x,y]==altitude,{x,0,1600},{y,0,1600},Contours->10,ImageSize->Large,PlotLegends->Automatic,ColorFunction->"Rainbow"]*)
(*altitudePoints=Cases[Normal[altitudePlot],Line[x_]:>x,Infinity];*)
(*altitudeBorderPoints=altitudePoints[[2]];*)
(*filteredBorderPoints=Select[altitudeBorderPoints,#[[1]]<#[[2]]&];*)
(*ListPlot[altitudePoints,PlotRange->{{0,1600},{0,1600}}]*)
(*ListPlot[altitudeBorderPoints,PlotRange->{{0,1600},{0,1600}}]*)
(*ListPlot[filteredBorderPoints,PlotRange->{{0,1600},{0,1600}}]*)


(* ::Input:: *)
(*filteredBorderPath=First[FindCurvePath[Standardize[filteredBorderPoints]]];*)
(*filteredBorderParametric=Interpolation[MapIndexed[{#2[[1]],#1}&,filteredBorderPoints[[filteredBorderPath]]]];*)
(*Show[*)
(*ParametricPlot[filteredBorderParametric[t],{t,1,Length[filteredBorderPath]},PlotRange->{{0,1600},{0,1600}},ImageSize->Large],*)
(*ListPlot[filteredBorderPoints]*)
(*]*)


(* ::Input:: *)
(*lineIntersection[l1_,l2_]:=Length[Graphics`Mesh`FindIntersections[{l1,l2}]]>0*)

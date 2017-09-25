(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.1' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[     36068,        877]
NotebookOptionsPosition[     35929,        848]
NotebookOutlinePosition[     36377,        868]
CellTagsIndexPosition[     36334,        865]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
DECOMPOSITION INTO A DIRECT SUM OF THE PRODUCT OF IRREDUCIBLE REPRESENTATIONS \
OF SU(n)  -  Interface - Manual update of components.\
\>", "Subsection",
 CellFrame->{{0, 0}, {1, 0}},
 CellFrameColor->RGBColor[0.87, 0.87, 0.87],
 FontFamily->"Helvetica",
 FontSize->12,
 FontWeight->"Bold",
 FontColor->RGBColor[
  0.597406, 0, 
   0.0527047],ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[BoxData[
 DynamicModuleBox[{$CellContext`rows$$ = 2, $CellContext`cols$$ = 
  3, $CellContext`mat$$ = {{0, 3, 0}, {1, 2, 3}}, $CellContext`myRange$$}, 
  DynamicBox[ToBoxes[
    Manipulate[
     Row[{
       Invisible[$CellContext`doit], "Product decomposition", 
       MatrixForm[$CellContext`mat$$], " = ", 
       (CheckAbort[
        If[Length[#] > 800, 
         Abort[], #], 
        Print[
        "Output too large: the number of inequivalent irreps should be \
smaller than ", 800]]& )[
        TimeConstrained[
         shorttensorProdIrrepPackage`tenspromatform[$CellContext`mat$$], 1.5, 
         
         Print[
         "More time needed: the computation is terminated if it takes more \
than ", 1.5, " seconds"]]]}], 
     Evaluate[
      With[{$CellContext`makeRow$ = Function[{$CellContext`rowIndex$}, 
          Map[
           Function[{$CellContext`colIndex$}, 
            InputField[
             Dynamic[
              
              Part[$CellContext`mat$$, $CellContext`rowIndex$, \
$CellContext`colIndex$]], Number, FieldSize -> 3]], 
           $CellContext`myRange$$[$CellContext`cols$$]], HoldAll]}, 
       Row[{
         Grid[
          Map[$CellContext`makeRow$, 
           $CellContext`myRange$$[$CellContext`rows$$]]], 
         Invisible["xxxxxx"], 
         Column[{
          "Tensor product of two irreducible representations specified by \
their higest weight.", 
           "Lines refer to the n-1 components of the chosen highest weights \
in the basis of fundamental weights (Dynkin basis)."}]}]]], 
     Row[{
       Panel[
        Style[$CellContext`cols$$ + 1, FontSize -> 14, Bold], 
        Style["SU(n), with n =", Bold, FontSize -> 14], Left, 
        BaselinePosition -> Bottom], 
       Button[
        Style["Update", Bold, FontSize -> 14, Blue], 
        Increment[$CellContext`rows$$]; Decrement[$CellContext`rows$$]; Null], 
       Panel[
        Style[
         Column[{
          "Product of irreducible", "representations of SU(n)", 
           "Decomposition into direct sum"}, Center], "Title"]]}, 
      Invisible["xxxxxx"]], 
     Column[{
      "The result is a list of pairs:", 
       "The first element gives the components of each term of the \
decomposition.", "the second element gives its multiplicity."}], 
     Button["Decrease n", 
      If[$CellContext`rows$$ > 
       1, $CellContext`mat$$ = Map[Drop[#, -1]& , $CellContext`mat$$]; 
       Decrement[$CellContext`cols$$]; Null]], 
     Button["Increase n", $CellContext`mat$$ = Transpose[
         Append[
          Transpose[$CellContext`mat$$], 
          Table[0, {1 + 1}]]]; Increment[$CellContext`cols$$]; 
      Null], {{$CellContext`doit, 0, ""}, {0}, ControlType -> None}, 
     TrackedSymbols :> {$CellContext`doit}], StandardForm],
   ImageSizeCache->{985., {243., 249.}}],
  SynchronousUpdating -> False,
  DynamicModuleValues:>{{DownValues[$CellContext`myRange$$] = {HoldPattern[
         $CellContext`myRange$$[
          Pattern[$CellContext`s, 
           Blank[]]]] :> Range[$CellContext`s]}}},
  Initialization:>{shorttensorProdIrrepPackage`tenspromatform[
      Pattern[Private`mat, 
       Blank[]]] := 
    Apply[shorttensorProdIrrepPackage`tensorproduct, Private`mat], 
    TagSet[shorttensorProdIrrepPackage`tenspromatform, 
     MessageName[shorttensorProdIrrepPackage`tenspromatform, "usage"], 
     "tenspromatform[{lambda,mu}] returns tensorproduct[lambda,mu]"], 
    shorttensorProdIrrepPackage`tensorproduct[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}] := 
    If[Length[{Private`lam}] == Length[{Private`mu}], 
      Switch[
       ValueQ[shorttensorProdIrrepPackage`currentgroup], False, 
       shorttensorProdIrrepPackage`oblade[Length[{Private`lam}] + 1]; 
       shorttensorProdIrrepPackage`tensorproduct[{Private`lam}, {Private`mu}],
        True, 
       If[
       Length[{Private`lam}] == shorttensorProdIrrepPackage`currentgroup - 1, 
        
        SortBy[
         Tally[
          Map[Reverse, 
           Private`tensorproductCC[{Private`lam}, {Private`mu}]]], Last], 
        shorttensorProdIrrepPackage`oblade[Length[{Private`lam}] + 1]; 
        shorttensorProdIrrepPackage`tensorproduct[{Private`lam}, {
          Private`mu}]]], 
      Print["Weights should have the same number of components"]], 
    TagSet[shorttensorProdIrrepPackage`tensorproduct, 
     MessageName[shorttensorProdIrrepPackage`tensorproduct, "usage"], 
     "tensorproduct[lambda,mu] returns the decomposition into irreducible \
components nu of a tensor product of two irreps lambda, mu, of the Lie group \
SU(n), given by the components of their highest weights along the basis of \
fundamental weights.  The last entry of each term is its multiplicity."], 
    shorttensorProdIrrepPackage`currentgroup = 4, 
    TagSet[shorttensorProdIrrepPackage`currentgroup, 
     MessageName[shorttensorProdIrrepPackage`currentgroup, "usage"], 
     "currentgroup returns the argument n of the group SU(n) currently in \
use."], shorttensorProdIrrepPackage`oblade[
      Pattern[Private`var, 
       Blank[]]] := 
    With[{Private`NN = Private`var}, Private`lambdaequations = And[
         Apply[And, 
          Table[Private`lambda[Private`p, 0, 0] == Sum[
             Private`j[
             Private`p, Private`NN - (Private`s + Private`p), Private`s], {
             Private`s, 0, Private`NN - Private`p}], {
           Private`p, 1, Private`NN - 1}]], 
         Apply[And, 
          Table[Private`lambda[0, Private`p, 0] == Sum[
             Private`j[
             Private`s, Private`p, Private`NN - (Private`s + Private`p)], {
             Private`s, 0, Private`NN - Private`p}], {
           Private`p, 1, Private`NN - 1}]], 
         Apply[And, 
          Table[Private`lambda[0, 0, Private`p] == Sum[
             Private`j[
             Private`s, Private`NN - (Private`s + Private`p), Private`p], {
             Private`s, 0, Private`NN - Private`p}], {
           Private`p, 1, Private`NN - 1}]]]; 
      Private`edgesEW[Private`NN] = Table[
         FoldList[Plus][
          Table[
           Private`j[
           Private`t, Private`NN - Private`s, Private`s - Private`t], {
           Private`s, Private`t, Private`NN - 1}]], {
         Private`t, 1, Private`NN - 1}]; Private`edgesNESW[Private`NN] = Table[
         FoldList[Plus][
          Table[
           Private`j[
           Private`s - Private`p, Private`p, Private`NN - Private`s], {
           Private`s, Private`p, Private`NN - 1}]], {
         Private`p, 1, Private`NN - 1}]; Private`edgesNWSE[Private`NN] = Table[
         FoldList[Plus][
          Table[
           Private`j[
           Private`NN - Private`s, Private`s - Private`p, Private`p], {
           Private`s, Private`p, Private`NN - 1}]], {
         Private`p, 1, Private`NN - 1}]; Private`edgesEWlabels[
         Pattern[Private`lev, 
          Blank[]]] := Table[
         Take[
          
          Table[(1/2) (4 + Private`p + Private`p^2) + (Private`lev - 1), {
           Private`p, Private`lev, Private`NN}], {
          Private`z, Private`z + 1}], {
         Private`z, 1, Private`NN - Private`lev}]; Private`edgesNESWlabels[
         Pattern[Private`lev, 
          Blank[]]] := Table[
         Take[
          
          Table[(1/2) (3 Private`p + Private`p^2) + (1/2) (Private`lev - 1) 
            Private`lev + (Private`lev - 1) Private`p, {
           Private`p, 1, Private`NN}], {Private`z, Private`z + 1}], {
         Private`z, 1, Private`NN - Private`lev}]; Private`edgesNWSElabels[
         Pattern[Private`lev, 
          Blank[]]] := Table[
         Take[
          Range[
          1 + (1/2) (-Private`lev + Private`NN) (1 - Private`lev + 
             Private`NN), 1 - Private`lev + 
           Private`NN + (1/2) (-Private`lev + Private`NN) (1 - Private`lev + 
             Private`NN)], {Private`z, Private`z + 1}], {
         Private`z, 1, Private`NN - Private`lev}]; Private`components = Join[
         Table[
          Table[
           Private`j[
           Private`p, Private`NN - (Private`s + Private`p), Private`s], {
           Private`s, 0, Private`NN - Private`p}], {
          Private`p, 1, Private`NN - 1}], 
         Table[
          Table[
           Private`j[
           Private`s, Private`p, Private`NN - (Private`s + Private`p)], {
           Private`s, 0, Private`NN - Private`p}], {
          Private`p, 1, Private`NN - 1}], 
         Table[
          Table[
           Private`j[
           Private`s, Private`NN - (Private`s + Private`p), Private`p], {
           Private`s, 0, Private`NN - Private`p}], {
          Private`p, 1, Private`NN - 1}]]; 
      Private`fundamentalcomponents = Union[
         Flatten[Private`components]]; Private`positivityconstraints = And[
         Apply[And, 
          Map[# >= 0& , 
           Flatten[
            Private`edgesEW[Private`NN]]]], 
         Apply[And, 
          Map[# >= 0& , 
           Flatten[
            Private`edgesNESW[Private`NN]]]], 
         Apply[And, 
          Map[# >= 0& , 
           Flatten[
            Private`edgesNWSE[Private`NN]]]]]; Private`buildlambdainput[{
          Pattern[Private`l1, 
           BlankSequence[]]}, {
          Pattern[Private`l2, 
           BlankSequence[]]}] := Flatten[{
          MapThread[Rule, {
            Table[
             Private`lambda[Private`p, 0, 0], {
             Private`p, 1, Private`NN - 1}], {Private`l1}}], 
          MapThread[Rule, {
            Table[
             Private`lambda[0, Private`p, 0], {
             Private`p, 1, Private`NN - 1}], {Private`l2}}]}]; 
      Private`buildlambdainput[{
          Pattern[Private`l1, 
           BlankSequence[]]}, {
          Pattern[Private`l2, 
           BlankSequence[]]}, {
          Pattern[Private`l3, 
           BlankSequence[]]}] := Flatten[{
          MapThread[Rule, {
            Table[
             Private`lambda[Private`p, 0, 0], {
             Private`p, 1, Private`NN - 1}], {Private`l1}}], 
          MapThread[Rule, {
            Table[
             Private`lambda[0, Private`p, 0], {
             Private`p, 1, Private`NN - 1}], {Private`l2}}], 
          MapThread[Rule, {
            Table[
             Private`lambda[0, 0, Private`p], {
             Private`p, 1, Private`NN - 1}], {Private`l3}}]}]; 
      Private`componentsEdgesAndnuc[{
          Pattern[Private`lam, 
           BlankSequence[]]}, {
          Pattern[Private`mu, 
           BlankSequence[]]}] := (
        Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}] = 
        Module[{Private`redsol, Private`locrules, Private`nuclist, 
           Private`fundcompval, Private`edgesEWValues, 
           Private`edgesNESWValues, Private`edgesNWSEValues}, 
          Private`redsol = Solve[
             And[
              ReplaceAll[Private`lambdaequations, 
               Private`buildlambdainput[{Private`lam}, {Private`mu}]], 
              Private`positivityconstraints], Integers]; 
          Private`nuclist = ReplaceAll[
             Table[
              Private`lambda[0, 0, Private`p], {
              Private`p, 1, Private`NN - 1}], 
             Private`redsol]; {{}, {}, {}, {}, Private`nuclist}]); 
      shorttensorProdIrrepPackage`currentgroup = Private`NN], 
    TagSet[shorttensorProdIrrepPackage`oblade, 
     MessageName[shorttensorProdIrrepPackage`oblade, "usage"], 
     "Evaluation of oblade[n] initializes all relevant data for SU(n). It \
returns n and set the variable currentgroup to n."], Private`lambdaequations = 
    And[Private`lambda[1, 0, 0] == 
      Private`j[1, 0, 3] + Private`j[1, 1, 2] + Private`j[1, 2, 1] + 
       Private`j[1, 3, 0], Private`lambda[2, 0, 0] == 
      Private`j[2, 0, 2] + Private`j[2, 1, 1] + Private`j[2, 2, 0], 
      Private`lambda[3, 0, 0] == Private`j[3, 0, 1] + Private`j[3, 1, 0], 
      Private`lambda[0, 1, 0] == 
      Private`j[0, 1, 3] + Private`j[1, 1, 2] + Private`j[2, 1, 1] + 
       Private`j[3, 1, 0], Private`lambda[0, 2, 0] == 
      Private`j[0, 2, 2] + Private`j[1, 2, 1] + Private`j[2, 2, 0], 
      Private`lambda[0, 3, 0] == Private`j[0, 3, 1] + Private`j[1, 3, 0], 
      Private`lambda[0, 0, 1] == 
      Private`j[0, 3, 1] + Private`j[1, 2, 1] + Private`j[2, 1, 1] + 
       Private`j[3, 0, 1], Private`lambda[0, 0, 2] == 
      Private`j[0, 2, 2] + Private`j[1, 1, 2] + Private`j[2, 0, 2], 
      Private`lambda[0, 0, 3] == Private`j[0, 1, 3] + Private`j[1, 0, 3]], 
    Private`edgesEW[4] = {{
       Private`j[1, 3, 0], Private`j[1, 2, 1] + Private`j[1, 3, 0], 
       Private`j[1, 1, 2] + Private`j[1, 2, 1] + Private`j[1, 3, 0]}, {
       Private`j[2, 2, 0], Private`j[2, 1, 1] + Private`j[2, 2, 0]}, {
       Private`j[3, 1, 0]}}, Private`edgesNESW[4] = {{
       Private`j[0, 1, 3], Private`j[0, 1, 3] + Private`j[1, 1, 2], 
       Private`j[0, 1, 3] + Private`j[1, 1, 2] + Private`j[2, 1, 1]}, {
       Private`j[0, 2, 2], Private`j[0, 2, 2] + Private`j[1, 2, 1]}, {
       Private`j[0, 3, 1]}}, Private`edgesNWSE[4] = {{
       Private`j[3, 0, 1], Private`j[2, 1, 1] + Private`j[3, 0, 1], 
       Private`j[1, 2, 1] + Private`j[2, 1, 1] + Private`j[3, 0, 1]}, {
       Private`j[2, 0, 2], Private`j[1, 1, 2] + Private`j[2, 0, 2]}, {
       Private`j[1, 0, 3]}}, Private`edgesEWlabels[
      Pattern[Private`lev$, 
       Blank[]]] := Table[
      Take[
       Table[(1/2) (4 + Private`p + Private`p^2) + (Private`lev$ - 1), {
        Private`p, Private`lev$, 4}], {Private`z, Private`z + 1}], {
      Private`z, 1, 4 - Private`lev$}], 
    Attributes[Private`lev$] = {Temporary}, Private`edgesNESWlabels[
      Pattern[Private`lev$, 
       Blank[]]] := Table[
      Take[
       Table[(1/2) (3 Private`p + Private`p^2) + (1/2) (Private`lev$ - 1) 
         Private`lev$ + (Private`lev$ - 1) Private`p, {Private`p, 1, 4}], {
       Private`z, Private`z + 1}], {Private`z, 1, 4 - Private`lev$}], 
    Private`edgesNWSElabels[
      Pattern[Private`lev$, 
       Blank[]]] := Table[
      Take[
       Range[
       1 + (1/2) (-Private`lev$ + 4) (1 - Private`lev$ + 4), 1 - Private`lev$ + 
        4 + (1/2) (-Private`lev$ + 4) (1 - Private`lev$ + 4)], {
       Private`z, Private`z + 1}], {Private`z, 1, 4 - Private`lev$}], 
    Private`components = {{
       Private`j[1, 3, 0], 
       Private`j[1, 2, 1], 
       Private`j[1, 1, 2], 
       Private`j[1, 0, 3]}, {
       Private`j[2, 2, 0], 
       Private`j[2, 1, 1], 
       Private`j[2, 0, 2]}, {
       Private`j[3, 1, 0], 
       Private`j[3, 0, 1]}, {
       Private`j[0, 1, 3], 
       Private`j[1, 1, 2], 
       Private`j[2, 1, 1], 
       Private`j[3, 1, 0]}, {
       Private`j[0, 2, 2], 
       Private`j[1, 2, 1], 
       Private`j[2, 2, 0]}, {
       Private`j[0, 3, 1], 
       Private`j[1, 3, 0]}, {
       Private`j[0, 3, 1], 
       Private`j[1, 2, 1], 
       Private`j[2, 1, 1], 
       Private`j[3, 0, 1]}, {
       Private`j[0, 2, 2], 
       Private`j[1, 1, 2], 
       Private`j[2, 0, 2]}, {
       Private`j[0, 1, 3], 
       Private`j[1, 0, 3]}}, Private`fundamentalcomponents = {
      Private`j[0, 1, 3], 
      Private`j[0, 2, 2], 
      Private`j[0, 3, 1], 
      Private`j[1, 0, 3], 
      Private`j[1, 1, 2], 
      Private`j[1, 2, 1], 
      Private`j[1, 3, 0], 
      Private`j[2, 0, 2], 
      Private`j[2, 1, 1], 
      Private`j[2, 2, 0], 
      Private`j[3, 0, 1], 
      Private`j[3, 1, 0]}, Private`positivityconstraints = 
    And[Private`j[1, 3, 0] >= 0, Private`j[1, 2, 1] + Private`j[1, 3, 0] >= 0,
       Private`j[1, 1, 2] + Private`j[1, 2, 1] + Private`j[1, 3, 0] >= 0, 
      Private`j[2, 2, 0] >= 0, Private`j[2, 1, 1] + Private`j[2, 2, 0] >= 0, 
      Private`j[3, 1, 0] >= 0, Private`j[0, 1, 3] >= 0, 
      Private`j[0, 1, 3] + Private`j[1, 1, 2] >= 0, 
      Private`j[0, 1, 3] + Private`j[1, 1, 2] + Private`j[2, 1, 1] >= 0, 
      Private`j[0, 2, 2] >= 0, Private`j[0, 2, 2] + Private`j[1, 2, 1] >= 0, 
      Private`j[0, 3, 1] >= 0, Private`j[3, 0, 1] >= 0, 
      Private`j[2, 1, 1] + Private`j[3, 0, 1] >= 0, 
      Private`j[1, 2, 1] + Private`j[2, 1, 1] + Private`j[3, 0, 1] >= 0, 
      Private`j[2, 0, 2] >= 0, Private`j[1, 1, 2] + Private`j[2, 0, 2] >= 0, 
      Private`j[1, 0, 3] >= 0], Private`buildlambdainput[{
       Pattern[Private`l1$, 
        BlankSequence[]]}, {
       Pattern[Private`l2$, 
        BlankSequence[]]}] := Flatten[{
       MapThread[Rule, {
         Table[
          Private`lambda[Private`p, 0, 0], {Private`p, 1, 4 - 1}], {
         Private`l1$}}], 
       MapThread[Rule, {
         Table[
          Private`lambda[0, Private`p, 0], {Private`p, 1, 4 - 1}], {
         Private`l2$}}]}], Private`buildlambdainput[{
       Pattern[Private`l1$, 
        BlankSequence[]]}, {
       Pattern[Private`l2$, 
        BlankSequence[]]}, {
       Pattern[Private`l3$, 
        BlankSequence[]]}] := Flatten[{
       MapThread[Rule, {
         Table[
          Private`lambda[Private`p, 0, 0], {Private`p, 1, 4 - 1}], {
         Private`l1$}}], 
       MapThread[Rule, {
         Table[
          Private`lambda[0, Private`p, 0], {Private`p, 1, 4 - 1}], {
         Private`l2$}}], 
       MapThread[Rule, {
         Table[
          Private`lambda[0, 0, Private`p], {Private`p, 1, 4 - 1}], {
         Private`l3$}}]}], Attributes[Private`l1$] = {Temporary}, 
    Attributes[Private`l2$] = {Temporary}, 
    Attributes[Private`l3$] = {Temporary}, 
    Private`componentsEdgesAndnuc[{1, 0, 1}, {3, 0, 3}] = {{}, {}, {}, {}, {{
      3, 1, 1}, {2, 0, 2}, {4, 1, 2}, {3, 0, 3}, {2, 2, 2}, {3, 0, 3}, {4, 0, 
      4}, {1, 1, 3}, {2, 1, 4}}}, 
    Private`componentsEdgesAndnuc[{2, 0, 2}, {0, 0, 0}] = {{}, {}, {}, {}, {{
      2, 0, 2}}}, 
    Private`componentsEdgesAndnuc[{2, 2, 3}, {1, 0, 3}] = {{}, {}, {}, {}, {{
      5, 1, 0}, {3, 2, 0}, {5, 3, 0}, {6, 1, 1}, {4, 2, 1}, {6, 3, 1}, {7, 1, 
      2}, {5, 2, 2}, {3, 2, 0}, {1, 3, 0}, {3, 4, 0}, {4, 2, 1}, {2, 3, 1}, {
      4, 4, 1}, {5, 2, 2}, {3, 3, 2}, {1, 5, 0}, {2, 3, 1}, {0, 4, 1}, {2, 5, 
      1}, {3, 3, 2}, {1, 4, 2}, {0, 6, 1}, {1, 4, 2}, {4, 0, 1}, {2, 1, 1}, {
      4, 2, 1}, {5, 0, 2}, {3, 1, 2}, {5, 2, 2}, {6, 0, 3}, {4, 1, 3}, {6, 2, 
      3}, {2, 3, 1}, {3, 1, 2}, {1, 2, 2}, {3, 3, 2}, {4, 1, 3}, {2, 2, 3}, {
      4, 3, 3}, {1, 4, 2}, {2, 2, 3}, {0, 3, 3}, {2, 4, 3}, {0, 5, 3}, {3, 1, 
      2}, {2, 0, 3}, {4, 1, 3}, {3, 0, 4}, {5, 1, 4}, {2, 2, 3}, {1, 1, 4}, {
      3, 2, 4}, {1, 3, 4}, {3, 0, 4}, {4, 0, 5}, {2, 1, 5}}}, 
    Private`componentsEdgesAndnuc[{2, 3, 3}, {3, 1, 
      2}] = {{}, {}, {}, {}, CompressedData["
1:eJxlU9F1xCAMk20M6RhdqRP03QLd/+/kiHPy0j6qMwbJMoTv19/PywH8GhD8
HYAzdBzANAyHxxUkLMzM7XDMwBgbPfEFW2bpFnEFEz7M+dcKLNCBpFpB2Fwb
V7BFuGdiheWwSDvMp/sI/ru4mBubKCQX4eT6grg2rblMslsllSG/O+2ArmHe
9rrE1eMniOos5PNhtYuuKhjh0cHDs6TK9iegptQe/oUSIVwB93A1fVE8IkaI
eG9TqP0bl5FCo6JYhtyDKue022xj6lfIe5WxR5vtqu7fhvBuT+UO0rnqG1ly
35Eu5SMipAK9CO+et89WODGZYczZrRcOrfLjE2qT86BXEDGHiv43X8eA5FBR
ldu1UNJC81TdxYzXqF7HVXrXPXcKZWDv5MnRe83KjKYckWkz7+XE5bvkANdO
+iTHavB0ps9q71RQpr7ZqCTPu55H7p3BR1YPcWWdQg1+zgMH3/0bCQgN5A==

      "]}, 
    Private`componentsEdgesAndnuc[{3, 0, 0}, {2, 3, 3}] = {{}, {}, {}, {}, {{
      4, 4, 0}, {2, 5, 0}, {3, 5, 1}, {5, 2, 1}, {3, 3, 1}, {4, 3, 2}, {1, 4, 
      1}, {2, 4, 2}, {3, 4, 3}, {6, 0, 2}, {4, 1, 2}, {5, 1, 3}, {2, 2, 2}, {
      3, 2, 3}, {4, 2, 4}, {0, 3, 2}, {1, 3, 3}, {2, 3, 4}, {3, 3, 5}}}, 
    Private`componentsEdgesAndnuc[{3, 0, 1}, {1, 2, 1}] = {{}, {}, {}, {}, {{
      2, 0, 0}, {4, 1, 0}, {2, 2, 0}, {3, 0, 1}, {2, 2, 0}, {0, 3, 0}, {1, 1, 
      1}, {3, 2, 1}, {1, 3, 1}, {2, 1, 2}, {1, 3, 1}, {0, 2, 2}, {2, 3, 2}, {
      1, 2, 3}, {0, 4, 2}, {3, 0, 1}, {1, 1, 1}, {4, 0, 2}, {2, 1, 2}, {2, 1, 
      2}, {0, 2, 2}, {3, 1, 3}, {1, 2, 3}, {1, 2, 3}, {2, 2, 4}, {0, 3, 4}, {
      1, 0, 3}, {2, 0, 4}, {0, 1, 4}, {1, 1, 5}}}, 
    Private`componentsEdgesAndnuc[{3, 1, 2}, {2, 0, 2}] = {{}, {}, {}, {}, {{
      3, 1, 0}, {1, 2, 0}, {2, 0, 1}, {0, 1, 1}, {3, 3, 0}, {4, 1, 1}, {2, 2, 
      1}, {3, 0, 2}, {1, 1, 2}, {4, 3, 1}, {5, 1, 2}, {3, 2, 2}, {4, 0, 3}, {
      2, 1, 3}, {1, 4, 0}, {2, 2, 1}, {0, 3, 1}, {1, 1, 2}, {2, 4, 1}, {3, 2, 
      2}, {1, 3, 2}, {2, 1, 3}, {0, 5, 1}, {1, 3, 2}, {0, 2, 3}, {2, 2, 1}, {
      3, 0, 2}, {1, 1, 2}, {0, 0, 3}, {3, 2, 2}, {4, 0, 3}, {2, 1, 3}, {1, 0, 
      4}, {4, 2, 3}, {5, 0, 4}, {3, 1, 4}, {1, 3, 2}, {2, 1, 3}, {0, 2, 3}, {
      2, 3, 3}, {3, 1, 4}, {1, 2, 4}, {0, 4, 3}, {1, 2, 4}, {2, 1, 3}, {1, 0, 
      4}, {3, 1, 4}, {2, 0, 5}, {4, 1, 5}, {1, 2, 4}, {0, 1, 5}, {2, 2, 5}, {
      0, 3, 5}, {2, 0, 5}, {3, 0, 6}, {1, 1, 6}}}, 
    Private`componentsEdgesAndnuc[{3, 1, 2}, {2, 1, 
      2}] = {{}, {}, {}, {}, CompressedData["
1:eJxdkIFtAzEMA0lKcubISh0hC3SXTlzqiTzSAmc/8KIoys/X99dLAH58Kodc
/B2itLDQoLgQmkI1DtlaVBz4WiyP3mi1i8VWRGl8WWi6OZIbmqW3C3pxVUOX
PMClDLP3HeN2/xdgG6/UcT5Oyoq/lzAZcWdI1gyKbJPQCbqrhr3pkqEWdfI2
xpv050T8HWSHtFtqdO1qh5jHZH9yeldtv6tR+aUm7Xg3Emdwike7qAcf6gJH
eICPX9unBfw=
      "]}, Private`componentsEdgesAndnuc[{
       Pattern[Private`lam$, 
        BlankSequence[]]}, {
       Pattern[Private`mu$, 
        BlankSequence[]]}] := (
     Private`componentsEdgesAndnuc[{Private`lam$}, {Private`mu$}] = 
     Module[{Private`redsol$, Private`locrules$, Private`nuclist$, 
        Private`fundcompval$, Private`edgesEWValues$, 
        Private`edgesNESWValues$, Private`edgesNWSEValues$}, 
       Private`redsol$ = Solve[
          And[
           ReplaceAll[Private`lambdaequations, 
            Private`buildlambdainput[{Private`lam$}, {Private`mu$}]], 
           Private`positivityconstraints], Integers]; 
       Private`nuclist$ = ReplaceAll[
          Table[
           Private`lambda[0, 0, Private`p], {Private`p, 1, 4 - 1}], 
          Private`redsol$]; {{}, {}, {}, {}, Private`nuclist$}]), 
    Attributes[Private`lam$] = {Temporary}, 
    Attributes[Private`mu$] = {Temporary}, 
    Attributes[Private`redsol$] = {Temporary}, 
    Attributes[Private`locrules$] = {Temporary}, 
    Attributes[Private`nuclist$] = {Temporary}, 
    Attributes[Private`fundcompval$] = {Temporary}, 
    Attributes[Private`edgesEWValues$] = {Temporary}, 
    Attributes[Private`edgesNESWValues$] = {Temporary}, 
    Attributes[Private`edgesNWSEValues$] = {Temporary}, 
    Private`tensorproductCC[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}] := Part[
      Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}], 5], 
    Attributes[$CellContext`makeRow$] = {Temporary}, 
    Attributes[$CellContext`rowIndex$] = {Temporary}, 
    Attributes[$CellContext`colIndex$] = {Temporary}}]], "Output",ExpressionUU\
ID->"00000000-0000-0000-0000-000000000000"]
}, Open  ]],

Cell[CellGroupData[{

Cell["CAPTION", "Subsection",
 CellFrame->{{0, 0}, {1, 0}},
 CellFrameColor->RGBColor[0.87, 0.87, 0.87],
 FontFamily->"Helvetica",
 FontSize->12,
 FontWeight->"Bold",
 FontColor->RGBColor[
  0.597406, 0, 
   0.0527047],ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell["\<\
The program decomposes the product of two irreducible representations of \
SU(n) into a direct sum.\
\>", "Text",ExpressionUUID->"00000000-0000-0000-0000-000000000000"]
}, Open  ]],

Cell[CellGroupData[{

Cell["DETAILS", "Subsection",
 CellFrame->{{0, 0}, {1, 0}},
 CellFrameColor->RGBColor[0.87, 0.87, 0.87],
 FontFamily->"Helvetica",
 FontSize->12,
 FontWeight->"Bold",
 FontColor->RGBColor[
  0.597406, 0, 
   0.0527047],ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[TextData[{
 "The decomposition of the tensor product of irreducible representations is \
done by using an improved hive technique developed by the author and inspired \
from [1], [2], [3]. \nIn order to speed up the calculation we use a basis of \
elementary pictographs where syzygies (constraints) are eliminated before the \
actual reduction of the system of inequalities takes place.\nPictographs \
themselves (BZ-triangles, KT-honeycombs, O-blades), corresponding to a chosen \
space of intertwiners,  are not displayed here :  see the companion programs \
\[OpenCurlyDoubleQuote]obladesSUn\[CloseCurlyDoubleQuote] and \
\[OpenCurlyDoubleQuote]hobeycombsSUn\[CloseCurlyDoubleQuote]. \n\n[1] ",
 Cell[BoxData[
  TagBox[
   ButtonBox[
    PaneSelectorBox[{False->
     TagBox["\<\"Triple multiplicities for sl(r+1) and the spectrum of the \
exterior algebra of the adjoint representation, A.D. Berenstein and A.Z. \
Zelevinsky (1992)\"\>",
      StatusArea[#, "J. Algebraic Combinatorics 1, 7 (1992)"]& ,
      TagBoxNote->"J. Algebraic Combinatorics 1, 7 (1992)"], True->
     StyleBox[
      TagBox["\<\"Triple multiplicities for sl(r+1) and the spectrum of the \
exterior algebra of the adjoint representation,A.D. Berenstein and A.Z. \
Zelevinsky (1992)\"\>",
       StatusArea[#, "J. Algebraic Combinatorics 1, 7 (1992)"]& ,
       TagBoxNote->"J. Algebraic Combinatorics 1, 7 (1992)"], 
      "HyperlinkActive"]}, Dynamic[
      CurrentValue["MouseOver"]],
     BaseStyle->{"Hyperlink"},
     FrameMargins->0,
     ImageSize->Automatic],
    BaseStyle->"Hyperlink",
    ButtonData->{
      URL[
      "http://emis.ams.org/journals/JACO/Volume1_1/h7x307752t449r38.fulltext.\
pdf"], None},
    ButtonNote->
     "http://emis.ams.org/journals/JACO/Volume1_1/h7x307752t449r38.fulltext.\
pdf"],
   Annotation[#, 
    "http://emis.ams.org/journals/JACO/Volume1_1/h7x307752t449r38.fulltext.\
pdf", "Hyperlink"]& ]],
  CellChangeTimes->{3.714119849614003*^9},ExpressionUUID->
  "e4a3607a-a7e6-4e8d-b7bc-357491de5f3c"],
 "\n[2] ",
 Cell[BoxData[
  TagBox[
   ButtonBox[
    PaneSelectorBox[{False->
     TagBox["\<\"Berenstein-Zelevinsky triangles, elementary couplings and \
fusion rules, L. B\[EAcute]gin, A.N. Kirillov, P. Mathieu and M.A. Walton \
(1993)\"\>",
      StatusArea[#, 
       "Letters in Mathematical Physics, Volume 28, Issue 4, (1993) pp \
257-268"]& ,
      TagBoxNote->
       "Letters in Mathematical Physics, Volume 28, Issue 4, (1993) pp \
257-268"], True->
     StyleBox[
      TagBox["\<\"Berenstein-Zelevinsky triangles, elementary couplings and \
fusion rules, L. B\[EAcute]gin, A.N. Kirillov, P. Mathieu and M.A. Walton \
(1993)\"\>",
       StatusArea[#, 
        "Letters in Mathematical Physics, Volume 28, Issue 4, (1993) pp \
257-268"]& ,
       TagBoxNote->
        "Letters in Mathematical Physics, Volume 28, Issue 4, (1993) pp \
257-268"], "HyperlinkActive"]}, Dynamic[
      CurrentValue["MouseOver"]],
     BaseStyle->{"Hyperlink"},
     FrameMargins->0,
     ImageSize->Automatic],
    BaseStyle->"Hyperlink",
    ButtonData->{
      URL["https://arxiv.org/abs/hep-th/9301075"], None},
    ButtonNote->"https://arxiv.org/abs/hep-th/9301075"],
   Annotation[#, "https://arxiv.org/abs/hep-th/9301075", "Hyperlink"]& ]],
  CellChangeTimes->{
   3.714117744715974*^9, {3.71411778107472*^9, 3.7141178076777773`*^9}, 
    3.714117838620057*^9, 3.7141179102260942`*^9, {3.714117995649395*^9, 
    3.714118013338854*^9}, 3.714118157897002*^9},ExpressionUUID->
  "d3693dfe-1024-408e-a305-60fbabe4670b"],
 "\n[3] ",
 Cell[BoxData[
  TagBox[
   ButtonBox[
    PaneSelectorBox[{False->
     TagBox["\<\"The honeycomb model of GLn(C)tensor products I: proof of the \
saturation conjecture, A.Knutson and T.Tao (1999)\"\>",
      StatusArea[#, "J.Amer.Math.Soc.12 (1999)1055-1090"]& ,
      TagBoxNote->"J.Amer.Math.Soc.12 (1999)1055-1090"], True->
     StyleBox[
      TagBox["\<\"The honeycomb model of GLn(C)tensor products I: proof of \
the saturation conjecture, A.Knutson and T.Tao (1999)\"\>",
       StatusArea[#, "J.Amer.Math.Soc.12 (1999)1055-1090"]& ,
       TagBoxNote->"J.Amer.Math.Soc.12 (1999)1055-1090"], "HyperlinkActive"]},
      Dynamic[
      CurrentValue["MouseOver"]],
     BaseStyle->{"Hyperlink"},
     FrameMargins->0,
     ImageSize->Automatic],
    BaseStyle->"Hyperlink",
    ButtonData->{
      URL["https://arxiv.org/abs/math/9807160"], None},
    ButtonNote->"https://arxiv.org/abs/math/9807160"],
   Annotation[#, "https://arxiv.org/abs/math/9807160", "Hyperlink"]& ]],
  CellChangeTimes->{{3.7141193542094316`*^9, 3.714119377260558*^9}},
  ExpressionUUID->"f2b9088b-92ac-47f7-a656-315a0a832bc0"]
}], "Text",
 FontSize->12,ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[TextData[{
 StyleBox["The code is made of two parts :\n- A Mathematica package called \
\[OpenCurlyDoubleQuote]shorttensorProdIrrepPackage\[CloseCurlyDoubleQuote] \
defined in the file \[OpenCurlyDoubleQuote]tensorProdIrrep.nb\
\[CloseCurlyDoubleQuote] . It can be downloaded and run into any Mathematica \
session. It does not contain any limitation.\nThe main symbol exported by the \
package is the function tensorproduct (and the related command \
tenspromatform).\n- A dynamic module that builds the user interface. This \
latter code is a bit convoluted because it is supposed to run not only in \
Mathematica but also with the various versions of the CDF Reader. \nUsing \
nested manipulate commands would have been the preferred solution, but as of \
September 2017, the IOS version of the CDF Reader does not accept nested \
manipulate commands.",
  FontSize->12,
  FontWeight->"Regular"],
 "\n"
}], "Text",ExpressionUUID->"00000000-0000-0000-0000-000000000000"]
}, Open  ]],

Cell[CellGroupData[{

Cell["CAVEATS", "Subsection",
 CellFrame->{{0, 0}, {1, 0}},
 CellFrameColor->RGBColor[0.87, 0.87, 0.87],
 FontFamily->"Helvetica",
 FontSize->12,
 FontWeight->"Bold",
 FontColor->RGBColor[
  0.597406, 0, 
   0.0527047],ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[CellGroupData[{

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   StyleBox["\<\"Web version: The number of inequivalent irreps generated by \
the program should be smaller than \"\>",
    StripOnInput->False,
    FontSize->12,
    FontWeight->Bold], "\[InvisibleSpace]", 
   StyleBox["800",
    StripOnInput->False,
    FontSize->12,
    FontWeight->Bold]}],
  SequenceForm[
   Style["Web version: The number of inequivalent irreps generated by the \
program should be smaller than ", 12, Bold], 
   Style[800, 12, Bold]],
  Editable->False]], "Print",ExpressionUUID->"00000000-0000-0000-0000-\
000000000000"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   StyleBox["\<\"Web version: the computation is terminated if it takes more \
than \"\>",
    StripOnInput->False,
    FontSize->12,
    FontWeight->Bold], "\[InvisibleSpace]", 
   StyleBox["1.5`",
    StripOnInput->False,
    FontSize->12,
    FontWeight->Bold], "\[InvisibleSpace]", 
   StyleBox["\<\" seconds\"\>",
    StripOnInput->False,
    FontSize->12,
    FontWeight->Bold]}],
  SequenceForm[
   Style["Web version: the computation is terminated if it takes more than ", 
    12, Bold], 
   Style[1.5, 12, Bold], 
   Style[" seconds", 12, Bold]],
  Editable->False]], "Print",ExpressionUUID->"00000000-0000-0000-0000-\
000000000000"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["CITATION", "Subsection",
 CellFrame->{{0, 0}, {1, 0}},
 CellFrameColor->RGBColor[0.87, 0.87, 0.87],
 FontFamily->"Helvetica",
 FontSize->12,
 FontWeight->"Bold",
 FontColor->RGBColor[
  0.597406, 0, 
   0.0527047],ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell["\<\
If you use this program in a scientific publication or talk, please give \
proper academic credit to the author :\
\>", "Text",ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[TextData[{
 Cell[BoxData[
  TagBox[
   ButtonBox[
    PaneSelectorBox[{False->
     TagBox["\<\"Robert Coquereaux\"\>",
      StatusArea[#, "Web page of Robert Coquereaux"]& ,
      TagBoxNote->"Web page of Robert Coquereaux"], True->
     StyleBox[
      TagBox["\<\"Robert Coquereaux\"\>",
       StatusArea[#, "Web page of Robert Coquereaux"]& ,
       TagBoxNote->"Web page of Robert Coquereaux"], "HyperlinkActive"]}, 
     Dynamic[
      CurrentValue["MouseOver"]],
     BaseStyle->{"Hyperlink"},
     FrameMargins->0,
     ImageSize->Automatic],
    BaseStyle->"Hyperlink",
    ButtonData->{
      URL["http://www.cpt.univ-mrs.fr/~coque"], None},
    ButtonNote->"http://www.cpt.univ-mrs.fr/~coque"],
   Annotation[#, "http://www.cpt.univ-mrs.fr/~coque", "Hyperlink"]& ]],
  CellChangeTimes->{3.713765397463574*^9},
  FontSize->12,ExpressionUUID->"52bfa32f-4bdf-4dcb-85cf-7786e90f2e95"],
 "\n",
 Cell[BoxData[
  TagBox[
   ButtonBox[
    PaneSelectorBox[{False->
     PaneSelectorBox[{False->
      TagBox["\<\"Product of irreducible representations for SU(n)\"\>",
       StatusArea[#, "Computer_programs"]& ,
       TagBoxNote->"Computer_programs"], True->
      TagBox["\<\"Product of irreducible representations for SU(n)\"\>",
       StatusArea[#, "Computer_programs"]& ,
       TagBoxNote->"Computer_programs"]}, Dynamic[
       CurrentValue["MouseOver"]],
      BaseStyle->{"Hyperlink"},
      FrameMargins->0,
      ImageSize->Automatic], True->
     StyleBox[
      PaneSelectorBox[{False->
       TagBox["\<\"Product of irreducible representations for SU(n)\"\>",
        StatusArea[#, "Computer_programs"]& ,
        TagBoxNote->"Computer_programs"], True->
       TagBox["\<\"Product of irreducible representations for SU(n)\"\>",
        StatusArea[#, "Computer_programs"]& ,
        TagBoxNote->"Computer_programs"]}, Dynamic[
        CurrentValue["MouseOver"]],
       BaseStyle->{"Hyperlink"},
       FrameMargins->0,
       ImageSize->Automatic], "HyperlinkActive"]}, Dynamic[
      CurrentValue["MouseOver"]],
     BaseStyle->{"Hyperlink"},
     FrameMargins->0,
     ImageSize->Automatic],
    BaseStyle->"Hyperlink",
    ButtonData->{
      URL["http://www.cpt.univ-mrs.fr/~coque/Computer_programs"], None},
    ButtonNote->"http://www.cpt.univ-mrs.fr/~coque/Computer_programs/"],
   Annotation[#, "http://www.cpt.univ-mrs.fr/~coque/Computer_programs", 
    "Hyperlink"]& ]],
  CellChangeTimes->{
   3.715318027213398*^9, 3.715318204505127*^9, {3.7153183625296164`*^9, 
    3.715318369861888*^9}},ExpressionUUID->
  "4a3bca18-8abc-4bca-abf7-5d6f5296a422"],
 "\n",
 StyleBox["September 2017",
  FontSize->12,
  FontWeight->"Regular"]
}], "Text",ExpressionUUID->"00000000-0000-0000-0000-000000000000"]
}, Open  ]]
},
WindowSize->{1212, 852},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"11.1 for Mac OS X x86 (32-bit, 64-bit Kernel) (March 16, \
2017)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 408, 11, 42, "Subsection"],
Cell[1897, 48, 22618, 489, 520, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[24552, 542, 274, 8, 42, "Subsection"],
Cell[24829, 552, 178, 3, 30, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[25044, 560, 274, 8, 42, "Subsection"],
Cell[25321, 570, 4742, 108, 159, "Text"],
Cell[30066, 680, 976, 16, 115, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[31079, 701, 274, 8, 42, "Subsection"],
Cell[CellGroupData[{
Cell[31378, 713, 591, 17, 24, "Print"],
Cell[31972, 732, 688, 22, 24, "Print"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[32709, 760, 275, 8, 42, "Subsection"],
Cell[32987, 770, 192, 3, 30, "Text"],
Cell[33182, 775, 2731, 70, 69, "Text"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 1vTTGmyHRY@rUBgv9#E5jyDE *)

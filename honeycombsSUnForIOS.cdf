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
NotebookDataLength[    179548,       4214]
NotebookOptionsPosition[    178442,       4154]
NotebookOutlinePosition[    179070,       4182]
CellTagsIndexPosition[    178999,       4177]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
O-BLADES ASSOCIATED WITH AN ADMISSIBLE TRIPLE OF IRREDUCIBLE REPRESENTATIONS \
OF SU(n)\
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
 DynamicModuleBox[{$CellContext`rows$$ = 3, $CellContext`cols$$ = 
  2, $CellContext`mat$$ = {{6, 6}, {6, 1}, {13, 5}}, $CellContext`coupling$$ =
   1, $CellContext`mul$$ = Dynamic[
   Apply[obladePackage`multiplicity, $CellContext`mat$$]], \
$CellContext`myRange$$, $CellContext`myPart$$, $CellContext`tp$$ = 
  0, $CellContext`tpval$$}, 
  DynamicBox[ToBoxes[
    Manipulate[
     Which[$CellContext`tp$$ == 0, 
      Row[{
        Invisible[$CellContext`doit], 
        (CheckAbort[
         If[Length[#] > 800, 
          Abort[], #], 
         Print[$CellContext`limittext, 800]]& )[
         TimeConstrained[
          If[Setting[$CellContext`mul$$] == 0, $CellContext`notadmissibletext, 
           TableForm[{
             PopupMenu[
              Dynamic[$CellContext`coupling$$], 
              Range[1, 
               Setting[$CellContext`mul$$]]], 
             Show[
              honeycombPackage`plotHoneycombs[
               $CellContext`myPart$$[$CellContext`mat$$, 1], 
               $CellContext`myPart$$[$CellContext`mat$$, 2], 
               $CellContext`myPart$$[$CellContext`mat$$, 
                3], $CellContext`coupling$$], ImageSize -> Full]}]], 1.5, 
          Print[1.5, 1.5, " seconds"]]]}], $CellContext`tp$$ == 
      1, $CellContext`tpval$$ = obladePackage`tensorproduct[
        $CellContext`myPart$$[$CellContext`mat$$, 1], 
        $CellContext`myPart$$[$CellContext`mat$$, 2]], $CellContext`tp$$ == 
      2, $CellContext`tp$$ = 
       0; $CellContext`mat$$ = {{3, 2, 3, 2, 2}, {2, 3, 2, 2, 3}, {4, 5, 4, 2,
         5}}; TableForm[{
         PopupMenu[
          Dynamic[$CellContext`coupling$$], 
          Range[1, 
           Setting[$CellContext`mul$$]]], 
         Show[
          honeycombPackage`plotHoneycombs[
           $CellContext`myPart$$[$CellContext`mat$$, 1], 
           $CellContext`myPart$$[$CellContext`mat$$, 2], 
           $CellContext`myPart$$[$CellContext`mat$$, 
            3], $CellContext`coupling$$], ImageSize -> Large]}]], 
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
         TextGrid[{{"\[Omega]1", ""}, {}, {"\[Omega]2", ""}, {}, {
            OverBar["\[Omega]3"], ""}}], 
         Grid[
          Map[$CellContext`makeRow$, 
           $CellContext`myRange$$[$CellContext`rows$$]], 
          Dividers -> {{False, False, False}, {False, False, Red}}], 
         Invisible["xxxxxx"], 
         Button[
          Style[
          "Update components", FontSize -> 14, Bold, 
           Blue], $CellContext`mat$$; $CellContext`coupling$$ = 1; 
          Increment[$CellContext`cols$$]; 
          Decrement[$CellContext`cols$$]; $CellContext`tp$$ = 0], 
         Column[{
           Button[
            Style["Previous pictograph", Bold], 
            
            If[$CellContext`coupling$$ > 1, 
             Decrement[$CellContext`coupling$$]; Null]], 
           Button[
            Style["Next pictograph", Bold], 
            
            If[$CellContext`coupling$$ < Setting[$CellContext`mul$$], 
             Increment[$CellContext`coupling$$]; Null]]}], 
         Column[$CellContext`abouttabletext]}]]], 
     Column[{
       Panel[
        Style[$CellContext`cols$$ + 1, FontSize -> 14, Bold], 
        Style["SU(n), with n =", Bold, FontSize -> 14], Left, 
        BaselinePosition -> Bottom], 
       Panel[
        Style[
         Column[{
          "Pictographs for admissible triples", 
           "of irreducible representations", "of SU(n)", 
           "The honeycomb version"}, Center], "Title"]]}, 
      Invisible["xxxxxx"]], 
     Panel[$CellContext`mul$$, 
      Style["Multiplicity is", FontSize -> 14, Bold], Left], 
     Panel[$CellContext`coupling$$, 
      Style["The count index of this pictograph is", Bold], Left], 
     Column[$CellContext`aboutobladetext], 
     Button[
      Style["SU(n): decrease n", FontSize -> 14, Bold], 
      If[$CellContext`rows$$ > 
       1, $CellContext`mat$$ = 
        Map[Drop[#, -1]& , $CellContext`mat$$]; $CellContext`coupling$$ = 1; 
       Decrement[$CellContext`cols$$]; Null]], 
     Button[
      Style[
      "SU(n): increase n", FontSize -> 14, Bold], $CellContext`mat$$ = 
       Transpose[
         Append[
          Transpose[$CellContext`mat$$], 
          Table[0, {3}]]]; $CellContext`coupling$$ = 1; 
      Increment[$CellContext`cols$$]; Null], 
     Button[
      Style[
      "Tensor product decomposition of \[Omega]1 \[CircleTimes] \[Omega]2 ", 
       FontSize -> 14, Bold, Blue], $CellContext`coupling$$ = 
       1; $CellContext`tp$$ = 1; Increment[$CellContext`cols$$]; 
      Decrement[$CellContext`cols$$]; Null], 
     Button[
      Style[
      "An SU(6) example with multiplicity 592", FontSize -> 10, Bold, Brown, 
       TextAlignment -> Left], $CellContext`coupling$$ = 
       1; $CellContext`cols$$ = 6 - 1; $CellContext`tp$$ = 2; 
      Increment[$CellContext`cols$$]; Decrement[$CellContext`cols$$]; Null], 
     Button[
      Style[
      "Reset random SU(3) example", FontSize -> 10, Bold, Brown, 
       TextAlignment -> Left], $CellContext`cols$$ = 2; $CellContext`mat$$ = 
       With[{$CellContext`mat12 = Table[
            RandomInteger[7], {2}, {3 - 1}]}, 
         Append[$CellContext`mat12, 
          First[
           RandomChoice[
            Apply[
            obladePackage`tensorproduct, $CellContext`mat12]]]]]; \
$CellContext`coupling$$ = 1; Increment[$CellContext`cols$$]; 
      Decrement[$CellContext`cols$$]; $CellContext`tp$$ = 
       0], {{$CellContext`doit, 0, ""}, {0}, ControlType -> None}, 
     TrackedSymbols :> {$CellContext`doit}, ContentSize -> {610, 600}], 
    StandardForm],
   ImageSizeCache->{1320., {389., 395.}}],
  SynchronousUpdating -> False,
  DynamicModuleValues:>{{DownValues[$CellContext`myRange$$] = {HoldPattern[
         $CellContext`myRange$$[
          Pattern[$CellContext`s, 
           Blank[]]]] :> Range[$CellContext`s]}}, {
    DownValues[$CellContext`myPart$$] = {HoldPattern[
         $CellContext`myPart$$[
          Pattern[$CellContext`expr, 
           Blank[]], 
          Pattern[$CellContext`s, 
           BlankSequence[]]]] :> Part[$CellContext`expr, $CellContext`s]}}},
  Initialization:>{obladePackage`multiplicity[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}, {
       Pattern[Private`nu, 
        BlankSequence[]]}] := Switch[
      ValueQ[obladePackage`currentgroup], False, 
      obladePackage`oblade[Length[{Private`lam}] + 1]; 
      obladePackage`multiplicity[{Private`lam}, {Private`mu}, {Private`nu}], 
      True, 
      If[Length[{Private`lam}] == obladePackage`currentgroup - 1, 
       Length[
        Private`tensorproductCC[{Private`lam}, {Private`mu}, 
         Reverse[{Private`nu}]]], 
       obladePackage`oblade[Length[{Private`lam}] + 1]; 
       obladePackage`multiplicity[{Private`lam}, {Private`mu}, {
         Private`nu}]]], 
    TagSet[obladePackage`multiplicity, 
     MessageName[obladePackage`multiplicity, "usage"], 
     "multiplicity[lambda,mu,nu] gives the multiplicity of the term nu in the \
decomposition into irreducible components of a tensor product lambda \
\[CircleTimes] mu of two irreps of the Lie group SU(n), given by the \
components of their highest weights along the basis of fundamental weights. \
This integer is also called Littlewood-Richardson coefficient. Equivalently \
it is the multiplicity of the trivial representation in the triple tensor \
product: lambda \[CircleTimes] mu \[CircleTimes] Conjugate[nu]."], 
    obladePackage`currentgroup = 3, 
    TagSet[obladePackage`currentgroup, 
     MessageName[obladePackage`currentgroup, "usage"], 
     "currentgroup returns the argument n of the group SU(n) currently in \
use."], obladePackage`oblade[
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
      Private`fundamentalcomponentsLabels = 
       ToString[Private`fundamentalcomponents]; Private`componentsEdgesAndnuc[{
          Pattern[Private`lam, 
           BlankSequence[]]}, {
          Pattern[Private`mu, 
           BlankSequence[]]}] := (
        Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}] = 
        Module[{Private`redsol, Private`locrules, Private`nuclist, 
           Private`fundcompval, Private`edgesEWValues, 
           Private`edgesNESWValues, Private`edgesNWSEValues}, 
          Private`redsol = Reduce[
             And[
              ReplaceAll[Private`lambdaequations, 
               Private`buildlambdainput[{Private`lam}, {Private`mu}]], 
              Private`positivityconstraints], Private`fundamentalcomponents, 
             Integers]; Private`locrules = ToRules[Private`redsol]; 
          Private`fundcompval = 
           ReplaceAll[Private`fundamentalcomponents, {Private`locrules}]; 
          Private`nuclist = ReplaceAll[
             Table[
              Private`lambda[0, 0, Private`p], {
              Private`p, 1, Private`NN - 1}], {Private`locrules}]; 
          Private`edgesEWValues = Table[
             ReplaceAll[
              Private`edgesEW[Private`NN], 
              MapThread[Rule, {Private`fundamentalcomponents, 
                Part[Private`fundcompval, Private`s]}]], {Private`s, 1, 
              Length[Private`fundcompval]}]; Private`edgesNESWValues = Table[
             ReplaceAll[
              Private`edgesNESW[Private`NN], 
              MapThread[Rule, {Private`fundamentalcomponents, 
                Part[Private`fundcompval, Private`s]}]], {Private`s, 1, 
              Length[Private`fundcompval]}]; Private`edgesNWSEValues = Table[
             ReplaceAll[
              Private`edgesNWSE[Private`NN], 
              MapThread[Rule, {Private`fundamentalcomponents, 
                Part[Private`fundcompval, Private`s]}]], {Private`s, 1, 
              Length[Private`fundcompval]}]; {
           Private`fundcompval, Private`edgesEWValues, 
            Private`edgesNESWValues, Private`edgesNWSEValues, 
            Private`nuclist}]); Private`componentsEdgesAndnuc[{
          Pattern[Private`lam, 
           BlankSequence[]]}, {
          Pattern[Private`mu, 
           BlankSequence[]]}, {
          Pattern[Private`nuc, 
           BlankSequence[]]}] := (
        Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}, {
          Private`nuc}] = 
        Module[{Private`redsol, Private`locrules, Private`nuclist, 
           Private`fundcompval, Private`edgesEWValues, 
           Private`edgesNESWValues, Private`edgesNWSEValues}, 
          Private`redsol = Reduce[
             And[
              ReplaceAll[Private`lambdaequations, 
               
               Private`buildlambdainput[{Private`lam}, {Private`mu}, {
                Private`nuc}]], Private`positivityconstraints], 
             Private`fundamentalcomponents, Integers]; 
          Private`redsol = And[Private`redsol, 
             Apply[And, 
              Table[
              Private`lambda[0, 0, Private`p] == 
               Part[{Private`nuc}, Private`p], {
               Private`p, 1, Private`NN - 1}]]]; 
          If[Private`redsol =!= False, Private`locrules = 
            ToRules[Private`redsol], 
            Return[{0, 0, 0, 0, 0}]]; 
          Private`fundcompval = 
           ReplaceAll[Private`fundamentalcomponents, {Private`locrules}]; 
          Private`nuclist = ReplaceAll[
             Table[
              Private`lambda[0, 0, Private`p], {
              Private`p, 1, Private`NN - 1}], {Private`locrules}]; 
          Private`edgesEWValues = Table[
             ReplaceAll[
              Private`edgesEW[Private`NN], 
              MapThread[Rule, {Private`fundamentalcomponents, 
                Part[Private`fundcompval, Private`s]}]], {Private`s, 1, 
              Length[Private`fundcompval]}]; Private`edgesNESWValues = Table[
             ReplaceAll[
              Private`edgesNESW[Private`NN], 
              MapThread[Rule, {Private`fundamentalcomponents, 
                Part[Private`fundcompval, Private`s]}]], {Private`s, 1, 
              Length[Private`fundcompval]}]; Private`edgesNWSEValues = Table[
             ReplaceAll[
              Private`edgesNWSE[Private`NN], 
              MapThread[Rule, {Private`fundamentalcomponents, 
                Part[Private`fundcompval, Private`s]}]], {Private`s, 1, 
              Length[Private`fundcompval]}]; {
           Private`fundcompval, Private`edgesEWValues, 
            Private`edgesNESWValues, Private`edgesNWSEValues, 
            Private`nuclist}]); 
      Private`AdjMatbis = adjmatPackage`adjmatfct[Private`NN]; 
      Private`rs = adjmatPackage`nntoseed[Private`NN]; If[
        MissingQ[
         adjmatPackage`nntoseed[Private`NN]], 
        Print[
        "The nntoseed A-list in the adjmatPackage should be extended for \
plotOblade to work with this rank"]]; Private`plotSUNoblade[
         Pattern[Private`mytripleofweights, 
          Blank[]], 
         Pattern[Private`loccoupling, 
          Blank[]]] := 
       Module[{Private`adj, Private`vert = Private`mytripleofweights, 
          Private`grid, Private`gr2, Private`grla, Private`grmu, Private`grnu,
           Private`grEW, Private`grNESW, Private`grNWSE}, 
         Private`adj = Private`AdjMatbis; 
         Private`fullinfo = Private`componentsEdgesAndnuc[
            Part[Private`mytripleofweights, 1], 
            Part[Private`mytripleofweights, 2], 
            Reverse[
             Part[Private`mytripleofweights, 3]]]; 
         Private`grid = 
          GraphPlot[
           Private`adj, Method -> {Automatic, "RandomSeed" -> Private`rs}]; 
         Private`grla = 
          GraphPlot[Private`adj, VertexRenderingFunction -> (Apply[Which, 
              Flatten[
               Table[{#2 == Private`lambdalabel[Private`NN, Private`s], {
                  Text[
                   Style[
                    Part[Private`vert, 1, Private`s], Large, Blue], #, {
                   Right, Bottom}], 
                  Disk[#, 0.03], {Black}}}, {Private`s, 1, Private`NN - 1}], 
               1]]& ), Method -> {Automatic, "RandomSeed" -> Private`rs}]; 
         Private`grmu = 
          GraphPlot[Private`adj, VertexRenderingFunction -> (Apply[Which, 
              Flatten[
               Table[{#2 == Private`mulabel[Private`NN, Private`s], {
                  Text[
                   Style[
                    Part[Private`vert, 2, Private`s], Large, Blue], #, {
                   Left, Bottom}], 
                  Disk[#, 0.03], {Black}}}, {Private`s, 1, Private`NN - 1}], 
               1]]& ), Method -> {Automatic, "RandomSeed" -> Private`rs}]; 
         Private`grnu = 
          GraphPlot[Private`adj, VertexRenderingFunction -> (Apply[Which, 
              Flatten[
               Table[{#2 == Private`nulabel[Private`NN, Private`s], {
                  Text[
                   Style[
                    Part[Private`vert, 3, Private`NN - Private`s], Large, 
                    Blue], #, {Right, Top}], 
                  Disk[#, 0.03], {Black}}}, {Private`s, 1, Private`NN - 1}], 
               1]]& ), Method -> {Automatic, "RandomSeed" -> Private`rs}]; 
         Private`grEW = 
          GraphPlot[Private`adj, EdgeRenderingFunction -> (Apply[Which, 
              Flatten[
               Table[
                Flatten[
                 Table[{
                   And[
                   First[#2] == First[Private`u], Last[#2] == 
                    Last[Private`u]], {
                    Text[
                    Style[
                    Part[
                    Reverse[
                    Part[
                    Part[Private`fullinfo, 2, Private`loccoupling], 
                    Private`f]], 
                    First[
                    Flatten[
                    Position[
                    Private`edgesEWlabels[Private`f], Private`u]]]], 20], (
                    Part[#, 1] + Part[#, 2])/2]}}, {Private`u, 
                   Private`edgesEWlabels[Private`f]}], 1], {
                Private`f, 1, Private`NN - 1}], 1]]& ), 
            Method -> {Automatic, "RandomSeed" -> Private`rs}]; 
         Private`grNESW = 
          GraphPlot[Private`adj, EdgeRenderingFunction -> (Apply[Which, 
              Flatten[
               Table[
                Flatten[
                 Table[{
                   And[
                   Last[#2] == First[Private`u], First[#2] == 
                    Last[Private`u]], {
                    Text[
                    Style[
                    Part[
                    Part[
                    Part[Private`fullinfo, 3, Private`loccoupling], 
                    Private`f], 
                    First[
                    Flatten[
                    Position[
                    Private`edgesNESWlabels[Private`f], Private`u]]]], 20], (
                    Part[#, 1] + Part[#, 2])/2]}}, {Private`u, 
                   Private`edgesNESWlabels[Private`f]}], 1], {
                Private`f, 1, Private`NN - 1}], 1]]& ), 
            Method -> {Automatic, "RandomSeed" -> Private`rs}]; 
         Private`grNWSE = 
          GraphPlot[Private`adj, EdgeRenderingFunction -> (Apply[Which, 
              Flatten[
               Table[
                Flatten[
                 Table[{
                   And[
                   First[#2] == First[Private`u], Last[#2] == 
                    Last[Private`u]], {
                    Text[
                    Style[
                    Part[
                    Reverse[
                    Part[
                    Part[Private`fullinfo, 4, Private`loccoupling], 
                    Private`f]], 
                    First[
                    Flatten[
                    Position[
                    Private`edgesNWSElabels[Private`f], Private`u]]]], 20], (
                    Part[#, 1] + Part[#, 2])/2]}}, {Private`u, 
                   Private`edgesNWSElabels[Private`f]}], 1], {
                Private`f, 1, Private`NN - 1}], 1]]& ), 
            Method -> {Automatic, "RandomSeed" -> Private`rs}]; 
         Show[Private`grid, Private`grla, Private`grmu, Private`grnu, 
           Private`grEW, Private`grNESW, Private`grNWSE]]; 
      Private`plotAllOblades[
         Pattern[Private`myweights, 
          Blank[]]] := Table[
         Private`plotSUNoblade[Private`myweights, Private`pos], {
         Private`pos, 1, 
          Apply[obladePackage`multiplicity, Private`myweights]}]; 
      obladePackage`currentgroup = Private`NN], 
    TagSet[obladePackage`oblade, 
     MessageName[obladePackage`oblade, "usage"], 
     "Evaluation of oblade[n] initializes all relevant data for SU(n). It \
returns n and set the variable currentgroup to n."], Private`lambdaequations = 
    And[Private`lambda[1, 0, 0] == 
      Private`j[1, 0, 2] + Private`j[1, 1, 1] + Private`j[1, 2, 0], 
      Private`lambda[2, 0, 0] == Private`j[2, 0, 1] + Private`j[2, 1, 0], 
      Private`lambda[0, 1, 0] == 
      Private`j[0, 1, 2] + Private`j[1, 1, 1] + Private`j[2, 1, 0], 
      Private`lambda[0, 2, 0] == Private`j[0, 2, 1] + Private`j[1, 2, 0], 
      Private`lambda[0, 0, 1] == 
      Private`j[0, 2, 1] + Private`j[1, 1, 1] + Private`j[2, 0, 1], 
      Private`lambda[0, 0, 2] == Private`j[0, 1, 2] + Private`j[1, 0, 2]], 
    Private`edgesEW[3] = {{
       Private`j[1, 2, 0], Private`j[1, 1, 1] + Private`j[1, 2, 0]}, {
       Private`j[2, 1, 0]}}, Private`edgesNESW[3] = {{
       Private`j[0, 1, 2], Private`j[0, 1, 2] + Private`j[1, 1, 1]}, {
       Private`j[0, 2, 1]}}, Private`edgesNWSE[3] = {{
       Private`j[2, 0, 1], Private`j[1, 1, 1] + Private`j[2, 0, 1]}, {
       Private`j[1, 0, 2]}}, Private`edgesEWlabels[
      Pattern[Private`lev$, 
       Blank[]]] := Table[
      Take[
       Table[(1/2) (4 + Private`p + Private`p^2) + (Private`lev$ - 1), {
        Private`p, Private`lev$, 3}], {Private`z, Private`z + 1}], {
      Private`z, 1, 3 - Private`lev$}], 
    Attributes[Private`lev$] = {Temporary}, Private`edgesNESWlabels[
      Pattern[Private`lev$, 
       Blank[]]] := Table[
      Take[
       Table[(1/2) (3 Private`p + Private`p^2) + (1/2) (Private`lev$ - 1) 
         Private`lev$ + (Private`lev$ - 1) Private`p, {Private`p, 1, 3}], {
       Private`z, Private`z + 1}], {Private`z, 1, 3 - Private`lev$}], 
    Private`edgesNWSElabels[
      Pattern[Private`lev$, 
       Blank[]]] := Table[
      Take[
       Range[
       1 + (1/2) (-Private`lev$ + 3) (1 - Private`lev$ + 3), 1 - Private`lev$ + 
        3 + (1/2) (-Private`lev$ + 3) (1 - Private`lev$ + 3)], {
       Private`z, Private`z + 1}], {Private`z, 1, 3 - Private`lev$}], 
    Private`components = {{
       Private`j[1, 2, 0], 
       Private`j[1, 1, 1], 
       Private`j[1, 0, 2]}, {
       Private`j[2, 1, 0], 
       Private`j[2, 0, 1]}, {
       Private`j[0, 1, 2], 
       Private`j[1, 1, 1], 
       Private`j[2, 1, 0]}, {
       Private`j[0, 2, 1], 
       Private`j[1, 2, 0]}, {
       Private`j[0, 2, 1], 
       Private`j[1, 1, 1], 
       Private`j[2, 0, 1]}, {
       Private`j[0, 1, 2], 
       Private`j[1, 0, 2]}}, Private`fundamentalcomponents = {
      Private`j[0, 1, 2], 
      Private`j[0, 2, 1], 
      Private`j[1, 0, 2], 
      Private`j[1, 1, 1], 
      Private`j[1, 2, 0], 
      Private`j[2, 0, 1], 
      Private`j[2, 1, 0]}, Private`positivityconstraints = 
    And[Private`j[1, 2, 0] >= 0, Private`j[1, 1, 1] + Private`j[1, 2, 0] >= 0,
       Private`j[2, 1, 0] >= 0, Private`j[0, 1, 2] >= 0, 
      Private`j[0, 1, 2] + Private`j[1, 1, 1] >= 0, Private`j[0, 2, 1] >= 0, 
      Private`j[2, 0, 1] >= 0, Private`j[1, 1, 1] + Private`j[2, 0, 1] >= 0, 
      Private`j[1, 0, 2] >= 0], Private`buildlambdainput[{
       Pattern[Private`l1$, 
        BlankSequence[]]}, {
       Pattern[Private`l2$, 
        BlankSequence[]]}] := Flatten[{
       MapThread[Rule, {
         Table[
          Private`lambda[Private`p, 0, 0], {Private`p, 1, 3 - 1}], {
         Private`l1$}}], 
       MapThread[Rule, {
         Table[
          Private`lambda[0, Private`p, 0], {Private`p, 1, 3 - 1}], {
         Private`l2$}}]}], Private`buildlambdainput[{
       Pattern[Private`l1$, 
        BlankSequence[]]}, {
       Pattern[Private`l2$, 
        BlankSequence[]]}, {
       Pattern[Private`l3$, 
        BlankSequence[]]}] := Flatten[{
       MapThread[Rule, {
         Table[
          Private`lambda[Private`p, 0, 0], {Private`p, 1, 3 - 1}], {
         Private`l1$}}], 
       MapThread[Rule, {
         Table[
          Private`lambda[0, Private`p, 0], {Private`p, 1, 3 - 1}], {
         Private`l2$}}], 
       MapThread[Rule, {
         Table[
          Private`lambda[0, 0, Private`p], {Private`p, 1, 3 - 1}], {
         Private`l3$}}]}], Attributes[Private`l1$] = {Temporary}, 
    Attributes[Private`l2$] = {Temporary}, 
    Attributes[Private`l3$] = {Temporary}, 
    Private`fundamentalcomponentsLabels = 
    "{Private`j[0, 1, 2], Private`j[0, 2, 1], Private`j[1, 0, 2], \
Private`j[1, 1, 1], Private`j[1, 2, 0], Private`j[2, 0, 1], Private`j[2, 1, \
0]}", Private`componentsEdgesAndnuc[{5, 3}, {3, 0}] = {{{0, 0, 5, 0, 0, 0, 
      3}, {1, 0, 5, 0, 0, 1, 2}, {0, 0, 4, 1, 0, 1, 2}, {2, 0, 5, 0, 0, 2, 
      1}, {1, 0, 4, 1, 0, 2, 1}, {3, 0, 5, 0, 0, 3, 0}, {0, 0, 3, 2, 0, 2, 
      1}, {2, 0, 4, 1, 0, 3, 0}, {1, 0, 3, 2, 0, 3, 0}, {0, 0, 2, 3, 0, 3, 
      0}}, {{{0, 0}, {3}}, {{0, 0}, {2}}, {{0, 1}, {2}}, {{0, 0}, {1}}, {{0, 
        1}, {1}}, {{0, 0}, {0}}, {{0, 2}, {1}}, {{0, 1}, {0}}, {{0, 2}, {
        0}}, {{0, 3}, {0}}}, {{{0, 0}, {0}}, {{1, 1}, {0}}, {{0, 1}, {0}}, {{
        2, 2}, {0}}, {{1, 2}, {0}}, {{3, 3}, {0}}, {{0, 2}, {0}}, {{2, 3}, {
        0}}, {{1, 3}, {0}}, {{0, 3}, {0}}}, {{{0, 0}, {5}}, {{1, 1}, {5}}, {{
        1, 2}, {4}}, {{2, 2}, {5}}, {{2, 3}, {4}}, {{3, 3}, {5}}, {{2, 4}, {
        3}}, {{3, 4}, {4}}, {{3, 5}, {3}}, {{3, 6}, {2}}}, {{0, 5}, {1, 6}, {
      2, 4}, {2, 7}, {3, 5}, {3, 8}, {4, 3}, {4, 6}, {5, 4}, {6, 2}}}, 
    Private`componentsEdgesAndnuc[{
       Pattern[Private`lam$, 
        BlankSequence[]]}, {
       Pattern[Private`mu$, 
        BlankSequence[]]}] := (
     Private`componentsEdgesAndnuc[{Private`lam$}, {Private`mu$}] = 
     Module[{Private`redsol$, Private`locrules$, Private`nuclist$, 
        Private`fundcompval$, Private`edgesEWValues$, 
        Private`edgesNESWValues$, Private`edgesNWSEValues$}, 
       Private`redsol$ = Reduce[
          And[
           ReplaceAll[Private`lambdaequations, 
            Private`buildlambdainput[{Private`lam$}, {Private`mu$}]], 
           Private`positivityconstraints], Private`fundamentalcomponents, 
          Integers]; Private`locrules$ = ToRules[Private`redsol$]; 
       Private`fundcompval$ = 
        ReplaceAll[Private`fundamentalcomponents, {Private`locrules$}]; 
       Private`nuclist$ = ReplaceAll[
          Table[
           Private`lambda[0, 0, Private`p], {Private`p, 1, 3 - 1}], {
          Private`locrules$}]; Private`edgesEWValues$ = Table[
          ReplaceAll[
           Private`edgesEW[3], 
           MapThread[Rule, {Private`fundamentalcomponents, 
             Part[Private`fundcompval$, Private`s]}]], {Private`s, 1, 
           Length[Private`fundcompval$]}]; Private`edgesNESWValues$ = Table[
          ReplaceAll[
           Private`edgesNESW[3], 
           MapThread[Rule, {Private`fundamentalcomponents, 
             Part[Private`fundcompval$, Private`s]}]], {Private`s, 1, 
           Length[Private`fundcompval$]}]; Private`edgesNWSEValues$ = Table[
          ReplaceAll[
           Private`edgesNWSE[3], 
           MapThread[Rule, {Private`fundamentalcomponents, 
             Part[Private`fundcompval$, Private`s]}]], {Private`s, 1, 
           Length[Private`fundcompval$]}]; {
        Private`fundcompval$, Private`edgesEWValues$, 
         Private`edgesNESWValues$, Private`edgesNWSEValues$, 
         Private`nuclist$}]), Private`componentsEdgesAndnuc[{
       Pattern[Private`lam$, 
        BlankSequence[]]}, {
       Pattern[Private`mu$, 
        BlankSequence[]]}, {
       Pattern[Private`nuc$, 
        BlankSequence[]]}] := (
     Private`componentsEdgesAndnuc[{Private`lam$}, {Private`mu$}, {
       Private`nuc$}] = 
     Module[{Private`redsol$, Private`locrules$, Private`nuclist$, 
        Private`fundcompval$, Private`edgesEWValues$, 
        Private`edgesNESWValues$, Private`edgesNWSEValues$}, 
       Private`redsol$ = Reduce[
          And[
           ReplaceAll[Private`lambdaequations, 
            
            Private`buildlambdainput[{Private`lam$}, {Private`mu$}, {
             Private`nuc$}]], Private`positivityconstraints], 
          Private`fundamentalcomponents, Integers]; 
       Private`redsol$ = And[Private`redsol$, 
          Apply[And, 
           Table[
           Private`lambda[0, 0, Private`p] == 
            Part[{Private`nuc$}, Private`p], {Private`p, 1, 3 - 1}]]]; 
       If[Private`redsol$ =!= False, Private`locrules$ = 
         ToRules[Private`redsol$], 
         Return[{0, 0, 0, 0, 0}]]; 
       Private`fundcompval$ = 
        ReplaceAll[Private`fundamentalcomponents, {Private`locrules$}]; 
       Private`nuclist$ = ReplaceAll[
          Table[
           Private`lambda[0, 0, Private`p], {Private`p, 1, 3 - 1}], {
          Private`locrules$}]; Private`edgesEWValues$ = Table[
          ReplaceAll[
           Private`edgesEW[3], 
           MapThread[Rule, {Private`fundamentalcomponents, 
             Part[Private`fundcompval$, Private`s]}]], {Private`s, 1, 
           Length[Private`fundcompval$]}]; Private`edgesNESWValues$ = Table[
          ReplaceAll[
           Private`edgesNESW[3], 
           MapThread[Rule, {Private`fundamentalcomponents, 
             Part[Private`fundcompval$, Private`s]}]], {Private`s, 1, 
           Length[Private`fundcompval$]}]; Private`edgesNWSEValues$ = Table[
          ReplaceAll[
           Private`edgesNWSE[3], 
           MapThread[Rule, {Private`fundamentalcomponents, 
             Part[Private`fundcompval$, Private`s]}]], {Private`s, 1, 
           Length[Private`fundcompval$]}]; {
        Private`fundcompval$, Private`edgesEWValues$, 
         Private`edgesNESWValues$, Private`edgesNWSEValues$, 
         Private`nuclist$}]), Attributes[Private`lam$] = {Temporary}, 
    Attributes[Private`mu$] = {Temporary}, 
    Attributes[Private`redsol$] = {Temporary}, 
    Attributes[Private`locrules$] = {Temporary}, 
    Attributes[Private`nuclist$] = {Temporary}, 
    Attributes[Private`fundcompval$] = {Temporary}, 
    Attributes[Private`edgesEWValues$] = {Temporary}, 
    Attributes[Private`edgesNESWValues$] = {Temporary}, 
    Attributes[Private`edgesNWSEValues$] = {Temporary}, 
    Attributes[Private`nuc$] = {Temporary}, 
    Private`AdjMatbis = {{0, 1, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 1, 1, 0, 0, 0,
      0, 0, 0}, {1, 0, 0, 0, 1, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 1, 0, 1, 0, 0, 
     0}, {0, 1, 0, 0, 0, 1, 0, 1, 0, 0}, {0, 0, 1, 0, 0, 0, 0, 0, 1, 0}, {0, 
     0, 0, 0, 0, 0, 0, 1, 0, 0}, {0, 0, 0, 1, 0, 0, 0, 0, 1, 0}, {0, 0, 0, 0, 
     1, 0, 0, 0, 0, 1}, {0, 0, 0, 0, 0, 1, 0, 0, 0, 0}}, 
    adjmatPackage`adjmatfct[3] = {{0, 1, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 1, 1,
      0, 0, 0, 0, 0, 0}, {1, 0, 0, 0, 1, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 1, 0, 1,
      0, 0, 0}, {0, 1, 0, 0, 0, 1, 0, 1, 0, 0}, {0, 0, 1, 0, 0, 0, 0, 0, 1, 
     0}, {0, 0, 0, 0, 0, 0, 0, 1, 0, 0}, {0, 0, 0, 1, 0, 0, 0, 0, 1, 0}, {0, 
     0, 0, 0, 1, 0, 0, 0, 0, 1}, {0, 0, 0, 0, 0, 1, 0, 0, 0, 0}}, 
    adjmatPackage`adjmatfct[
      Pattern[Private`NN, 
       Blank[]]] := (adjmatPackage`adjmatfct[Private`NN] = 
     Module[{
       Private`levelplus, Private`rk, Private`One, Private`iii, 
        Private`SparseAdjTens, Private`normalAdjTens, Private`lab, 
        Private`partlab, Private`adjacencyMatrices}, 
       Private`levelplus = Private`NN + 1; 
       Private`rk = (Private`NN + 1) ((Private`NN + 2)/2); 
       Private`One = IdentityMatrix[Private`rk]; 
       Private`SparseAdjTens = SparseArray[{Condition[{
              Pattern[Private`a, 
               Blank[]], 
              Pattern[Private`b, 
               Blank[]], 
              Pattern[Private`c, 
               Blank[]], 
              Pattern[Private`d, 
               Blank[]]}, 
             Or[
              And[Private`c == Private`a + 1, Private`d == Private`b], 
              And[Private`c == Private`a, Private`d == Private`b - 1], 
              And[Private`c == Private`a - 1, Private`d == Private`b + 1]]] -> 
           1}, {Private`levelplus, Private`levelplus, Private`levelplus, 
           Private`levelplus}]; 
       Private`normalAdjTens = Normal[Private`SparseAdjTens]; 
       Private`lab = {{0, 0}, {1, 0}, {0, 1}}; 
       Do[Do[Private`iii = Private`i + 1; 
           Private`partlab[Private`iii] = {
             Private`j - Private`i, Private`i}, {Private`i, 0, Private`j}]; 
         Do[Private`lab = Append[Private`lab, 
             Private`partlab[Private`i]], {Private`i, 1, Private`j + 1}], {
         Private`j, 2, Private`levelplus - 1}]; 
       Private`adjacencyMatrices = 
        Module[{Private`v, Private`crit0, Private`crit1, Private`crit2, 
           Private`indices0, Private`indices1, Private`indices2, 
           Private`indices, Private`orderedindices, Private`smallAdjTens, 
           Private`matbid, Private`trisort, Private`tritolab, 
           Private`permutritolab, Private`permutritolabinverse, 
           Private`AdjMatTriality, Private`AdjMatLevel}, 
          Private`indices = Flatten[
             Table[
              Private`v[Private`i, Private`j], {
              Private`i, 1, Private`levelplus}, {
              Private`j, 1, Private`levelplus - Private`i + 1}]]; 
          Private`crit0[
             Private`v[
              Pattern[Private`p, 
               Blank[]], 
              Pattern[Private`q, 
               Blank[]]]] := Mod[Private`p + 2 Private`q - 3, 3] == 0; 
          Private`crit1[
             Private`v[
              Pattern[Private`p, 
               Blank[]], 
              Pattern[Private`q, 
               Blank[]]]] := Mod[Private`p + 2 Private`q - 3, 3] == 1; 
          Private`crit2[
             Private`v[
              Pattern[Private`p, 
               Blank[]], 
              Pattern[Private`q, 
               Blank[]]]] := Mod[Private`p + 2 Private`q - 3, 3] == 2; 
          Private`indices0 = Select[Private`indices, Private`crit0]; 
          Private`indices1 = Select[Private`indices, Private`crit1]; 
          Private`indices2 = Select[Private`indices, Private`crit2]; 
          Private`orderedindices = 
           Join[Private`indices0, Private`indices1, Private`indices2]; 
          Private`smallAdjTens = Table[
             Part[
             Private`normalAdjTens, Private`i, Private`j, Private`k, 
              Private`l], {Private`i, 1, Private`levelplus}, {
             Private`j, 1, Private`levelplus - Private`i + 1}, {
             Private`k, 1, Private`levelplus}, {
             Private`l, 1, Private`levelplus - Private`k + 1}]; Private`matbid[
             Private`v[
              Pattern[Private`a, 
               Blank[]], 
              Pattern[Private`b, 
               Blank[]]], 
             Private`v[
              Pattern[Private`c, 
               Blank[]], 
              Pattern[Private`d, 
               Blank[]]]] := 
           Part[Private`smallAdjTens, Private`a, Private`b, Private`c, 
             Private`d]; Private`AdjMatTriality = Table[
             Private`matbid[
              Part[Private`orderedindices, Private`i], 
              Part[Private`orderedindices, Private`j]], {
             Private`i, 1, Private`rk}, {Private`j, 1, Private`rk}]; 
          Private`trisort = 
           ReplaceAll[Private`orderedindices, {Private`v -> List}] - 
            ConstantArray[{1, 1}, Private`rk]; Private`tritolab = Table[
             Flatten[{Private`s, 
               Position[Private`lab, 
                Part[Private`trisort, Private`s]]}], {
             Private`s, 1, Private`rk}]; Private`permutritolab = SparseArray[
             MapThread[Rule, {Private`tritolab, 
               ConstantArray[1, Private`rk]}], {Private`rk, Private`rk}]; 
          Private`permutritolabinverse = SparseArray[
             Inverse[Private`permutritolab]]; 
          Private`AdjMatLevel = 
           Dot[Private`permutritolabinverse, Private`AdjMatTriality, 
             Private`permutritolab]; {
           Private`AdjMatTriality, Private`AdjMatLevel}]; 
       Part[Private`adjacencyMatrices, 2]]), 
    TagSet[adjmatPackage`adjmatfct, 
     MessageName[adjmatPackage`adjmatfct, "usage"], 
     "adjmatfct[n] returns the adjacency matrix of SU(3) at level n"], 
    Private`v = {-Sqrt[3]/2, 1/2}, Private`rs = 1, adjmatPackage`nntoseed = 
    Association[
     1 -> 22, 2 -> 8, 3 -> 1, 4 -> 2, 5 -> 3, 6 -> 0, 7 -> 4, 8 -> 2, 9 -> 0, 
      10 -> 10, 11 -> 1, 12 -> 9], 
    TagSet[adjmatPackage`nntoseed, 
     MessageName[adjmatPackage`nntoseed, "usage"], 
     "nntoseed is association list and nntoseed[NN] gives the RandomSeed to \
be used in GraphPlot in order to display correctly (orientation) the graph of \
adjacency matrices. The list nntoseed should be completed manually."], 
    Private`plotSUNoblade[
      Pattern[Private`mytripleofweights$, 
       Blank[]], 
      Pattern[Private`loccoupling$, 
       Blank[]]] := 
    Module[{Private`adj$, Private`vert$ = Private`mytripleofweights$, 
       Private`grid$, Private`gr2$, Private`grla$, Private`grmu$, 
       Private`grnu$, Private`grEW$, Private`grNESW$, Private`grNWSE$}, 
      Private`adj$ = Private`AdjMatbis; 
      Private`fullinfo = Private`componentsEdgesAndnuc[
         Part[Private`mytripleofweights$, 1], 
         Part[Private`mytripleofweights$, 2], 
         Reverse[
          Part[Private`mytripleofweights$, 3]]]; 
      Private`grid$ = 
       GraphPlot[
        Private`adj$, Method -> {Automatic, "RandomSeed" -> Private`rs}]; 
      Private`grla$ = 
       GraphPlot[Private`adj$, VertexRenderingFunction -> (Apply[Which, 
           Flatten[
            Table[{#2 == Private`lambdalabel[3, Private`s], {
               Text[
                Style[
                 Part[Private`vert$, 1, Private`s], Large, Blue], #, {
                Right, Bottom}], 
               Disk[#, 0.03], {Black}}}, {Private`s, 1, 3 - 1}], 1]]& ), 
         Method -> {Automatic, "RandomSeed" -> Private`rs}]; 
      Private`grmu$ = 
       GraphPlot[Private`adj$, VertexRenderingFunction -> (Apply[Which, 
           Flatten[
            Table[{#2 == Private`mulabel[3, Private`s], {
               Text[
                Style[
                 Part[Private`vert$, 2, Private`s], Large, Blue], #, {
                Left, Bottom}], 
               Disk[#, 0.03], {Black}}}, {Private`s, 1, 3 - 1}], 1]]& ), 
         Method -> {Automatic, "RandomSeed" -> Private`rs}]; 
      Private`grnu$ = 
       GraphPlot[Private`adj$, VertexRenderingFunction -> (Apply[Which, 
           Flatten[
            Table[{#2 == Private`nulabel[3, Private`s], {
               Text[
                Style[
                 Part[Private`vert$, 3, 3 - Private`s], Large, Blue], #, {
                Right, Top}], 
               Disk[#, 0.03], {Black}}}, {Private`s, 1, 3 - 1}], 1]]& ), 
         Method -> {Automatic, "RandomSeed" -> Private`rs}]; 
      Private`grEW$ = 
       GraphPlot[Private`adj$, EdgeRenderingFunction -> (Apply[Which, 
           Flatten[
            Table[
             Flatten[
              Table[{
                And[
                First[#2] == First[Private`u], Last[#2] == Last[Private`u]], {
                
                 Text[
                  Style[
                   Part[
                    Reverse[
                    Part[
                    Part[Private`fullinfo, 2, Private`loccoupling$], 
                    Private`f]], 
                    First[
                    Flatten[
                    Position[
                    Private`edgesEWlabels[Private`f], Private`u]]]], 20], (
                   Part[#, 1] + Part[#, 2])/2]}}, {Private`u, 
                Private`edgesEWlabels[Private`f]}], 1], {
             Private`f, 1, 3 - 1}], 1]]& ), 
         Method -> {Automatic, "RandomSeed" -> Private`rs}]; 
      Private`grNESW$ = 
       GraphPlot[Private`adj$, EdgeRenderingFunction -> (Apply[Which, 
           Flatten[
            Table[
             Flatten[
              Table[{
                And[
                Last[#2] == First[Private`u], First[#2] == Last[Private`u]], {
                
                 Text[
                  Style[
                   Part[
                    Part[
                    Part[Private`fullinfo, 3, Private`loccoupling$], 
                    Private`f], 
                    First[
                    Flatten[
                    Position[
                    Private`edgesNESWlabels[Private`f], Private`u]]]], 20], (
                   Part[#, 1] + Part[#, 2])/2]}}, {Private`u, 
                Private`edgesNESWlabels[Private`f]}], 1], {
             Private`f, 1, 3 - 1}], 1]]& ), 
         Method -> {Automatic, "RandomSeed" -> Private`rs}]; 
      Private`grNWSE$ = 
       GraphPlot[Private`adj$, EdgeRenderingFunction -> (Apply[Which, 
           Flatten[
            Table[
             Flatten[
              Table[{
                And[
                First[#2] == First[Private`u], Last[#2] == Last[Private`u]], {
                
                 Text[
                  Style[
                   Part[
                    Reverse[
                    Part[
                    Part[Private`fullinfo, 4, Private`loccoupling$], 
                    Private`f]], 
                    First[
                    Flatten[
                    Position[
                    Private`edgesNWSElabels[Private`f], Private`u]]]], 20], (
                   Part[#, 1] + Part[#, 2])/2]}}, {Private`u, 
                Private`edgesNWSElabels[Private`f]}], 1], {
             Private`f, 1, 3 - 1}], 1]]& ), 
         Method -> {Automatic, "RandomSeed" -> Private`rs}]; 
      Show[Private`grid$, Private`grla$, Private`grmu$, Private`grnu$, 
        Private`grEW$, Private`grNESW$, Private`grNWSE$]], 
    Attributes[Private`mytripleofweights$] = {Temporary}, 
    Attributes[Private`loccoupling$] = {Temporary}, 
    Attributes[Private`adj$] = {Temporary}, 
    Attributes[Private`vert$] = {Temporary}, 
    Attributes[Private`grid$] = {Temporary}, 
    Attributes[Private`gr2$] = {Temporary}, 
    Attributes[Private`grla$] = {Temporary}, 
    Attributes[Private`grmu$] = {Temporary}, 
    Attributes[Private`grnu$] = {Temporary}, 
    Attributes[Private`grEW$] = {Temporary}, 
    Attributes[Private`grNESW$] = {Temporary}, 
    Attributes[Private`grNWSE$] = {Temporary}, Private`lambdalabel[
      Pattern[Private`n, 
       Blank[]], 
      Pattern[Private`p, 
       Blank[]]] := (1/2) (2 + 3 Private`p + Private`p^2), Private`mulabel[
      Pattern[Private`n, 
       Blank[]], 
      Pattern[Private`p, 
       Blank[]]] := (Private`n + 1) ((Private`n + 2)/2) - Private`p, 
    Private`nulabel[
      Pattern[Private`n, 
       Blank[]], 
      Pattern[Private`p, 
       Blank[]]] := (1/2) (Private`n + Private`n^2 - 2 Private`n 
      Private`p + (-1 + Private`p) Private`p + 2), 
    Private`u = {Sqrt[3]/2, 1/2}, Private`plotAllOblades[
      Pattern[Private`myweights, 
       Blank[]]] := Table[
      Private`plotSUNoblade[Private`myweights, Private`pos], {
      Private`pos, 1, 
       Apply[obladePackage`multiplicity, Private`myweights]}], 
    Private`tensorproductCC[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}] := Part[
      Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}], 5], 
    Private`tensorproductCC[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}, {
       Pattern[Private`nuc, 
        BlankSequence[]]}] := Part[
      Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}, {
       Private`nuc}], 5], $CellContext`limittext = SequenceForm[
      Style[
      "Web version: CHANGE the computation is terminated if it takes more \
than ", 12, Bold], 
      Style[1.5, 12, Bold], 
      Style[" seconds", 12, Bold]], $CellContext`notadmissibletext = 
    "(\[Omega]1, \[Omega]2, \[Omega]3) is not an admissible triple: Modify \
the components and press \"Update\" \n\nTo see all possible choices for \
\!\(\*OverscriptBox[\(\[Omega]3\), \(_\)]\), using the displayed values of \
\[Omega]1 and \[Omega]2 (the list may be long):\n\n Press the button \"Tensor \
product decomposition of \[Omega]1 \[CircleTimes] \[Omega]2\" ", 
    honeycombPackage`plotHoneycombs[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}, {
       Pattern[Private`nu, 
        BlankSequence[]]}] := Switch[
      ValueQ[obladePackage`currentgroup], False, 
      obladePackage`oblade[Length[{Private`lam}] + 1]; 
      honeycombPackage`plotHoneycombs[{Private`lam}, {Private`mu}, {
        Private`nu}], True, 
      If[Length[{Private`lam}] == obladePackage`currentgroup - 1, 
       Private`plotAllHoneycombs[{{Private`lam}, {Private`mu}, {Private`nu}}],
        obladePackage`oblade[Length[{Private`lam}] + 1]; 
       honeycombPackage`plotHoneycombs[{Private`lam}, {Private`mu}, {
         Private`nu}]]], honeycombPackage`plotHoneycombs[{
       Pattern[Private`lamb, 
        BlankSequence[]]}, {
       Pattern[Private`muu, 
        BlankSequence[]]}, {
       Pattern[Private`nuu, 
        BlankSequence[]]}, 
      Pattern[Private`pos, 
       Blank[]]] := Switch[
      ValueQ[obladePackage`currentgroup], False, 
      obladePackage`oblade[Length[{Private`lamb}] + 1]; 
      honeycombPackage`plotHoneycombs[{Private`lamb}, {Private`muu}, {
        Private`nuu}, Private`pos], True, 
      If[Length[{Private`lamb}] == obladePackage`currentgroup - 1, 
       Private`plotSUNhoneycomb[{{Private`lamb}, {Private`muu}, {
         Private`nuu}}, Private`pos], 
       obladePackage`oblade[Length[{Private`lamb}] + 1]; 
       honeycombPackage`plotHoneycombs[{Private`lamb}, {Private`muu}, {
         Private`nuu}, Private`pos]]], 
    TagSet[honeycombPackage`plotHoneycombs, 
     MessageName[honeycombPackage`plotHoneycombs, "usage"], 
     "plotHoneycombs[lambda,mu,nu]returns the list of all honeycombs \
associated with the branching rule lambda,mu -> nu. To display this list as a \
tableform (with no braces) one can do as follows:  li = \
plotOblades[lambda,mu,nu];  GraphicsRow[li,ImageSize\[Rule] Length[li]*300]. \
The command admits and optional argument pos which is an integer chosen \
between 1 and multiplicity[lambda, mu, nu]; if specified, \
plotHoneycombs[lambda,mu,nu, pos] displays only the particular honeycomb \
numbered pos."], Private`plotAllHoneycombs[
      Pattern[Private`myweights, 
       Blank[]]] := Table[
      Private`plotSUNhoneycomb[Private`myweights, Private`pos], {
      Private`pos, 1, 
       Apply[obladePackage`multiplicity, Private`myweights]}], 
    Private`plotSUNhoneycomb[
      Pattern[Private`myweights, 
       Blank[]], 
      Pattern[Private`pos, 
       Blank[]]] := 
    Module[{Private`la = Part[Private`myweights, 1], Private`mu = 
       Part[Private`myweights, 2], Private`nu = Part[Private`myweights, 3], 
       Private`NN, Private`ptg, Private`sidesparts, Private`gra1, 
       Private`gra2}, 
      Private`sidesparts = 
       Private`sidespartsFct[Private`la, Private`mu, Private`nu, Private`pos]; 
      Private`NN = obladePackage`currentgroup; Private`ptg[1, 1] = {0, 0}; 
      Private`ptg[1, 
         Pattern[Private`s, 
          Blank[]]] := 
       Condition[
        Private`ptg[1, Private`s - 1] + 
         Private`u Part[Private`sidesparts, 3, -Private`s/2, -1], 
         EvenQ[Private`s]]; Private`ptg[1, 
         Pattern[Private`s, 
          Blank[]]] := 
       Condition[
        Private`ptg[1, Private`s - 1] - Private`v 
         Part[Private`sidesparts, 2, (Private`s - 1)/2, 1], 
         OddQ[Private`s]]; Private`ptg[
         Pattern[Private`f, 
          Blank[]], 1] := 
       Private`ptg[Private`f - 1, 2] - Private`w 
        Part[
         Private`sidesparts, 1, Private`f - 1, Private`NN - (Private`f - 1)]; 
      Private`ptg[
         Pattern[Private`f, 
          Blank[]], 
         Pattern[Private`s, 
          Blank[]]] := 
       Condition[
        Private`ptg[Private`f, Private`s - 1] + 
         Private`u 
          Part[Private`sidesparts, 3, -(Private`s/2 + Private`f - 1), 
            Private`s/2], 
         EvenQ[Private`s]]; Private`ptg[
         Pattern[Private`f, 
          Blank[]], 
         Pattern[Private`s, 
          Blank[]]] := 
       Condition[
        Private`ptg[Private`f, Private`s - 1] - Private`v 
         Part[Private`sidesparts, 2, (Private`s - 1)/2, Private`f], 
         OddQ[Private`s]]; Private`gra1 = Graphics[
         Join[
          Table[{Black, 
            Point[
             Table[
              Private`ptg[Private`f, Private`s], {
              Private`s, 1, 2 Private`NN - 2 Private`f + 1}]]}, {
           Private`f, 1, Private`NN}], 
          Table[{Blue, 
            Line[
             Table[{
               Private`ptg[Private`f, Private`j], 
               Private`ptg[Private`f, Private`j + 1]}, {
              Private`j, 1, 2 (Private`NN - Private`f)}]]}, {
           Private`f, 1, Private`NN - 1}], 
          Table[{Blue, 
            Line[
             Table[{
               Private`ptg[Private`f, Private`j], 
               Private`ptg[Private`f + 1, Private`j - 1]}, {
              Private`j, 2, 2 (Private`NN - Private`f), 2}]]}, {
           Private`f, 1, Private`NN - 1}], 
          Table[{Red, 
            Table[
             Private`affineSegment[
              Private`ptg[Private`f, Private`j], 2 Private`w], {
             Private`j, 1, 2 Private`NN - Private`f, 2}]}, {Private`f, 1, 1}], 
          Table[{Red, 
            Table[
             Private`affineSegment[
              Private`ptg[Private`f, Private`j], 2 Private`v], {
             Private`j, 1, 1}]}, {Private`f, 1, Private`NN}], 
          Table[{Red, 
            Table[
             Private`affineSegment[
              Private`ptg[Private`f, Private`j], 2 Private`u], {
             Private`j, 2 (Private`NN - Private`f) + 1, 
              2 (Private`NN - Private`f) + 1}]}, {Private`f, 1, Private`NN}]],
          AspectRatio -> 1]; Private`gra2 = Graphics[{
          Table[
           Table[
            Private`segmentLabel[
             Part[Private`sidesparts, 1, Private`f, -Private`j], Black, 
             Private`ptg[Private`f, 2 Private`j], 
             Private`ptg[Private`f + 1, 2 Private`j - 1], {5, 0}], {
            Private`j, 1, Private`NN - Private`f}], {
           Private`f, 1, Private`NN - 1}], 
          Table[
           Table[
            Private`segmentLabel[
             Part[Private`sidesparts, 2, Private`f, Private`j], Black, 
             Private`ptg[Private`j, 2 Private`f], 
             Private`ptg[Private`j, 2 Private`f + 1], {-6, -6}], {
            Private`j, 1, Private`NN - Private`f}], {
           Private`f, 1, Private`NN - 1}], 
          Table[
           Table[
            Private`segmentLabel[
             Part[Private`sidesparts, 3, Private`f, -Private`j], Black, 
             Private`ptg[
             Private`j, 2 Private`NN - 2 Private`j - 2 Private`f + 1], 
             Private`ptg[
             Private`j, 2 Private`NN - 2 Private`j - 2 Private`f + 1 + 1], {
             0, -6}], {Private`j, 1, Private`NN - Private`f}], {
           Private`f, 1, Private`NN - 1}], 
          Table[
           Private`segmentLabel[
            Part[Private`la, Private`f], Blue, Bold, 
            Private`ptg[Private`f, 1] - Private`w, 
            Private`ptg[Private`f + 1, 1] - Private`w, {25, -10}], {
           Private`f, 1, Private`NN - 1}], 
          Table[
           Private`segmentLabel[
            Part[Private`mu, Private`NN - Private`f], Blue, Bold, 
            Private`ptg[Private`f, 2 Private`NN - 2 Private`f + 1] - 
            Private`w, 
            Private`ptg[Private`f + 1, 2 Private`NN - 2 Private`f - 1] - 
            Private`w, {-40, -10}], {Private`f, 1, Private`NN - 1}], 
          Table[
           Private`segmentLabel[
            Part[Private`nu, Private`NN - Private`f], Blue, Bold, 
            Private`ptg[1, 2 Private`NN - 2 Private`f - 1] - Private`w, 
            Private`ptg[1, 2 Private`NN - 2 Private`f + 1] - Private`w, {-10, 
            60}], {Private`f, 1, Private`NN - 1}]}]; 
      Show[Private`gra1, Private`gra2]], Private`sidespartsFct[
      Pattern[Private`lambda, 
       Blank[]], 
      Pattern[Private`mu, 
       Blank[]], 
      Pattern[Private`nu, 
       Blank[]], 
      Pattern[Private`pos, 
       Blank[]]] := 
    Module[{Private`ew, Private`nesw, Private`nwse}, Private`ew = Part[
         obladePackage`edgesEWvalues[Private`lambda, Private`mu, 
          Reverse[Private`nu]], Private`pos]; Private`nesw = Part[
         obladePackage`edgesNESWvalues[Private`lambda, Private`mu, 
          Reverse[Private`nu]], Private`pos]; Private`nwse = Part[
         obladePackage`edgesNWSEvalues[Private`lambda, Private`mu, 
          Reverse[Private`nu]], Private`pos]; {
       Private`ew, Private`nesw, Private`nwse}], 
    obladePackage`edgesEWvalues[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}] := Part[
      Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}], 2], 
    obladePackage`edgesEWvalues[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}, {
       Pattern[Private`nuc, 
        BlankSequence[]]}] := Part[
      Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}, {
       Private`nuc}], 2], 
    TagSet[obladePackage`edgesEWvalues, 
     MessageName[obladePackage`edgesEWvalues, "usage"], 
     "edgesEWvalues[lambda,mu,nucc] returns the list of East-West edges \
values for the branching rule lambda \[CircleTimes] mu \[CircleTimes] nucc -> \
1 or la \[CircleTimes] mu \[Rule] nu with nuc = Reverse[nu]."], 
    obladePackage`edgesNESWvalues[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}] := Part[
      Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}], 3], 
    obladePackage`edgesNESWvalues[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}, {
       Pattern[Private`nuc, 
        BlankSequence[]]}] := Part[
      Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}, {
       Private`nuc}], 3], 
    TagSet[obladePackage`edgesNESWvalues, 
     MessageName[obladePackage`edgesNESWvalues, "usage"], 
     "edgesEWvalues[lambda,mu,nucc] returns the list of NorthEast-SouthWest \
edges values for the branching rule lambda \[CircleTimes] mu \[CircleTimes] \
nucc -> 1 or la \[CircleTimes] mu \[Rule] nu with nuc = Reverse[nu]."], 
    obladePackage`edgesNWSEvalues[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}] := Part[
      Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}], 4], 
    obladePackage`edgesNWSEvalues[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}, {
       Pattern[Private`nuc, 
        BlankSequence[]]}] := Part[
      Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}, {
       Private`nuc}], 4], 
    TagSet[obladePackage`edgesNWSEvalues, 
     MessageName[obladePackage`edgesNWSEvalues, "usage"], 
     "edgesEWvalues[lambda,mu,nucc] returns the list of NorthWest-SouthEast \
edges values for the branching rule lambda \[CircleTimes] mu \[CircleTimes] \
nucc -> 1 or la \[CircleTimes] mu \[Rule] nu with nuc = Reverse[nu]."], 
    Private`w = {0, -1}, Private`affineSegment[
      Pattern[Private`point, 
       Blank[]], 
      Pattern[Private`vect, 
       Blank[]]] := Line[{Private`point, Private`point + Private`vect}], 
    Private`segmentLabel[
      Pattern[Private`txt, 
       Blank[]], 
      Pattern[Private`color, 
       Blank[]], 
      Pattern[Private`p, 
       Blank[]], 
      Pattern[Private`q, 
       Blank[]], 
      Pattern[Private`off, 
       Blank[]]] := Text[
      Style[Private`txt, Private`color, 15], (Private`p + Private`q)/2, 
      Offset[Private`off, {0, -1}]], Private`segmentLabel[
      Pattern[Private`txt, 
       Blank[]], 
      Pattern[Private`color, 
       Blank[]], Bold, 
      Pattern[Private`p, 
       Blank[]], 
      Pattern[Private`q, 
       Blank[]], 
      Pattern[Private`off, 
       Blank[]]] := Text[
      Style[Private`txt, Private`color, Bold, 24], (Private`p + Private`q)/2, 
      
      Offset[Private`off, {0, 0}]], Private`segmentLabel[
      Pattern[Private`txt, 
       Blank[]], 
      Pattern[Private`color, 
       Blank[]], "SemiBold", 
      Pattern[Private`p, 
       Blank[]], 
      Pattern[Private`q, 
       Blank[]], 
      Pattern[Private`off, 
       Blank[]]] := Text[
      Style[
      Private`txt, Private`color, "SemiBold", 24], (Private`p + Private`q)/2, 
      
      Offset[Private`off, {0, 0}]], obladePackage`tensorproduct[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}] := Switch[
      ValueQ[obladePackage`currentgroup], False, 
      obladePackage`oblade[Length[{Private`lam}] + 1]; 
      obladePackage`tensorproduct[{Private`lam}, {Private`mu}], True, 
      If[Length[{Private`lam}] == obladePackage`currentgroup - 1, 
       SortBy[
        Tally[
         Map[Reverse, 
          Private`tensorproductCC[{Private`lam}, {Private`mu}]]], Last], 
       obladePackage`oblade[Length[{Private`lam}] + 1]; 
       obladePackage`tensorproduct[{Private`lam}, {Private`mu}]]], 
    TagSet[obladePackage`tensorproduct, 
     MessageName[obladePackage`tensorproduct, "usage"], 
     "tensorproduct[lambda,mu] returns the decomposition into irreducible \
components nu of a tensor product of two irreps lambda, mu, of the Lie group \
SU(n), given by the components of their highest weights along the basis of \
fundamental weights.  The last entry of each term is its multiplicity."], 
    Attributes[$CellContext`makeRow$] = {Temporary}, 
    Attributes[$CellContext`rowIndex$] = {Temporary}, 
    Attributes[$CellContext`colIndex$] = {
     Temporary}, $CellContext`abouttabletext = {
     "A triple of irreducible representations (\[Omega]1, \[Omega]2, \
\[Omega]3) specified by their higest weights is admissible if \[Omega]1 \
\[CircleTimes] \[Omega]2 \[CircleTimes] \[Omega]3 contains \
\[DoubleStruckCapitalC] (the scalars),", 
      "or equivalently if the decomposition of \[Omega]1 \[CircleTimes] \
\[Omega]2 into a direct sum contains \!\(\*OverscriptBox[\(\[Omega]3\), \
\(_\)]\) (the conjugate of \[Omega]3).", 
      "Lines of the above table are the components of three highest weights (\
\[Omega]1, \[Omega]2; \!\(\*OverscriptBox[\(\[Omega]3\), \(_\)]\)) in the \
basis of fundamental weights (Dynkin basis).", 
      "The triple (\[Omega]1, \[Omega]2, \[Omega]3) should be admissible.", 
      "", "FILL THE ABOVE TABLE (USE TABS) AND HIT \"Update Components\".", 
      "If needed, the decomposition of \[Omega]1 \[CircleTimes] \[Omega]2 as \
a direct sum is obtained by clicking the button \"Tensor product \
decomposition of \[Omega]1 \[CircleTimes] \[Omega]2 \"; the last entry of \
each term returned by this command is its multiplicity; warning: the output \
can be quite long. "}, $CellContext`aboutobladetext = {
     "A triplet of multiplicity m is associated with m distinct couplings \
represented by pictographs.", 
      "There are several types of pictographs: BZ-triangles, KT-honeycombs, \
O-blades. Here we display O-blades (or oblades).", 
      "Display all pictographs, one at a time, by increasing or descreasing \
the count index (buttons Next pictograph, Previous pictograph, or the popup \
menu)."}}]], "Output",ExpressionUUID->"00000000-0000-0000-0000-000000000000"]
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

Cell[TextData[StyleBox["Given an admissible triple, the program determines \
its multiplicity and draws the corresponding honeycombs.\nThis can be \
explained in terms of representation theory (see the subsection Details And \
References), or in a purely combinatorial way, see the next subsection :  \
\[OpenCurlyDoubleQuote]The SU(N) game\[CloseCurlyDoubleQuote].",
 FontColor->GrayLevel[0]]], "Text",ExpressionUUID->"00000000-0000-0000-0000-\
000000000000"]
}, Open  ]],

Cell[CellGroupData[{

Cell["THE SU(N) GAME", "Subsection",
 CellFrame->{{0, 0}, {1, 0}},
 CellFrameColor->RGBColor[0.87, 0.87, 0.87],
 FontFamily->"Helvetica",
 FontSize->12,
 FontWeight->"Bold",
 FontColor->RGBColor[0.597406, 0, 0.0527047],
 CellTags->"suntag",ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[BoxData[
 GraphicsBox[{{{
     {GrayLevel[0], 
      PointBox[NCache[{{0, 0}, {
         Rational[19, 2] 3^Rational[1, 2], Rational[19, 2]}, {
         10 3^Rational[1, 2], 9}, {13 3^Rational[1, 2], 12}, {
         15 3^Rational[1, 2], 10}, {
         Rational[31, 2] 3^Rational[1, 2], Rational[21, 2]}, {
         Rational[41, 2] 3^Rational[1, 2], Rational[11, 2]}}, {{0, 0}, {
         16.454482671904334`, 9.5}, {17.32050807568877, 9}, {
         22.516660498395403`, 12}, {25.980762113533157`, 10}, {
         26.846787517317598`, 10.5}, {35.50704155516198, 5.5}}]]}}, {
     {GrayLevel[0], 
      PointBox[NCache[{{Rational[19, 2] 3^Rational[1, 2], Rational[23, 2]}, {
         12 3^Rational[1, 2], 14}, {13 3^Rational[1, 2], 13}, {
         14 3^Rational[1, 2], 14}, {
         Rational[31, 2] 3^Rational[1, 2], Rational[25, 2]}}, {{
         16.454482671904334`, 11.5}, {20.784609690826528`, 14}, {
         22.516660498395403`, 13}, {24.24871130596428, 14}, {
         26.846787517317598`, 12.5}}]]}}, {
     {GrayLevel[0], 
      PointBox[NCache[{{12 3^Rational[1, 2], 22}, {
         Rational[25, 2] 3^Rational[1, 2], Rational[45, 2]}, {
         14 3^Rational[1, 2], 21}}, {{20.784609690826528`, 22}, {
         21.650635094610966`, 22.5}, {24.24871130596428, 21}}]]}}, {
     {GrayLevel[0], 
      PointBox[NCache[{{
         Rational[25, 2] 3^Rational[1, 2], Rational[53, 2]}}, {{
        21.650635094610966`, 26.5}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{0, 0}, {
          Rational[19, 2] 3^Rational[1, 2], Rational[19, 2]}}, {{
          Rational[19, 2] 3^Rational[1, 2], Rational[19, 2]}, {
          10 3^Rational[1, 2], 9}}, {{10 3^Rational[1, 2], 9}, {
          13 3^Rational[1, 2], 12}}, {{13 3^Rational[1, 2], 12}, {
          15 3^Rational[1, 2], 10}}, {{15 3^Rational[1, 2], 10}, {
          Rational[31, 2] 3^Rational[1, 2], Rational[21, 2]}}, {{
          Rational[31, 2] 3^Rational[1, 2], Rational[21, 2]}, {
          Rational[41, 2] 3^Rational[1, 2], Rational[11, 2]}}}, {{{0, 0}, {
          16.454482671904334`, 9.5}}, {{16.454482671904334`, 9.5}, {
          17.32050807568877, 9}}, {{17.32050807568877, 9}, {
          22.516660498395403`, 12}}, {{22.516660498395403`, 12}, {
          25.980762113533157`, 10}}, {{25.980762113533157`, 10}, {
          26.846787517317598`, 10.5}}, {{26.846787517317598`, 10.5}, {
         35.50704155516198, 5.5}}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{Rational[19, 2] 3^Rational[1, 2], Rational[23, 2]}, {
          12 3^Rational[1, 2], 14}}, {{12 3^Rational[1, 2], 14}, {
          13 3^Rational[1, 2], 13}}, {{13 3^Rational[1, 2], 13}, {
          14 3^Rational[1, 2], 14}}, {{14 3^Rational[1, 2], 14}, {
          Rational[31, 2] 3^Rational[1, 2], Rational[25, 2]}}}, {{{
          16.454482671904334`, 11.5}, {20.784609690826528`, 14}}, {{
          20.784609690826528`, 14}, {22.516660498395403`, 13}}, {{
          22.516660498395403`, 13}, {24.24871130596428, 14}}, {{
          24.24871130596428, 14}, {26.846787517317598`, 12.5}}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{12 3^Rational[1, 2], 22}, {
          Rational[25, 2] 3^Rational[1, 2], Rational[45, 2]}}, {{
          Rational[25, 2] 3^Rational[1, 2], Rational[45, 2]}, {
          14 3^Rational[1, 2], 21}}}, {{{20.784609690826528`, 22}, {
          21.650635094610966`, 22.5}}, {{21.650635094610966`, 22.5}, {
          24.24871130596428, 21}}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{Rational[19, 2] 3^Rational[1, 2], Rational[19, 2]}, {
          Rational[19, 2] 3^Rational[1, 2], Rational[23, 2]}}, {{
          13 3^Rational[1, 2], 12}, {13 3^Rational[1, 2], 13}}, {{
          Rational[31, 2] 3^Rational[1, 2], Rational[21, 2]}, {
          Rational[31, 2] 3^Rational[1, 2], Rational[25, 2]}}}, {{{
         16.454482671904334`, 9.5}, {16.454482671904334`, 
         11.5}}, {{22.516660498395403`, 12}, {22.516660498395403`, 13}}, {{
         26.846787517317598`, 10.5}, {26.846787517317598`, 12.5}}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{12 3^Rational[1, 2], 14}, {
          12 3^Rational[1, 2], 22}}, {{14 3^Rational[1, 2], 14}, {
          14 3^Rational[1, 2], 21}}}, {{{20.784609690826528`, 14}, {
          20.784609690826528`, 22}}, {{24.24871130596428, 14}, {
          24.24871130596428, 21}}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{Rational[25, 2] 3^Rational[1, 2], Rational[45, 2]}, {
          Rational[25, 2] 3^Rational[1, 2], Rational[53, 2]}}}, {{{
        21.650635094610966`, 22.5}, {21.650635094610966`, 26.5}}}]]}}, {
     {RGBColor[1, 0, 0], LineBox[{{0, 0}, {0, -2}}], 
      LineBox[NCache[{{10 3^Rational[1, 2], 9}, {10 3^Rational[1, 2], 7}}, {{
         17.32050807568877, 9}, {17.32050807568877, 7}}]], 
      LineBox[NCache[{{15 3^Rational[1, 2], 10}, {15 3^Rational[1, 2], 8}}, {{
         25.980762113533157`, 10}, {25.980762113533157`, 8}}]], 
      LineBox[NCache[{{Rational[41, 2] 3^Rational[1, 2], Rational[11, 2]}, {
         Rational[41, 2] 3^Rational[1, 2], Rational[7, 2]}}, {{
        35.50704155516198, 5.5}, {35.50704155516198, 3.5}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{0, 0}, {-3^Rational[1, 2], 1}}, {{0, 
         0}, {-1.7320508075688772`, 1}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{Rational[19, 2] 3^Rational[1, 2], Rational[23, 2]}, {
         Rational[17, 2] 3^Rational[1, 2], Rational[25, 2]}}, {{
        16.454482671904334`, 11.5}, {14.722431864335457`, 12.5}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{12 3^Rational[1, 2], 22}, {
         11 3^Rational[1, 2], 23}}, {{20.784609690826528`, 22}, {
         19.05255888325765, 23}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{Rational[25, 2] 3^Rational[1, 2], Rational[53, 2]}, {
         Rational[23, 2] 3^Rational[1, 2], Rational[55, 2]}}, {{
        21.650635094610966`, 26.5}, {19.918584287042087`, 27.5}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{Rational[41, 2] 3^Rational[1, 2], Rational[11, 2]}, {
         Rational[43, 2] 3^Rational[1, 2], Rational[13, 2]}}, {{
        35.50704155516198, 5.5}, {37.23909236273086, 6.5}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{Rational[31, 2] 3^Rational[1, 2], Rational[25, 2]}, {
         Rational[33, 2] 3^Rational[1, 2], Rational[27, 2]}}, {{
        26.846787517317598`, 12.5}, {28.578838324886473`, 13.5}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{14 3^Rational[1, 2], 21}, {
         15 3^Rational[1, 2], 22}}, {{24.24871130596428, 21}, {
         25.980762113533157`, 22}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{Rational[25, 2] 3^Rational[1, 2], Rational[53, 2]}, {
         Rational[27, 2] 3^Rational[1, 2], Rational[55, 2]}}, {{
        21.650635094610966`, 26.5}, {23.38268590217984, 27.5}}]]}}}, {{{
      InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[19, 2] 3^Rational[1, 2], Rational[21, 2]}, {
        16.454482671904334`, 10.5}], Offset[{5, 0}, {0, -1}]], InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{13 3^Rational[1, 2], Rational[25, 2]}, {22.516660498395403`, 
        12.5}], Offset[{5, 0}, {0, -1}]], InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[31, 2] 3^Rational[1, 2], Rational[23, 2]}, {
        26.846787517317598`, 11.5}], Offset[{5, 0}, {0, -1}]]}, {InsetBox[
       StyleBox["8",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{12 3^Rational[1, 2], 18}, {20.784609690826528`, 18}], 
       Offset[{5, 0}, {0, -1}]], InsetBox[
       StyleBox["7",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{14 3^Rational[1, 2], Rational[35, 2]}, {24.24871130596428, 
        17.5}], Offset[{5, 0}, {0, -1}]]}, {InsetBox[
       StyleBox["4",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[25, 2] 3^Rational[1, 2], Rational[49, 2]}, {
        21.650635094610966`, 24.5}], Offset[{5, 0}, {0, -1}]]}}, {{InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[39, 4] 3^Rational[1, 2], Rational[37, 4]}, {
        16.887495373796554`, 9.25}], Offset[{-6, -6}, {0, -1}]], InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[25, 2] 3^Rational[1, 2], Rational[27, 2]}, {
        21.650635094610966`, 13.5}], Offset[{-6, -6}, {0, -1}]], InsetBox[
       StyleBox["3",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[53, 4] 3^Rational[1, 2], Rational[87, 4]}, {
        22.949673200287624`, 21.75}], Offset[{-6, -6}, {0, -1}]]}, {InsetBox[
       StyleBox["4",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{14 3^Rational[1, 2], 11}, {24.24871130596428, 11}], 
       Offset[{-6, -6}, {0, -1}]], InsetBox[
       StyleBox["3",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[59, 4] 3^Rational[1, 2], Rational[53, 4]}, {
        25.54774941164094, 13.25}], Offset[{-6, -6}, {0, -1}]]}, {InsetBox[
       StyleBox["10",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{18 3^Rational[1, 2], 8}, {31.17691453623979, 8}], 
       Offset[{-6, -6}, {0, -1}]]}}, {{InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[61, 4] 3^Rational[1, 2], Rational[41, 4]}, {
        26.413774815425377`, 10.25}], Offset[{0, -6}, {0, -1}]], InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[27, 2] 3^Rational[1, 2], Rational[27, 2]}, {
        23.38268590217984, 13.5}], Offset[{0, -6}, {0, -1}]], InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[49, 4] 3^Rational[1, 2], Rational[89, 4]}, {
        21.217622392718745`, 22.25}], Offset[{0, -6}, {0, -1}]]}, {InsetBox[
       StyleBox["6",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[23, 2] 3^Rational[1, 2], Rational[21, 2]}, {
        19.918584287042087`, 10.5}], Offset[{0, -6}, {0, -1}]], InsetBox[
       StyleBox["5",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[43, 4] 3^Rational[1, 2], Rational[51, 4]}, {
        18.61954618136543, 12.75}], Offset[{0, -6}, {0, -1}]]}, {InsetBox[
       StyleBox["19",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[19, 4] 3^Rational[1, 2], Rational[19, 4]}, {
        8.227241335952167, 4.75}], Offset[{0, -6}, {0, -1}]]}}, {InsetBox[
      StyleBox["21",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[19, 4] 3^Rational[1, 2], Rational[27, 4]}, {
       8.227241335952167, 6.75}], Offset[{25, -10}, {0, 0}]], InsetBox[
      StyleBox["13",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[43, 4] 3^Rational[1, 2], Rational[71, 4]}, {
       18.61954618136543, 17.75}], Offset[{25, -10}, {0, 0}]], InsetBox[
      StyleBox["5",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[49, 4] 3^Rational[1, 2], Rational[101, 4]}, {
       21.217622392718745`, 25.25}], Offset[{25, -10}, {0, 0}]]}, {InsetBox[
      StyleBox["12",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{18 3^Rational[1, 2], 10}, {31.17691453623979, 10}], 
      Offset[{-40, -10}, {0, 0}]], InsetBox[
      StyleBox["10",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[59, 4] 3^Rational[1, 2], Rational[71, 4]}, {
       25.54774941164094, 17.75}], Offset[{-40, -10}, {0, 0}]], InsetBox[
      StyleBox["7",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[53, 4] 3^Rational[1, 2], Rational[99, 4]}, {
       22.949673200287624`, 24.75}], Offset[{-40, -10}, {0, 0}]]}, {InsetBox[
      StyleBox["11",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[71, 4] 3^Rational[1, 2], Rational[35, 4]}, {
       30.74390183434757, 8.75}], Offset[{-10, 60}, {0, 0}]], InsetBox[
      StyleBox["10",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[25, 2] 3^Rational[1, 2], Rational[21, 2]}, {
       21.650635094610966`, 10.5}], Offset[{-10, 60}, {0, 0}]], InsetBox[
      StyleBox["20",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{5 3^Rational[1, 2], Rational[11, 2]}, {8.660254037844386, 5.5}],
       Offset[{-10, 60}, {0, 0}]]}}},
  AspectRatio->1,
  ImageSize->Large]], "Input",
 Editable->False,
 Evaluatable->False,ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[TextData[{
 "External faces of the honeycombs (excluding corners) are given: for each \
direction (NW, NE, S) there are N-1 faces are labelled with N-1 arbitrary \
non-negative integers. \nInternal edges carry non-negative integers.\n\n\
Problem: find all the pictographs obeying the following constraints: \n\n\t",
 StyleBox["Conservation of integers on each face (its label is equal to the \
sum of the two edges that bound the face).\n\tFor each hexagon of the \
honeycomb,  pair of edges that are adjacent to directly opposite angles have \
the same sum.\n\t\n",
  FontColor->RGBColor[0.6, 0.4, 0.2]],
 StyleBox["A triple (three sides, i.e. three triplets of N-1 non-negative \
integers ) is called admissible if the above problem admits a solution. \
Arbitrary triples are usually not admissible. \nFor SU(N), honeycombs have \
(N-1)(N-2)/2 internal hexagons, but they may be partially or totally \
degenerate (vanishing edges).\nGiven two sides, the set of admissible triples \
is finite : the third side has to be chosen in a specific list (the one \
returned by the  tensorproduct command).\nA chosen admissible triple may have \
multiplicity (several pictographs with the same sides) : the various \
solutions differ by the values of internal edges.\nThe solutions are given by \
the pictographs. Here we study the honeycomb version (see also the O-blade \
version in the obladesSUn program).\n\nExample\n",
  FontColor->GrayLevel[0]],
 StyleBox["\t\nConsider SU(5)\n\n{3,4,3,5} ",
  FontColor->RGBColor[0.6, 0.4, 0.2]],
 Cell[BoxData[
  FormBox["\[CircleTimes]", TraditionalForm]],
  FontColor->RGBColor[0.6, 0.4, 0.2],ExpressionUUID->
  "ea09c4d2-5224-4796-a25d-93024139378a"],
 StyleBox[" {4,3,5,4} \[LongRightArrow]{3,4,4,7}\nThis is one of the 5223 \
possible branchings returned by the function tensorproduct.\nIts multiplicity \
is 1427, which is then also the number of honeycombs with those given sides.\n\
Among them, 37 are non degenerated (none of their internal sides vanishes).\n\
Their positions in the list (count index) returned by the function \
nondegeneratedObladesMain (defined below in the section Examples) \n\
{168,169,172,252,255,256,259,286,287,290,486,487,496,497,574,577,584,587,588,\
591,598,601,617,625,626,629,637,717,720,729,732,755,758,766,769,790,799}\n\
Here are two of them.",
  FontColor->RGBColor[0.6, 0.4, 0.2]]
}], "Text",
 CellTags->"suntag",ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  StyleBox["plotHoneycombs", "Text"], 
  StyleBox["[", "Text"], 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"3", ",", "4", ",", "3", ",", "5"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"4", ",", "3", ",", "5", ",", "4"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"3", ",", "4", ",", "4", ",", "7"}], "}"}], ",", "168"}], 
  "]"}]], "Input",ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[BoxData[
 GraphicsBox[{{{
     {GrayLevel[0], 
      PointBox[NCache[{{0, 0}, {3^Rational[1, 2], 1}, {
         Rational[3, 2] 3^Rational[1, 2], Rational[1, 2]}, {
         Rational[5, 2] 3^Rational[1, 2], Rational[3, 2]}, {
         Rational[7, 2] 3^Rational[1, 2], Rational[1, 2]}, {
         4 3^Rational[1, 2], 1}, {
         Rational[11, 2] 3^Rational[1, 2], Rational[-1, 2]}, {
         Rational[15, 2] 3^Rational[1, 2], Rational[3, 2]}, {
         9 3^Rational[1, 2], 0}}, {{0, 0}, {1.7320508075688772`, 1}, {
         2.598076211353316, 0.5}, {4.330127018922193, 1.5}, {6.06217782649107,
          0.5}, {6.928203230275509, 1}, {9.526279441628825, -0.5}, {
         12.990381056766578`, 1.5}, {15.588457268119894`, 0}}]]}}, {
     {GrayLevel[0], 
      PointBox[NCache[{{3^Rational[1, 2], 2}, {2 3^Rational[1, 2], 3}, {
         Rational[5, 2] 3^Rational[1, 2], Rational[5, 2]}, {
         Rational[7, 2] 3^Rational[1, 2], Rational[7, 2]}, {
         4 3^Rational[1, 2], 3}, {
         Rational[11, 2] 3^Rational[1, 2], Rational[9, 2]}, {
         Rational[15, 2] 3^Rational[1, 2], Rational[5, 2]}}, {{
         1.7320508075688772`, 2}, {3.4641016151377544`, 3}, {
         4.330127018922193, 2.5}, {6.06217782649107, 3.5}, {
         6.928203230275509, 3}, {9.526279441628825, 4.5}, {
         12.990381056766578`, 2.5}}]]}}, {
     {GrayLevel[0], 
      PointBox[NCache[{{2 3^Rational[1, 2], 5}, {3 3^Rational[1, 2], 6}, {
         Rational[7, 2] 3^Rational[1, 2], Rational[11, 2]}, {
         Rational[9, 2] 3^Rational[1, 2], Rational[13, 2]}, {
         Rational[11, 2] 3^Rational[1, 2], Rational[11, 2]}}, {{
         3.4641016151377544`, 5}, {5.196152422706632, 6}, {6.06217782649107, 
         5.5}, {7.794228634059947, 6.5}, {9.526279441628825, 5.5}}]]}}, {
     {GrayLevel[0], 
      PointBox[NCache[{{3 3^Rational[1, 2], 7}, {4 3^Rational[1, 2], 8}, {
         Rational[9, 2] 3^Rational[1, 2], Rational[15, 2]}}, {{
         5.196152422706632, 7}, {6.928203230275509, 8}, {7.794228634059947, 
         7.5}}]]}}, {
     {GrayLevel[0], 
      PointBox[NCache[{{4 3^Rational[1, 2], 11}}, {{
         6.928203230275509, 11}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[
       NCache[{{{0, 0}, {3^Rational[1, 2], 1}}, {{3^Rational[1, 2], 1}, {
          Rational[3, 2] 3^Rational[1, 2], Rational[1, 2]}}, {{
          Rational[3, 2] 3^Rational[1, 2], Rational[1, 2]}, {
          Rational[5, 2] 3^Rational[1, 2], Rational[3, 2]}}, {{
          Rational[5, 2] 3^Rational[1, 2], Rational[3, 2]}, {
          Rational[7, 2] 3^Rational[1, 2], Rational[1, 2]}}, {{
          Rational[7, 2] 3^Rational[1, 2], Rational[1, 2]}, {
          4 3^Rational[1, 2], 1}}, {{4 3^Rational[1, 2], 1}, {
          Rational[11, 2] 3^Rational[1, 2], Rational[-1, 2]}}, {{
          Rational[11, 2] 3^Rational[1, 2], Rational[-1, 2]}, {
          Rational[15, 2] 3^Rational[1, 2], Rational[3, 2]}}, {{
          Rational[15, 2] 3^Rational[1, 2], Rational[3, 2]}, {
          9 3^Rational[1, 2], 0}}}, {{{0, 0}, {1.7320508075688772`, 1}}, {{
          1.7320508075688772`, 1}, {2.598076211353316, 0.5}}, {{
         2.598076211353316, 0.5}, {4.330127018922193, 1.5}}, {{
         4.330127018922193, 1.5}, {6.06217782649107, 
         0.5}}, {{6.06217782649107, 0.5}, {6.928203230275509, 1}}, {{
          6.928203230275509, 1}, {9.526279441628825, -0.5}}, {{
         9.526279441628825, -0.5}, {12.990381056766578`, 
         1.5}}, {{12.990381056766578`, 1.5}, {
          15.588457268119894`, 0}}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{3^Rational[1, 2], 2}, {2 3^Rational[1, 2], 3}}, {{
          2 3^Rational[1, 2], 3}, {
          Rational[5, 2] 3^Rational[1, 2], Rational[5, 2]}}, {{
          Rational[5, 2] 3^Rational[1, 2], Rational[5, 2]}, {
          Rational[7, 2] 3^Rational[1, 2], Rational[7, 2]}}, {{
          Rational[7, 2] 3^Rational[1, 2], Rational[7, 2]}, {
          4 3^Rational[1, 2], 3}}, {{4 3^Rational[1, 2], 3}, {
          Rational[11, 2] 3^Rational[1, 2], Rational[9, 2]}}, {{
          Rational[11, 2] 3^Rational[1, 2], Rational[9, 2]}, {
          Rational[15, 2] 3^Rational[1, 2], Rational[5, 2]}}}, {{{
          1.7320508075688772`, 2}, {3.4641016151377544`, 3}}, {{
          3.4641016151377544`, 3}, {4.330127018922193, 2.5}}, {{
         4.330127018922193, 2.5}, {6.06217782649107, 
         3.5}}, {{6.06217782649107, 3.5}, {6.928203230275509, 3}}, {{
          6.928203230275509, 3}, {9.526279441628825, 4.5}}, {{
         9.526279441628825, 4.5}, {12.990381056766578`, 2.5}}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{2 3^Rational[1, 2], 5}, {3 3^Rational[1, 2], 6}}, {{
          3 3^Rational[1, 2], 6}, {
          Rational[7, 2] 3^Rational[1, 2], Rational[11, 2]}}, {{
          Rational[7, 2] 3^Rational[1, 2], Rational[11, 2]}, {
          Rational[9, 2] 3^Rational[1, 2], Rational[13, 2]}}, {{
          Rational[9, 2] 3^Rational[1, 2], Rational[13, 2]}, {
          Rational[11, 2] 3^Rational[1, 2], Rational[11, 2]}}}, {{{
          3.4641016151377544`, 5}, {5.196152422706632, 6}}, {{
          5.196152422706632, 6}, {6.06217782649107, 5.5}}, {{6.06217782649107,
          5.5}, {7.794228634059947, 6.5}}, {{7.794228634059947, 6.5}, {
         9.526279441628825, 5.5}}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{3 3^Rational[1, 2], 7}, {4 3^Rational[1, 2], 8}}, {{
          4 3^Rational[1, 2], 8}, {
          Rational[9, 2] 3^Rational[1, 2], Rational[15, 2]}}}, {{{
          5.196152422706632, 7}, {6.928203230275509, 8}}, {{
          6.928203230275509, 8}, {7.794228634059947, 7.5}}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{3^Rational[1, 2], 1}, {3^Rational[1, 2], 2}}, {{
          Rational[5, 2] 3^Rational[1, 2], Rational[3, 2]}, {
          Rational[5, 2] 3^Rational[1, 2], Rational[5, 2]}}, {{
          4 3^Rational[1, 2], 1}, {4 3^Rational[1, 2], 3}}, {{
          Rational[15, 2] 3^Rational[1, 2], Rational[3, 2]}, {
          Rational[15, 2] 3^Rational[1, 2], Rational[5, 2]}}}, {{{
          1.7320508075688772`, 1}, {1.7320508075688772`, 2}}, {{
         4.330127018922193, 1.5}, {4.330127018922193, 
         2.5}}, {{6.928203230275509, 1}, {6.928203230275509, 3}}, {{
         12.990381056766578`, 1.5}, {12.990381056766578`, 2.5}}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{2 3^Rational[1, 2], 3}, {2 3^Rational[1, 2], 5}}, {{
          Rational[7, 2] 3^Rational[1, 2], Rational[7, 2]}, {
          Rational[7, 2] 3^Rational[1, 2], Rational[11, 2]}}, {{
          Rational[11, 2] 3^Rational[1, 2], Rational[9, 2]}, {
          Rational[11, 2] 3^Rational[1, 2], Rational[11, 2]}}}, {{{
          3.4641016151377544`, 3}, {3.4641016151377544`, 5}}, {{
         6.06217782649107, 3.5}, {6.06217782649107, 5.5}}, {{
         9.526279441628825, 4.5}, {9.526279441628825, 5.5}}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{3 3^Rational[1, 2], 6}, {3 3^Rational[1, 2], 7}}, {{
          Rational[9, 2] 3^Rational[1, 2], Rational[13, 2]}, {
          Rational[9, 2] 3^Rational[1, 2], Rational[15, 2]}}}, {{{
          5.196152422706632, 6}, {5.196152422706632, 7}}, {{7.794228634059947,
          6.5}, {7.794228634059947, 7.5}}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{4 3^Rational[1, 2], 8}, {
          4 3^Rational[1, 2], 11}}}, {{{6.928203230275509, 8}, {
          6.928203230275509, 11}}}]]}}, {
     {RGBColor[1, 0, 0], LineBox[{{0, 0}, {0, -2}}], 
      LineBox[NCache[{{Rational[3, 2] 3^Rational[1, 2], Rational[1, 2]}, {
         Rational[3, 2] 3^Rational[1, 2], Rational[-3, 2]}}, {{
        2.598076211353316, 0.5}, {2.598076211353316, -1.5}}]], 
      LineBox[NCache[{{Rational[7, 2] 3^Rational[1, 2], Rational[1, 2]}, {
         Rational[7, 2] 3^Rational[1, 2], Rational[-3, 2]}}, {{
        6.06217782649107, 0.5}, {6.06217782649107, -1.5}}]], 
      LineBox[NCache[{{Rational[11, 2] 3^Rational[1, 2], Rational[-1, 2]}, {
         Rational[11, 2] 3^Rational[1, 2], Rational[-5, 2]}}, {{
        9.526279441628825, -0.5}, {9.526279441628825, -2.5}}]], 
      LineBox[NCache[{{9 3^Rational[1, 2], 0}, {9 3^Rational[1, 2], -2}}, {{
         15.588457268119894`, 0}, {15.588457268119894`, -2}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{0, 0}, {-3^Rational[1, 2], 1}}, {{0, 
         0}, {-1.7320508075688772`, 1}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{3^Rational[1, 2], 2}, {0, 3}}, {{
         1.7320508075688772`, 2}, {0, 3}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{2 3^Rational[1, 2], 5}, {3^Rational[1, 2], 6}}, {{
         3.4641016151377544`, 5}, {1.7320508075688772`, 6}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{3 3^Rational[1, 2], 7}, {2 3^Rational[1, 2], 8}}, {{
         5.196152422706632, 7}, {3.4641016151377544`, 8}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{4 3^Rational[1, 2], 11}, {3 3^Rational[1, 2], 12}}, {{
         6.928203230275509, 11}, {5.196152422706632, 12}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{9 3^Rational[1, 2], 0}, {10 3^Rational[1, 2], 1}}, {{
         15.588457268119894`, 0}, {17.32050807568877, 1}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{Rational[15, 2] 3^Rational[1, 2], Rational[5, 2]}, {
         Rational[17, 2] 3^Rational[1, 2], Rational[7, 2]}}, {{
        12.990381056766578`, 2.5}, {14.722431864335457`, 3.5}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{Rational[11, 2] 3^Rational[1, 2], Rational[11, 2]}, {
         Rational[13, 2] 3^Rational[1, 2], Rational[13, 2]}}, {{
        9.526279441628825, 5.5}, {11.258330249197702`, 6.5}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{Rational[9, 2] 3^Rational[1, 2], Rational[15, 2]}, {
         Rational[11, 2] 3^Rational[1, 2], Rational[17, 2]}}, {{
        7.794228634059947, 7.5}, {9.526279441628825, 8.5}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{4 3^Rational[1, 2], 11}, {5 3^Rational[1, 2], 12}}, {{
         6.928203230275509, 11}, {8.660254037844386, 12}}]]}}}, {{{InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{3^Rational[1, 2], Rational[3, 2]}, {1.7320508075688772`, 1.5}],
        Offset[{5, 0}, {0, -1}]], InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[5, 2] 3^Rational[1, 2], 2}, {4.330127018922193, 2}], 
       Offset[{5, 0}, {0, -1}]], InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{4 3^Rational[1, 2], 2}, {6.928203230275509, 2}], 
       Offset[{5, 0}, {0, -1}]], InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[15, 2] 3^Rational[1, 2], 2}, {
        12.990381056766578`, 2}], Offset[{5, 0}, {0, -1}]]}, {InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{2 3^Rational[1, 2], 4}, {3.4641016151377544`, 4}], 
       Offset[{5, 0}, {0, -1}]], InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[7, 2] 3^Rational[1, 2], Rational[9, 2]}, {
        6.06217782649107, 4.5}], Offset[{5, 0}, {0, -1}]], InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[11, 2] 3^Rational[1, 2], 5}, {9.526279441628825, 5}], 
       Offset[{5, 0}, {0, -1}]]}, {InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{3 3^Rational[1, 2], Rational[13, 2]}, {5.196152422706632, 
        6.5}], Offset[{5, 0}, {0, -1}]], InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[9, 2] 3^Rational[1, 2], 7}, {7.794228634059947, 7}], 
       Offset[{5, 0}, {0, -1}]]}, {InsetBox[
       StyleBox["3",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{4 3^Rational[1, 2], Rational[19, 2]}, {6.928203230275509, 
        9.5}], Offset[{5, 0}, {0, -1}]]}}, {{InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[5, 4] 3^Rational[1, 2], Rational[3, 4]}, {
        2.1650635094610964`, 0.75}], Offset[{-6, -6}, {0, -1}]], InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[9, 4] 3^Rational[1, 2], Rational[11, 4]}, {
        3.8971143170299736`, 2.75}], Offset[{-6, -6}, {0, -1}]], InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[13, 4] 3^Rational[1, 2], Rational[23, 4]}, {
        5.629165124598851, 5.75}], Offset[{-6, -6}, {0, -1}]], InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[17, 4] 3^Rational[1, 2], Rational[31, 4]}, {
        7.361215932167728, 7.75}], Offset[{-6, -6}, {0, -1}]]}, {InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{3 3^Rational[1, 2], 1}, {5.196152422706632, 1}], 
       Offset[{-6, -6}, {0, -1}]], InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[15, 4] 3^Rational[1, 2], Rational[13, 4]}, {
        6.495190528383289, 3.25}], Offset[{-6, -6}, {0, -1}]], InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{5 3^Rational[1, 2], 6}, {8.660254037844386, 6}], 
       Offset[{-6, -6}, {0, -1}]]}, {InsetBox[
       StyleBox["3",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[19, 4] 3^Rational[1, 2], Rational[1, 4]}, {
        8.227241335952167, 0.25}], Offset[{-6, -6}, {0, -1}]], InsetBox[
       StyleBox["4",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[13, 2] 3^Rational[1, 2], Rational[7, 2]}, {
        11.258330249197702`, 3.5}], Offset[{-6, -6}, {0, -1}]]}, {InsetBox[
       StyleBox["3",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[33, 4] 3^Rational[1, 2], Rational[3, 4]}, {
        14.289419162443236`, 0.75}], Offset[{-6, -6}, {0, -1}]]}}, {{
      InsetBox[
       StyleBox["4",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[13, 2] 3^Rational[1, 2], Rational[1, 2]}, {
        11.258330249197702`, 0.5}], Offset[{0, -6}, {0, -1}]], InsetBox[
       StyleBox["3",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[19, 4] 3^Rational[1, 2], Rational[15, 4]}, {
        8.227241335952167, 3.75}], Offset[{0, -6}, {0, -1}]], InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{4 3^Rational[1, 2], 6}, {6.928203230275509, 6}], 
       Offset[{0, -6}, {0, -1}]], InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[7, 2] 3^Rational[1, 2], Rational[15, 2]}, {
        6.06217782649107, 7.5}], Offset[{0, -6}, {0, -1}]]}, {InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[15, 4] 3^Rational[1, 2], Rational[3, 4]}, {
        6.495190528383289, 0.75}], Offset[{0, -6}, {0, -1}]], InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{3 3^Rational[1, 2], 3}, {5.196152422706632, 3}], 
       Offset[{0, -6}, {0, -1}]], InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[5, 2] 3^Rational[1, 2], Rational[11, 2]}, {
        4.330127018922193, 5.5}], Offset[{0, -6}, {0, -1}]]}, {InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{2 3^Rational[1, 2], 1}, {3.4641016151377544`, 1}], 
       Offset[{0, -6}, {0, -1}]], InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[3, 2] 3^Rational[1, 2], Rational[5, 2]}, {
        2.598076211353316, 2.5}], Offset[{0, -6}, {0, -1}]]}, {InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[1, 2] 3^Rational[1, 2], Rational[1, 2]}, {
        0.8660254037844386, 0.5}], Offset[{0, -6}, {0, -1}]]}}, {InsetBox[
      StyleBox["3",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[1, 2] 3^Rational[1, 2], 2}, {0.8660254037844386, 2}], 
      Offset[{25, -10}, {0, 0}]], InsetBox[
      StyleBox["4",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[3, 2] 3^Rational[1, 2], Rational[9, 2]}, {
       2.598076211353316, 4.5}], Offset[{25, -10}, {0, 0}]], InsetBox[
      StyleBox["3",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[5, 2] 3^Rational[1, 2], 7}, {4.330127018922193, 7}], 
      Offset[{25, -10}, {0, 0}]], InsetBox[
      StyleBox["5",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[7, 2] 3^Rational[1, 2], 10}, {6.06217782649107, 10}], 
      Offset[{25, -10}, {0, 0}]]}, {InsetBox[
      StyleBox["4",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[33, 4] 3^Rational[1, 2], Rational[9, 4]}, {
       14.289419162443236`, 2.25}], Offset[{-40, -10}, {0, 0}]], InsetBox[
      StyleBox["5",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[13, 2] 3^Rational[1, 2], 5}, {11.258330249197702`, 5}],
       Offset[{-40, -10}, {0, 0}]], InsetBox[
      StyleBox["3",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{5 3^Rational[1, 2], Rational[15, 2]}, {8.660254037844386, 7.5}],
       Offset[{-40, -10}, {0, 0}]], InsetBox[
      StyleBox["4",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[17, 4] 3^Rational[1, 2], Rational[41, 4]}, {
       7.361215932167728, 10.25}], Offset[{-40, -10}, {0, 0}]]}, {InsetBox[
      StyleBox["7",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[29, 4] 3^Rational[1, 2], Rational[3, 4]}, {
       12.55736835487436, 0.75}], Offset[{-10, 60}, {0, 0}]], InsetBox[
      StyleBox["4",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[9, 2] 3^Rational[1, 2], 1}, {7.794228634059947, 1}], 
      Offset[{-10, 60}, {0, 0}]], InsetBox[
      StyleBox["4",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[5, 2] 3^Rational[1, 2], Rational[3, 2]}, {
       4.330127018922193, 1.5}], Offset[{-10, 60}, {0, 0}]], InsetBox[
      StyleBox["3",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[3, 4] 3^Rational[1, 2], Rational[5, 4]}, {
       1.299038105676658, 1.25}], Offset[{-10, 60}, {0, 0}]]}}},
  AspectRatio->1]], "Output",ExpressionUUID->"00000000-0000-0000-0000-\
000000000000"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  StyleBox["plotHoneycombs", "Text"], 
  StyleBox["[", "Text"], 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"3", ",", "4", ",", "3", ",", "5"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"4", ",", "3", ",", "5", ",", "4"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"3", ",", "4", ",", "4", ",", "7"}], "}"}], ",", "169"}], 
  "]"}]], "Input",ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[BoxData[
 GraphicsBox[{{{
     {GrayLevel[0], 
      PointBox[NCache[{{0, 0}, {3^Rational[1, 2], 1}, {
         Rational[3, 2] 3^Rational[1, 2], Rational[1, 2]}, {
         Rational[5, 2] 3^Rational[1, 2], Rational[3, 2]}, {
         Rational[7, 2] 3^Rational[1, 2], Rational[1, 2]}, {
         4 3^Rational[1, 2], 1}, {
         Rational[11, 2] 3^Rational[1, 2], Rational[-1, 2]}, {
         Rational[15, 2] 3^Rational[1, 2], Rational[3, 2]}, {
         9 3^Rational[1, 2], 0}}, {{0, 0}, {1.7320508075688772`, 1}, {
         2.598076211353316, 0.5}, {4.330127018922193, 1.5}, {6.06217782649107,
          0.5}, {6.928203230275509, 1}, {9.526279441628825, -0.5}, {
         12.990381056766578`, 1.5}, {15.588457268119894`, 0}}]]}}, {
     {GrayLevel[0], 
      PointBox[NCache[{{3^Rational[1, 2], 2}, {2 3^Rational[1, 2], 3}, {
         Rational[5, 2] 3^Rational[1, 2], Rational[5, 2]}, {
         Rational[7, 2] 3^Rational[1, 2], Rational[7, 2]}, {
         4 3^Rational[1, 2], 3}, {
         Rational[11, 2] 3^Rational[1, 2], Rational[9, 2]}, {
         Rational[15, 2] 3^Rational[1, 2], Rational[5, 2]}}, {{
         1.7320508075688772`, 2}, {3.4641016151377544`, 3}, {
         4.330127018922193, 2.5}, {6.06217782649107, 3.5}, {
         6.928203230275509, 3}, {9.526279441628825, 4.5}, {
         12.990381056766578`, 2.5}}]]}}, {
     {GrayLevel[0], 
      PointBox[NCache[{{2 3^Rational[1, 2], 5}, {
         Rational[5, 2] 3^Rational[1, 2], Rational[11, 2]}, {
         Rational[7, 2] 3^Rational[1, 2], Rational[9, 2]}, {
         5 3^Rational[1, 2], 6}, {
         Rational[11, 2] 3^Rational[1, 2], Rational[11, 2]}}, {{
         3.4641016151377544`, 5}, {4.330127018922193, 5.5}, {6.06217782649107,
          4.5}, {8.660254037844386, 6}, {9.526279441628825, 5.5}}]]}}, {
     {GrayLevel[0], 
      PointBox[NCache[{{Rational[5, 2] 3^Rational[1, 2], Rational[15, 2]}, {
         4 3^Rational[1, 2], 9}, {5 3^Rational[1, 2], 8}}, {{
         4.330127018922193, 7.5}, {6.928203230275509, 9}, {
         8.660254037844386, 8}}]]}}, {
     {GrayLevel[0], 
      PointBox[NCache[{{4 3^Rational[1, 2], 11}}, {{
         6.928203230275509, 11}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[
       NCache[{{{0, 0}, {3^Rational[1, 2], 1}}, {{3^Rational[1, 2], 1}, {
          Rational[3, 2] 3^Rational[1, 2], Rational[1, 2]}}, {{
          Rational[3, 2] 3^Rational[1, 2], Rational[1, 2]}, {
          Rational[5, 2] 3^Rational[1, 2], Rational[3, 2]}}, {{
          Rational[5, 2] 3^Rational[1, 2], Rational[3, 2]}, {
          Rational[7, 2] 3^Rational[1, 2], Rational[1, 2]}}, {{
          Rational[7, 2] 3^Rational[1, 2], Rational[1, 2]}, {
          4 3^Rational[1, 2], 1}}, {{4 3^Rational[1, 2], 1}, {
          Rational[11, 2] 3^Rational[1, 2], Rational[-1, 2]}}, {{
          Rational[11, 2] 3^Rational[1, 2], Rational[-1, 2]}, {
          Rational[15, 2] 3^Rational[1, 2], Rational[3, 2]}}, {{
          Rational[15, 2] 3^Rational[1, 2], Rational[3, 2]}, {
          9 3^Rational[1, 2], 0}}}, {{{0, 0}, {1.7320508075688772`, 1}}, {{
          1.7320508075688772`, 1}, {2.598076211353316, 0.5}}, {{
         2.598076211353316, 0.5}, {4.330127018922193, 1.5}}, {{
         4.330127018922193, 1.5}, {6.06217782649107, 
         0.5}}, {{6.06217782649107, 0.5}, {6.928203230275509, 1}}, {{
          6.928203230275509, 1}, {9.526279441628825, -0.5}}, {{
         9.526279441628825, -0.5}, {12.990381056766578`, 
         1.5}}, {{12.990381056766578`, 1.5}, {
          15.588457268119894`, 0}}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{3^Rational[1, 2], 2}, {2 3^Rational[1, 2], 3}}, {{
          2 3^Rational[1, 2], 3}, {
          Rational[5, 2] 3^Rational[1, 2], Rational[5, 2]}}, {{
          Rational[5, 2] 3^Rational[1, 2], Rational[5, 2]}, {
          Rational[7, 2] 3^Rational[1, 2], Rational[7, 2]}}, {{
          Rational[7, 2] 3^Rational[1, 2], Rational[7, 2]}, {
          4 3^Rational[1, 2], 3}}, {{4 3^Rational[1, 2], 3}, {
          Rational[11, 2] 3^Rational[1, 2], Rational[9, 2]}}, {{
          Rational[11, 2] 3^Rational[1, 2], Rational[9, 2]}, {
          Rational[15, 2] 3^Rational[1, 2], Rational[5, 2]}}}, {{{
          1.7320508075688772`, 2}, {3.4641016151377544`, 3}}, {{
          3.4641016151377544`, 3}, {4.330127018922193, 2.5}}, {{
         4.330127018922193, 2.5}, {6.06217782649107, 
         3.5}}, {{6.06217782649107, 3.5}, {6.928203230275509, 3}}, {{
          6.928203230275509, 3}, {9.526279441628825, 4.5}}, {{
         9.526279441628825, 4.5}, {12.990381056766578`, 2.5}}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{2 3^Rational[1, 2], 5}, {
          Rational[5, 2] 3^Rational[1, 2], Rational[11, 2]}}, {{
          Rational[5, 2] 3^Rational[1, 2], Rational[11, 2]}, {
          Rational[7, 2] 3^Rational[1, 2], Rational[9, 2]}}, {{
          Rational[7, 2] 3^Rational[1, 2], Rational[9, 2]}, {
          5 3^Rational[1, 2], 6}}, {{5 3^Rational[1, 2], 6}, {
          Rational[11, 2] 3^Rational[1, 2], Rational[11, 2]}}}, {{{
          3.4641016151377544`, 5}, {4.330127018922193, 5.5}}, {{
         4.330127018922193, 5.5}, {6.06217782649107, 
         4.5}}, {{6.06217782649107, 4.5}, {8.660254037844386, 6}}, {{
          8.660254037844386, 6}, {9.526279441628825, 5.5}}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{Rational[5, 2] 3^Rational[1, 2], Rational[15, 2]}, {
          4 3^Rational[1, 2], 9}}, {{4 3^Rational[1, 2], 9}, {
          5 3^Rational[1, 2], 8}}}, {{{4.330127018922193, 7.5}, {
          6.928203230275509, 9}}, {{6.928203230275509, 9}, {
          8.660254037844386, 8}}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{3^Rational[1, 2], 1}, {3^Rational[1, 2], 2}}, {{
          Rational[5, 2] 3^Rational[1, 2], Rational[3, 2]}, {
          Rational[5, 2] 3^Rational[1, 2], Rational[5, 2]}}, {{
          4 3^Rational[1, 2], 1}, {4 3^Rational[1, 2], 3}}, {{
          Rational[15, 2] 3^Rational[1, 2], Rational[3, 2]}, {
          Rational[15, 2] 3^Rational[1, 2], Rational[5, 2]}}}, {{{
          1.7320508075688772`, 1}, {1.7320508075688772`, 2}}, {{
         4.330127018922193, 1.5}, {4.330127018922193, 
         2.5}}, {{6.928203230275509, 1}, {6.928203230275509, 3}}, {{
         12.990381056766578`, 1.5}, {12.990381056766578`, 2.5}}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{2 3^Rational[1, 2], 3}, {2 3^Rational[1, 2], 5}}, {{
          Rational[7, 2] 3^Rational[1, 2], Rational[7, 2]}, {
          Rational[7, 2] 3^Rational[1, 2], Rational[9, 2]}}, {{
          Rational[11, 2] 3^Rational[1, 2], Rational[9, 2]}, {
          Rational[11, 2] 3^Rational[1, 2], Rational[11, 2]}}}, {{{
          3.4641016151377544`, 3}, {3.4641016151377544`, 5}}, {{
         6.06217782649107, 3.5}, {6.06217782649107, 4.5}}, {{
         9.526279441628825, 4.5}, {9.526279441628825, 5.5}}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{Rational[5, 2] 3^Rational[1, 2], Rational[11, 2]}, {
          Rational[5, 2] 3^Rational[1, 2], Rational[15, 2]}}, {{
          5 3^Rational[1, 2], 6}, {5 3^Rational[1, 2], 8}}}, {{{
         4.330127018922193, 5.5}, {4.330127018922193, 
         7.5}}, {{8.660254037844386, 6}, {8.660254037844386, 8}}}]]}}, {
     {RGBColor[0, 0, 1], 
      LineBox[NCache[{{{4 3^Rational[1, 2], 9}, {
          4 3^Rational[1, 2], 11}}}, {{{6.928203230275509, 9}, {
          6.928203230275509, 11}}}]]}}, {
     {RGBColor[1, 0, 0], LineBox[{{0, 0}, {0, -2}}], 
      LineBox[NCache[{{Rational[3, 2] 3^Rational[1, 2], Rational[1, 2]}, {
         Rational[3, 2] 3^Rational[1, 2], Rational[-3, 2]}}, {{
        2.598076211353316, 0.5}, {2.598076211353316, -1.5}}]], 
      LineBox[NCache[{{Rational[7, 2] 3^Rational[1, 2], Rational[1, 2]}, {
         Rational[7, 2] 3^Rational[1, 2], Rational[-3, 2]}}, {{
        6.06217782649107, 0.5}, {6.06217782649107, -1.5}}]], 
      LineBox[NCache[{{Rational[11, 2] 3^Rational[1, 2], Rational[-1, 2]}, {
         Rational[11, 2] 3^Rational[1, 2], Rational[-5, 2]}}, {{
        9.526279441628825, -0.5}, {9.526279441628825, -2.5}}]], 
      LineBox[NCache[{{9 3^Rational[1, 2], 0}, {9 3^Rational[1, 2], -2}}, {{
         15.588457268119894`, 0}, {15.588457268119894`, -2}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{0, 0}, {-3^Rational[1, 2], 1}}, {{0, 
         0}, {-1.7320508075688772`, 1}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{3^Rational[1, 2], 2}, {0, 3}}, {{
         1.7320508075688772`, 2}, {0, 3}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{2 3^Rational[1, 2], 5}, {3^Rational[1, 2], 6}}, {{
         3.4641016151377544`, 5}, {1.7320508075688772`, 6}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{Rational[5, 2] 3^Rational[1, 2], Rational[15, 2]}, {
         Rational[3, 2] 3^Rational[1, 2], Rational[17, 2]}}, {{
        4.330127018922193, 7.5}, {2.598076211353316, 8.5}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{4 3^Rational[1, 2], 11}, {3 3^Rational[1, 2], 12}}, {{
         6.928203230275509, 11}, {5.196152422706632, 12}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{9 3^Rational[1, 2], 0}, {10 3^Rational[1, 2], 1}}, {{
         15.588457268119894`, 0}, {17.32050807568877, 1}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{Rational[15, 2] 3^Rational[1, 2], Rational[5, 2]}, {
         Rational[17, 2] 3^Rational[1, 2], Rational[7, 2]}}, {{
        12.990381056766578`, 2.5}, {14.722431864335457`, 3.5}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{Rational[11, 2] 3^Rational[1, 2], Rational[11, 2]}, {
         Rational[13, 2] 3^Rational[1, 2], Rational[13, 2]}}, {{
        9.526279441628825, 5.5}, {11.258330249197702`, 6.5}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{5 3^Rational[1, 2], 8}, {6 3^Rational[1, 2], 9}}, {{
         8.660254037844386, 8}, {10.392304845413264`, 9}}]]}}, {
     {RGBColor[1, 0, 0], 
      LineBox[NCache[{{4 3^Rational[1, 2], 11}, {5 3^Rational[1, 2], 12}}, {{
         6.928203230275509, 11}, {8.660254037844386, 12}}]]}}}, {{{InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{3^Rational[1, 2], Rational[3, 2]}, {1.7320508075688772`, 1.5}],
        Offset[{5, 0}, {0, -1}]], InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[5, 2] 3^Rational[1, 2], 2}, {4.330127018922193, 2}], 
       Offset[{5, 0}, {0, -1}]], InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{4 3^Rational[1, 2], 2}, {6.928203230275509, 2}], 
       Offset[{5, 0}, {0, -1}]], InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[15, 2] 3^Rational[1, 2], 2}, {
        12.990381056766578`, 2}], Offset[{5, 0}, {0, -1}]]}, {InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{2 3^Rational[1, 2], 4}, {3.4641016151377544`, 4}], 
       Offset[{5, 0}, {0, -1}]], InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[7, 2] 3^Rational[1, 2], 4}, {6.06217782649107, 4}], 
       Offset[{5, 0}, {0, -1}]], InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[11, 2] 3^Rational[1, 2], 5}, {9.526279441628825, 5}], 
       Offset[{5, 0}, {0, -1}]]}, {InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[5, 2] 3^Rational[1, 2], Rational[13, 2]}, {
        4.330127018922193, 6.5}], Offset[{5, 0}, {0, -1}]], InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{5 3^Rational[1, 2], 7}, {8.660254037844386, 7}], 
       Offset[{5, 0}, {0, -1}]]}, {InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{4 3^Rational[1, 2], 10}, {6.928203230275509, 10}], 
       Offset[{5, 0}, {0, -1}]]}}, {{InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[5, 4] 3^Rational[1, 2], Rational[3, 4]}, {
        2.1650635094610964`, 0.75}], Offset[{-6, -6}, {0, -1}]], InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[9, 4] 3^Rational[1, 2], Rational[11, 4]}, {
        3.8971143170299736`, 2.75}], Offset[{-6, -6}, {0, -1}]], InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{3 3^Rational[1, 2], 5}, {5.196152422706632, 5}], 
       Offset[{-6, -6}, {0, -1}]], InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[9, 2] 3^Rational[1, 2], Rational[17, 2]}, {
        7.794228634059947, 8.5}], Offset[{-6, -6}, {0, -1}]]}, {InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{3 3^Rational[1, 2], 1}, {5.196152422706632, 1}], 
       Offset[{-6, -6}, {0, -1}]], InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[15, 4] 3^Rational[1, 2], Rational[13, 4]}, {
        6.495190528383289, 3.25}], Offset[{-6, -6}, {0, -1}]], InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[21, 4] 3^Rational[1, 2], Rational[23, 4]}, {
        9.093266739736606, 5.75}], Offset[{-6, -6}, {0, -1}]]}, {InsetBox[
       StyleBox["3",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[19, 4] 3^Rational[1, 2], Rational[1, 4]}, {
        8.227241335952167, 0.25}], Offset[{-6, -6}, {0, -1}]], InsetBox[
       StyleBox["4",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[13, 2] 3^Rational[1, 2], Rational[7, 2]}, {
        11.258330249197702`, 3.5}], Offset[{-6, -6}, {0, -1}]]}, {InsetBox[
       StyleBox["3",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[33, 4] 3^Rational[1, 2], Rational[3, 4]}, {
        14.289419162443236`, 0.75}], Offset[{-6, -6}, {0, -1}]]}}, {{
      InsetBox[
       StyleBox["4",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[13, 2] 3^Rational[1, 2], Rational[1, 2]}, {
        11.258330249197702`, 0.5}], Offset[{0, -6}, {0, -1}]], InsetBox[
       StyleBox["3",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[19, 4] 3^Rational[1, 2], Rational[15, 4]}, {
        8.227241335952167, 3.75}], Offset[{0, -6}, {0, -1}]], InsetBox[
       StyleBox["3",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[17, 4] 3^Rational[1, 2], Rational[21, 4]}, {
        7.361215932167728, 5.25}], Offset[{0, -6}, {0, -1}]], InsetBox[
       StyleBox["3",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[13, 4] 3^Rational[1, 2], Rational[33, 4]}, {
        5.629165124598851, 8.25}], Offset[{0, -6}, {0, -1}]]}, {InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[15, 4] 3^Rational[1, 2], Rational[3, 4]}, {
        6.495190528383289, 0.75}], Offset[{0, -6}, {0, -1}]], InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{3 3^Rational[1, 2], 3}, {5.196152422706632, 3}], 
       Offset[{0, -6}, {0, -1}]], InsetBox[
       StyleBox["1",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[9, 4] 3^Rational[1, 2], Rational[21, 4]}, {
        3.8971143170299736`, 5.25}], Offset[{0, -6}, {0, -1}]]}, {InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{2 3^Rational[1, 2], 1}, {3.4641016151377544`, 1}], 
       Offset[{0, -6}, {0, -1}]], InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[3, 2] 3^Rational[1, 2], Rational[5, 2]}, {
        2.598076211353316, 2.5}], Offset[{0, -6}, {0, -1}]]}, {InsetBox[
       StyleBox["2",
        StripOnInput->False,
        LineColor->GrayLevel[0],
        FrontFaceColor->GrayLevel[0],
        BackFaceColor->GrayLevel[0],
        GraphicsColor->GrayLevel[0],
        FontSize->15,
        FontColor->GrayLevel[0]], 
       NCache[{Rational[1, 2] 3^Rational[1, 2], Rational[1, 2]}, {
        0.8660254037844386, 0.5}], Offset[{0, -6}, {0, -1}]]}}, {InsetBox[
      StyleBox["3",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[1, 2] 3^Rational[1, 2], 2}, {0.8660254037844386, 2}], 
      Offset[{25, -10}, {0, 0}]], InsetBox[
      StyleBox["4",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[3, 2] 3^Rational[1, 2], Rational[9, 2]}, {
       2.598076211353316, 4.5}], Offset[{25, -10}, {0, 0}]], InsetBox[
      StyleBox["3",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[9, 4] 3^Rational[1, 2], Rational[29, 4]}, {
       3.8971143170299736`, 7.25}], Offset[{25, -10}, {0, 0}]], InsetBox[
      StyleBox["5",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[13, 4] 3^Rational[1, 2], Rational[41, 4]}, {
       5.629165124598851, 10.25}], Offset[{25, -10}, {0, 0}]]}, {InsetBox[
      StyleBox["4",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[33, 4] 3^Rational[1, 2], Rational[9, 4]}, {
       14.289419162443236`, 2.25}], Offset[{-40, -10}, {0, 0}]], InsetBox[
      StyleBox["5",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[13, 2] 3^Rational[1, 2], 5}, {11.258330249197702`, 5}],
       Offset[{-40, -10}, {0, 0}]], InsetBox[
      StyleBox["3",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[21, 4] 3^Rational[1, 2], Rational[31, 4]}, {
       9.093266739736606, 7.75}], Offset[{-40, -10}, {0, 0}]], InsetBox[
      StyleBox["4",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[9, 2] 3^Rational[1, 2], Rational[21, 2]}, {
       7.794228634059947, 10.5}], Offset[{-40, -10}, {0, 0}]]}, {InsetBox[
      StyleBox["7",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[29, 4] 3^Rational[1, 2], Rational[3, 4]}, {
       12.55736835487436, 0.75}], Offset[{-10, 60}, {0, 0}]], InsetBox[
      StyleBox["4",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[9, 2] 3^Rational[1, 2], 1}, {7.794228634059947, 1}], 
      Offset[{-10, 60}, {0, 0}]], InsetBox[
      StyleBox["4",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[5, 2] 3^Rational[1, 2], Rational[3, 2]}, {
       4.330127018922193, 1.5}], Offset[{-10, 60}, {0, 0}]], InsetBox[
      StyleBox["3",
       StripOnInput->False,
       LineColor->RGBColor[0, 0, 1],
       FrontFaceColor->RGBColor[0, 0, 1],
       BackFaceColor->RGBColor[0, 0, 1],
       GraphicsColor->RGBColor[0, 0, 1],
       FontSize->24,
       FontWeight->Bold,
       FontColor->RGBColor[0, 0, 1]], 
      NCache[{Rational[3, 4] 3^Rational[1, 2], Rational[5, 4]}, {
       1.299038105676658, 1.25}], Offset[{-10, 60}, {0, 0}]]}}},
  AspectRatio->1]], "Output",ExpressionUUID->"00000000-0000-0000-0000-\
000000000000"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["DETAILS AND REFERENCES", "Subsection",
 CellFrame->{{0, 0}, {1, 0}},
 CellFrameColor->RGBColor[0.87, 0.87, 0.87],
 FontFamily->"Helvetica",
 FontSize->12,
 FontWeight->"Bold",
 FontColor->RGBColor[
  0.597406, 0, 
   0.0527047],ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[TextData[{
 StyleBox["Irreducible representations (irreps) of the Lie group SU(n) are \
denoted by their highest weights. \nTheir  n-1 components are given in a  \
particular basis called the Dynkin basis.\n\nOne starts from three irreps \
building an admissible triple.\nWarning about the orientation of the last \
member of the triple... the triple obtained by conjugating the last member of \
an admissible triple is usually not admissible!\nIf the user only knows the \
first two members of the triple, he has  first to decomposes their tensor \
product \[Omega]1\[CircleTimes]\[Omega]2 as a sum of irreps, with \
multiplicities.\n\nThe user chooses one of them (",
  FontSize->12,
  FontWeight->"Regular"],
 Cell[BoxData[
  OverscriptBox["\[Omega]3", "_"]],
  CellChangeTimes->{{3.6900285277371283`*^9, 3.6900285355213127`*^9}, {
    3.690029018825797*^9, 3.690029020912936*^9}, 3.690029103518876*^9, {
    3.690029144949933*^9, 3.6900291580227222`*^9}, {3.690029245630245*^9, 
    3.690029290077883*^9}, {3.690029355205813*^9, 3.690029356213334*^9}, {
    3.690029431991303*^9, 3.690029445884013*^9}, {3.690029496757133*^9, 
    3.6900296029835777`*^9}, {3.690029644632415*^9, 3.690029768653329*^9}, {
    3.690029808780545*^9, 3.6900300220658007`*^9}, {3.690030069539895*^9, 
    3.690030070907426*^9}, {3.6900308614679117`*^9, 3.690030879392894*^9}, {
    3.690030931585066*^9, 3.6900316108274307`*^9}, {3.690031641618826*^9, 
    3.69003164210577*^9}, 3.6900317305336313`*^9, {3.6900320068693523`*^9, 
    3.690032040204186*^9}, {3.690032075794099*^9, 3.690032077609148*^9}, 
    3.6900325925183153`*^9, {3.690032623525509*^9, 3.6900326457505293`*^9}, {
    3.690032692988947*^9, 3.6900327525364923`*^9}, {3.690032801777175*^9, 
    3.690032933108383*^9}, {3.690032965346673*^9, 3.690032989280232*^9}, {
    3.690033033184256*^9, 3.690033036792841*^9}, {3.690033099471286*^9, 
    3.6900331416795588`*^9}, {3.69003320422086*^9, 3.690033441409315*^9}, {
    3.690033510825897*^9, 3.69003352149594*^9}, {3.6900335672734957`*^9, 
    3.690033571001287*^9}, {3.6900339459815187`*^9, 3.690033949498849*^9}, {
    3.6900340323659573`*^9, 3.690034033344352*^9}, {3.690034872628166*^9, 
    3.690034874024109*^9}, {3.690034992727338*^9, 3.690034994554681*^9}, {
    3.6900350812943163`*^9, 3.6900350842521544`*^9}, {3.692645928523253*^9, 
    3.692645941688405*^9}, {3.6926461026260347`*^9, 3.692646111980205*^9}, {
    3.692646155369432*^9, 3.692646161340274*^9}},ExpressionUUID->
  "fb9bb53d-6c7c-4abe-9d8d-45bb6ba798f0"],
 StyleBox["), the program then draws the pictographs (O-blade version) \
associated with the coupling \[Omega]1\[CircleTimes]\[Omega]2 \
\[LongRightArrow] ",
  FontSize->12,
  FontWeight->"Regular"],
 Cell[BoxData[
  OverscriptBox["\[Omega]3", "_"]],
  CellChangeTimes->{{3.6900285277371283`*^9, 3.6900285355213127`*^9}, {
    3.690029018825797*^9, 3.690029020912936*^9}, 3.690029103518876*^9, {
    3.690029144949933*^9, 3.6900291580227222`*^9}, {3.690029245630245*^9, 
    3.690029290077883*^9}, {3.690029355205813*^9, 3.690029356213334*^9}, {
    3.690029431991303*^9, 3.690029445884013*^9}, {3.690029496757133*^9, 
    3.6900296029835777`*^9}, {3.690029644632415*^9, 3.690029768653329*^9}, {
    3.690029808780545*^9, 3.6900300220658007`*^9}, {3.690030069539895*^9, 
    3.690030070907426*^9}, {3.6900308614679117`*^9, 3.690030879392894*^9}, {
    3.690030931585066*^9, 3.6900316108274307`*^9}, {3.690031641618826*^9, 
    3.69003164210577*^9}, 3.6900317305336313`*^9, {3.6900320068693523`*^9, 
    3.690032040204186*^9}, {3.690032075794099*^9, 3.690032077609148*^9}, 
    3.6900325925183153`*^9, {3.690032623525509*^9, 3.6900326457505293`*^9}, {
    3.690032692988947*^9, 3.6900327525364923`*^9}, {3.690032801777175*^9, 
    3.690032933108383*^9}, {3.690032965346673*^9, 3.690032989280232*^9}, {
    3.690033033184256*^9, 3.690033036792841*^9}, {3.690033099471286*^9, 
    3.6900331416795588`*^9}, {3.69003320422086*^9, 3.690033441409315*^9}, {
    3.690033510825897*^9, 3.69003352149594*^9}, {3.6900335672734957`*^9, 
    3.690033571001287*^9}, {3.6900339459815187`*^9, 3.690033949498849*^9}, {
    3.6900340323659573`*^9, 3.690034033344352*^9}, {3.690034872628166*^9, 
    3.690034874024109*^9}, {3.690034992727338*^9, 3.690034994554681*^9}, {
    3.6900350812943163`*^9, 3.6900350842521544`*^9}, {3.692645928523253*^9, 
    3.692645941688405*^9}, {3.6926461026260347`*^9, 3.692646111980205*^9}, {
    3.692646155369432*^9, 3.692646161340274*^9}},ExpressionUUID->
  "2ac63a58-86eb-4f85-90f9-4e0480286da7"],
 StyleBox[".\nOr, equivalently, with the coupling ",
  FontSize->12,
  FontWeight->"Regular"],
 Cell[BoxData[
  StyleBox[
   RowBox[{
   "\[Omega]1", "\[CircleTimes]", "\[Omega]2", " ", "\[CircleTimes]", 
    RowBox[{
     StyleBox[
      RowBox[{"\[Omega]", 
       StyleBox[
        StyleBox[
         StyleBox[
          StyleBox["3", "Text",
           FontFamily->"Arial",
           FontSize->12,
           FontWeight->"Regular"], "Text",
          FontFamily->"Arial",
          FontSize->12,
          FontWeight->"Regular"], "Text",
         FontFamily->"Arial",
         FontSize->12,
         FontWeight->"Regular"], "Text",
        FontFamily->"Arial",
        FontSize->12,
        FontWeight->"Regular"]}]], " ", "\[LongRightArrow]", "  ", "1"}]}], 
   "Text",
   FontFamily->"Arial",
   FontSize->12,
   FontWeight->"Regular"]],
  CellChangeTimes->{{3.6900285277371283`*^9, 3.6900285355213127`*^9}, {
    3.690029018825797*^9, 3.690029020912936*^9}, 3.690029103518876*^9, {
    3.690029144949933*^9, 3.6900291580227222`*^9}, {3.690029245630245*^9, 
    3.690029290077883*^9}, {3.690029355205813*^9, 3.690029356213334*^9}, {
    3.690029431991303*^9, 3.690029445884013*^9}, {3.690029496757133*^9, 
    3.6900296029835777`*^9}, {3.690029644632415*^9, 3.690029768653329*^9}, {
    3.690029808780545*^9, 3.6900300220658007`*^9}, {3.690030069539895*^9, 
    3.690030070907426*^9}, {3.6900308614679117`*^9, 3.690030879392894*^9}, {
    3.690030931585066*^9, 3.6900316108274307`*^9}, {3.690031641618826*^9, 
    3.69003164210577*^9}, 3.6900317305336313`*^9, {3.6900320068693523`*^9, 
    3.690032040204186*^9}, {3.690032075794099*^9, 3.690032077609148*^9}, 
    3.6900325925183153`*^9, {3.690032623525509*^9, 3.6900326457505293`*^9}, {
    3.690032692988947*^9, 3.6900327525364923`*^9}, {3.690032801777175*^9, 
    3.690032933108383*^9}, {3.690032965346673*^9, 3.690032989280232*^9}, {
    3.690033033184256*^9, 3.690033036792841*^9}, {3.690033099471286*^9, 
    3.6900331416795588`*^9}, {3.69003320422086*^9, 3.690033441409315*^9}, {
    3.690033510825897*^9, 3.69003352149594*^9}, {3.6900335672734957`*^9, 
    3.690033571001287*^9}, {3.6900339459815187`*^9, 3.690033949498849*^9}, {
    3.6900340323659573`*^9, 3.690034033344352*^9}, {3.690034872628166*^9, 
    3.690034874024109*^9}, {3.690034992727338*^9, 3.690034994554681*^9}, {
    3.6900350812943163`*^9, 3.6900350842521544`*^9}, {3.692645928523253*^9, 
    3.692645941688405*^9}, {3.6926461026260347`*^9, 3.692646111980205*^9}, {
    3.692646155369432*^9, 3.692646161340274*^9}},ExpressionUUID->
  "70fed5e9-d626-45ff-a9fc-f4dda0e5eb4c"],
 StyleBox["\n\nThe multiplicity of the coupling (aka Littlewood-Richardson \
coefficient) is equal to the number of pictographs.\n",
  FontSize->12,
  FontWeight->"Regular"]
}], "Text",ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[TextData[{
 StyleBox["Components of highest weights (non-negative integers) are read as \
follows:",
  FontSize->13,
  FontWeight->"Regular"],
 "\n\n\[Omega]1 : external vertices belonging to the left side of the \
triangle, bottom to top.\n\[Omega]2 : external vertices belonging to the \
right side of the triangle, top to bottom.\n\[Omega]3 : external vertices \
belonging to the bottom side of the triangle, right to left (equivalently ",
 Cell[BoxData[
  OverscriptBox["\[Omega]3", "_"]],
  CellChangeTimes->{{3.6900285277371283`*^9, 3.6900285355213127`*^9}, {
    3.690029018825797*^9, 3.690029020912936*^9}, 3.690029103518876*^9, {
    3.690029144949933*^9, 3.6900291580227222`*^9}, {3.690029245630245*^9, 
    3.690029290077883*^9}, {3.690029355205813*^9, 3.690029356213334*^9}, {
    3.690029431991303*^9, 3.690029445884013*^9}, {3.690029496757133*^9, 
    3.6900296029835777`*^9}, {3.690029644632415*^9, 3.690029768653329*^9}, {
    3.690029808780545*^9, 3.6900300220658007`*^9}, {3.690030069539895*^9, 
    3.690030070907426*^9}, {3.6900308614679117`*^9, 3.690030879392894*^9}, {
    3.690030931585066*^9, 3.6900316108274307`*^9}, {3.690031641618826*^9, 
    3.69003164210577*^9}, 3.6900317305336313`*^9, {3.6900320068693523`*^9, 
    3.690032040204186*^9}, {3.690032075794099*^9, 3.690032077609148*^9}, 
    3.6900325925183153`*^9, {3.690032623525509*^9, 3.6900326457505293`*^9}, {
    3.690032692988947*^9, 3.6900327525364923`*^9}, {3.690032801777175*^9, 
    3.690032933108383*^9}, {3.690032965346673*^9, 3.690032989280232*^9}, {
    3.690033033184256*^9, 3.690033036792841*^9}, {3.690033099471286*^9, 
    3.6900331416795588`*^9}, {3.69003320422086*^9, 3.690033441409315*^9}, {
    3.690033510825897*^9, 3.69003352149594*^9}, {3.6900335672734957`*^9, 
    3.690033571001287*^9}, {3.6900339459815187`*^9, 3.690033949498849*^9}, {
    3.6900340323659573`*^9, 3.690034033344352*^9}, {3.690034872628166*^9, 
    3.690034874024109*^9}, {3.690034992727338*^9, 3.690034994554681*^9}, {
    3.6900350812943163`*^9, 3.6900350842521544`*^9}, {3.692645928523253*^9, 
    3.692645941688405*^9}, {3.6926461026260347`*^9, 3.692646111980205*^9}, {
    3.692646155369432*^9, 3.692646161340274*^9}},ExpressionUUID->
  "bf55bbf8-04ee-413e-9ae1-faae5c35d149"],
 " : left to right)"
}], "Text",
 FontSize->12,ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[TextData[{
 "Internal edges carry non-negative integers.\nThey obey the following \
constraints : \n\n\t",
 StyleBox["Conservation of integers at each external vertex, \n\tEquality of \
opposite angles at each internal vertex (the value of an angle being defined \
as the sum of its edges).",
  FontColor->RGBColor[0.6, 0.4, 0.2]]
}], "Text",
 FontSize->12,ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[TextData[{
 "The displayed collection of pictographs, for a given triple ",
 Cell[BoxData[
  RowBox[{" ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
     "\[Omega]1", ",", " ", "\[Omega]2", " ", ",", "  ", "\[Omega]3"}], ")"}],
     ",", " "}]}]],
  CellChangeTimes->{{3.6900285277371283`*^9, 3.6900285355213127`*^9}, {
    3.690029018825797*^9, 3.690029020912936*^9}, 3.690029103518876*^9, {
    3.690029144949933*^9, 3.6900291580227222`*^9}, {3.690029245630245*^9, 
    3.690029290077883*^9}, {3.690029355205813*^9, 3.690029356213334*^9}, {
    3.690029431991303*^9, 3.690029445884013*^9}, {3.690029496757133*^9, 
    3.6900296029835777`*^9}, {3.690029644632415*^9, 3.690029768653329*^9}, {
    3.690029808780545*^9, 3.6900300220658007`*^9}, {3.690030069539895*^9, 
    3.690030070907426*^9}, {3.6900308614679117`*^9, 3.690030879392894*^9}, {
    3.690030931585066*^9, 3.6900316108274307`*^9}, {3.690031641618826*^9, 
    3.69003164210577*^9}, 3.6900317305336313`*^9, {3.6900320068693523`*^9, 
    3.690032040204186*^9}, {3.690032075794099*^9, 3.690032077609148*^9}, 
    3.6900325925183153`*^9, {3.690032623525509*^9, 3.6900326457505293`*^9}, {
    3.690032692988947*^9, 3.6900327525364923`*^9}, {3.690032801777175*^9, 
    3.690032933108383*^9}, {3.690032965346673*^9, 3.690032989280232*^9}, {
    3.690033033184256*^9, 3.690033036792841*^9}, {3.690033099471286*^9, 
    3.6900331416795588`*^9}, {3.69003320422086*^9, 3.690033441409315*^9}, {
    3.690033510825897*^9, 3.69003352149594*^9}, {3.6900335672734957`*^9, 
    3.690033571001287*^9}, {3.6900339459815187`*^9, 3.690033949498849*^9}, {
    3.6900340323659573`*^9, 3.690034033344352*^9}, {3.690034872628166*^9, 
    3.690034874024109*^9}, {3.690034992727338*^9, 3.690034994554681*^9}, {
    3.6900350812943163`*^9, 3.6900350842521544`*^9}, {3.692645928523253*^9, 
    3.692645941688405*^9}, {3.6926461026260347`*^9, 3.692646111980205*^9}, {
    3.692646155369432*^9, 3.692646161340274*^9}},ExpressionUUID->
  "f3376c5e-7ccd-423c-983f-b44a7ad650ce"],
 "solves the above constraints."
}], "Text",
 FontSize->12,ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[TextData[Cell[BoxData[
 RowBox[{
  StyleBox[
   StyleBox[
    RowBox[{
     RowBox[{
     "Several", " ", "types", " ", "of", " ", "pictographs", " ", "can", " ", 
      "be", " ", "used", " ", "to", " ", "display", " ", "the", " ", "same", 
      " ", "space", " ", "of", " ", "intertwiners", " ", 
      SubscriptBox["Hom", "SUn"], 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"\[Omega]1", "\[CircleTimes]", "\[Omega]2"}], ",", 
        StyleBox[
         StyleBox[
          StyleBox[
           StyleBox[" ", "Text",
            FontSize->12,
            FontWeight->"Regular"], "Text",
           FontSize->12,
           FontWeight->"Regular"], "Text",
          FontSize->12,
          FontWeight->"Regular"], "Text",
         FontSize->12,
         FontWeight->"Regular"], 
        StyleBox[
         StyleBox[
          StyleBox[
           StyleBox[
            OverscriptBox["\[Omega]3", "_"], "Text"], "Text",
           FontSize->12,
           FontWeight->"Regular"], "Text",
          FontSize->12,
          FontWeight->"Regular"], "Text",
         FontSize->12,
         FontWeight->"Regular"]}], ")"}]}], " ", ":", "  ", 
     RowBox[{"BZ", "-", "triangles"}]}], "Text",
    FontSize->12],
   FontWeight->"Regular"], 
  StyleBox[
   StyleBox[",", "Text",
    FontSize->12],
   FontWeight->"Regular"], 
  StyleBox[
   StyleBox[" ", "Text",
    FontSize->12],
   FontWeight->"Regular"], 
  StyleBox[
   StyleBox[
    RowBox[{"KT", "-", "honeycombs"}], "Text",
    FontSize->12],
   FontWeight->"Regular"], 
  StyleBox[
   StyleBox[",", "Text",
    FontSize->12],
   FontWeight->"Regular"], 
  StyleBox[
   StyleBox[" ", "Text",
    FontSize->12],
   FontWeight->"Regular"], 
  StyleBox[
   StyleBox[
    RowBox[{"O", "-", 
     RowBox[{
      RowBox[{"blades", ".", "\n", "BZ"}], " ", "stands", " ", "for", " ", 
      "Berenstein"}], "-", "Zelevinski"}], "Text",
    FontSize->12],
   FontWeight->"Regular"], 
  StyleBox[
   StyleBox[" ", "Text",
    FontSize->12],
   FontWeight->"Regular"], 
  StyleBox[
   StyleBox[",", "Text",
    FontSize->12],
   FontWeight->"Regular"], 
  StyleBox[
   StyleBox[" ", "Text",
    FontSize->12],
   FontWeight->"Regular"], 
  StyleBox[
   StyleBox[
    RowBox[{
     RowBox[{"KT", " ", "for", " ", "Knutsen"}], "-", "Tao"}], "Text",
    FontSize->12],
   FontWeight->"Regular"], 
  StyleBox[
   StyleBox[",", "Text",
    FontSize->12],
   FontWeight->"Regular"], 
  StyleBox[
   StyleBox[" ", "Text",
    FontSize->12],
   FontWeight->"Regular"], 
  RowBox[{
   StyleBox[
    StyleBox["and", "Text",
     FontSize->12],
    FontWeight->"Regular"], 
   StyleBox[
    StyleBox[" ", "Text",
     FontSize->12],
    FontWeight->"Regular"], 
   StyleBox[
    StyleBox["O", "Text",
     FontSize->12],
    FontWeight->"Regular"], 
   StyleBox[
    StyleBox[" ", "Text",
     FontSize->12],
    FontWeight->"Regular"], 
   StyleBox[
    StyleBox["for", "Text",
     FontSize->12],
    FontWeight->"Regular"], 
   StyleBox[
    StyleBox[" ", "Text",
     FontSize->12],
    FontWeight->"Regular"], 
   StyleBox[
    RowBox[{
     StyleBox["Ocneanu", "Text",
      FontSize->12], 
     StyleBox[".", "Text",
      FontSize->12], 
     StyleBox["   ", "Text",
      FontSize->12], 
     StyleBox["The",
      FontFamily->"Arial"]}],
    FontWeight->"Regular"], 
   StyleBox[" ",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox["generic",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox["  ",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox["term",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox[" ",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox["\"\<pictographs\>\"",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox[" ",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox["was",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox[" ",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox["introduced",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox[" ",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox[
    RowBox[{"in", " ", "[", "1", "]"}],
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox[" ",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox["to",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox[" ",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox["denote",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox[" ",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox["these",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox[" ",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox["combinatorial",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   StyleBox[" ",
    FontFamily->"Arial",
    FontWeight->"Regular"], 
   RowBox[{
    StyleBox["objects",
     FontFamily->"Arial",
     FontWeight->"Regular"], 
    StyleBox[".",
     FontFamily->"Arial",
     FontWeight->"Regular"], 
    StyleBox["\[IndentingNewLine]",
     FontFamily->"Arial",
     FontWeight->"Regular"], 
    StyleBox["\[IndentingNewLine]", "Text"], 
    StyleBox[
     StyleBox["Here", "Text",
      FontWeight->"Regular"],
     FontFamily->"Arial",
     FontSize->14]}], 
   StyleBox[
    StyleBox[" ", "Text",
     FontWeight->"Regular"],
    FontFamily->"Arial",
    FontSize->14], 
   StyleBox[
    StyleBox["we", "Text",
     FontWeight->"Regular"],
    FontFamily->"Arial",
    FontSize->14], 
   StyleBox[
    StyleBox[" ", "Text",
     FontWeight->"Regular"],
    FontFamily->"Arial",
    FontSize->14], 
   StyleBox[
    StyleBox["display", "Text",
     FontWeight->"Regular"],
    FontFamily->"Arial",
    FontSize->14], 
   StyleBox[
    StyleBox[" ", "Text",
     FontWeight->"Regular"],
    FontFamily->"Arial",
    FontSize->14], 
   StyleBox[
    StyleBox["isometric", "Text",
     FontWeight->"Regular"],
    FontFamily->"Arial",
    FontSize->14], 
   StyleBox[
    StyleBox[" ", "Text",
     FontWeight->"Regular"],
    FontFamily->"Arial",
    FontSize->14], 
   StyleBox["honeycombs", "Text",
    FontWeight->"Regular"], 
   StyleBox[" ", "Text",
    FontWeight->"Regular"], 
   RowBox[{
    RowBox[{
     StyleBox["(", "Text",
      FontWeight->"Regular"], 
     RowBox[{
      StyleBox["where", "Text",
       FontWeight->"Regular"], 
      StyleBox[" ", "Text",
       FontWeight->"Regular"], 
      StyleBox["edges",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox[" ",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox["have",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox["  ",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox["a",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox[" ",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox["length",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox[" ",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox["precisely",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox[" ",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox["equal",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox[" ",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox["to",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox[" ",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox["the",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox[" ",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox["integer",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox[" ",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox["that",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox[" ",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox["they",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox[" ",
       FontFamily->"Arial",
       FontSize->14], 
      StyleBox["carry",
       FontFamily->"Arial",
       FontSize->14]}], 
     StyleBox[")",
      FontFamily->"Arial",
      FontSize->14]}], 
    StyleBox[".",
     FontFamily->"Arial",
     FontSize->14]}]}]}]],
 CellChangeTimes->{{3.6900285277371283`*^9, 3.6900285355213127`*^9}, {
   3.690029018825797*^9, 3.690029020912936*^9}, 3.690029103518876*^9, {
   3.690029144949933*^9, 3.6900291580227222`*^9}, {3.690029245630245*^9, 
   3.690029290077883*^9}, {3.690029355205813*^9, 3.690029356213334*^9}, {
   3.690029431991303*^9, 3.690029445884013*^9}, {3.690029496757133*^9, 
   3.6900296029835777`*^9}, {3.690029644632415*^9, 3.690029768653329*^9}, {
   3.690029808780545*^9, 3.6900300220658007`*^9}, {3.690030069539895*^9, 
   3.690030070907426*^9}, {3.6900308614679117`*^9, 3.690030879392894*^9}, {
   3.690030931585066*^9, 3.6900316108274307`*^9}, {3.690031641618826*^9, 
   3.69003164210577*^9}, 3.6900317305336313`*^9, {3.6900320068693523`*^9, 
   3.690032040204186*^9}, {3.690032075794099*^9, 3.690032077609148*^9}, 
   3.6900325925183153`*^9, {3.690032623525509*^9, 3.6900326457505293`*^9}, {
   3.690032692988947*^9, 3.6900327525364923`*^9}, {3.690032801777175*^9, 
   3.690032933108383*^9}, {3.690032965346673*^9, 3.690032989280232*^9}, {
   3.690033033184256*^9, 3.690033036792841*^9}, {3.690033099471286*^9, 
   3.6900331416795588`*^9}, {3.69003320422086*^9, 3.690033441409315*^9}, {
   3.690033510825897*^9, 3.69003352149594*^9}, {3.6900335672734957`*^9, 
   3.690033571001287*^9}, {3.6900339459815187`*^9, 3.690033949498849*^9}, {
   3.6900340323659573`*^9, 3.690034033344352*^9}, {3.690034872628166*^9, 
   3.690034874024109*^9}, {3.690034992727338*^9, 3.690034994554681*^9}, {
   3.6900350812943163`*^9, 3.6900350842521544`*^9}, {3.692645928523253*^9, 
   3.692645941688405*^9}, {3.6926461026260347`*^9, 3.692646111980205*^9}, {
   3.692646155369432*^9, 
   3.692646161340274*^9}},ExpressionUUID->"cb31d6b5-7b02-4a46-9dfb-\
349be4efb93b"]], "Text",
 FontSize->12,ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[TextData[{
 "O-blades (also called \
\[OpenCurlyDoubleQuote]oblades\[CloseCurlyDoubleQuote]) are introduced and \
documented in [1][2][3]. \nProperties of Isometric honeycombs are also \
discussed in these references. \n\n[1] ",
 Cell[BoxData[
  TagBox[
   ButtonBox[
    PaneSelectorBox[{False->
     TagBox["\<\"Conjugation properties of tensor product multiplicities, R. \
Coquereaux and J.-B. Zuber (2014)\"\>",
      StatusArea[#, "J. Phys. A: Math. Theor. 47 (2014) 455202"]& ,
      TagBoxNote->"J. Phys. A: Math. Theor. 47 (2014) 455202"], True->
     StyleBox[
      TagBox["\<\"Conjugation properties of tensor product multiplicities, R. \
Coquereaux and J.-B. Zuber (2014)\"\>",
       StatusArea[#, "J. Phys. A: Math. Theor. 47 (2014) 455202"]& ,
       TagBoxNote->"J. Phys. A: Math. Theor. 47 (2014) 455202"], 
      "HyperlinkActive"]}, Dynamic[
      CurrentValue["MouseOver"]],
     BaseStyle->{"Hyperlink"},
     FrameMargins->0,
     ImageSize->Automatic],
    BaseStyle->"Hyperlink",
    ButtonData->{
      URL["https://arxiv.org/abs/1405.4887"], None},
    ButtonNote->"https://arxiv.org/abs/1405.4887"],
   Annotation[#, "https://arxiv.org/abs/1405.4887", "Hyperlink"]& ]],
  CellChangeTimes->{{3.713766107703364*^9, 3.713766117467065*^9}},
  ExpressionUUID->"4d4a148c-28a4-4c1d-9d0a-5b6bb6aabd34"],
 "\n[2] ",
 Cell[BoxData[
  TagBox[
   ButtonBox[
    PaneSelectorBox[{False->
     TagBox["\<\"On some properties of SU(3) Fusion Coefficients, R. \
Coquereaux and J.-B. Zuber (2016)\"\>",
      StatusArea[#, "Nuclear Physics, Section B 912C (2016) pp. 119-150"]& ,
      TagBoxNote->"Nuclear Physics, Section B 912C (2016) pp. 119-150"], True->
     
     StyleBox[
      TagBox["\<\"On some properties of SU(3) Fusion Coefficients, R. \
Coquereaux and J.-B. Zuber (2016)\"\>",
       StatusArea[#, "Nuclear Physics, Section B 912C (2016) pp. 119-150"]& ,
       TagBoxNote->"Nuclear Physics, Section B 912C (2016) pp. 119-150"], 
      "HyperlinkActive"]}, Dynamic[
      CurrentValue["MouseOver"]],
     BaseStyle->{"Hyperlink"},
     FrameMargins->0,
     ImageSize->Automatic],
    BaseStyle->"Hyperlink",
    ButtonData->{
      URL["https://arxiv.org/abs/1605.05864"], None},
    ButtonNote->"https://arxiv.org/abs/1605.05864"],
   Annotation[#, "https://arxiv.org/abs/1605.05864", "Hyperlink"]& ]],
  CellChangeTimes->{3.713766271286077*^9},ExpressionUUID->
  "592d7075-7012-457d-a11d-e4845a4cfe43"],
 "\n[3] ",
 Cell[BoxData[
  TagBox[
   ButtonBox[
    PaneSelectorBox[{False->
     TagBox["\<\"From orbital measures to Littlewood-Richardson coefficients \
and hive polytopes, R. Coquereaux and J.-B. Zuber (2017)\"\>",
      StatusArea[#, "arxiv.org"]& ,
      TagBoxNote->"arxiv.org"], True->
     StyleBox[
      TagBox["\<\"From orbital measures to Littlewood-Richardson coefficients \
and hive polytopes, R. Coquereaux and J.-B. Zuber (2017)\"\>",
       StatusArea[#, "arxiv.org"]& ,
       TagBoxNote->"arxiv.org"], "HyperlinkActive"]}, Dynamic[
      CurrentValue["MouseOver"]],
     BaseStyle->{"Hyperlink"},
     FrameMargins->0,
     ImageSize->Automatic],
    BaseStyle->"Hyperlink",
    ButtonData->{
      URL["https://arxiv.org/abs/1706.02793"], None},
    ButtonNote->"https://arxiv.org/abs/1706.02793"],
   Annotation[#, "https://arxiv.org/abs/1706.02793", "Hyperlink"]& ]],
  CellChangeTimes->{3.713766360277422*^9},ExpressionUUID->
  "9c88bc32-3848-4c8b-b9c4-af829b7b4da6"]
}], "Text",
 FontSize->12,ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[TextData[{
 "The decomposition of the tensor product of irreducible representations is \
done by using an improved hive technique developed by the author and inspired \
from [4], [5], [6]. \nIn order to speed up the calculation we use a basis of \
elementary pictographs where syzygies (constraints) are eliminated before the \
actual reduction of the system of inequalities takes place.\n\n[4] ",
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
  "daed9936-a96e-46d2-b1ee-60329cd86ed3"],
 "\n[5] ",
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
  "8ebd0521-0841-4eb5-a783-c455e015c80e"],
 "\n[6] ",
 Cell[BoxData[
  TagBox[
   ButtonBox[
    PaneSelectorBox[{False->
     TagBox["\<\"The honeycomb model of GLn(C)tensor products I: proof of the \
saturation conjecture, A. Knutson and T. Tao (1999)\"\>",
      StatusArea[#, "J.Amer.Math.Soc.12 (1999)1055-1090"]& ,
      TagBoxNote->"J.Amer.Math.Soc.12 (1999)1055-1090"], True->
     StyleBox[
      TagBox["\<\"The honeycomb model of GLn(C)tensor products I: proof of \
the saturation conjecture, A. Knutson and T. Tao (1999)\"\>",
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
  CellChangeTimes->{{3.715008810672377*^9, 3.715008835637081*^9}},
  ExpressionUUID->"00553f84-25ee-4caa-aaaa-9e557d30d3e6"]
}], "Text",
 FontSize->12,ExpressionUUID->"00000000-0000-0000-0000-000000000000"]
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
}, Open  ]],

Cell[TextData[StyleBox["The graphs obtained with the CDF Player on the tablet \
sometimes appear to be badly scaled, although they look nice on the computer \
screen.",
 FontSize->12]], "Text",ExpressionUUID->"00000000-0000-0000-0000-\
000000000000"],

Cell[TextData[{
 StyleBox["Constraint on the values of weight components when using the  \
tensorproduct command ",
  FontSize->12,
  FontWeight->"Bold",
  FontColor->GrayLevel[0]],
 StyleBox[":",
  FontSize->12],
 "\n",
 StyleBox["In order to run the command  tensorproduct[la, mu], the components \
of the weights la and mu should obey the constraint Or[max(la) < 10, max(mu)] \
< 10 == True\nThis value of 10 comes from the default setting of the global \
system options for Reduce in Mathematica version 11.1\nStrangely enough, the \
constraint was much less drastic -- it was 10^4 rather than 10^1 -- in \
Mathematica 6.0\nThis behavior will be \[OpenCurlyDoubleQuote]repaired\
\[CloseCurlyDoubleQuote] (hope so) in a later version of Mathematica.\n\
Meanwhile,  If you need to manipulate simultaneously two weights that have \
components bigger than 10 (but smaller than 20, for instance),  quit the \
kernel, start it again, run the command \n",
  FontSize->12],
 StyleBox["SetSystemOptions[\[OpenCurlyDoubleQuote]ReduceOptions\
\[CloseCurlyDoubleQuote] -> {\[OpenCurlyDoubleQuote]DiscreteSolutionBound\
\[CloseCurlyDoubleQuote] -> 20}]",
  FontSize->12,
  FontColor->RGBColor[0, 0, 1]],
 StyleBox["\nand evaluate the needed packages again (adjmatPackage,  \
obladePackage and honeycombPackage). The function tensorproduct is defined in \
obladePackage. ",
  FontSize->12]
}], "Text",ExpressionUUID->"00000000-0000-0000-0000-000000000000"]
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
  FontSize->12,ExpressionUUID->"c5746217-c26d-4ff9-8bed-9f5a27cbe370"],
 "\n",
 Cell[BoxData[
  TagBox[
   ButtonBox[
    PaneSelectorBox[{False->
     PaneSelectorBox[{False->
      TagBox["\<\"Pictographs for intertwiners of SU(n): Honeycombs\"\>",
       StatusArea[#, "Computer_programs"]& ,
       TagBoxNote->"Computer_programs"], True->
      TagBox["\<\"Pictographs: Honeycombs for SU(n)\"\>",
       StatusArea[#, "Computer_programs"]& ,
       TagBoxNote->"Computer_programs"]}, Dynamic[
       CurrentValue["MouseOver"]],
      BaseStyle->{"Hyperlink"},
      FrameMargins->0,
      ImageSize->Automatic], True->
     StyleBox[
      PaneSelectorBox[{False->
       TagBox["\<\"Pictographs for intertwiners of SU(n): Honeycombs\"\>",
        StatusArea[#, "Computer_programs"]& ,
        TagBoxNote->"Computer_programs"], True->
       TagBox["\<\"Pictographs: Honeycombs for SU(n)\"\>",
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
   3.715340801614562*^9, {3.715340955077302*^9, 3.715340993973712*^9}},
  ExpressionUUID->"6e1b0147-1eca-408a-8619-027215efe1ca"],
 "\n",
 StyleBox["September 2017",
  FontSize->12,
  FontWeight->"Regular"]
}], "Text",ExpressionUUID->"00000000-0000-0000-0000-000000000000"]
}, Open  ]]
},
WindowSize->{1440, 852},
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
CellTagsIndex->{
 "suntag"->{
  Cell[66244, 1483, 295, 7, 42, "Subsection",
   CellTags->"suntag"],
  Cell[84423, 1897, 2452, 39, 487, "Text",
   CellTags->"suntag"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"suntag", 178838, 4169}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 362, 11, 42, "Subsection"],
Cell[1851, 48, 63582, 1409, 801, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[65470, 1462, 274, 8, 42, "Subsection"],
Cell[65747, 1472, 460, 6, 49, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[66244, 1483, 295, 7, 42, "Subsection",
 CellTags->"suntag"],
Cell[66542, 1492, 17878, 403, 591, "Input",
 Evaluatable->False],
Cell[84423, 1897, 2452, 39, 487, "Text",
 CellTags->"suntag"],
Cell[CellGroupData[{
Cell[86900, 1940, 419, 11, 32, "Input"],
Cell[87322, 1953, 26663, 607, 378, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[114022, 2565, 419, 11, 32, "Input"],
Cell[114444, 2578, 26725, 608, 378, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[141218, 3192, 289, 8, 42, "Subsection"],
Cell[141510, 3202, 7393, 127, 220, "Text"],
Cell[148906, 3331, 2364, 37, 99, "Text"],
Cell[151273, 3370, 417, 8, 96, "Text"],
Cell[151693, 3380, 2132, 35, 30, "Text"],
Cell[153828, 3417, 10120, 358, 96, "Text"],
Cell[163951, 3777, 3513, 83, 125, "Text"],
Cell[167467, 3862, 4443, 104, 125, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[171947, 3971, 274, 8, 42, "Subsection"],
Cell[CellGroupData[{
Cell[172246, 3983, 591, 17, 24, "Print"],
Cell[172840, 4002, 688, 22, 24, "Print"]
}, Open  ]],
Cell[173543, 4027, 250, 4, 28, "Text"],
Cell[173796, 4033, 1446, 29, 147, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[175279, 4067, 275, 8, 42, "Subsection"],
Cell[175557, 4077, 192, 3, 30, "Text"],
Cell[175752, 4082, 2674, 69, 69, "Text"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature zuTw5E#0gBz4rCg2idqfJ63k *)

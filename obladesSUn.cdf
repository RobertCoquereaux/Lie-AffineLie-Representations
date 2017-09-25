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
NotebookDataLength[    199840,       4562]
NotebookOptionsPosition[    198871,       4506]
NotebookOutlinePosition[    199643,       4539]
CellTagsIndexPosition[    199572,       4534]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
O-BLADES ASSOCIATED WITH AN ADMISSIBLE TRIPLE OF IRREDUCIBLE REPRESENTATIONS \
OF SU(n)\
\>", "Subsection", "PluginEmbeddedContent",
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
  2, $CellContext`mat$$ = {{2, 1}, {6, 2}, {6, 1}}, $CellContext`coupling$$ = 
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
              obladePackage`plotOblades[
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
          obladePackage`plotOblades[
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
           "of irreducible representations", "of SU(n)", "O-blade version"}, 
          Center], "Title"]]}, 
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
   ImageSizeCache->{1414., {390., 395.}}],
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
          
          Table[(1/2) (3 Private`p + Private`p^2) + ((1/2) (Private`lev - 1)) 
            Private`lev + (Private`lev - 1) Private`p, {
           Private`p, 1, Private`NN}], {Private`z, Private`z + 1}], {
         Private`z, 1, Private`NN - Private`lev}]; Private`edgesNWSElabels[
         Pattern[Private`lev, 
          Blank[]]] := Table[
         Take[
          Range[
          1 + ((1/2) (-Private`lev + Private`NN)) (1 - Private`lev + 
             Private`NN), 1 - Private`lev + 
           Private`NN + ((1/2) (-Private`lev + Private`NN)) (1 - Private`lev + 
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
                    Part[Private`vert, 1, Private`s], 20, Blue], #, {
                   Right, Bottom}], 
                  Disk[#, 0.03], {Black}}}, {Private`s, 1, Private`NN - 1}], 
               1]]& ), Method -> {Automatic, "RandomSeed" -> Private`rs}]; 
         Private`grmu = 
          GraphPlot[Private`adj, VertexRenderingFunction -> (Apply[Which, 
              Flatten[
               Table[{#2 == Private`mulabel[Private`NN, Private`s], {
                  Text[
                   Style[
                    Part[Private`vert, 2, Private`s], 20, Blue], #, {
                   Left, Bottom}], 
                  Disk[#, 0.03], {Black}}}, {Private`s, 1, Private`NN - 1}], 
               1]]& ), Method -> {Automatic, "RandomSeed" -> Private`rs}]; 
         Private`grnu = 
          GraphPlot[Private`adj, VertexRenderingFunction -> (Apply[Which, 
              Flatten[
               Table[{#2 == Private`nulabel[Private`NN, Private`s], {
                  Text[
                   Style[
                    Part[Private`vert, 3, Private`NN - Private`s], 20, 
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
       Table[(1/2) (3 Private`p + Private`p^2) + ((1/2) (Private`lev$ - 1)) 
         Private`lev$ + (Private`lev$ - 1) Private`p, {Private`p, 1, 3}], {
       Private`z, Private`z + 1}], {Private`z, 1, 3 - Private`lev$}], 
    Private`edgesNWSElabels[
      Pattern[Private`lev$, 
       Blank[]]] := Table[
      Take[
       Range[
       1 + ((1/2) (-Private`lev$ + 3)) (1 - Private`lev$ + 3), 1 - 
        Private`lev$ + 
        3 + ((1/2) (-Private`lev$ + 3)) (1 - Private`lev$ + 3)], {
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
0]}", Private`componentsEdgesAndnuc[{2, 1}, {6, 2}] = {CompressedData["
1:eJxtUNsNgEAI4/Aef+7gSo7gALr/l/LRJpVAQiiU9sgd13PebmZ75Ioc9g9H
beCJ3wgHNuia9Fpn4Ul+ATs81aMnH8UDGt5nws1iXz09zdQza9jP4j1ym8wz
zzurv+mFjtwH3H0KRw==
      
      "], {{{2, 2}, {1}}, {{2, 1}, {0}}, {{1, 1}, {1}}, {{2, 2}, {0}}, {{1, 
        0}, {0}}, {{1, 2}, {1}}, {{0, 0}, {1}}, {{1, 1}, {0}}, {{0, 1}, {
        1}}, {{1, 2}, {0}}, {{0, 0}, {0}}, {{0, 2}, {1}}, {{0, 1}, {0}}, {{0, 
        2}, {0}}}, {{{5, 5}, {0}}, {{7, 6}, {0}}, {{5, 5}, {1}}, {{6, 6}, {
        0}}, {{7, 6}, {1}}, {{4, 5}, {1}}, {{5, 5}, {2}}, {{6, 6}, {1}}, {{4, 
        5}, {2}}, {{5, 6}, {1}}, {{6, 6}, {2}}, {{3, 5}, {2}}, {{5, 6}, {
        2}}, {{4, 6}, {2}}}, {{{0, 0}, {0}}, {{1, 0}, {1}}, {{0, 0}, {1}}, {{
        1, 1}, {0}}, {{1, 0}, {2}}, {{0, 1}, {0}}, {{0, 0}, {2}}, {{1, 1}, {
        1}}, {{0, 1}, {1}}, {{1, 2}, {0}}, {{1, 1}, {2}}, {{0, 2}, {0}}, {{1, 
        2}, {1}}, {{1, 3}, {0}}}, {{0, 5}, {0, 8}, {1, 6}, {1, 6}, {1, 9}, {2,
       4}, {2, 7}, {2, 7}, {3, 5}, {3, 5}, {3, 8}, {4, 3}, {4, 6}, {5, 4}}}, 
    Private`componentsEdgesAndnuc[{3, 7}, {0, 3}] = {{{3, 0, 3, -3, 3, 7, 
      0}, {2, 0, 2, -2, 3, 7, 0}, {1, 0, 1, -1, 3, 7, 0}, {2, 1, 3, -2, 2, 7, 
      0}, {0, 0, 0, 0, 3, 7, 0}, {1, 1, 2, -1, 2, 7, 0}, {0, 1, 1, 0, 2, 7, 
      0}, {1, 2, 3, -1, 1, 7, 0}, {0, 2, 2, 0, 1, 7, 0}, {0, 3, 3, 0, 0, 7, 
      0}}, {{{3, 0}, {0}}, {{3, 1}, {0}}, {{3, 2}, {0}}, {{2, 0}, {0}}, {{3, 
        3}, {0}}, {{2, 1}, {0}}, {{2, 2}, {0}}, {{1, 0}, {0}}, {{1, 1}, {
        0}}, {{0, 0}, {0}}}, {{{3, 0}, {0}}, {{2, 0}, {0}}, {{1, 0}, {0}}, {{
        2, 0}, {1}}, {{0, 0}, {0}}, {{1, 0}, {1}}, {{0, 0}, {1}}, {{1, 0}, {
        2}}, {{0, 0}, {2}}, {{0, 0}, {3}}}, {{{7, 4}, {3}}, {{7, 5}, {2}}, {{
        7, 6}, {1}}, {{7, 5}, {3}}, {{7, 7}, {0}}, {{7, 6}, {2}}, {{7, 7}, {
        1}}, {{7, 6}, {3}}, {{7, 7}, {2}}, {{7, 7}, {3}}}, {{4, 6}, {5, 4}, {
      6, 2}, {6, 5}, {7, 0}, {7, 3}, {8, 1}, {8, 4}, {9, 2}, {10, 3}}}, 
    Private`componentsEdgesAndnuc[{3, 7}, {0, 3}, {7, 0}] = {{{0, 0, 0, 0, 3, 
      7, 0}}, {{{3, 3}, {0}}}, {{{0, 0}, {0}}}, {{{7, 7}, {0}}}, {{7, 0}}}, 
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
     Module[{Private`levelplus, Private`rk, Private`One, Private`iii, 
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
    Private`rs = 1, adjmatPackage`nntoseed = 
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
                 Part[Private`vert$, 1, Private`s], 20, Blue], #, {
                Right, Bottom}], 
               Disk[#, 0.03], {Black}}}, {Private`s, 1, 3 - 1}], 1]]& ), 
         Method -> {Automatic, "RandomSeed" -> Private`rs}]; 
      Private`grmu$ = 
       GraphPlot[Private`adj$, VertexRenderingFunction -> (Apply[Which, 
           Flatten[
            Table[{#2 == Private`mulabel[3, Private`s], {
               Text[
                Style[
                 Part[Private`vert$, 2, Private`s], 20, Blue], #, {
                Left, Bottom}], 
               Disk[#, 0.03], {Black}}}, {Private`s, 1, 3 - 1}], 1]]& ), 
         Method -> {Automatic, "RandomSeed" -> Private`rs}]; 
      Private`grnu$ = 
       GraphPlot[Private`adj$, VertexRenderingFunction -> (Apply[Which, 
           Flatten[
            Table[{#2 == Private`nulabel[3, Private`s], {
               Text[
                Style[
                 Part[Private`vert$, 3, 3 - Private`s], 20, Blue], #, {
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
    Attributes[Private`grNWSE$] = {Temporary}, 
    Private`fullinfo = {{{0, 0, 0, 0, 3, 7, 
      0}}, {{{3, 3}, {0}}}, {{{0, 0}, {0}}}, {{{7, 7}, {0}}}, {{7, 0}}}, 
    Private`lambdalabel[
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
       Blank[]]] := (1/2) (Private`n + Private`n^2 - (2 Private`n) 
      Private`p + (-1 + Private`p) Private`p + 2), Private`plotAllOblades[
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
    obladePackage`plotOblades[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}, {
       Pattern[Private`nu, 
        BlankSequence[]]}] := Switch[
      ValueQ[obladePackage`currentgroup], False, 
      obladePackage`oblade[Length[{Private`lam}] + 1]; 
      obladePackage`plotOblades[{Private`lam}, {Private`mu}, {Private`nu}], 
      True, 
      If[Length[{Private`lam}] == obladePackage`currentgroup - 1, 
       Private`plotAllOblades[{{Private`lam}, {Private`mu}, {Private`nu}}], 
       obladePackage`oblade[Length[{Private`lam}] + 1]; 
       obladePackage`plotOblades[{Private`lam}, {Private`mu}, {Private`nu}]]],
     obladePackage`plotOblades[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}, {
       Pattern[Private`nu, 
        BlankSequence[]]}, 
      Pattern[Private`pos, 
       Blank[]]] := Switch[
      ValueQ[obladePackage`currentgroup], False, 
      obladePackage`oblade[Length[{Private`lam}] + 1]; 
      obladePackage`plotOblades[{Private`lam}, {Private`mu}, {Private`nu}, 
        Private`pos], True, 
      If[Length[{Private`lam}] == obladePackage`currentgroup - 1, 
       Private`plotSUNoblade[{{Private`lam}, {Private`mu}, {Private`nu}}, 
        Private`pos], obladePackage`oblade[Length[{Private`lam}] + 1]; 
       obladePackage`plotOblades[{Private`lam}, {Private`mu}, {Private`nu}, 
         Private`pos]]], 
    TagSet[obladePackage`plotOblades, 
     MessageName[obladePackage`plotOblades, "usage"], 
     "plotOblades[lambda,mu,nu] returns the list of drawings of all oblades \
with sides defined by the three highest weights lambda, mu, nu and describes \
the branching la \[CircleTimes] mu \[Rule] nu. To display this list as a \
tableform (with no braces) one can do as follows:  li = \
plotOblades[lambda,mu,nu];  GraphicsRow[li,ImageSize\[Rule] Length[li]*300]. \
The command admits and optional argument pos which is an integer chosen \
between 1 and multiplicity[lambda, mu, nu]; if specified, \
plotOblades[lambda,mu,nu, pos] displays only the particular oblade numbered \
pos."], obladePackage`tensorproduct[{
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
menu)."}}]], "Output", \
"PluginEmbeddedContent",ExpressionUUID->"00000000-0000-0000-0000-\
000000000000"]
}, Open  ]],

Cell[CellGroupData[{

Cell["CAPTION", "Subsection", "PluginEmbeddedContent",
 CellFrame->{{0, 0}, {1, 0}},
 CellFrameColor->RGBColor[0.87, 0.87, 0.87],
 FontFamily->"Helvetica",
 FontSize->12,
 FontWeight->"Bold",
 FontColor->RGBColor[
  0.597406, 0, 
   0.0527047],ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[TextData[StyleBox["Given an admissible triple, the program determines \
its multiplicity and draws the corresponding O-blades.\nThis can be explained \
in terms of representation theory (see the subsection Details And \
References), or in a purely combinatorial way, see the next subsection :  \
\[OpenCurlyDoubleQuote]The SU(N) game\[CloseCurlyDoubleQuote].",
 FontColor->GrayLevel[0]]], "Text", \
"PluginEmbeddedContent",ExpressionUUID->"00000000-0000-0000-0000-\
000000000000"]
}, Open  ]],

Cell[CellGroupData[{

Cell["THE SU(N) GAME", "Subsection", "PluginEmbeddedContent",
 CellFrame->{{0, 0}, {1, 0}},
 CellFrameColor->RGBColor[0.87, 0.87, 0.87],
 FontFamily->"Helvetica",
 FontSize->12,
 FontWeight->"Bold",
 FontColor->RGBColor[0.597406, 0, 0.0527047],
 CellTags->"suntag",ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[TextData[{
 "External vertices (sides of the triangle, excluding corners) are given: \
they are labelled with N-1 arbitrary non-negative integers.\nInternal edges \
carry non-negative integers.\n\nProblem: find all the pictographs obeying the \
following constraints: \n\n\t",
 StyleBox["Conservation of integers at each external vertex (its label is \
equal to the sum of the two internal edges ending there).\n\tEquality of \
opposite angles at each internal vertex (the value of an acute angle being \
defined as the sum of its adjacent edges).\n\t\n",
  FontColor->RGBColor[0.6, 0.4, 0.2]],
 StyleBox["A triple (three sides) is called admissible if the above problem \
admits a solution.   Arbitrary triples are usually not admissible. \nGiven \
two sides, the set of admissible triples is finite : the third side has to be \
chosen in a specific list (the one returned by the  tensorproduct command).\n\
A chosen admissible triple may have multiplicity (several pictographs with \
the same sides) : the various solutions differ by the values of internal \
edges.\nThe solutions are given by the pictographs.\n\nExample\n",
  FontColor->GrayLevel[0]],
 StyleBox["\t\n{3,1,2} ",
  FontColor->RGBColor[0.6, 0.4, 0.2]],
 Cell[BoxData[
  FormBox["\[CircleTimes]", TraditionalForm]],ExpressionUUID->
  "f077b260-68db-4817-9ea2-45b643625476"],
 " ",
 StyleBox["{2,5,1} \[LongRightArrow] {3,2,5}\nMultiplicity is 4\nHere are the \
four O-blades :\n",
  FontColor->RGBColor[0.6, 0.4, 0.2]]
}], "Text", "PluginEmbeddedContent",
 CellTags->"suntag",ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[BoxData[
 RowBox[{
  GraphicsBox[{
    TagBox[
     GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
      0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
      2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
      0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
      3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
      0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
      1.664858021072857, 2.786331451205597}, {4.195878217203971, 
      0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
      3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
      2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{{
          {RGBColor[0.5, 0., 0.], 
           LineBox[{{1, 2}, {2, 3}, {2, 4}, {3, 1}, {3, 5}, {4, 5}, {4, 7}, {
            5, 2}, {5, 6}, {5, 8}, {6, 3}, {6, 9}, {7, 8}, {7, 11}, {8, 4}, {
            8, 9}, {8, 12}, {9, 5}, {9, 10}, {9, 13}, {10, 6}, {10, 14}, {11, 
            12}, {12, 7}, {12, 13}, {13, 8}, {13, 14}, {14, 9}, {14, 15}, {15,
             10}}]}}}}, {{{
          {RGBColor[0, 0, 0.7], 
           TagBox[
            TooltipBox[PointBox[1],
             "1"],
            Annotation[#, 1, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[2],
             "2"],
            Annotation[#, 2, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[3],
             "3"],
            Annotation[#, 3, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[4],
             "4"],
            Annotation[#, 4, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[5],
             "5"],
            Annotation[#, 5, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[6],
             "6"],
            Annotation[#, 6, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[7],
             "7"],
            Annotation[#, 7, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[8],
             "8"],
            Annotation[#, 8, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[9],
             "9"],
            Annotation[#, 9, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[10],
             "10"],
            Annotation[#, 10, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[11],
             "11"],
            Annotation[#, 11, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[12],
             "12"],
            Annotation[#, 12, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[13],
             "13"],
            Annotation[#, 13, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[14],
             "14"],
            Annotation[#, 14, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[15],
             "15"],
            Annotation[#, 15, "Tooltip"]& ]}}}}}],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[
     GraphicsGroupBox[{
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0.5, 0., 0.], 
            LineBox[{{1, 2}, {2, 3}, {2, 4}, {3, 1}, {3, 5}, {4, 5}, {4, 7}, {
             5, 2}, {5, 6}, {5, 8}, {6, 3}, {6, 9}, {7, 8}, {7, 11}, {8, 4}, {
             8, 9}, {8, 12}, {9, 5}, {9, 10}, {9, 13}, {10, 6}, {10, 14}, {11,
              12}, {12, 7}, {12, 13}, {13, 8}, {13, 14}, {14, 9}, {14, 15}, {
             15, 10}}]}}}}], {{InsetBox[
          StyleBox["3",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {0.5515676760487191, 0.7827468639743875}, {
          Right, Bottom}], 
         DiskBox[{0.5515676760487191, 0.7827468639743875}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["1",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {1.1375834648524177, 1.7685953902334721}, {
          Right, Bottom}], 
         DiskBox[{1.1375834648524177, 1.7685953902334721}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {1.664858021072857, 2.786331451205597}, {
          Right, Bottom}], 
         DiskBox[{1.664858021072857, 2.786331451205597}, 0.03], {{{
            {GrayLevel[0]}}}}}}},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[
     GraphicsGroupBox[{
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0.5, 0., 0.], 
            LineBox[{{1, 2}, {2, 3}, {2, 4}, {3, 1}, {3, 5}, {4, 5}, {4, 7}, {
             5, 2}, {5, 6}, {5, 8}, {6, 3}, {6, 9}, {7, 8}, {7, 11}, {8, 4}, {
             8, 9}, {8, 12}, {9, 5}, {9, 10}, {9, 13}, {10, 6}, {10, 14}, {11,
              12}, {12, 7}, {12, 13}, {13, 8}, {13, 14}, {14, 9}, {14, 15}, {
             15, 10}}]}}}}], {{InsetBox[
          StyleBox["1",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {3.6185339309815037, 0.8332712730354579}, {
          Left, Bottom}], 
         DiskBox[{3.6185339309815037, 0.8332712730354579}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["5",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {3.001017554749006, 1.7991440420806146}, {
          Left, Bottom}], 
         DiskBox[{3.001017554749006, 1.7991440420806146}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {2.4398832926167766, 2.800279802895594}, {
          Left, Bottom}], 
         DiskBox[{2.4398832926167766, 2.800279802895594}, 0.03], {{{
            {GrayLevel[0]}}}}}}},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[
     GraphicsGroupBox[{
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0.5, 0., 0.], 
            LineBox[{{1, 2}, {2, 3}, {2, 4}, {3, 1}, {3, 5}, {4, 5}, {4, 7}, {
             5, 2}, {5, 6}, {5, 8}, {6, 3}, {6, 9}, {7, 8}, {7, 11}, {8, 4}, {
             8, 9}, {8, 12}, {9, 5}, {9, 10}, {9, 13}, {10, 6}, {10, 14}, {11,
              12}, {12, 7}, {12, 13}, {13, 8}, {13, 14}, {14, 9}, {14, 15}, {
             15, 10}}]}}}}], {{InsetBox[
          StyleBox["3",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {0.9498934946519377, 0.11780661101991186}, {
          Right, Top}], 
         DiskBox[{0.9498934946519377, 0.11780661101991186}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {2.095307960524705, 0.17019180900260267}, {
          Right, Top}], 
         DiskBox[{2.095307960524705, 0.17019180900260267}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["5",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {3.241626900960558, 0.15566591120426532}, {
          Right, Top}], 
         DiskBox[{3.241626900960558, 0.15566591120426532}, 0.03], {{{
            {GrayLevel[0]}}}}}}},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[GraphicsGroupBox[{{{InsetBox[
          StyleBox["2",
           StripOnInput->False,
           FontSize->20], {1.0402769799617744, 0.8501047320512328}]}, {
         InsetBox[
          StyleBox["3",
           StripOnInput->False,
           FontSize->20], {2.08342760460274, 0.9261529546365616}]}, {
         InsetBox[
          StyleBox["0",
           StripOnInput->False,
           FontSize->20], {1.6025873732671327, 1.8278045723755434}]}, {
         InsetBox[
          StyleBox["0",
           StripOnInput->False,
           FontSize->20], {3.128201428156077, 0.8840572910902514}]}, {InsetBox[
          StyleBox["0",
           StripOnInput->False,
           FontSize->20], {2.534304418215427, 1.8430788982991144}]}, {InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {2.0523706568448166, 2.7933056270505956}]}}, 
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0, 0, 0.7], 
            TagBox[
             TooltipBox[PointBox[1],
              "1"],
             Annotation[#, 1, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[2],
              "2"],
             Annotation[#, 2, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[3],
              "3"],
             Annotation[#, 3, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[4],
              "4"],
             Annotation[#, 4, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[5],
              "5"],
             Annotation[#, 5, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[6],
              "6"],
             Annotation[#, 6, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[7],
              "7"],
             Annotation[#, 7, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[8],
              "8"],
             Annotation[#, 8, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[9],
              "9"],
             Annotation[#, 9, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[10],
              "10"],
             Annotation[#, 10, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[11],
              "11"],
             Annotation[#, 11, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[12],
              "12"],
             Annotation[#, 12, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[13],
              "13"],
             Annotation[#, 13, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[14],
              "14"],
             Annotation[#, 14, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[15],
              "15"],
             Annotation[#, 15, "Tooltip"]& ]}}}}]},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[GraphicsGroupBox[{{{InsetBox[
          StyleBox["2",
           StripOnInput->False,
           FontSize->20], {1.2394398892633838, 0.517634605573995}]}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           FontSize->20], {2.366588442927678, 0.5525175590738238}]}, {InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {1.7982887827783387, 1.4022381773228463}]}, {
         InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {3.4300804159710307, 0.4944685921198616}]}, {
         InsetBox[
          StyleBox["5",
           StripOnInput->False,
           FontSize->20], {2.819443240039828, 1.3669936756128298}]}, {InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {2.2537372871493124, 2.343646778706604}]}}, 
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0, 0, 0.7], 
            TagBox[
             TooltipBox[PointBox[1],
              "1"],
             Annotation[#, 1, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[2],
              "2"],
             Annotation[#, 2, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[3],
              "3"],
             Annotation[#, 3, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[4],
              "4"],
             Annotation[#, 4, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[5],
              "5"],
             Annotation[#, 5, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[6],
              "6"],
             Annotation[#, 6, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[7],
              "7"],
             Annotation[#, 7, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[8],
              "8"],
             Annotation[#, 8, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[9],
              "9"],
             Annotation[#, 9, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[10],
              "10"],
             Annotation[#, 10, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[11],
              "11"],
             Annotation[#, 11, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[12],
              "12"],
             Annotation[#, 12, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[13],
              "13"],
             Annotation[#, 13, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[14],
              "14"],
             Annotation[#, 14, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[15],
              "15"],
             Annotation[#, 15, "Tooltip"]& ]}}}}]},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[GraphicsGroupBox[{{{InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {0.7507305853503284, 0.4502767374971497}]}, {
         InsetBox[
          StyleBox["0",
           StripOnInput->False,
           FontSize->20], {1.8121471221997674, 0.5438272045653404}]}, {
         InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {1.3332848743636236, 1.343028995180775}]}, {InsetBox[
          StyleBox["4",
           StripOnInput->False,
           FontSize->20], {2.939747913145604, 0.5452546101746552}]}, {InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {2.352730103506249, 1.4109285318313298}]}, {InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {1.8662246513773524, 2.3366726028616056}]}}, 
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0, 0, 0.7], 
            TagBox[
             TooltipBox[PointBox[1],
              "1"],
             Annotation[#, 1, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[2],
              "2"],
             Annotation[#, 2, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[3],
              "3"],
             Annotation[#, 3, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[4],
              "4"],
             Annotation[#, 4, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[5],
              "5"],
             Annotation[#, 5, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[6],
              "6"],
             Annotation[#, 6, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[7],
              "7"],
             Annotation[#, 7, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[8],
              "8"],
             Annotation[#, 8, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[9],
              "9"],
             Annotation[#, 9, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[10],
              "10"],
             Annotation[#, 10, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[11],
              "11"],
             Annotation[#, 11, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[12],
              "12"],
             Annotation[#, 12, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[13],
              "13"],
             Annotation[#, 13, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[14],
              "14"],
             Annotation[#, 14, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[15],
              "15"],
             Annotation[#, 15, "Tooltip"]& ]}}}}]},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ]},
   AspectRatio->Automatic,
   FrameTicks->None,
   ImageSize->Large,
   PlotRange->All,
   PlotRangePadding->Scaled[0.1]], 
  GraphicsBox[{
    TagBox[
     GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
      0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
      2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
      0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
      3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
      0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
      1.664858021072857, 2.786331451205597}, {4.195878217203971, 
      0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
      3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
      2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{{
          {RGBColor[0.5, 0., 0.], 
           LineBox[{{1, 2}, {2, 3}, {2, 4}, {3, 1}, {3, 5}, {4, 5}, {4, 7}, {
            5, 2}, {5, 6}, {5, 8}, {6, 3}, {6, 9}, {7, 8}, {7, 11}, {8, 4}, {
            8, 9}, {8, 12}, {9, 5}, {9, 10}, {9, 13}, {10, 6}, {10, 14}, {11, 
            12}, {12, 7}, {12, 13}, {13, 8}, {13, 14}, {14, 9}, {14, 15}, {15,
             10}}]}}}}, {{{
          {RGBColor[0, 0, 0.7], 
           TagBox[
            TooltipBox[PointBox[1],
             "1"],
            Annotation[#, 1, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[2],
             "2"],
            Annotation[#, 2, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[3],
             "3"],
            Annotation[#, 3, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[4],
             "4"],
            Annotation[#, 4, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[5],
             "5"],
            Annotation[#, 5, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[6],
             "6"],
            Annotation[#, 6, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[7],
             "7"],
            Annotation[#, 7, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[8],
             "8"],
            Annotation[#, 8, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[9],
             "9"],
            Annotation[#, 9, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[10],
             "10"],
            Annotation[#, 10, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[11],
             "11"],
            Annotation[#, 11, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[12],
             "12"],
            Annotation[#, 12, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[13],
             "13"],
            Annotation[#, 13, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[14],
             "14"],
            Annotation[#, 14, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[15],
             "15"],
            Annotation[#, 15, "Tooltip"]& ]}}}}}],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[
     GraphicsGroupBox[{
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0.5, 0., 0.], 
            LineBox[{{1, 2}, {2, 3}, {2, 4}, {3, 1}, {3, 5}, {4, 5}, {4, 7}, {
             5, 2}, {5, 6}, {5, 8}, {6, 3}, {6, 9}, {7, 8}, {7, 11}, {8, 4}, {
             8, 9}, {8, 12}, {9, 5}, {9, 10}, {9, 13}, {10, 6}, {10, 14}, {11,
              12}, {12, 7}, {12, 13}, {13, 8}, {13, 14}, {14, 9}, {14, 15}, {
             15, 10}}]}}}}], {{InsetBox[
          StyleBox["3",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {0.5515676760487191, 0.7827468639743875}, {
          Right, Bottom}], 
         DiskBox[{0.5515676760487191, 0.7827468639743875}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["1",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {1.1375834648524177, 1.7685953902334721}, {
          Right, Bottom}], 
         DiskBox[{1.1375834648524177, 1.7685953902334721}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {1.664858021072857, 2.786331451205597}, {
          Right, Bottom}], 
         DiskBox[{1.664858021072857, 2.786331451205597}, 0.03], {{{
            {GrayLevel[0]}}}}}}},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[
     GraphicsGroupBox[{
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0.5, 0., 0.], 
            LineBox[{{1, 2}, {2, 3}, {2, 4}, {3, 1}, {3, 5}, {4, 5}, {4, 7}, {
             5, 2}, {5, 6}, {5, 8}, {6, 3}, {6, 9}, {7, 8}, {7, 11}, {8, 4}, {
             8, 9}, {8, 12}, {9, 5}, {9, 10}, {9, 13}, {10, 6}, {10, 14}, {11,
              12}, {12, 7}, {12, 13}, {13, 8}, {13, 14}, {14, 9}, {14, 15}, {
             15, 10}}]}}}}], {{InsetBox[
          StyleBox["1",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {3.6185339309815037, 0.8332712730354579}, {
          Left, Bottom}], 
         DiskBox[{3.6185339309815037, 0.8332712730354579}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["5",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {3.001017554749006, 1.7991440420806146}, {
          Left, Bottom}], 
         DiskBox[{3.001017554749006, 1.7991440420806146}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {2.4398832926167766, 2.800279802895594}, {
          Left, Bottom}], 
         DiskBox[{2.4398832926167766, 2.800279802895594}, 0.03], {{{
            {GrayLevel[0]}}}}}}},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[
     GraphicsGroupBox[{
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0.5, 0., 0.], 
            LineBox[{{1, 2}, {2, 3}, {2, 4}, {3, 1}, {3, 5}, {4, 5}, {4, 7}, {
             5, 2}, {5, 6}, {5, 8}, {6, 3}, {6, 9}, {7, 8}, {7, 11}, {8, 4}, {
             8, 9}, {8, 12}, {9, 5}, {9, 10}, {9, 13}, {10, 6}, {10, 14}, {11,
              12}, {12, 7}, {12, 13}, {13, 8}, {13, 14}, {14, 9}, {14, 15}, {
             15, 10}}]}}}}], {{InsetBox[
          StyleBox["3",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {0.9498934946519377, 0.11780661101991186}, {
          Right, Top}], 
         DiskBox[{0.9498934946519377, 0.11780661101991186}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {2.095307960524705, 0.17019180900260267}, {
          Right, Top}], 
         DiskBox[{2.095307960524705, 0.17019180900260267}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["5",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {3.241626900960558, 0.15566591120426532}, {
          Right, Top}], 
         DiskBox[{3.241626900960558, 0.15566591120426532}, 0.03], {{{
            {GrayLevel[0]}}}}}}},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[GraphicsGroupBox[{{{InsetBox[
          StyleBox["2",
           StripOnInput->False,
           FontSize->20], {1.0402769799617744, 0.8501047320512328}]}, {
         InsetBox[
          StyleBox["2",
           StripOnInput->False,
           FontSize->20], {2.08342760460274, 0.9261529546365616}]}, {
         InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {1.6025873732671327, 1.8278045723755434}]}, {
         InsetBox[
          StyleBox["0",
           StripOnInput->False,
           FontSize->20], {3.128201428156077, 0.8840572910902514}]}, {InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {2.534304418215427, 1.8430788982991144}]}, {InsetBox[
          StyleBox["0",
           StripOnInput->False,
           FontSize->20], {2.0523706568448166, 2.7933056270505956}]}}, 
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0, 0, 0.7], 
            TagBox[
             TooltipBox[PointBox[1],
              "1"],
             Annotation[#, 1, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[2],
              "2"],
             Annotation[#, 2, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[3],
              "3"],
             Annotation[#, 3, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[4],
              "4"],
             Annotation[#, 4, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[5],
              "5"],
             Annotation[#, 5, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[6],
              "6"],
             Annotation[#, 6, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[7],
              "7"],
             Annotation[#, 7, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[8],
              "8"],
             Annotation[#, 8, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[9],
              "9"],
             Annotation[#, 9, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[10],
              "10"],
             Annotation[#, 10, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[11],
              "11"],
             Annotation[#, 11, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[12],
              "12"],
             Annotation[#, 12, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[13],
              "13"],
             Annotation[#, 13, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[14],
              "14"],
             Annotation[#, 14, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[15],
              "15"],
             Annotation[#, 15, "Tooltip"]& ]}}}}]},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[GraphicsGroupBox[{{{InsetBox[
          StyleBox["2",
           StripOnInput->False,
           FontSize->20], {1.2394398892633838, 0.517634605573995}]}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           FontSize->20], {2.366588442927678, 0.5525175590738238}]}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           FontSize->20], {1.7982887827783387, 1.4022381773228463}]}, {
         InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {3.4300804159710307, 0.4944685921198616}]}, {
         InsetBox[
          StyleBox["4",
           StripOnInput->False,
           FontSize->20], {2.819443240039828, 1.3669936756128298}]}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           FontSize->20], {2.2537372871493124, 2.343646778706604}]}}, 
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0, 0, 0.7], 
            TagBox[
             TooltipBox[PointBox[1],
              "1"],
             Annotation[#, 1, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[2],
              "2"],
             Annotation[#, 2, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[3],
              "3"],
             Annotation[#, 3, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[4],
              "4"],
             Annotation[#, 4, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[5],
              "5"],
             Annotation[#, 5, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[6],
              "6"],
             Annotation[#, 6, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[7],
              "7"],
             Annotation[#, 7, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[8],
              "8"],
             Annotation[#, 8, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[9],
              "9"],
             Annotation[#, 9, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[10],
              "10"],
             Annotation[#, 10, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[11],
              "11"],
             Annotation[#, 11, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[12],
              "12"],
             Annotation[#, 12, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[13],
              "13"],
             Annotation[#, 13, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[14],
              "14"],
             Annotation[#, 14, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[15],
              "15"],
             Annotation[#, 15, "Tooltip"]& ]}}}}]},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[GraphicsGroupBox[{{{InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {0.7507305853503284, 0.4502767374971497}]}, {
         InsetBox[
          StyleBox["0",
           StripOnInput->False,
           FontSize->20], {1.8121471221997674, 0.5438272045653404}]}, {
         InsetBox[
          StyleBox["0",
           StripOnInput->False,
           FontSize->20], {1.3332848743636236, 1.343028995180775}]}, {InsetBox[
          StyleBox["4",
           StripOnInput->False,
           FontSize->20], {2.939747913145604, 0.5452546101746552}]}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           FontSize->20], {2.352730103506249, 1.4109285318313298}]}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           FontSize->20], {1.8662246513773524, 2.3366726028616056}]}}, 
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0, 0, 0.7], 
            TagBox[
             TooltipBox[PointBox[1],
              "1"],
             Annotation[#, 1, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[2],
              "2"],
             Annotation[#, 2, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[3],
              "3"],
             Annotation[#, 3, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[4],
              "4"],
             Annotation[#, 4, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[5],
              "5"],
             Annotation[#, 5, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[6],
              "6"],
             Annotation[#, 6, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[7],
              "7"],
             Annotation[#, 7, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[8],
              "8"],
             Annotation[#, 8, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[9],
              "9"],
             Annotation[#, 9, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[10],
              "10"],
             Annotation[#, 10, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[11],
              "11"],
             Annotation[#, 11, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[12],
              "12"],
             Annotation[#, 12, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[13],
              "13"],
             Annotation[#, 13, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[14],
              "14"],
             Annotation[#, 14, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[15],
              "15"],
             Annotation[#, 15, "Tooltip"]& ]}}}}]},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ]},
   AspectRatio->Automatic,
   FrameTicks->None,
   ImageSize->Large,
   PlotRange->All,
   PlotRangePadding->Scaled[0.1]], 
  GraphicsBox[{
    TagBox[
     GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
      0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
      2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
      0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
      3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
      0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
      1.664858021072857, 2.786331451205597}, {4.195878217203971, 
      0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
      3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
      2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{{
          {RGBColor[0.5, 0., 0.], 
           LineBox[{{1, 2}, {2, 3}, {2, 4}, {3, 1}, {3, 5}, {4, 5}, {4, 7}, {
            5, 2}, {5, 6}, {5, 8}, {6, 3}, {6, 9}, {7, 8}, {7, 11}, {8, 4}, {
            8, 9}, {8, 12}, {9, 5}, {9, 10}, {9, 13}, {10, 6}, {10, 14}, {11, 
            12}, {12, 7}, {12, 13}, {13, 8}, {13, 14}, {14, 9}, {14, 15}, {15,
             10}}]}}}}, {{{
          {RGBColor[0, 0, 0.7], 
           TagBox[
            TooltipBox[PointBox[1],
             "1"],
            Annotation[#, 1, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[2],
             "2"],
            Annotation[#, 2, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[3],
             "3"],
            Annotation[#, 3, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[4],
             "4"],
            Annotation[#, 4, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[5],
             "5"],
            Annotation[#, 5, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[6],
             "6"],
            Annotation[#, 6, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[7],
             "7"],
            Annotation[#, 7, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[8],
             "8"],
            Annotation[#, 8, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[9],
             "9"],
            Annotation[#, 9, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[10],
             "10"],
            Annotation[#, 10, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[11],
             "11"],
            Annotation[#, 11, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[12],
             "12"],
            Annotation[#, 12, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[13],
             "13"],
            Annotation[#, 13, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[14],
             "14"],
            Annotation[#, 14, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[15],
             "15"],
            Annotation[#, 15, "Tooltip"]& ]}}}}}],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[
     GraphicsGroupBox[{
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0.5, 0., 0.], 
            LineBox[{{1, 2}, {2, 3}, {2, 4}, {3, 1}, {3, 5}, {4, 5}, {4, 7}, {
             5, 2}, {5, 6}, {5, 8}, {6, 3}, {6, 9}, {7, 8}, {7, 11}, {8, 4}, {
             8, 9}, {8, 12}, {9, 5}, {9, 10}, {9, 13}, {10, 6}, {10, 14}, {11,
              12}, {12, 7}, {12, 13}, {13, 8}, {13, 14}, {14, 9}, {14, 15}, {
             15, 10}}]}}}}], {{InsetBox[
          StyleBox["3",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {0.5515676760487191, 0.7827468639743875}, {
          Right, Bottom}], 
         DiskBox[{0.5515676760487191, 0.7827468639743875}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["1",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {1.1375834648524177, 1.7685953902334721}, {
          Right, Bottom}], 
         DiskBox[{1.1375834648524177, 1.7685953902334721}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {1.664858021072857, 2.786331451205597}, {
          Right, Bottom}], 
         DiskBox[{1.664858021072857, 2.786331451205597}, 0.03], {{{
            {GrayLevel[0]}}}}}}},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[
     GraphicsGroupBox[{
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0.5, 0., 0.], 
            LineBox[{{1, 2}, {2, 3}, {2, 4}, {3, 1}, {3, 5}, {4, 5}, {4, 7}, {
             5, 2}, {5, 6}, {5, 8}, {6, 3}, {6, 9}, {7, 8}, {7, 11}, {8, 4}, {
             8, 9}, {8, 12}, {9, 5}, {9, 10}, {9, 13}, {10, 6}, {10, 14}, {11,
              12}, {12, 7}, {12, 13}, {13, 8}, {13, 14}, {14, 9}, {14, 15}, {
             15, 10}}]}}}}], {{InsetBox[
          StyleBox["1",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {3.6185339309815037, 0.8332712730354579}, {
          Left, Bottom}], 
         DiskBox[{3.6185339309815037, 0.8332712730354579}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["5",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {3.001017554749006, 1.7991440420806146}, {
          Left, Bottom}], 
         DiskBox[{3.001017554749006, 1.7991440420806146}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {2.4398832926167766, 2.800279802895594}, {
          Left, Bottom}], 
         DiskBox[{2.4398832926167766, 2.800279802895594}, 0.03], {{{
            {GrayLevel[0]}}}}}}},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[
     GraphicsGroupBox[{
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0.5, 0., 0.], 
            LineBox[{{1, 2}, {2, 3}, {2, 4}, {3, 1}, {3, 5}, {4, 5}, {4, 7}, {
             5, 2}, {5, 6}, {5, 8}, {6, 3}, {6, 9}, {7, 8}, {7, 11}, {8, 4}, {
             8, 9}, {8, 12}, {9, 5}, {9, 10}, {9, 13}, {10, 6}, {10, 14}, {11,
              12}, {12, 7}, {12, 13}, {13, 8}, {13, 14}, {14, 9}, {14, 15}, {
             15, 10}}]}}}}], {{InsetBox[
          StyleBox["3",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {0.9498934946519377, 0.11780661101991186}, {
          Right, Top}], 
         DiskBox[{0.9498934946519377, 0.11780661101991186}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {2.095307960524705, 0.17019180900260267}, {
          Right, Top}], 
         DiskBox[{2.095307960524705, 0.17019180900260267}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["5",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {3.241626900960558, 0.15566591120426532}, {
          Right, Top}], 
         DiskBox[{3.241626900960558, 0.15566591120426532}, 0.03], {{{
            {GrayLevel[0]}}}}}}},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[GraphicsGroupBox[{{{InsetBox[
          StyleBox["3",
           StripOnInput->False,
           FontSize->20], {1.0402769799617744, 0.8501047320512328}]}, {
         InsetBox[
          StyleBox["3",
           StripOnInput->False,
           FontSize->20], {2.08342760460274, 0.9261529546365616}]}, {
         InsetBox[
          StyleBox["0",
           StripOnInput->False,
           FontSize->20], {1.6025873732671327, 1.8278045723755434}]}, {
         InsetBox[
          StyleBox["0",
           StripOnInput->False,
           FontSize->20], {3.128201428156077, 0.8840572910902514}]}, {InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {2.534304418215427, 1.8430788982991144}]}, {InsetBox[
          StyleBox["0",
           StripOnInput->False,
           FontSize->20], {2.0523706568448166, 2.7933056270505956}]}}, 
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0, 0, 0.7], 
            TagBox[
             TooltipBox[PointBox[1],
              "1"],
             Annotation[#, 1, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[2],
              "2"],
             Annotation[#, 2, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[3],
              "3"],
             Annotation[#, 3, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[4],
              "4"],
             Annotation[#, 4, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[5],
              "5"],
             Annotation[#, 5, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[6],
              "6"],
             Annotation[#, 6, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[7],
              "7"],
             Annotation[#, 7, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[8],
              "8"],
             Annotation[#, 8, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[9],
              "9"],
             Annotation[#, 9, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[10],
              "10"],
             Annotation[#, 10, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[11],
              "11"],
             Annotation[#, 11, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[12],
              "12"],
             Annotation[#, 12, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[13],
              "13"],
             Annotation[#, 13, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[14],
              "14"],
             Annotation[#, 14, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[15],
              "15"],
             Annotation[#, 15, "Tooltip"]& ]}}}}]},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[GraphicsGroupBox[{{{InsetBox[
          StyleBox["3",
           StripOnInput->False,
           FontSize->20], {1.2394398892633838, 0.517634605573995}]}, {InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {2.366588442927678, 0.5525175590738238}]}, {InsetBox[
          StyleBox["3",
           StripOnInput->False,
           FontSize->20], {1.7982887827783387, 1.4022381773228463}]}, {
         InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {3.4300804159710307, 0.4944685921198616}]}, {
         InsetBox[
          StyleBox["4",
           StripOnInput->False,
           FontSize->20], {2.819443240039828, 1.3669936756128298}]}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           FontSize->20], {2.2537372871493124, 2.343646778706604}]}}, 
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0, 0, 0.7], 
            TagBox[
             TooltipBox[PointBox[1],
              "1"],
             Annotation[#, 1, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[2],
              "2"],
             Annotation[#, 2, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[3],
              "3"],
             Annotation[#, 3, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[4],
              "4"],
             Annotation[#, 4, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[5],
              "5"],
             Annotation[#, 5, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[6],
              "6"],
             Annotation[#, 6, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[7],
              "7"],
             Annotation[#, 7, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[8],
              "8"],
             Annotation[#, 8, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[9],
              "9"],
             Annotation[#, 9, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[10],
              "10"],
             Annotation[#, 10, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[11],
              "11"],
             Annotation[#, 11, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[12],
              "12"],
             Annotation[#, 12, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[13],
              "13"],
             Annotation[#, 13, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[14],
              "14"],
             Annotation[#, 14, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[15],
              "15"],
             Annotation[#, 15, "Tooltip"]& ]}}}}]},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[GraphicsGroupBox[{{{InsetBox[
          StyleBox["0",
           StripOnInput->False,
           FontSize->20], {0.7507305853503284, 0.4502767374971497}]}, {
         InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {1.8121471221997674, 0.5438272045653404}]}, {
         InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {1.3332848743636236, 1.343028995180775}]}, {InsetBox[
          StyleBox["4",
           StripOnInput->False,
           FontSize->20], {2.939747913145604, 0.5452546101746552}]}, {InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {2.352730103506249, 1.4109285318313298}]}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           FontSize->20], {1.8662246513773524, 2.3366726028616056}]}}, 
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0, 0, 0.7], 
            TagBox[
             TooltipBox[PointBox[1],
              "1"],
             Annotation[#, 1, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[2],
              "2"],
             Annotation[#, 2, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[3],
              "3"],
             Annotation[#, 3, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[4],
              "4"],
             Annotation[#, 4, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[5],
              "5"],
             Annotation[#, 5, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[6],
              "6"],
             Annotation[#, 6, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[7],
              "7"],
             Annotation[#, 7, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[8],
              "8"],
             Annotation[#, 8, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[9],
              "9"],
             Annotation[#, 9, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[10],
              "10"],
             Annotation[#, 10, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[11],
              "11"],
             Annotation[#, 11, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[12],
              "12"],
             Annotation[#, 12, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[13],
              "13"],
             Annotation[#, 13, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[14],
              "14"],
             Annotation[#, 14, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[15],
              "15"],
             Annotation[#, 15, "Tooltip"]& ]}}}}]},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ]},
   AspectRatio->Automatic,
   FrameTicks->None,
   ImageSize->Large,
   PlotRange->All,
   PlotRangePadding->Scaled[0.1]], 
  GraphicsBox[{
    TagBox[
     GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
      0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
      2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
      0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
      3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
      0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
      1.664858021072857, 2.786331451205597}, {4.195878217203971, 
      0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
      3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
      2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{{
          {RGBColor[0.5, 0., 0.], 
           LineBox[{{1, 2}, {2, 3}, {2, 4}, {3, 1}, {3, 5}, {4, 5}, {4, 7}, {
            5, 2}, {5, 6}, {5, 8}, {6, 3}, {6, 9}, {7, 8}, {7, 11}, {8, 4}, {
            8, 9}, {8, 12}, {9, 5}, {9, 10}, {9, 13}, {10, 6}, {10, 14}, {11, 
            12}, {12, 7}, {12, 13}, {13, 8}, {13, 14}, {14, 9}, {14, 15}, {15,
             10}}]}}}}, {{{
          {RGBColor[0, 0, 0.7], 
           TagBox[
            TooltipBox[PointBox[1],
             "1"],
            Annotation[#, 1, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[2],
             "2"],
            Annotation[#, 2, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[3],
             "3"],
            Annotation[#, 3, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[4],
             "4"],
            Annotation[#, 4, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[5],
             "5"],
            Annotation[#, 5, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[6],
             "6"],
            Annotation[#, 6, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[7],
             "7"],
            Annotation[#, 7, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[8],
             "8"],
            Annotation[#, 8, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[9],
             "9"],
            Annotation[#, 9, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[10],
             "10"],
            Annotation[#, 10, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[11],
             "11"],
            Annotation[#, 11, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[12],
             "12"],
            Annotation[#, 12, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[13],
             "13"],
            Annotation[#, 13, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[14],
             "14"],
            Annotation[#, 14, "Tooltip"]& ], 
           TagBox[
            TooltipBox[PointBox[15],
             "15"],
            Annotation[#, 15, "Tooltip"]& ]}}}}}],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[
     GraphicsGroupBox[{
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0.5, 0., 0.], 
            LineBox[{{1, 2}, {2, 3}, {2, 4}, {3, 1}, {3, 5}, {4, 5}, {4, 7}, {
             5, 2}, {5, 6}, {5, 8}, {6, 3}, {6, 9}, {7, 8}, {7, 11}, {8, 4}, {
             8, 9}, {8, 12}, {9, 5}, {9, 10}, {9, 13}, {10, 6}, {10, 14}, {11,
              12}, {12, 7}, {12, 13}, {13, 8}, {13, 14}, {14, 9}, {14, 15}, {
             15, 10}}]}}}}], {{InsetBox[
          StyleBox["3",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {0.5515676760487191, 0.7827468639743875}, {
          Right, Bottom}], 
         DiskBox[{0.5515676760487191, 0.7827468639743875}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["1",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {1.1375834648524177, 1.7685953902334721}, {
          Right, Bottom}], 
         DiskBox[{1.1375834648524177, 1.7685953902334721}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {1.664858021072857, 2.786331451205597}, {
          Right, Bottom}], 
         DiskBox[{1.664858021072857, 2.786331451205597}, 0.03], {{{
            {GrayLevel[0]}}}}}}},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[
     GraphicsGroupBox[{
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0.5, 0., 0.], 
            LineBox[{{1, 2}, {2, 3}, {2, 4}, {3, 1}, {3, 5}, {4, 5}, {4, 7}, {
             5, 2}, {5, 6}, {5, 8}, {6, 3}, {6, 9}, {7, 8}, {7, 11}, {8, 4}, {
             8, 9}, {8, 12}, {9, 5}, {9, 10}, {9, 13}, {10, 6}, {10, 14}, {11,
              12}, {12, 7}, {12, 13}, {13, 8}, {13, 14}, {14, 9}, {14, 15}, {
             15, 10}}]}}}}], {{InsetBox[
          StyleBox["1",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {3.6185339309815037, 0.8332712730354579}, {
          Left, Bottom}], 
         DiskBox[{3.6185339309815037, 0.8332712730354579}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["5",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {3.001017554749006, 1.7991440420806146}, {
          Left, Bottom}], 
         DiskBox[{3.001017554749006, 1.7991440420806146}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {2.4398832926167766, 2.800279802895594}, {
          Left, Bottom}], 
         DiskBox[{2.4398832926167766, 2.800279802895594}, 0.03], {{{
            {GrayLevel[0]}}}}}}},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[
     GraphicsGroupBox[{
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0.5, 0., 0.], 
            LineBox[{{1, 2}, {2, 3}, {2, 4}, {3, 1}, {3, 5}, {4, 5}, {4, 7}, {
             5, 2}, {5, 6}, {5, 8}, {6, 3}, {6, 9}, {7, 8}, {7, 11}, {8, 4}, {
             8, 9}, {8, 12}, {9, 5}, {9, 10}, {9, 13}, {10, 6}, {10, 14}, {11,
              12}, {12, 7}, {12, 13}, {13, 8}, {13, 14}, {14, 9}, {14, 15}, {
             15, 10}}]}}}}], {{InsetBox[
          StyleBox["3",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {0.9498934946519377, 0.11780661101991186}, {
          Right, Top}], 
         DiskBox[{0.9498934946519377, 0.11780661101991186}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {2.095307960524705, 0.17019180900260267}, {
          Right, Top}], 
         DiskBox[{2.095307960524705, 0.17019180900260267}, 0.03], {{{
            {GrayLevel[0]}}}}}, {InsetBox[
          StyleBox["5",
           StripOnInput->False,
           LineColor->RGBColor[0, 0, 1],
           FrontFaceColor->RGBColor[0, 0, 1],
           BackFaceColor->RGBColor[0, 0, 1],
           GraphicsColor->RGBColor[0, 0, 1],
           FontSize->Large,
           
           FontColor->RGBColor[
            0, 0, 1]], {3.241626900960558, 0.15566591120426532}, {
          Right, Top}], 
         DiskBox[{3.241626900960558, 0.15566591120426532}, 0.03], {{{
            {GrayLevel[0]}}}}}}},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[GraphicsGroupBox[{{{InsetBox[
          StyleBox["3",
           StripOnInput->False,
           FontSize->20], {1.0402769799617744, 0.8501047320512328}]}, {
         InsetBox[
          StyleBox["4",
           StripOnInput->False,
           FontSize->20], {2.08342760460274, 0.9261529546365616}]}, {
         InsetBox[
          StyleBox["0",
           StripOnInput->False,
           FontSize->20], {1.6025873732671327, 1.8278045723755434}]}, {
         InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {3.128201428156077, 0.8840572910902514}]}, {InsetBox[
          StyleBox["0",
           StripOnInput->False,
           FontSize->20], {2.534304418215427, 1.8430788982991144}]}, {InsetBox[
          StyleBox["0",
           StripOnInput->False,
           FontSize->20], {2.0523706568448166, 2.7933056270505956}]}}, 
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0, 0, 0.7], 
            TagBox[
             TooltipBox[PointBox[1],
              "1"],
             Annotation[#, 1, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[2],
              "2"],
             Annotation[#, 2, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[3],
              "3"],
             Annotation[#, 3, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[4],
              "4"],
             Annotation[#, 4, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[5],
              "5"],
             Annotation[#, 5, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[6],
              "6"],
             Annotation[#, 6, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[7],
              "7"],
             Annotation[#, 7, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[8],
              "8"],
             Annotation[#, 8, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[9],
              "9"],
             Annotation[#, 9, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[10],
              "10"],
             Annotation[#, 10, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[11],
              "11"],
             Annotation[#, 11, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[12],
              "12"],
             Annotation[#, 12, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[13],
              "13"],
             Annotation[#, 13, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[14],
              "14"],
             Annotation[#, 14, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[15],
              "15"],
             Annotation[#, 15, "Tooltip"]& ]}}}}]},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[GraphicsGroupBox[{{{InsetBox[
          StyleBox["3",
           StripOnInput->False,
           FontSize->20], {1.2394398892633838, 0.517634605573995}]}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           FontSize->20], {2.366588442927678, 0.5525175590738238}]}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           FontSize->20], {1.7982887827783387, 1.4022381773228463}]}, {
         InsetBox[
          StyleBox["0",
           StripOnInput->False,
           FontSize->20], {3.4300804159710307, 0.4944685921198616}]}, {
         InsetBox[
          StyleBox["5",
           StripOnInput->False,
           FontSize->20], {2.819443240039828, 1.3669936756128298}]}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           FontSize->20], {2.2537372871493124, 2.343646778706604}]}}, 
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0, 0, 0.7], 
            TagBox[
             TooltipBox[PointBox[1],
              "1"],
             Annotation[#, 1, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[2],
              "2"],
             Annotation[#, 2, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[3],
              "3"],
             Annotation[#, 3, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[4],
              "4"],
             Annotation[#, 4, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[5],
              "5"],
             Annotation[#, 5, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[6],
              "6"],
             Annotation[#, 6, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[7],
              "7"],
             Annotation[#, 7, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[8],
              "8"],
             Annotation[#, 8, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[9],
              "9"],
             Annotation[#, 9, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[10],
              "10"],
             Annotation[#, 10, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[11],
              "11"],
             Annotation[#, 11, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[12],
              "12"],
             Annotation[#, 12, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[13],
              "13"],
             Annotation[#, 13, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[14],
              "14"],
             Annotation[#, 14, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[15],
              "15"],
             Annotation[#, 15, "Tooltip"]& ]}}}}]},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ], 
    TagBox[GraphicsGroupBox[{{{InsetBox[
          StyleBox["0",
           StripOnInput->False,
           FontSize->20], {0.7507305853503284, 0.4502767374971497}]}, {
         InsetBox[
          StyleBox["0",
           StripOnInput->False,
           FontSize->20], {1.8121471221997674, 0.5438272045653404}]}, {
         InsetBox[
          StyleBox["1",
           StripOnInput->False,
           FontSize->20], {1.3332848743636236, 1.343028995180775}]}, {InsetBox[
          StyleBox["5",
           StripOnInput->False,
           FontSize->20], {2.939747913145604, 0.5452546101746552}]}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           FontSize->20], {2.352730103506249, 1.4109285318313298}]}, {InsetBox[
          StyleBox["2",
           StripOnInput->False,
           FontSize->20], {1.8662246513773524, 2.3366726028616056}]}}, 
       GraphicsComplexBox[{{0., 0.}, {0.9498934946519377, 
        0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
        2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
        0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
        3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
        0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
        1.664858021072857, 2.786331451205597}, {4.195878217203971, 
        0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
        3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
        2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}, {{{
           {RGBColor[0, 0, 0.7], 
            TagBox[
             TooltipBox[PointBox[1],
              "1"],
             Annotation[#, 1, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[2],
              "2"],
             Annotation[#, 2, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[3],
              "3"],
             Annotation[#, 3, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[4],
              "4"],
             Annotation[#, 4, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[5],
              "5"],
             Annotation[#, 5, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[6],
              "6"],
             Annotation[#, 6, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[7],
              "7"],
             Annotation[#, 7, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[8],
              "8"],
             Annotation[#, 8, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[9],
              "9"],
             Annotation[#, 9, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[10],
              "10"],
             Annotation[#, 10, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[11],
              "11"],
             Annotation[#, 11, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[12],
              "12"],
             Annotation[#, 12, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[13],
              "13"],
             Annotation[#, 13, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[14],
              "14"],
             Annotation[#, 14, "Tooltip"]& ], 
            TagBox[
             TooltipBox[PointBox[15],
              "15"],
             Annotation[#, 15, "Tooltip"]& ]}}}}]},
      ContentSelectable->True],
     Annotation[#, 
      VertexCoordinateRules -> {{0., 0.}, {0.9498934946519377, 
       0.11780661101991186`}, {0.5515676760487191, 0.7827468639743875}, {
       2.095307960524705, 0.17019180900260267`}, {1.5289862838748296`, 
       0.9174626001280781}, {1.1375834648524177`, 1.7685953902334721`}, {
       3.241626900960558, 0.15566591120426532`}, {2.6378689253306504`, 
       0.934843309145045}, {2.067591281681848, 1.8870137545176144`}, {
       1.664858021072857, 2.786331451205597}, {4.195878217203971, 
       0.06794380828077973}, {3.6185339309815037`, 0.8332712730354579}, {
       3.001017554749006, 1.7991440420806146`}, {2.4398832926167766`, 
       2.800279802895594}, {2.037465757531472, 3.6697213364901473`}}]& ]},
   AspectRatio->Automatic,
   FrameTicks->None,
   ImageSize->Large,
   PlotRange->All,
   PlotRangePadding->Scaled[0.1]]}]], "Input", "PluginEmbeddedContent",
 CellTags->"suntag",ExpressionUUID->"00000000-0000-0000-0000-000000000000"]
}, Open  ]],

Cell[CellGroupData[{

Cell["DETAILS AND REFERENCES", "Subsection", "PluginEmbeddedContent",
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
  "808c7b9f-e612-4004-8957-9d65ff32eea2"],
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
  "6d405483-5d8c-4305-b664-c7d243976747"],
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
  "c6baf08d-2f21-44ee-94d8-a6e64c011945"],
 StyleBox["\n\nThe multiplicity of the coupling (aka Littlewood-Richardson \
coefficient) is equal to the number of pictographs.\n",
  FontSize->12,
  FontWeight->"Regular"]
}], "Text", \
"PluginEmbeddedContent",ExpressionUUID->"00000000-0000-0000-0000-\
000000000000"],

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
  "a0930b05-3b42-42bc-8a2c-02bcea12e539"],
 " : left to right)"
}], "Text", "PluginEmbeddedContent",
 FontSize->12,ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[TextData[{
 "Internal edges carry non-negative integers.\nThey obey the following \
constraints : \n\n\t",
 StyleBox["Conservation of integers at each external vertex, \n\tEquality of \
opposite angles at each internal vertex (the value of an angle being defined \
as the sum of its edges).",
  FontColor->RGBColor[0.6, 0.4, 0.2]]
}], "Text", "PluginEmbeddedContent",
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
  "ec3ff46d-cd80-45ec-871a-303ab53c17a1"],
 "solves the above constraints."
}], "Text", "PluginEmbeddedContent",
 FontSize->12,ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[TextData[Cell[BoxData[
 StyleBox[
  RowBox[{
   StyleBox[
    RowBox[{
     RowBox[{
     "Several", " ", "types", " ", "of", " ", "pictographs", " ", "can", " ", 
      "be", " ", "used", " ", "to", " ", "display", " ", "the", " ", "same", 
      " ", "space", " ", "of", " ", "intertwiners", " ", 
      SubscriptBox["Hom", "SU4"], 
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
     RowBox[{"BZ", "-", "triangles"}]}],
    FontSize->12,
    FontWeight->"Regular"], 
   StyleBox[",",
    FontSize->12,
    FontWeight->"Regular"], 
   StyleBox[" ",
    FontSize->12,
    FontWeight->"Regular"], 
   StyleBox[
    RowBox[{"KT", "-", "honeycombs"}],
    FontSize->12,
    FontWeight->"Regular"], 
   StyleBox[",",
    FontSize->12,
    FontWeight->"Regular"], 
   StyleBox[" ",
    FontSize->12,
    FontWeight->"Regular"], 
   StyleBox[
    RowBox[{"O", "-", 
     RowBox[{
      RowBox[{"blades", ".", "\n", "BZ"}], " ", "stands", " ", "for", " ", 
      "Berenstein"}], "-", "Zelevinski"}],
    FontSize->12,
    FontWeight->"Regular"], 
   StyleBox[" ",
    FontSize->12,
    FontWeight->"Regular"], 
   StyleBox[",",
    FontSize->12,
    FontWeight->"Regular"], 
   StyleBox[" ",
    FontSize->12,
    FontWeight->"Regular"], 
   StyleBox[
    RowBox[{
     RowBox[{"KT", " ", "for", " ", "Knutsen"}], "-", "Tao"}],
    FontSize->12,
    FontWeight->"Regular"], 
   StyleBox[",",
    FontSize->12,
    FontWeight->"Regular"], 
   StyleBox[" ",
    FontSize->12,
    FontWeight->"Regular"], 
   RowBox[{
    RowBox[{
     StyleBox["and",
      FontSize->12,
      FontWeight->"Regular"], 
     StyleBox[" ",
      FontSize->12,
      FontWeight->"Regular"], 
     StyleBox["O",
      FontSize->12,
      FontWeight->"Regular"], 
     StyleBox[" ",
      FontSize->12,
      FontWeight->"Regular"], 
     StyleBox["for",
      FontSize->12,
      FontWeight->"Regular"], 
     StyleBox[" ",
      FontSize->12,
      FontWeight->"Regular"], 
     RowBox[{
      StyleBox["Ocneanu",
       FontSize->12,
       FontWeight->"Regular"], 
      StyleBox[".",
       FontSize->12,
       FontWeight->"Regular"], 
      StyleBox[" ",
       FontSize->12,
       FontWeight->"Regular"], "\[IndentingNewLine]", "\[IndentingNewLine]", 
      StyleBox[
       RowBox[{"Here", " ", "we", " ", "display", " ", "O"}],
       FontSize->12,
       FontWeight->"Regular"]}]}], 
    StyleBox["-",
     FontSize->12,
     FontWeight->"Regular"], 
    StyleBox[
     RowBox[{"blades", ".", " "}],
     FontSize->12,
     FontWeight->"Regular"]}]}], "Text"]],
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
   3.692646161340274*^9}},ExpressionUUID->"cc871e3e-bc27-4695-8a3d-\
7edf056b8253"]], "Text", "PluginEmbeddedContent",
 FontSize->12,ExpressionUUID->"00000000-0000-0000-0000-000000000000"],

Cell[TextData[{
 "O-blades (also called \
\[OpenCurlyDoubleQuote]oblades\[CloseCurlyDoubleQuote]) are introduced and \
documented in [1][2][3]\n\n[1] ",
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
  ExpressionUUID->"b57e6dd7-4da3-46a8-a6f4-9b9194558f78"],
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
  "a3cd298e-6425-4d78-8c28-a7352f62e816"],
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
  "729af9f0-8522-43f8-b194-cfee4acc0573"]
}], "Text", "PluginEmbeddedContent",
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
  "532a2379-0800-43dd-bbf2-8c647ed6a32f"],
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
  "5dc5309b-6392-4d03-9a18-8122b39e441e"],
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
  ExpressionUUID->"39a250fb-bd20-4ef7-b53a-246e0d73267c"]
}], "Text", "PluginEmbeddedContent",
 FontSize->12,ExpressionUUID->"00000000-0000-0000-0000-000000000000"]
}, Open  ]],

Cell[CellGroupData[{

Cell["CAVEATS", "Subsection", "PluginEmbeddedContent",
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
  Editable->False]], "Print", \
"PluginEmbeddedContent",ExpressionUUID->"00000000-0000-0000-0000-\
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
  Editable->False]], "Print", \
"PluginEmbeddedContent",ExpressionUUID->"00000000-0000-0000-0000-\
000000000000"]
}, Open  ]],

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
 StyleBox["\nand evaluate the two packages adjmatPackage and obladePackage. ",
  
  FontSize->12]
}], "Text", \
"PluginEmbeddedContent",ExpressionUUID->"00000000-0000-0000-0000-\
000000000000"]
}, Open  ]],

Cell[CellGroupData[{

Cell["CITATION", "Subsection", "PluginEmbeddedContent",
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
\>", "Text", \
"PluginEmbeddedContent",ExpressionUUID->"00000000-0000-0000-0000-\
000000000000"],

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
  FontSize->12,ExpressionUUID->"8b956498-52c3-4d94-ab4e-4251c50eaa4b"],
 "\n",
 Cell[BoxData[
  TagBox[
   ButtonBox[
    PaneSelectorBox[{False->
     PaneSelectorBox[{False->
      TagBox["\<\"Pictographs: O-blades for SU(n)\"\>",
       StatusArea[#, "Computer_programs"]& ,
       TagBoxNote->"Computer_programs"], True->
      TagBox["\<\"Pictographs: O-blades for SU(n)\"\>",
       StatusArea[#, "Computer_programs"]& ,
       TagBoxNote->"Computer_programs"]}, Dynamic[
       CurrentValue["MouseOver"]],
      BaseStyle->{"Hyperlink"},
      FrameMargins->0,
      ImageSize->Automatic], True->
     StyleBox[
      PaneSelectorBox[{False->
       TagBox["\<\"Pictographs: O-blades for SU(n)\"\>",
        StatusArea[#, "Computer_programs"]& ,
        TagBoxNote->"Computer_programs"], True->
       TagBox["\<\"Pictographs: O-blades for SU(n)\"\>",
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
  CellChangeTimes->{3.715340801614562*^9},ExpressionUUID->
  "2f39d2e3-75be-4d9a-9d37-d38a45dbbdc7"],
 "\n",
 StyleBox["September 2017",
  FontSize->12,
  FontWeight->"Regular"]
}], "Text", \
"PluginEmbeddedContent",ExpressionUUID->"00000000-0000-0000-0000-\
000000000000"]
}, Open  ]]
},
WindowSize->{1418, 3212},
Visible->True,
AuthoredSize->{1418, 3212},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
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
  Cell[57114, 1247, 320, 7, 22, "Subsection",
   CellTags->"suntag"],
  Cell[57437, 1256, 1603, 28, 359, "Text",
   CellTags->"suntag"],
  Cell[59043, 1286, 107667, 2462, 1043, "Input",
   CellTags->"suntag"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"suntag", 199338, 4524}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 387, 11, 22, "Subsection"],
Cell[1876, 48, 54377, 1172, 787, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[56290, 1225, 299, 8, 22, "Subsection"],
Cell[56592, 1235, 485, 7, 35, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[57114, 1247, 320, 7, 22, "Subsection",
 CellTags->"suntag"],
Cell[57437, 1256, 1603, 28, 359, "Text",
 CellTags->"suntag"],
Cell[59043, 1286, 107667, 2462, 1043, "Input",
 CellTags->"suntag"]
}, Open  ]],
Cell[CellGroupData[{
Cell[166747, 3753, 314, 8, 22, "Subsection"],
Cell[167064, 3763, 7422, 129, 206, "Text"],
Cell[174489, 3894, 2389, 37, 85, "Text"],
Cell[176881, 3933, 442, 8, 82, "Text"],
Cell[177326, 3943, 2157, 35, 16, "Text"],
Cell[179486, 3980, 5161, 148, 80, "Text"],
Cell[184650, 4130, 3457, 82, 94, "Text"],
Cell[188110, 4214, 4468, 104, 111, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[192615, 4323, 299, 8, 22, "Subsection"],
Cell[CellGroupData[{
Cell[192939, 4335, 618, 18, 16, "Print"],
Cell[193560, 4355, 715, 23, 16, "Print"]
}, Open  ]],
Cell[194290, 4381, 1388, 30, 133, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[195715, 4416, 300, 8, 22, "Subsection"],
Cell[196018, 4426, 221, 5, 16, "Text"],
Cell[196242, 4433, 2613, 70, 55, "Text"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Hwpw#nBSxwvxRDgICPA4khws *)

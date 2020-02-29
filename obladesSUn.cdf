(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 12.0' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[    354622,       6319]
NotebookOptionsPosition[    355244,       6319]
NotebookOutlinePosition[    355583,       6334]
CellTagsIndexPosition[    355540,       6331]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 DynamicModuleBox[{$CellContext`rows$$ = 3, $CellContext`cols$$ = 
  2, $CellContext`mat$$ = {{7, 6}, {7, 7}, {6, 5}}, $CellContext`coupling$$ = 
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
            3], $CellContext`coupling$$], ImageSize -> Full]}]], 
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
     TrackedSymbols :> {$CellContext`doit}], StandardForm],
   ImageSizeCache->{1390., {650., 655.}}],
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
  Initialization:>{obladePackage`multiplicity[
      Pattern[Private`lambda, 
       Blank[]], 
      Pattern[Private`mu, 
       Blank[]], 
      Pattern[Private`nu, 
       Blank[]], 
      OptionsPattern[]] := Which[OptionValue[obladePackage`Kostant] == True, 
      obladePackage`multiplicityKostant[
      Private`lambda, Private`mu, Private`nu], 
      OptionValue[obladePackage`Magic] == True, 
      obladePackage`multiplicityMagic[Private`lambda, Private`mu, Private`nu],
       OptionValue[Volume] == True, 
      Private`multiplicityVolume[Private`lambda, Private`mu, Private`nu], 
      OptionValue[obladePackage`GenFun] == True, 
      obladePackage`multiplicityGenFun[
      Private`lambda, Private`mu, Private`nu], OptionValue[obladePackage`LiE] == 
      True, 
      obladePackage`multiplicityLiE[Private`lambda, Private`mu, Private`nu], 
      True, 
      obladePackage`multiplicityHive[Private`lambda, Private`mu, Private`nu]],
     Options[obladePackage`multiplicity] = {
     obladePackage`Kostant -> False, obladePackage`Magic -> False, Volume -> 
      False, obladePackage`GenFun -> False, obladePackage`LiE -> False}, 
    TagSet[obladePackage`multiplicity, 
     MessageName[obladePackage`multiplicity, "usage"], 
     "multiplicity[lambda,mu,nu] gives the multiplicity of the term nu in the \
decomposition into irreducible components of a tensor product lambda \
\[CircleTimes] mu of two irreps of the Lie group SU(n), given by the \
components of their highest weights along the basis of fundamental weights.\n\
This integer is also called Littlewood-Richardson coefficient.  Equivalently \
it is the multiplicity of the trivial representation in the triple tensor \
product: lambda \[CircleTimes] mu \[CircleTimes] Conjugate[nu].\nThis \
function admits optional arguments.\nBy default it calls the function \
multiplicityHive, that uses the hive (oblade) method, and works for all \
SU(n).\nWith the option Kostant->True multiplicity calls the function \
multiplicityKostant that only works for those Lie groups for which the \
Kostant partition function is known.\nWith the option Magic->True \
multiplicity calls the function multiplicityMagic that uses the semi-magic \
algorithm and only works for SU(3). Very fast.\nWith the option Volume->True \
multiplicity calls the function volumeJ that uses the volume algorithm and \
only works for SU(3).Very fast.\nWith the option GenFun->True multiplicity \
calls the function multiplicityGenFun that uses a generating function that \
only works for SU(3). Slow.\nWith the option LiE->True multiplicity calls the \
function multiplicityLiE that uses the external program LiE.\n"], 
    TagSet[obladePackage`Kostant, 
     MessageName[obladePackage`Kostant, "usage"], 
     "An option for multiplicity"], obladePackage`multiplicityKostant[
      Pattern[Private`lambda, 
       Blank[]], 
      Pattern[Private`mu, 
       Blank[]], 
      Pattern[Private`nu, 
       Blank[]]] := 
    Which[obladePackage`currentgroup == 3, obladePackage`Kostant[{
          Pattern[Private`x, 
           Blank[]], 
          Pattern[Private`y, 
           Blank[]]}] := If[
         Or[Private`x < 0, Private`y < 0], 0, 1 + Min[Private`x, Private`y]]; 
      Private`dynkintokac[{
          Pattern[Private`a, 
           Blank[]], 
          Pattern[Private`b, 
           Blank[]]}] := Private`a {2/3, 1/3} + Private`b {1/3, 2/3}; 
      Private`weyldot[
         Pattern[Private`s, 
          Blank[]]][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]]}] := 
       Private`weyl[Private`s][{Private`la1, Private`la2} + {1, 1}] - {1, 1}; 
      Private`weyl[1][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]]}] := {Private`la1, Private`la2}; Private`weyl[2][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]]}] := {-Private`la1, Private`la1 + Private`la2}; 
      Private`weyl[3][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]]}] := {Private`la1 + Private`la2, -Private`la2}; 
      Private`weyl[4][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]]}] := {Private`la2, -(Private`la1 + Private`la2)}; 
      Private`weyl[5][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]]}] := {-(Private`la1 + Private`la2), Private`la1}; 
      Private`weyl[6][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]]}] := {-Private`la2, -Private`la1}; Private`sign[
         Private`weyl[
          Pattern[Private`s, 
           Blank[]]]] := Part[{1, -1, -1, 1, 1, -1}, Private`s]; If[
        Apply[Nand, 
         Map[IntegerQ, 
          Private`dynkintokac[Private`lambda + Private`mu - Private`nu]]], 
        Print["Not an admissible intertwiner"]; 0, 
        Sum[Private`sign[
           Private`weyl[Private`v]] Private`sign[
           Private`weyl[Private`w]] obladePackage`Kostant[
           Private`dynkintokac[
           Private`weyldot[Private`v][Private`lambda] + 
            Private`weyldot[Private`w][Private`mu] - Private`nu]], {
         Private`v, 1, 
          Factorial[3]}, {Private`w, 1, 
          Factorial[3]}]], obladePackage`currentgroup == 4, 
      obladePackage`Kostant[{
          Pattern[Private`k1, 
           Blank[]], 
          Pattern[Private`k2, 
           Blank[]], 
          Pattern[Private`k3, 
           Blank[]]}] := Piecewise[{{0, 
           Or[
           Private`k1 < 0, Private`k2 < 0, Private`k3 < 0]}, {(Private`k2 + 
            1) (Private`k2 + 2) ((Private`k2 + 3)/6), 
           And[
           Private`k2 <= Private`k1, Private`k2 <= Private`k3]}, {(Private`k1 + 
            1) (Private`k1 + 2) ((3 Private`k2 - 2 Private`k1 + 3)/6), 
           Private`k1 <= Private`k2 <= 
           Private`k3}, {(Private`k1 + 1) (Private`k1 + 
            2) ((3 Private`k3 - Private`k1 + 3)/6), Private`k1 <= Private`k3 <= 
           Private`k1 + Private`k3 <= 
           Private`k2}, {(Private`k1 + 1) (Private`k1 + 
             2) ((3 Private`k3 - Private`k1 + 3)/6) - Binomial[
           Private`k3 + Private`k1 - Private`k2 + 2, 3], Private`k1 <= 
           Private`k3 <= Private`k2 <= 
           Private`k1 + Private`k3}, {(Private`k3 + 1) (Private`k3 + 
            2) ((3 Private`k2 - 2 Private`k3 + 3)/6), Private`k3 <= 
           Private`k2 <= 
           Private`k1}, {(Private`k3 + 1) (Private`k3 + 
            2) ((3 Private`k1 - Private`k3 + 3)/6), Private`k3 <= Private`k1 <= 
           Private`k3 + Private`k1 <= 
           Private`k2}, {(Private`k3 + 1) (Private`k3 + 
             2) ((3 Private`k1 - Private`k3 + 3)/6) - Binomial[
           Private`k1 + Private`k3 - Private`k2 + 2, 3], Private`k3 <= 
           Private`k1 <= Private`k2 <= Private`k3 + Private`k1}}]; 
      Private`dynkintokac[{
          Pattern[Private`a, 
           Blank[]], 
          Pattern[Private`b, 
           Blank[]], 
          Pattern[Private`c, 
           Blank[]]}] := 
       Private`a {3/4, 1/2, 1/4} + Private`b {1/2, 1, 1/2} + 
        Private`c {1/4, 1/2, 3/4}; Private`weyldot[
         Pattern[Private`s, 
          Blank[]]][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := 
       Private`weyl[
         Private`s][{Private`la1, Private`la2, Private`la3} + {1, 1, 1}] - {1,
         1, 1}; Private`sign[
         Private`weyl[
          Pattern[Private`s, 
           Blank[]]]] := 
       Part[{1, -1, -1, -1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1,
          1, -1, -1, -1, 1}, Private`s]; Private`weyl[1][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {Private`la1, Private`la2, Private`la3}; 
      Private`weyl[2][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {-Private`la1, Private`la1 + Private`la2, 
         Private`la3}; Private`weyl[3][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {
        Private`la1 + Private`la2, -Private`la2, Private`la2 + Private`la3}; 
      Private`weyl[4][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {
        Private`la1, Private`la2 + Private`la3, -Private`la3}; 
      Private`weyl[5][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {
        Private`la2, -(Private`la1 + Private`la2), Private`la1 + Private`la2 + 
         Private`la3}; Private`weyl[6][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {-Private`la1, Private`la1 + Private`la2 + 
         Private`la3, -Private`la3}; Private`weyl[7][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {-Private`la1 - Private`la2, Private`la1, 
         Private`la2 + Private`la3}; Private`weyl[8][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {
        Private`la1 + Private`la2, Private`la3, -Private`la2 - Private`la3}; 
      Private`weyl[9][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {
        Private`la1 + Private`la2 + Private`la3, -Private`la2 - Private`la3, 
         Private`la2}; Private`weyl[10][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {-Private`la2, -Private`la1, Private`la1 + 
         Private`la2 + Private`la3}; Private`weyl[11][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {
        Private`la2, Private`la3, -(Private`la1 + Private`la2 + Private`la3)}; 
      Private`weyl[12][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {
        Private`la2 + Private`la3, -(Private`la1 + Private`la2 + Private`la3),
          Private`la1 + Private`la2}; Private`weyl[13][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {-Private`la1 - Private`la2, Private`la1 + 
         Private`la2 + Private`la3, -(Private`la2 + Private`la3)}; 
      Private`weyl[14][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {
        Private`la1 + Private`la2 + Private`la3, -Private`la3, -Private`la2}; 
      Private`weyl[15][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {-(Private`la1 + Private`la2 + Private`la3), 
         Private`la1, Private`la2}; Private`weyl[16][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {-Private`la2, Private`la2 + 
         Private`la3, -(Private`la1 + Private`la2 + Private`la3)}; 
      Private`weyl[17][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {
        Private`la2 + Private`la3, -Private`la3, -Private`la1 - Private`la2}; 
      Private`weyl[18][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {-Private`la2 - Private`la3, -Private`la1, 
         Private`la1 + Private`la2}; Private`weyl[19][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {
        Private`la3, -(Private`la1 + Private`la2 + Private`la3), Private`la1}; 
      Private`weyl[20][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {-(Private`la1 + Private`la2 + Private`la3), 
         Private`la1 + Private`la2, -Private`la2}; Private`weyl[21][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {
        Private`la3, -Private`la2 - Private`la3, -Private`la1}; 
      Private`weyl[22][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {-Private`la2 - Private`la3, 
         Private`la2, -Private`la1 - Private`la2}; Private`weyl[23][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {-Private`la3, -Private`la1 - Private`la2, 
         Private`la1}; Private`weyl[24][{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]], 
          Pattern[Private`la3, 
           Blank[]]}] := {-Private`la3, -Private`la2, -Private`la1}; If[
        Apply[Nand, 
         Map[IntegerQ, 
          Private`dynkintokac[Private`lambda + Private`mu - Private`nu]]], 
        Print["Not an admissible intertwiner"]; 0, 
        Sum[Private`sign[
           Private`weyl[Private`v]] Private`sign[
           Private`weyl[Private`w]] obladePackage`Kostant[
           Private`dynkintokac[
           Private`weyldot[Private`v][Private`lambda] + 
            Private`weyldot[Private`w][Private`mu] - Private`nu]], {
         Private`v, 1, 
          Factorial[4]}, {Private`w, 1, 
          Factorial[4]}]], obladePackage`currentgroup > 4, 
      Print["Kostant partition function not implemented, I continue using the \
hive method"]; 
      obladePackage`multiplicityHive[Private`lambda, Private`mu, Private`nu]], 
    TagSet[obladePackage`multiplicityKostant, 
     MessageName[obladePackage`multiplicityKostant, "usage"], 
     "multiplicityKostant[lambda,mu,nu] gives multiplicity[lambda,mu,nu] by \
using the Kostant method.\nIt is equivalent to multiplicity[lambda,mu,nu, \
Kostant\[Rule]True].\nIt only works for those Lie groups for which the \
Kostant partition function is known. See the documentation of the command \
multiplicity.\nPrivate: it is called lr in other notebooks."], 
    obladePackage`currentgroup = 3, 
    TagSet[obladePackage`currentgroup, 
     MessageName[obladePackage`currentgroup, "usage"], 
     "currentgroup returns the argument n of the group SU(n) currently in \
use."], obladePackage`multiplicityHive[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}, {
       Pattern[Private`nu, 
        BlankSequence[]]}] := Switch[
      ValueQ[obladePackage`currentgroup], False, 
      obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
      obladePackage`multiplicityHive[{Private`lam}, {Private`mu}, {
        Private`nu}], True, 
      If[Length[{Private`lam}] == obladePackage`currentgroup - 1, 
       Length[
        Private`tensorproductCC[{Private`lam}, {Private`mu}, 
         Reverse[{Private`nu}]]], 
       obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
       obladePackage`multiplicityHive[{Private`lam}, {Private`mu}, {
         Private`nu}]]], 
    TagSet[obladePackage`multiplicityHive, 
     MessageName[obladePackage`multiplicityHive, "usage"], 
     "multiplicityHive[lambda,mu,nu] gives multiplicity[lambda,mu,nu] by \
using the hive (oblade) method, which is the default. See the documentation \
of the command multiplicity."], obladePackage`setGroupSU[
      Pattern[Private`var, 
       Blank[]]] := 
    With[{Private`NN = Private`var}, obladePackage`currentgroup = Private`NN; 
      Private`lambdaequations = And[
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
      Private`fundamentalcomponents = DeleteDuplicates[
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
      obladePackage`fundamentalcomponentsLabels = 
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
           ReplaceRepeated[Private`fundamentalcomponents, {Private`locrules}]; 
          Private`nuclist = ReplaceRepeated[
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
           ReplaceRepeated[Private`fundamentalcomponents, {Private`locrules}]; 
          Private`nuclist = ReplaceRepeated[
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
      Private`plotSUNoblade[
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
          AdjacencyGraph[
           Private`adj, VertexCoordinates -> 
            adjmatPackage`vertexcoordtriangle[Private`NN], DirectedEdges -> 
            False]; Private`grla = 
          AdjacencyGraph[Private`adj, VertexShapeFunction -> (Apply[Which, 
              Flatten[
               Table[{#2 == Private`lambdalabel[Private`NN, Private`s], {
                  Text[
                   Style[
                    Part[Private`vert, 1, Private`s], 25, Blue], #, 
                   Offset[{20, -30}]], 
                  Disk[#, 0.03], {Black}}}, {Private`s, 1, Private`NN - 1}], 
               1]]& ), VertexCoordinates -> 
            adjmatPackage`vertexcoordtriangle[Private`NN], DirectedEdges -> 
            False]; Private`grmu = 
          AdjacencyGraph[Private`adj, VertexShapeFunction -> (Apply[Which, 
              Flatten[
               Table[{#2 == Private`mulabel[Private`NN, Private`s], {
                  Text[
                   Style[
                    Part[Private`vert, 2, Private`s], 25, Blue], #, 
                   Offset[{-30, -30}]], 
                  Disk[#, 0.03], {Black}}}, {Private`s, 1, Private`NN - 1}], 
               1]]& ), VertexCoordinates -> 
            adjmatPackage`vertexcoordtriangle[Private`NN], DirectedEdges -> 
            False]; Private`grnu = 
          AdjacencyGraph[Private`adj, VertexShapeFunction -> (Apply[Which, 
              Flatten[
               Table[{#2 == Private`nulabel[Private`NN, Private`s], {
                  Text[
                   Style[
                    Part[Private`vert, 3, Private`NN - Private`s], 25, 
                    Blue], #, 
                   Offset[{-5, 
                    Plus[25]}]], 
                  Disk[#, 0.03], {Black}}}, {Private`s, 1, Private`NN - 1}], 
               1]]& ), VertexCoordinates -> 
            adjmatPackage`vertexcoordtriangle[Private`NN], DirectedEdges -> 
            False]; Private`grEW = 
          AdjacencyGraph[Private`adj, EdgeShapeFunction -> (Apply[Which, 
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
                Private`f, 1, Private`NN - 1}], 1]]& ), VertexCoordinates -> 
            adjmatPackage`vertexcoordtriangle[Private`NN], DirectedEdges -> 
            False]; Private`grNESW = 
          AdjacencyGraph[Private`adj, EdgeShapeFunction -> (Apply[Which, 
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
                    Part[
                    Part[Private`fullinfo, 3, Private`loccoupling], 
                    Private`f], 
                    First[
                    Flatten[
                    Position[
                    Private`edgesNESWlabels[Private`f], Private`u]]]], 20], (
                    Part[#, 1] + Part[#, 2])/2]}}, {Private`u, 
                   Private`edgesNESWlabels[Private`f]}], 1], {
                Private`f, 1, Private`NN - 1}], 1]]& ), VertexCoordinates -> 
            adjmatPackage`vertexcoordtriangle[Private`NN], DirectedEdges -> 
            False]; Private`grNWSE = 
          AdjacencyGraph[Private`adj, EdgeShapeFunction -> (Apply[Which, 
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
                Private`f, 1, Private`NN - 1}], 1]]& ), VertexCoordinates -> 
            adjmatPackage`vertexcoordtriangle[Private`NN], DirectedEdges -> 
            False]; 
         Show[Private`grid, Private`grla, Private`grmu, Private`grnu, 
           Private`grEW, Private`grNESW, Private`grNWSE]]; 
      Private`plotAllOblades[
         Pattern[Private`myweights, 
          Blank[]]] := Table[
         Private`plotSUNoblade[Private`myweights, Private`pos], {
         Private`pos, 1, 
          Apply[obladePackage`multiplicity, Private`myweights]}]; 
      Private`componentsAlongFundPict[{
          Pattern[Private`lam, 
           BlankSequence[]]}, {
          Pattern[Private`mu, 
           BlankSequence[]]}] := Part[
         Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}], 1]; 
      obladePackage`edgesEWvalues[{
          Pattern[Private`lam, 
           BlankSequence[]]}, {
          Pattern[Private`mu, 
           BlankSequence[]]}] := Part[
         Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}], 2]; 
      obladePackage`edgesNESWvalues[{
          Pattern[Private`lam, 
           BlankSequence[]]}, {
          Pattern[Private`mu, 
           BlankSequence[]]}] := Part[
         Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}], 3]; 
      obladePackage`edgesNWSEvalues[{
          Pattern[Private`lam, 
           BlankSequence[]]}, {
          Pattern[Private`mu, 
           BlankSequence[]]}] := Part[
         Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}], 4]; 
      Private`tensorproductCC[{
          Pattern[Private`lam, 
           BlankSequence[]]}, {
          Pattern[Private`mu, 
           BlankSequence[]]}] := Part[
         Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}], 5]; 
      obladePackage`tensorproduct[{
          Pattern[Private`lam, 
           BlankSequence[]]}, {
          Pattern[Private`mu, 
           BlankSequence[]]}] := Sort[
         Switch[
          ValueQ[obladePackage`currentgroup], False, 
          obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
          obladePackage`tensorproduct[{Private`lam}, {Private`mu}], True, 
          If[Length[{Private`lam}] == obladePackage`currentgroup - 1, 
           SortBy[
            Tally[
             Map[Reverse, 
              Private`tensorproductCC[{Private`lam}, {Private`mu}]]], Last], 
           obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
           obladePackage`tensorproduct[{Private`lam}, {Private`mu}]]]]; 
      obladePackage`tensorproduct[{
          Pattern[Private`lam, 
           BlankSequence[]]}, {
          Pattern[Private`mu, 
           BlankSequence[]]}, {
          Pattern[Private`nu, 
           BlankSequence[]]}] := Switch[
         ValueQ[obladePackage`currentgroup], False, 
         obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
         obladePackage`tensorproduct[{Private`lam}, {Private`mu}, {
           Private`nu}], True, 
         If[Length[{Private`lam}] == obladePackage`currentgroup - 1, 
          SortBy[
           Tally[
            Map[Reverse, 
             Private`tensorproductCC[{Private`lam}, {Private`mu}, 
              Reverse[{Private`nu}]]]], Last], 
          obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
          obladePackage`tensorproduct[{Private`lam}, {Private`mu}, {
            Private`nu}]]]; Private`componentsAlongFundPict[{
          Pattern[Private`lam, 
           BlankSequence[]]}, {
          Pattern[Private`mu, 
           BlankSequence[]]}, {
          Pattern[Private`nuc, 
           BlankSequence[]]}] := Part[
         Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}, {
          Private`nuc}], 1]; obladePackage`edgesEWvalues[{
          Pattern[Private`lam, 
           BlankSequence[]]}, {
          Pattern[Private`mu, 
           BlankSequence[]]}, {
          Pattern[Private`nuc, 
           BlankSequence[]]}] := Part[
         Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}, {
          Private`nuc}], 2]; obladePackage`edgesNESWvalues[{
          Pattern[Private`lam, 
           BlankSequence[]]}, {
          Pattern[Private`mu, 
           BlankSequence[]]}, {
          Pattern[Private`nuc, 
           BlankSequence[]]}] := Part[
         Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}, {
          Private`nuc}], 3]; obladePackage`edgesNWSEvalues[{
          Pattern[Private`lam, 
           BlankSequence[]]}, {
          Pattern[Private`mu, 
           BlankSequence[]]}, {
          Pattern[Private`nuc, 
           BlankSequence[]]}] := Part[
         Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}, {
          Private`nuc}], 4]; Private`tensorproductCC[{
          Pattern[Private`lam, 
           BlankSequence[]]}, {
          Pattern[Private`mu, 
           BlankSequence[]]}, {
          Pattern[Private`nuc, 
           BlankSequence[]]}] := Part[
         Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}, {
          Private`nuc}], 5]; obladePackage`multiplicityHive[{
          Pattern[Private`lam, 
           BlankSequence[]]}, {
          Pattern[Private`mu, 
           BlankSequence[]]}, {
          Pattern[Private`nu, 
           BlankSequence[]]}] := Switch[
         ValueQ[obladePackage`currentgroup], False, 
         obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
         obladePackage`multiplicityHive[{Private`lam}, {Private`mu}, {
           Private`nu}], True, 
         If[Length[{Private`lam}] == obladePackage`currentgroup - 1, 
          Length[
           Private`tensorproductCC[{Private`lam}, {Private`mu}, 
            Reverse[{Private`nu}]]], 
          obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
          obladePackage`multiplicityHive[{Private`lam}, {Private`mu}, {
            Private`nu}]]]; obladePackage`pictographsCoordinates[{
          Pattern[Private`lam, 
           BlankSequence[]]}, {
          Pattern[Private`mu, 
           BlankSequence[]]}, {
          Pattern[Private`nu, 
           BlankSequence[]]}] := Switch[
         ValueQ[obladePackage`currentgroup], False, 
         obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
         obladePackage`pictographsCoordinates[{Private`lam}, {Private`mu}, {
           Private`nu}], True, 
         If[Length[{Private`lam}] == obladePackage`currentgroup - 1, 
          Private`componentsAlongFundPict[{Private`lam}, {Private`mu}, 
           Reverse[{Private`nu}]], 
          obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
          obladePackage`pictographsCoordinates[{Private`lam}, {Private`mu}, {
            Private`nu}]]]; obladePackage`plotOblades[{
          Pattern[Private`lam, 
           BlankSequence[]]}, {
          Pattern[Private`mu, 
           BlankSequence[]]}, {
          Pattern[Private`nu, 
           BlankSequence[]]}] := Switch[
         ValueQ[obladePackage`currentgroup], False, 
         obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
         obladePackage`plotOblades[{Private`lam}, {Private`mu}, {Private`nu}],
          True, 
         If[Length[{Private`lam}] == obladePackage`currentgroup - 1, 
          Private`plotAllOblades[{{Private`lam}, {Private`mu}, {Private`nu}}],
           obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
          obladePackage`plotOblades[{Private`lam}, {Private`mu}, {
            Private`nu}]]]; obladePackage`plotOblades[{
          Pattern[Private`lam, 
           BlankSequence[]]}, {
          Pattern[Private`mu, 
           BlankSequence[]]}, {
          Pattern[Private`nu, 
           BlankSequence[]]}, 
         Pattern[Private`pos, 
          Blank[]]] := Switch[
         ValueQ[obladePackage`currentgroup], False, 
         obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
         obladePackage`plotOblades[{Private`lam}, {Private`mu}, {Private`nu}, 
           Private`pos], True, 
         If[Length[{Private`lam}] == obladePackage`currentgroup - 1, 
          
          Private`plotSUNoblade[{{Private`lam}, {Private`mu}, {Private`nu}}, 
           Private`pos], obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
          obladePackage`plotOblades[{Private`lam}, {Private`mu}, {Private`nu},
             Private`pos]]]; obladePackage`pictographsCoordinatesToWeights[{
          Pattern[Private`li, 
           BlankSequence[]]}] := 
       Module[{Private`locjjpol = Dot[{Private`li}, 
            ToExpression[obladePackage`fundamentalcomponentsLabels]], 
          Private`jj}, 
         Private`locjjpol = 
          ReplaceAll[Private`locjjpol, {Private`j -> Private`jj}]; 
         Private`jj[
            Pattern[Private`u, 
             Blank[]], 
            Pattern[Private`v, 
             Blank[]], 
            Pattern[Private`w, 
             Blank[]]] := 
          Private`jj[Private`la, Private`u] + 
           Private`jj[Private`mu, Private`v] + 
           Private`jj[Private`nu, Private`w]; 
         Private`locjjpol = 
          ReplaceAll[
           Private`locjjpol, {
            Private`jj[Private`la, 0] -> 0, Private`jj[Private`mu, 0] -> 0, 
             Private`jj[Private`nu, 0] -> 0}]; 
         With[{Private`pol = Private`locjjpol}, {
            Table[
             Coefficient[Private`pol, 
              Private`jj[Private`la, Private`p]], {
             Private`p, 1, obladePackage`currentgroup - 1}], 
            Table[
             Coefficient[Private`pol, 
              Private`jj[Private`mu, Private`p]], {
             Private`p, 1, obladePackage`currentgroup - 1}], 
            Table[
             Coefficient[Private`pol, 
              Private`jj[Private`nu, Private`p]], {
             Private`p, 1, obladePackage`currentgroup - 1}]}]]; 
      Private`pictographsCoordinatesToWeightsBis[{
          Pattern[Private`li, 
           BlankSequence[]]}] := 
       Module[{Private`check, Private`p, Private`n, Private`nbdegfree}, 
         Private`check = Reduce[
            And[
            Length[{Private`li}] == (1/2) (-1 + Private`p) (4 + Private`p), 
             Private`p > 0], Private`p, Integers]; 
         If[Private`check == False, 
           Print["The number of components should be equal to(-1+n) (4+n)/2 \
for some positive integer n"]; Return[{}], Private`n = ReplaceAll[Private`p, 
             ToRules[Private`check]]]; 
         Private`nbdegfree = Length[{Private`li}]; 
         Apply[Plus, {Private`li} 
           Map[obladePackage`pictographsCoordinatesToWeights, 
             Table[
              UnitVector[Private`nbdegfree, Private`s], {
              Private`s, 1, Private`nbdegfree}]]]]; 
      obladePackage`pictographsCoordinatesToDynkinAndLeaves[{
          Pattern[Private`li, 
           BlankSequence[]]}] := 
       Module[{Private`unitvecs, Private`edges, Private`leavesEW, 
          Private`leavesNESW, Private`leavesNWSE}, 
         Private`unitvecs = 
          Module[{Private`n = obladePackage`currentgroup, Private`nbdegfree}, 
            Private`nbdegfree = 
             3 (Private`n - 1) + (Private`n - 1) ((Private`n - 2)/2); Table[
              UnitVector[Private`nbdegfree, Private`s], {
              Private`s, 1, Private`nbdegfree}]]; 
         Private`edges = 
          Apply[Plus, {Private`li} 
            Map[obladePackage`pictographsCoordinatesToWeights, 
              Private`unitvecs]]; 
         Private`leavesEW = 
          Apply[Plus, {Private`li} Apply[obladePackage`edgesEWvalues, 
              Map[
              obladePackage`pictographsCoordinatesToWeights, 
               Private`unitvecs], 1]]; 
         Private`leavesNESW = 
          Apply[Plus, {Private`li} Apply[obladePackage`edgesNESWvalues, 
              Map[
              obladePackage`pictographsCoordinatesToWeights, 
               Private`unitvecs], 1]]; 
         Private`leavesNWSE = 
          Apply[Plus, {Private`li} Apply[obladePackage`edgesNWSEvalues, 
              Map[
              obladePackage`pictographsCoordinatesToWeights, 
               Private`unitvecs], 1]]; {Private`edges, {
            Part[Private`leavesEW, 1], 
            Part[Private`leavesNESW, 1], 
            Part[Private`leavesNWSE, 1]}}]; 
      obladePackage`pictographsCoordinatesToHoneycomb[{
          Pattern[Private`li, 
           BlankSequence[]]}] := 
       With[{Private`u = {Sqrt[3]/2, 1/2}, Private`v = {-(Sqrt[3]/2), 1/2}, 
          Private`w = {0, -1}}, 
         Module[{
          Private`weightsandleaves, Private`weights, Private`leaves, 
           Private`la, Private`mu, Private`nu, Private`nn, Private`ptg, 
           Private`gra1, Private`gra2, Private`tailsize}, 
          Private`weightsandleaves = 
           obladePackage`pictographsCoordinatesToDynkinAndLeaves[{
             Private`li}]; Private`weights = First[Private`weightsandleaves]; 
          Private`la = Part[Private`weights, 1]; 
          Private`mu = Part[Private`weights, 2]; Private`nu = Reverse[
             Part[Private`weights, 3]]; 
          Private`leaves = Last[Private`weightsandleaves]; 
          Private`nn = obladePackage`currentgroup; Private`ptg[1, 1] = {0, 0}; 
          Private`ptg[1, 
             Pattern[Private`s, 
              Blank[]]] := 
           Condition[
            Private`ptg[1, Private`s - 1] + 
             Private`u Part[Private`leaves, 3, -Private`s/2, -1], 
             EvenQ[Private`s]]; Private`ptg[1, 
             Pattern[Private`s, 
              Blank[]]] := 
           Condition[
            Private`ptg[1, Private`s - 1] - Private`v 
             Part[Private`leaves, 2, (Private`s - 1)/2, 1], 
             OddQ[Private`s]]; Private`ptg[
             Pattern[Private`f, 
              Blank[]], 1] := 
           Private`ptg[Private`f - 1, 2] - Private`w 
            Part[Private`leaves, 1, Private`f - 1, Private`nn - (Private`f - 
              1)]; Private`ptg[
             Pattern[Private`f, 
              Blank[]], 
             Pattern[Private`s, 
              Blank[]]] := 
           Condition[
            Private`ptg[Private`f, Private`s - 1] + 
             Private`u 
              Part[Private`leaves, 3, -(Private`s/2 + Private`f - 1), 
                Private`s/2], 
             EvenQ[Private`s]]; Private`ptg[
             Pattern[Private`f, 
              Blank[]], 
             Pattern[Private`s, 
              Blank[]]] := 
           Condition[
            Private`ptg[Private`f, Private`s - 1] - Private`v 
             Part[Private`leaves, 2, (Private`s - 1)/2, Private`f], 
             OddQ[Private`s]]; Private`tailsize = Round[Max[{
                Total[Private`la], 
                Total[Private`mu], 
                Total[Private`nu]}]/20]; Private`gra1 = Graphics[
             Join[
              Table[{Black, 
                Point[
                 Table[
                  Private`ptg[Private`f, Private`s], {
                  Private`s, 1, 2 Private`nn - 2 Private`f + 1}]]}, {
               Private`f, 1, Private`nn}], 
              Table[{Blue, 
                Line[
                 Table[{
                   Private`ptg[Private`f, Private`j], 
                   Private`ptg[Private`f, Private`j + 1]}, {
                  Private`j, 1, 2 (Private`nn - Private`f)}]]}, {
               Private`f, 1, Private`nn - 1}], 
              Table[{Blue, 
                Line[
                 Table[{
                   Private`ptg[Private`f, Private`j], 
                   Private`ptg[Private`f + 1, Private`j - 1]}, {
                  Private`j, 2, 2 (Private`nn - Private`f), 2}]]}, {
               Private`f, 1, Private`nn - 1}], 
              Table[{Red, 
                Table[
                 Private`affineSegment[
                  Private`ptg[Private`f, Private`j], Private`tailsize 
                  Private`w], {Private`j, 1, 2 Private`nn - Private`f, 2}]}, {
               Private`f, 1, 1}], 
              Table[{Red, 
                Table[
                 Private`affineSegment[
                  Private`ptg[Private`f, Private`j], Private`tailsize 
                  Private`v], {Private`j, 1, 1}]}, {
               Private`f, 1, Private`nn}], 
              Table[{Red, 
                Table[
                 Private`affineSegment[
                  Private`ptg[Private`f, Private`j], Private`tailsize 
                  Private`u], {
                 Private`j, 2 (Private`nn - Private`f) + 1, 
                  2 (Private`nn - Private`f) + 1}]}, {
               Private`f, 1, Private`nn}]], AspectRatio -> Automatic]; 
          Private`gra2 = Graphics[{
              Table[
               Table[
                Private`segmentLabel[
                 Part[Private`leaves, 1, Private`f, -Private`j], Black, 
                 Private`ptg[Private`f, 2 Private`j], 
                 Private`ptg[Private`f + 1, 2 Private`j - 1], {5, 0}], {
                Private`j, 1, Private`nn - Private`f}], {
               Private`f, 1, Private`nn - 1}], 
              Table[
               Table[
                Private`segmentLabel[
                 Part[Private`leaves, 2, Private`f, Private`j], Black, 
                 Private`ptg[Private`j, 2 Private`f], 
                 Private`ptg[Private`j, 2 Private`f + 1], {-6, -6}], {
                Private`j, 1, Private`nn - Private`f}], {
               Private`f, 1, Private`nn - 1}], 
              Table[
               Table[
                Private`segmentLabel[
                 Part[Private`leaves, 3, Private`f, -Private`j], Black, 
                 Private`ptg[
                 Private`j, 2 Private`nn - 2 Private`j - 2 Private`f + 1], 
                 Private`ptg[
                 Private`j, 2 Private`nn - 2 Private`j - 2 Private`f + 1 + 
                  1], {0, -6}], {Private`j, 1, Private`nn - Private`f}], {
               Private`f, 1, Private`nn - 1}], 
              Table[
               Private`segmentLabel[
                Part[Private`la, Private`f], Blue, Bold, 
                Private`ptg[Private`f, 1] - Private`w, 
                Private`ptg[Private`f + 1, 1] - Private`w, {25, -10}], {
               Private`f, 1, Private`nn - 1}], 
              Table[
               Private`segmentLabel[
                Part[Private`mu, Private`nn - Private`f], Blue, Bold, 
                Private`ptg[Private`f, 2 Private`nn - 2 Private`f + 1] - 
                Private`w, 
                Private`ptg[Private`f + 1, 2 Private`nn - 2 Private`f - 1] - 
                Private`w, {-40, -10}], {Private`f, 1, Private`nn - 1}], 
              Table[
               Private`segmentLabel[
                Part[Private`nu, Private`nn - Private`f], Blue, Bold, 
                Private`ptg[1, 2 Private`nn - 2 Private`f - 1] - Private`w, 
                Private`ptg[1, 2 Private`nn - 2 Private`f + 1] - 
                Private`w, {-10, 30}], {Private`f, 1, Private`nn - 1}]}, 
             AspectRatio -> Automatic]; Show[Private`gra1, Private`gra2]]]; 
      obladePackage`pictographsCoordinatesToOblade[{
          Pattern[Private`li, 
           BlankSequence[]]}] := 
       Module[{Private`weightsandleaves, Private`weights, Private`la, 
          Private`mu, Private`nu, Private`leaves, Private`adj, Private`grid, 
          Private`grla, Private`grmu, Private`grnu, Private`grEW, 
          Private`grNESW, Private`grNWSE}, 
         Private`weightsandleaves = 
          obladePackage`pictographsCoordinatesToDynkinAndLeaves[{Private`li}]; 
         Private`weights = First[Private`weightsandleaves]; 
         Private`la = Part[Private`weights, 1]; 
         Private`mu = Part[Private`weights, 2]; Private`nu = Reverse[
            Part[Private`weights, 3]]; 
         Private`leaves = Last[Private`weightsandleaves]; 
         Private`adj = Private`AdjMatbis; 
         Private`grid = 
          AdjacencyGraph[
           Private`adj, VertexCoordinates -> 
            adjmatPackage`vertexcoordtriangle[Private`NN], DirectedEdges -> 
            False]; Private`grla = 
          AdjacencyGraph[Private`adj, VertexShapeFunction -> (Apply[Which, 
              Flatten[
               Table[{#2 == Private`lambdalabel[Private`NN, Private`s], {
                  Text[
                   Style[
                    Part[Private`la, Private`s], Large, Blue], #, {
                   Right, Bottom}], 
                  Disk[#, 0.05], {Black}}}, {Private`s, 1, Private`NN - 1}], 
               1]]& ), VertexCoordinates -> 
            adjmatPackage`vertexcoordtriangle[Private`NN], DirectedEdges -> 
            False]; Private`grmu = 
          AdjacencyGraph[Private`adj, VertexShapeFunction -> (Apply[Which, 
              Flatten[
               Table[{#2 == Private`mulabel[Private`NN, Private`s], {
                  Text[
                   Style[
                    Part[Private`mu, Private`s], Large, Blue], #, {
                   Left, Bottom}], 
                  Disk[#, 0.05], {Black}}}, {Private`s, 1, Private`NN - 1}], 
               1]]& ), VertexCoordinates -> 
            adjmatPackage`vertexcoordtriangle[Private`NN], DirectedEdges -> 
            False]; Private`grnu = 
          AdjacencyGraph[Private`adj, VertexShapeFunction -> (Apply[Which, 
              Flatten[
               Table[{#2 == Private`nulabel[Private`NN, Private`s], {
                  Text[
                   Style[
                    Part[Private`nu, Private`NN - Private`s], Large, 
                    Blue], #, {Right, Top}], 
                  Disk[#, 0.05], {Black}}}, {Private`s, 1, Private`NN - 1}], 
               1]]& ), VertexCoordinates -> 
            adjmatPackage`vertexcoordtriangle[Private`NN], DirectedEdges -> 
            False]; 
         Private`grEW = 
          AdjacencyGraph[Private`adj, EdgeShapeFunction -> (Apply[Which, 
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
                    Part[Private`leaves, 1, Private`f]], 
                    First[
                    Flatten[
                    Position[
                    Private`edgesEWlabels[Private`f], Private`u]]]], 20], (
                    Part[#, 1] + Part[#, 2])/2]}}, {Private`u, 
                   Private`edgesEWlabels[Private`f]}], 1], {
                Private`f, 1, Private`NN - 1}], 1]]& ), VertexCoordinates -> 
            adjmatPackage`vertexcoordtriangle[Private`NN], DirectedEdges -> 
            False]; Private`grNESW = 
          AdjacencyGraph[Private`adj, EdgeShapeFunction -> (Apply[Which, 
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
                    Part[Private`leaves, 2, Private`f], 
                    First[
                    Flatten[
                    Position[
                    Private`edgesNESWlabels[Private`f], Private`u]]]], 20], (
                    Part[#, 1] + Part[#, 2])/2]}}, {Private`u, 
                   Private`edgesNESWlabels[Private`f]}], 1], {
                Private`f, 1, Private`NN - 1}], 1]]& ), VertexCoordinates -> 
            adjmatPackage`vertexcoordtriangle[Private`NN], DirectedEdges -> 
            False]; Private`grNWSE = 
          AdjacencyGraph[Private`adj, EdgeShapeFunction -> (Apply[Which, 
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
                    Part[Private`leaves, 3, Private`f]], 
                    First[
                    Flatten[
                    Position[
                    Private`edgesNWSElabels[Private`f], Private`u]]]], 20], (
                    Part[#, 1] + Part[#, 2])/2]}}, {Private`u, 
                   Private`edgesNWSElabels[Private`f]}], 1], {
                Private`f, 1, Private`NN - 1}], 1]]& ), VertexCoordinates -> 
            adjmatPackage`vertexcoordtriangle[Private`NN], DirectedEdges -> 
            False]; Show[
          Private`grid, Private`grla, Private`grmu, Private`grnu, 
           Private`grEW, Private`grNESW, Private`grNWSE]]; 
      obladePackage`hivePolytope[
         Pattern[Private`la, 
          Blank[]], 
         Pattern[Private`mu, 
          Blank[]], 
         Pattern[Private`nu, 
          Blank[]]] := 
       Module[{Private`externalConstraints, Private`eliminatedLeaves, 
          Private`remainingLeaves}, 
         Private`externalConstraints = ReplaceAll[Private`lambdaequations, 
            Private`buildlambdainput[Private`la, Private`mu, 
             Reverse[Private`nu]]]; 
         Private`eliminatedLeaves = Solve[Private`externalConstraints]; 
         Private`remainingLeaves = Union[
            Flatten[
             Map[Variables, 
              Flatten[
               ReplaceAll[
               Private`fundamentalcomponents, Private`eliminatedLeaves]]]]]; 
         Print["The hive polytope is defined by the following pair {vars, \
ineqs} where vars are ", 
           Length[Private`remainingLeaves], 
           " \[LessEqual] ", (Private`NN - 1) ((Private`NN - 2)/2), 
           " independent parameters obeying the inequations ineqs:"]; {
          Private`remainingLeaves, 
           Simplify[
            ReplaceAll[
            Private`positivityconstraints, Private`eliminatedLeaves]]}]; 
      obladePackage`nondegeneratedOblades[
         Pattern[Private`\[Lambda], 
          Blank[]], 
         Pattern[Private`\[Mu], 
          Blank[]]] := Switch[
         ValueQ[obladePackage`currentgroup], False, 
         obladePackage`setGroupSU[Length[Private`\[Lambda]] + 1]; 
         obladePackage`nondegeneratedOblades[
          Private`\[Lambda], Private`\[Mu]], True, 
         If[Length[Private`\[Lambda]] == obladePackage`currentgroup - 1, 
          Private`nondegeneratedObladesMain[Private`\[Lambda], Private`\[Mu]],
           obladePackage`setGroupSU[Length[Private`\[Lambda]] + 1]; 
          obladePackage`nondegeneratedOblades[
           Private`\[Lambda], Private`\[Mu]]]]; 
      Private`nondegeneratedObladesMain[
         Pattern[Private`\[Lambda], 
          Blank[]], 
         Pattern[Private`\[Mu], 
          Blank[]]] := 
       Module[{Private`tp = 
          obladePackage`tensorproduct[Private`\[Lambda], Private`\[Mu]], 
          Private`len}, Private`len = Length[Private`tp]; Position[
           Table[
            Map[FreeQ[#, 0]& , 
             Map[Flatten, 
              Transpose[{
                Map[Flatten, 
                 obladePackage`edgesEWvalues[Private`\[Lambda], Private`\[Mu], 
                  Reverse[
                   Part[Private`tp, Private`j, 1]]]], 
                Map[Flatten, 
                 obladePackage`edgesNESWvalues[
                 Private`\[Lambda], Private`\[Mu], 
                  Reverse[
                   Part[Private`tp, Private`j, 1]]]], 
                Map[Flatten, 
                 obladePackage`edgesNWSEvalues[
                 Private`\[Lambda], Private`\[Mu], 
                  Reverse[
                   Part[Private`tp, Private`j, 1]]]]}]]], {
            Private`j, 1, Private`len}], True]]; 
      obladePackage`nondegeneratedOblades[
         Pattern[Private`\[Lambda], 
          Blank[]], 
         Pattern[Private`\[Mu], 
          Blank[]], 
         Pattern[Private`\[Nu], 
          Blank[]]] := Switch[
         ValueQ[obladePackage`currentgroup], False, 
         obladePackage`setGroupSU[Length[Private`\[Lambda]] + 1]; 
         obladePackage`nondegeneratedOblades[
          Private`\[Lambda], Private`\[Mu], Private`\[Nu]], True, 
         If[Length[Private`\[Lambda]] == obladePackage`currentgroup - 1, 
          Private`nondegeneratedObladesMain[
          Private`\[Lambda], Private`\[Mu], Private`\[Nu]], 
          obladePackage`setGroupSU[Length[Private`\[Lambda]] + 1]; 
          obladePackage`nondegeneratedOblades[
           Private`\[Lambda], Private`\[Mu], Private`\[Nu]]]]; 
      Private`nondegeneratedObladesMain[
         Pattern[Private`\[Lambda], 
          Blank[]], 
         Pattern[Private`\[Mu], 
          Blank[]], 
         Pattern[Private`\[Nu], 
          Blank[]]] := Position[
         Map[FreeQ[#, 0]& , 
          Map[Flatten, 
           Transpose[{
             Map[Flatten, 
              obladePackage`edgesEWvalues[Private`\[Lambda], Private`\[Mu], 
               Reverse[Private`\[Nu]]]], 
             Map[Flatten, 
              obladePackage`edgesNESWvalues[
              Private`\[Lambda], Private`\[Mu], 
               Reverse[Private`\[Nu]]]], 
             Map[Flatten, 
              obladePackage`edgesNWSEvalues[
              Private`\[Lambda], Private`\[Mu], 
               Reverse[Private`\[Nu]]]]}]]], True]; 
      Options[obladePackage`multiplicity] = {
        obladePackage`Kostant -> False, obladePackage`Magic -> False, Volume -> 
         False, obladePackage`GenFun -> False, obladePackage`LiE -> False}; 
      obladePackage`multiplicity[
         Pattern[Private`lambda, 
          Blank[]], 
         Pattern[Private`mu, 
          Blank[]], 
         Pattern[Private`nu, 
          Blank[]], 
         OptionsPattern[]] := 
       Which[OptionValue[obladePackage`Kostant] == True, 
         obladePackage`multiplicityKostant[
         Private`lambda, Private`mu, Private`nu], 
         OptionValue[obladePackage`Magic] == True, 
         obladePackage`multiplicityMagic[
         Private`lambda, Private`mu, Private`nu], OptionValue[Volume] == True, 
         Private`multiplicityVolume[Private`lambda, Private`mu, Private`nu], 
         OptionValue[obladePackage`GenFun] == True, 
         obladePackage`multiplicityGenFun[
         Private`lambda, Private`mu, Private`nu], 
         OptionValue[obladePackage`LiE] == True, 
         obladePackage`multiplicityLiE[
         Private`lambda, Private`mu, Private`nu], True, 
         obladePackage`multiplicityHive[
         Private`lambda, Private`mu, Private`nu]]; 
      obladePackage`multiplicityLiE[
         Pattern[Private`\[Lambda]1, 
          Blank[]], 
         Pattern[Private`\[Lambda]2, 
          Blank[]], 
         Pattern[Private`\[Lambda]3, 
          Blank[]], 
         Pattern[Private`diagram, 
          Blank[]]] := 
       Block[{Private`group, Private`V1, Private`V2, Private`V3, 
          Private`listofLieCommands, Private`res}, 
         Private`group = ToString[Private`diagram]; 
         Private`V1 = StringJoin["[", 
            StringRiffle[
             Map[ToString, Private`\[Lambda]1], ", "], "]"]; 
         Private`V2 = StringJoin["[", 
            StringRiffle[
             Map[ToString, Private`\[Lambda]2], ", "], "]"]; 
         Private`V3 = StringJoin["[", 
            StringRiffle[
             Map[ToString, Private`\[Lambda]3], ", "], "]"]; 
         Private`listofLieCommands = {
            StringJoin["maxobjects ", "1500000"], 
            StringJoin["setdefault ", Private`group], 
            StringJoin[
            "tensor(", Private`V1, ",", Private`V2, ",", Private`V3, ")"]}; 
         SetDirectory[$HomeDirectory]; 
         Export["filequestion.dat", Private`listofLieCommands]; 
         Private`res = 
          ReadList["!source LiEfromM < filequestion.dat", Expression]; 
         Return[
           First[Private`res]]; ResetDirectory[]]; 
      obladePackage`multiplicityLiE[
         Pattern[Private`lambda, 
          Blank[]], 
         Pattern[Private`mu, 
          Blank[]], 
         Pattern[Private`nu, 
          Blank[]]] := 
       obladePackage`multiplicityLiE[Private`lambda, Private`mu, Private`nu, 
         StringJoin["A", 
          ToString[obladePackage`currentgroup - 1]]]; 
      obladePackage`multiplicityMagic[
         Pattern[Private`lambda, 
          Blank[]], 
         Pattern[Private`mu, 
          Blank[]], 
         Pattern[Private`nu, 
          Blank[]]] := 
       If[obladePackage`currentgroup =!= 3, 
         Print["This algorithm works only for SU(3). I continue using the \
hive method"]; 
         obladePackage`multiplicityHive[
          Private`lambda, Private`mu, Private`nu], 
         Private`magicmult[Private`lambda, Private`mu, 
          Reverse[Private`nu]]]; obladePackage`multiplicityKostant[
         Pattern[Private`lambda, 
          Blank[]], 
         Pattern[Private`mu, 
          Blank[]], 
         Pattern[Private`nu, 
          Blank[]]] := 
       Which[obladePackage`currentgroup == 3, obladePackage`Kostant[{
             Pattern[Private`x, 
              Blank[]], 
             Pattern[Private`y, 
              Blank[]]}] := If[
            Or[Private`x < 0, Private`y < 0], 0, 1 + 
            Min[Private`x, Private`y]]; Private`dynkintokac[{
             Pattern[Private`a, 
              Blank[]], 
             Pattern[Private`b, 
              Blank[]]}] := Private`a {2/3, 1/3} + Private`b {1/3, 2/3}; 
         Private`weyldot[
            Pattern[Private`s, 
             Blank[]]][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]]}] := 
          Private`weyl[Private`s][{Private`la1, Private`la2} + {1, 1}] - {1, 
           1}; Private`weyl[1][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]]}] := {Private`la1, Private`la2}; Private`weyl[2][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]]}] := {-Private`la1, Private`la1 + Private`la2}; 
         Private`weyl[3][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]]}] := {Private`la1 + Private`la2, -Private`la2}; 
         Private`weyl[4][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]]}] := {Private`la2, -(Private`la1 + Private`la2)}; 
         Private`weyl[5][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]]}] := {-(Private`la1 + Private`la2), Private`la1}; 
         Private`weyl[6][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]]}] := {-Private`la2, -Private`la1}; Private`sign[
            Private`weyl[
             Pattern[Private`s, 
              Blank[]]]] := Part[{1, -1, -1, 1, 1, -1}, Private`s]; If[
           Apply[Nand, 
            Map[IntegerQ, 
             Private`dynkintokac[Private`lambda + Private`mu - Private`nu]]], 
           Print["Not an admissible intertwiner"]; 0, 
           Sum[Private`sign[
              Private`weyl[Private`v]] Private`sign[
              Private`weyl[Private`w]] obladePackage`Kostant[
              Private`dynkintokac[
              Private`weyldot[Private`v][Private`lambda] + 
               Private`weyldot[Private`w][Private`mu] - Private`nu]], {
            Private`v, 1, 
             Factorial[3]}, {Private`w, 1, 
             Factorial[3]}]], obladePackage`currentgroup == 4, 
         obladePackage`Kostant[{
             Pattern[Private`k1, 
              Blank[]], 
             Pattern[Private`k2, 
              Blank[]], 
             Pattern[Private`k3, 
              Blank[]]}] := Piecewise[{{0, 
              Or[
              Private`k1 < 0, Private`k2 < 0, Private`k3 < 0]}, {(Private`k2 + 
               1) (Private`k2 + 2) ((Private`k2 + 3)/6), 
              And[
              Private`k2 <= Private`k1, Private`k2 <= Private`k3]}, {(
               Private`k1 + 1) (Private`k1 + 
               2) ((3 Private`k2 - 2 Private`k1 + 3)/6), Private`k1 <= 
              Private`k2 <= 
              Private`k3}, {(Private`k1 + 1) (Private`k1 + 
               2) ((3 Private`k3 - Private`k1 + 3)/6), Private`k1 <= 
              Private`k3 <= Private`k1 + Private`k3 <= 
              Private`k2}, {(Private`k1 + 1) (Private`k1 + 
                2) ((3 Private`k3 - Private`k1 + 3)/6) - Binomial[
              Private`k3 + Private`k1 - Private`k2 + 2, 3], Private`k1 <= 
              Private`k3 <= Private`k2 <= 
              Private`k1 + Private`k3}, {(Private`k3 + 1) (Private`k3 + 
               2) ((3 Private`k2 - 2 Private`k3 + 3)/6), Private`k3 <= 
              Private`k2 <= 
              Private`k1}, {(Private`k3 + 1) (Private`k3 + 
               2) ((3 Private`k1 - Private`k3 + 3)/6), Private`k3 <= 
              Private`k1 <= Private`k3 + Private`k1 <= 
              Private`k2}, {(Private`k3 + 1) (Private`k3 + 
                2) ((3 Private`k1 - Private`k3 + 3)/6) - Binomial[
              Private`k1 + Private`k3 - Private`k2 + 2, 3], Private`k3 <= 
              Private`k1 <= Private`k2 <= Private`k3 + Private`k1}}]; 
         Private`dynkintokac[{
             Pattern[Private`a, 
              Blank[]], 
             Pattern[Private`b, 
              Blank[]], 
             Pattern[Private`c, 
              Blank[]]}] := 
          Private`a {3/4, 1/2, 1/4} + Private`b {1/2, 1, 1/2} + 
           Private`c {1/4, 1/2, 3/4}; Private`weyldot[
            Pattern[Private`s, 
             Blank[]]][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := 
          Private`weyl[
            Private`s][{Private`la1, Private`la2, Private`la3} + {1, 1, 
              1}] - {1, 1, 1}; Private`sign[
            Private`weyl[
             Pattern[Private`s, 
              Blank[]]]] := 
          Part[{1, -1, -1, -1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, 1, 1, 1,
             1, 1, -1, -1, -1, 1}, Private`s]; Private`weyl[1][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {Private`la1, Private`la2, Private`la3}; 
         Private`weyl[2][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {-Private`la1, Private`la1 + Private`la2, 
            Private`la3}; Private`weyl[3][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {
           Private`la1 + Private`la2, -Private`la2, Private`la2 + 
            Private`la3}; Private`weyl[4][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {
           Private`la1, Private`la2 + Private`la3, -Private`la3}; 
         Private`weyl[5][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {
           Private`la2, -(Private`la1 + Private`la2), Private`la1 + 
            Private`la2 + Private`la3}; Private`weyl[6][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {-Private`la1, Private`la1 + Private`la2 + 
            Private`la3, -Private`la3}; Private`weyl[7][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {-Private`la1 - Private`la2, Private`la1, 
            Private`la2 + Private`la3}; Private`weyl[8][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {
           Private`la1 + Private`la2, Private`la3, -Private`la2 - 
            Private`la3}; Private`weyl[9][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {
           Private`la1 + Private`la2 + Private`la3, -Private`la2 - 
            Private`la3, Private`la2}; Private`weyl[10][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {-Private`la2, -Private`la1, Private`la1 + 
            Private`la2 + Private`la3}; Private`weyl[11][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {
           Private`la2, 
            Private`la3, -(Private`la1 + Private`la2 + Private`la3)}; 
         Private`weyl[12][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {
           Private`la2 + 
            Private`la3, -(Private`la1 + Private`la2 + Private`la3), 
            Private`la1 + Private`la2}; Private`weyl[13][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {-Private`la1 - Private`la2, Private`la1 + 
            Private`la2 + Private`la3, -(Private`la2 + Private`la3)}; 
         Private`weyl[14][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {
           Private`la1 + Private`la2 + Private`la3, -Private`la3, -
            Private`la2}; Private`weyl[15][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {-(Private`la1 + Private`la2 + Private`la3), 
            Private`la1, Private`la2}; Private`weyl[16][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {-Private`la2, Private`la2 + 
            Private`la3, -(Private`la1 + Private`la2 + Private`la3)}; 
         Private`weyl[17][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {
           Private`la2 + Private`la3, -Private`la3, -Private`la1 - 
            Private`la2}; Private`weyl[18][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {-Private`la2 - Private`la3, -Private`la1, 
            Private`la1 + Private`la2}; Private`weyl[19][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {
           Private`la3, -(Private`la1 + Private`la2 + Private`la3), 
            Private`la1}; Private`weyl[20][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {-(Private`la1 + Private`la2 + Private`la3), 
            Private`la1 + Private`la2, -Private`la2}; Private`weyl[21][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {
           Private`la3, -Private`la2 - Private`la3, -Private`la1}; 
         Private`weyl[22][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {-Private`la2 - Private`la3, 
            Private`la2, -Private`la1 - Private`la2}; Private`weyl[23][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {-Private`la3, -Private`la1 - Private`la2, 
            Private`la1}; Private`weyl[24][{
             Pattern[Private`la1, 
              Blank[]], 
             Pattern[Private`la2, 
              Blank[]], 
             Pattern[Private`la3, 
              Blank[]]}] := {-Private`la3, -Private`la2, -Private`la1}; If[
           Apply[Nand, 
            Map[IntegerQ, 
             Private`dynkintokac[Private`lambda + Private`mu - Private`nu]]], 
           Print["Not an admissible intertwiner"]; 0, 
           Sum[Private`sign[
              Private`weyl[Private`v]] Private`sign[
              Private`weyl[Private`w]] obladePackage`Kostant[
              Private`dynkintokac[
              Private`weyldot[Private`v][Private`lambda] + 
               Private`weyldot[Private`w][Private`mu] - Private`nu]], {
            Private`v, 1, 
             Factorial[4]}, {Private`w, 1, 
             Factorial[4]}]], obladePackage`currentgroup > 4, 
         Print["Kostant partition function not implemented, I continue using \
the hive method"]; 
         obladePackage`multiplicityHive[
          Private`lambda, Private`mu, Private`nu]]; 
      obladePackage`multiplicityGeneratingFunctionSU3[
         Pattern[Private`L1, 
          Blank[]], 
         Pattern[Private`L2, 
          Blank[]], 
         Pattern[Private`M1, 
          Blank[]], 
         Pattern[Private`M2, 
          Blank[]], 
         Pattern[Private`N1, 
          Blank[]], 
         Pattern[Private`N2, 
          Blank[]]] := (1 - Private`L1 Private`L2 Private`M1 Private`M2 
         Private`N1 
         Private`N2)/(((1 - Private`L1 Private`N2) (1 - Private`L1 
          Private`M2) (1 - Private`L2 Private`M1) (1 - Private`L2 
          Private`N1)) ((1 - Private`M2 Private`N1) (1 - Private`M1 
          Private`N2) (1 - Private`L1 Private`M1 Private`N1) (1 - Private`L2 
          Private`M2 Private`N2))); Private`tensorproductGenFunPol[{
          Pattern[Private`l1, 
           Blank[]], 
          Pattern[Private`l2, 
           Blank[]]}, {
          Pattern[Private`m1, 
           Blank[]], 
          Pattern[Private`m2, 
           Blank[]]}] := Coefficient[
         Expand[
          Normal[
           Series[
            obladePackage`multiplicityGeneratingFunctionSU3[
            Private`L1, Private`L2, Private`M1, Private`M2, Private`N2, 
             Private`N1], {Private`L1, 0, Private`l1}, {
            Private`L2, 0, Private`l2}, {Private`M1, 0, Private`m1}, {
            Private`M2, 0, Private`m2}, {
            Private`N1, 0, Private`l1 + Private`m1 + 
             Min[Private`l2, Private`m2]}, {
            Private`N2, 0, Private`l2 + Private`m2 + 
             Min[Private`l1, Private`m1]}]]], Private`L1^Private`l1 
         Private`L2^Private`l2 Private`M1^Private`m1 Private`M2^Private`m2]; 
      obladePackage`tensorproductGenFun[
         Pattern[Private`lambda, 
          Blank[]], 
         Pattern[Private`mu, 
          Blank[]]] := Sort[
         Which[obladePackage`currentgroup == 3, 
          Sort[
           ReplaceAll[
            CoefficientRules[
             Private`tensorproductGenFunPol[Private`lambda, Private`mu], {
             Private`N1, Private`N2}], {Rule -> List}]], 
          obladePackage`currentgroup > 3, 
          Print["Generating function not implemented, I continue using the \
hive method"]; obladePackage`tensorproduct[Private`lambda, Private`mu]]]; 
      obladePackage`multiplicityGenFun[
         Pattern[Private`lambda, 
          Blank[]], 
         Pattern[Private`mu, 
          Blank[]], 
         Pattern[Private`nu, 
          Blank[]]] := Coefficient[
         Private`tensorproductGenFunPol[Private`lambda, Private`mu], 
         Private`N1^Part[Private`nu, 1] Private`N2^Part[Private`nu, 2]]; 
      Private`HornFull[
         Pattern[Private`\[Alpha], 
          Blank[]], 
         Pattern[Private`\[Beta], 
          Blank[]]] := {{
          Max[
          Part[Private`\[Alpha], 1] + Part[Private`\[Beta], 3], 
           Part[Private`\[Alpha], 2] + Part[Private`\[Beta], 2], 
           Part[Private`\[Alpha], 3] + Part[Private`\[Beta], 1]], 
          Part[Private`\[Alpha], 1] + Part[Private`\[Beta], 1]}, {
          Max[
          Part[Private`\[Alpha], 2] + Part[Private`\[Beta], 3], 
           Part[Private`\[Alpha], 3] + Part[Private`\[Beta], 2]], 
          Min[
          Part[Private`\[Alpha], 1] + Part[Private`\[Beta], 2], 
           Part[Private`\[Alpha], 2] + Part[Private`\[Beta], 1]]}, {
         Part[Private`\[Alpha], 3] + Part[Private`\[Beta], 3], 
          Min[
          Part[Private`\[Alpha], 1] + Part[Private`\[Beta], 3], 
           Part[Private`\[Alpha], 2] + Part[Private`\[Beta], 2], 
           Part[Private`\[Alpha], 3] + Part[Private`\[Beta], 1]]}}; 
      Private`magicmult[
         Pattern[Private`la, 
          Blank[]], 
         Pattern[Private`mu, 
          Blank[]], 
         Pattern[Private`nuc, 
          Blank[]]] := 
       Module[{Private`irr = {Private`la, Private`mu, Private`nuc}, 
          Private`irrtra, Private`redirrtra, Private`sig, Private`k, 
          Private`magic1, Private`magic2}, 
         Private`irrtra = Transpose[Private`irr]; 
         Private`sig = Map[Total, Private`irrtra]; 
         Private`k = Abs[Part[Private`sig, 1] - Part[Private`sig, 2]]/3; If[
           Not[
            IntegerQ[Private`k]], 
           Return[0]]; 
         Private`redirrtra = 
          Private`irrtra - If[Part[Private`sig, 1] >= Part[Private`sig, 2], {
             ConstantArray[Private`k, 3], 0}, {0, 
             ConstantArray[Private`k, 3]}]; {Private`magic1, Private`magic2} = 
          Map[Total, Private`redirrtra]; Min[
            
            Flatten[{
             Private`redirrtra, ConstantArray[Private`magic1, 3] - Part[
              Private`redirrtra, 1] - Part[Private`redirrtra, 2]}]] + 1]; 
      Private`SchurProdPairMagicMethod[
         Pattern[Private`\[Alpha], 
          Blank[]], 
         Pattern[Private`\[Beta], 
          Blank[]]] := 
       Module[{Private`la, Private`mu, Private`horngam, Private`gamma1min, 
          Private`gamma1max, Private`gamma2min, Private`gamma2max, 
          Private`\[Gamma]3}, 
         Private`la = {
           Part[Private`\[Alpha], 1] - Part[Private`\[Alpha], 2], 
            Part[Private`\[Alpha], 2] - Part[Private`\[Alpha], 3]}; 
         Private`mu = {
           Part[Private`\[Beta], 1] - Part[Private`\[Beta], 2], 
            Part[Private`\[Beta], 2] - Part[Private`\[Beta], 3]}; 
         Private`horngam = 
          Private`HornFull[Private`\[Alpha], Private`\[Beta]]; 
         Private`gamma1min = Part[Private`horngam, 1, 1]; 
         Private`gamma1max = Part[Private`horngam, 1, 2]; 
         Private`gamma2min = Part[Private`horngam, 2, 1]; 
         Private`gamma2max = Part[Private`horngam, 2, 2]; Map[{
            Take[#, 3], 
            Last[#]}& , 
           DeleteCases[
            Flatten[
             Table[
             Private`\[Gamma]3 = 
               Total[Private`\[Alpha]] + Total[Private`\[Beta]] - (
                Private`\[Gamma]1 + Private`\[Gamma]2); {
               Private`\[Gamma]1, Private`\[Gamma]2, Private`\[Gamma]3, 
                Ramp[
                 Private`magicmult[Private`la, Private`mu, 
                  
                  Reverse[{
                   Private`\[Gamma]1 - Private`\[Gamma]2, Private`\[Gamma]2 - 
                    Private`\[Gamma]3}]]]}, {
              Private`\[Gamma]1, Private`gamma1min, Private`gamma1max}, {
              Private`\[Gamma]2, Private`gamma2min, Private`gamma2max}], 1], {
            
             Blank[], 
             Blank[], 
             Blank[], 0}, 1]]]; Private`SU3MultiplicityYoung[
         Pattern[Private`la, 
          Blank[]], 
         Pattern[Private`mu, 
          Blank[]]] := Transpose[
         With[{
          Private`li = 
           Private`SchurProdPairMagicMethod[{
             Part[Private`la, 1] + Part[Private`la, 2], 
              Part[Private`la, 2], 0}, {
             Part[Private`mu, 1] + Part[Private`mu, 2], 
              Part[Private`mu, 2], 0}]}, 
          With[{Private`n = 3}, {
            Map[PadRight[#, Private`n - 1]& , 
             Map[Private`SUreductionOnlists[#, Private`n]& , 
              Map[First, Private`li]]], 
            Map[Last, Private`li]}]]]; obladePackage`SU3MultiplicityDynkin[
         Pattern[Private`la, 
          Blank[]], 
         Pattern[Private`mu, 
          Blank[]]] := 
       With[{Private`finpar = 
          Private`SU3MultiplicityYoung[Private`la, Private`mu]}, 
         Transpose[{
           Map[Private`youngPartitionToHighestWeight[#, 3]& , 
            Part[
             Transpose[Private`finpar], 1]], 
           Part[
            Transpose[Private`finpar], 2]}]]; 
      Private`youngPartitionToHighestWeight[
         Pattern[Private`li, 
          Blank[]], 
         Pattern[Private`cox, 
          Blank[]]] := 
       Module[{Private`lifull = PadRight[Private`li, Private`cox]}, 
         Table[
         Part[Private`lifull, Private`i] - Part[
          Private`lifull, Private`i + 1], {Private`i, 1, Private`cox - 1}]]; 
      Private`SUreductionOnlists[
         Pattern[Private`lis, 
          Blank[]], 
         Pattern[Private`n, 
          Blank[]]] := Which[Length[Private`lis] > Private`n, 
         Print["illegal input"], 
         And[
         Length[Private`lis] == Private`n, CountDistinct[Private`lis] == 1], {
         0}, True, 
         Private`transposeYoungPartition[
          Private`SUreductionTr[
           Private`transposeYoungPartition[Private`lis], Private`n]]]; 
      Private`transposeYoungPartition[
         Pattern[Private`li, 
          Blank[]]] := Apply[Plus, 
         Transpose[
          PadRight[
           Table[
            ConstantArray[1, 
             Part[Private`li, Private`s]], {Private`s, 1, 
             Length[Private`li]}]]], 1]; Private`SUreductionTr[
         Pattern[Private`lisT, 
          Blank[]], 
         Pattern[Private`n, 
          Blank[]]] := 
       Which[First[Private`lisT] > Private`n, 0, First[Private`lisT] == 
         Private`n, 
         Private`SUreductionTr[
          Drop[Private`lisT, 1], Private`n], True, Private`lisT]; 
      Private`SUreductionOnlists[
         Pattern[Private`lis, 
          Blank[]], 
         Pattern[Private`n, 
          Blank[]]] := Which[Length[Private`lis] > Private`n, 
         Print["illegal input"], 
         And[
         Length[Private`lis] == Private`n, CountDistinct[Private`lis] == 1], {
         0}, True, 
         Private`transposeYoungPartition[
          Private`SUreductionTr[
           Private`transposeYoungPartition[Private`lis], Private`n]]]; 
      Private`volumeJ[{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]]}, {
          Pattern[Private`mu1, 
           Blank[]], 
          Pattern[Private`mu2, 
           Blank[]]}, {
          Pattern[Private`nu1, 
           Blank[]], 
          Pattern[Private`nu2, 
           Blank[]]}] := 
       4 (Private`la1 + Private`la2 + Private`mu1 + Private`mu2 + Private`nu1 + 
         Private`nu2 - Abs[
         Private`la1 - Private`la2 + Private`mu1 - Private`mu2 - Private`nu1 + 
          Private`nu2] - 2 
         Piecewise[{{Private`la1 + Private`la2 - Private`mu1 - Private`nu1, 
             And[
             Private`la1 + 2 Private`la2 + Private`nu2 >= 
              2 Private`mu1 + Private`mu2 + Private`nu1, 
              2 Private`la1 + Private`la2 + Private`mu2 > 
              Private`mu1 + 2 Private`nu1 + Private`nu2]}, {-Private`la2 + 
             Private`mu1 + Private`mu2 - Private`nu2, 
             And[
             Private`la1 + 2 Private`la2 + Private`nu2 < 
              2 Private`mu1 + Private`mu2 + Private`nu1, 
              Private`la1 + Private`mu1 + 2 Private`mu2 >= 
              Private`la2 + Private`nu1 + 2 Private`nu2]}, {-Private`la1 - 
             Private`mu2 + Private`nu1 + Private`nu2, 
             And[
             2 Private`la1 + Private`la2 + Private`mu2 <= 
              Private`mu1 + 2 Private`nu1 + Private`nu2, 
              Private`la1 + Private`mu1 + 2 Private`mu2 < 
              Private`la2 + Private`nu1 + 2 Private`nu2]}}, 0] - 2 
         Piecewise[{{-Private`la1 + Private`mu1 + Private`mu2 - Private`nu1, 
             And[
             2 Private`la1 + Private`la2 + Private`nu1 <= 
              Private`mu1 + 2 Private`mu2 + Private`nu2, 
              Private`la1 + 2 Private`nu1 + Private`nu2 < 
              Private`la2 + 2 Private`mu1 + Private`mu2]}, {
            Private`la1 + Private`la2 - Private`mu2 - Private`nu2, 
             And[
             2 Private`la1 + Private`la2 + Private`nu1 > 
              Private`mu1 + 2 Private`mu2 + Private`nu2, 
              Private`la1 + 2 Private`la2 + Private`mu1 >= 
              Private`mu2 + Private`nu1 + 2 Private`nu2]}, {-Private`la2 - 
             Private`mu1 + Private`nu1 + Private`nu2, 
             And[
             Private`la1 + 2 Private`nu1 + Private`nu2 >= 
              Private`la2 + 2 Private`mu1 + Private`mu2, 
              Private`la1 + 2 Private`la2 + Private`mu1 < 
              Private`mu2 + Private`nu1 + 2 Private`nu2]}}, 0]); 
      Private`multiplicityVolume[{
          Pattern[Private`la1, 
           Blank[]], 
          Pattern[Private`la2, 
           Blank[]]}, {
          Pattern[Private`mu1, 
           Blank[]], 
          Pattern[Private`mu2, 
           Blank[]]}, {
          Pattern[Private`nu1, 
           Blank[]], 
          Pattern[Private`nu2, 
           Blank[]]}] := 
       If[obladePackage`currentgroup =!= 3, 
         Print["This algorithm works only for SU(3). I continue using the \
hive method"]; 
         obladePackage`multiplicityHive[
          Private`lambda, Private`mu, Private`nu], 
         Private`volumeJ[{Private`la1, Private`la2}, {
            Private`mu1, Private`mu2}, {Private`nu1, Private`nu2}]/24 + 1]; 
      Null], 
    TagSet[obladePackage`setGroupSU, 
     MessageName[obladePackage`setGroupSU, "usage"], 
     "Evaluation of setGroupSU[n] initializes all relevant data for SU(n). It \
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
       Private`j[2, 1, 0]}}, Private`edgesEW[6] = {{
       Private`j[1, 5, 0], Private`j[1, 4, 1] + Private`j[1, 5, 0], 
       Private`j[1, 3, 2] + Private`j[1, 4, 1] + Private`j[1, 5, 0], 
       Private`j[1, 2, 3] + Private`j[1, 3, 2] + Private`j[1, 4, 1] + 
       Private`j[1, 5, 0], Private`j[1, 1, 4] + Private`j[1, 2, 3] + 
       Private`j[1, 3, 2] + Private`j[1, 4, 1] + Private`j[1, 5, 0]}, {
       Private`j[2, 4, 0], Private`j[2, 3, 1] + Private`j[2, 4, 0], 
       Private`j[2, 2, 2] + Private`j[2, 3, 1] + Private`j[2, 4, 0], 
       Private`j[2, 1, 3] + Private`j[2, 2, 2] + Private`j[2, 3, 1] + 
       Private`j[2, 4, 0]}, {
       Private`j[3, 3, 0], Private`j[3, 2, 1] + Private`j[3, 3, 0], 
       Private`j[3, 1, 2] + Private`j[3, 2, 1] + Private`j[3, 3, 0]}, {
       Private`j[4, 2, 0], Private`j[4, 1, 1] + Private`j[4, 2, 0]}, {
       Private`j[5, 1, 0]}}, Private`edgesNESW[3] = {{
       Private`j[0, 1, 2], Private`j[0, 1, 2] + Private`j[1, 1, 1]}, {
       Private`j[0, 2, 1]}}, Private`edgesNESW[6] = {{
       Private`j[0, 1, 5], Private`j[0, 1, 5] + Private`j[1, 1, 4], 
       Private`j[0, 1, 5] + Private`j[1, 1, 4] + Private`j[2, 1, 3], 
       Private`j[0, 1, 5] + Private`j[1, 1, 4] + Private`j[2, 1, 3] + 
       Private`j[3, 1, 2], Private`j[0, 1, 5] + Private`j[1, 1, 4] + 
       Private`j[2, 1, 3] + Private`j[3, 1, 2] + Private`j[4, 1, 1]}, {
       Private`j[0, 2, 4], Private`j[0, 2, 4] + Private`j[1, 2, 3], 
       Private`j[0, 2, 4] + Private`j[1, 2, 3] + Private`j[2, 2, 2], 
       Private`j[0, 2, 4] + Private`j[1, 2, 3] + Private`j[2, 2, 2] + 
       Private`j[3, 2, 1]}, {
       Private`j[0, 3, 3], Private`j[0, 3, 3] + Private`j[1, 3, 2], 
       Private`j[0, 3, 3] + Private`j[1, 3, 2] + Private`j[2, 3, 1]}, {
       Private`j[0, 4, 2], Private`j[0, 4, 2] + Private`j[1, 4, 1]}, {
       Private`j[0, 5, 1]}}, Private`edgesNWSE[3] = {{
       Private`j[2, 0, 1], Private`j[1, 1, 1] + Private`j[2, 0, 1]}, {
       Private`j[1, 0, 2]}}, Private`edgesNWSE[6] = {{
       Private`j[5, 0, 1], Private`j[4, 1, 1] + Private`j[5, 0, 1], 
       Private`j[3, 2, 1] + Private`j[4, 1, 1] + Private`j[5, 0, 1], 
       Private`j[2, 3, 1] + Private`j[3, 2, 1] + Private`j[4, 1, 1] + 
       Private`j[5, 0, 1], Private`j[1, 4, 1] + Private`j[2, 3, 1] + 
       Private`j[3, 2, 1] + Private`j[4, 1, 1] + Private`j[5, 0, 1]}, {
       Private`j[4, 0, 2], Private`j[3, 1, 2] + Private`j[4, 0, 2], 
       Private`j[2, 2, 2] + Private`j[3, 1, 2] + Private`j[4, 0, 2], 
       Private`j[1, 3, 2] + Private`j[2, 2, 2] + Private`j[3, 1, 2] + 
       Private`j[4, 0, 2]}, {
       Private`j[3, 0, 3], Private`j[2, 1, 3] + Private`j[3, 0, 3], 
       Private`j[1, 2, 3] + Private`j[2, 1, 3] + Private`j[3, 0, 3]}, {
       Private`j[2, 0, 4], Private`j[1, 1, 4] + Private`j[2, 0, 4]}, {
       Private`j[1, 0, 5]}}, Private`edgesEWlabels[
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
      Private`j[1, 2, 0], 
      Private`j[1, 1, 1], 
      Private`j[1, 0, 2], 
      Private`j[2, 1, 0], 
      Private`j[2, 0, 1], 
      Private`j[0, 1, 2], 
      Private`j[0, 2, 1]}, Private`positivityconstraints = 
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
    obladePackage`fundamentalcomponentsLabels = 
    "{Private`j[1, 2, 0], Private`j[1, 1, 1], Private`j[1, 0, 2], \
Private`j[2, 1, 0], Private`j[2, 0, 1], Private`j[0, 1, 2], Private`j[0, 2, \
1]}", 
    TagSet[obladePackage`fundamentalcomponentsLabels, 
     MessageName[obladePackage`fundamentalcomponentsLabels, "usage"], 
     "Prints the chosen basis of fundamental intertwiners (triplets of \
related external vertices, using a clockwise ordering of the external sides \
of an SU(n) oblade)"], 
    Private`componentsEdgesAndnuc[{1, 5}, {4, 6}] = {CompressedData["
1:eJxtk20KwkAQQ/ejrXoM/3saj+AB9P5YXbeQwCO4MGA7m+TNFK+P1/3ZSim3
WadZ26z3GKPorLMu+L2rV2ct0lT1Dl0Nne99pDuyuvpNvV06erbIs+dZ9w6P
r3odvq6PPJnXg8V52x8W5jXVkG6R1vomFnM1ZJEz35OTLMlpFu+lisUa673T
EXvxbOQkS3La1zsjJ1m67voseF6DkyzJyW+XnGRJTud4Zz7cS1GfnGbxzshJ
luS0r4ucZFmChXnJ0tBPFuYli/O8F2dxPs9OFuYli/M8O1mYt0aePT0f/eiZ
efb0fPTkfys9qdvivXvO+wEGnHv0
      
      "], {{{6, 1}, {0}}, {{5, 1}, {1}}, {{5, 0}, {0}}, {{4, 1}, {2}}, {{4, 
        0}, {1}}, {{5, 1}, {0}}, {{3, 1}, {3}}, {{3, 0}, {2}}, {{4, 1}, {
        1}}, {{4, 0}, {0}}, {{2, 1}, {4}}, {{2, 0}, {3}}, {{3, 1}, {2}}, {{3, 
        0}, {1}}, {{4, 1}, {0}}, {{1, 0}, {4}}, {{2, 1}, {3}}, {{2, 0}, {
        2}}, {{3, 1}, {1}}, {{3, 0}, {0}}, {{1, 1}, {4}}, {{1, 0}, {3}}, {{2, 
        1}, {2}}, {{2, 0}, {1}}, {{3, 1}, {0}}, {{0, 0}, {4}}, {{1, 1}, {
        3}}, {{1, 0}, {2}}, {{2, 1}, {1}}, {{2, 0}, {0}}, {{0, 0}, {3}}, {{1, 
        1}, {2}}, {{1, 0}, {1}}, {{2, 1}, {0}}, {{0, 1}, {3}}, {{0, 0}, {
        2}}, {{1, 1}, {1}}, {{1, 0}, {0}}, {{0, 1}, {2}}, {{0, 0}, {1}}, {{1, 
        1}, {0}}, {{0, 1}, {1}}, {{0, 0}, {0}}, {{0, 1}, {0}}}, {{{9, 4}, {
        0}}, {{7, 3}, {1}}, {{9, 4}, {1}}, {{5, 2}, {2}}, {{7, 3}, {2}}, {{8, 
        4}, {1}}, {{3, 1}, {3}}, {{5, 2}, {3}}, {{6, 3}, {2}}, {{8, 4}, {
        2}}, {{1, 0}, {4}}, {{3, 1}, {4}}, {{4, 2}, {3}}, {{6, 3}, {3}}, {{7, 
        4}, {2}}, {{1, 0}, {5}}, {{2, 1}, {4}}, {{4, 2}, {4}}, {{5, 3}, {
        3}}, {{7, 4}, {3}}, {{0, 0}, {5}}, {{2, 1}, {5}}, {{3, 2}, {4}}, {{5, 
        3}, {4}}, {{6, 4}, {3}}, {{0, 0}, {6}}, {{1, 1}, {5}}, {{3, 2}, {
        5}}, {{4, 3}, {4}}, {{6, 4}, {4}}, {{1, 1}, {6}}, {{2, 2}, {5}}, {{4, 
        3}, {5}}, {{5, 4}, {4}}, {{0, 1}, {6}}, {{2, 2}, {6}}, {{3, 3}, {
        5}}, {{5, 4}, {5}}, {{1, 2}, {6}}, {{3, 3}, {6}}, {{4, 4}, {5}}, {{2, 
        3}, {6}}, {{4, 4}, {6}}, {{3, 4}, {6}}}, {{{5, 0}, {0}}, {{4, 0}, {
        0}}, {{5, 0}, {1}}, {{3, 0}, {0}}, {{4, 0}, {1}}, {{5, 1}, {0}}, {{2, 
        0}, {0}}, {{3, 0}, {1}}, {{4, 1}, {0}}, {{5, 1}, {1}}, {{1, 0}, {
        0}}, {{2, 0}, {1}}, {{3, 1}, {0}}, {{4, 1}, {1}}, {{5, 2}, {0}}, {{1, 
        0}, {1}}, {{2, 1}, {0}}, {{3, 1}, {1}}, {{4, 2}, {0}}, {{5, 2}, {
        1}}, {{1, 1}, {0}}, {{2, 1}, {1}}, {{3, 2}, {0}}, {{4, 2}, {1}}, {{5, 
        3}, {0}}, {{1, 1}, {1}}, {{2, 2}, {0}}, {{3, 2}, {1}}, {{4, 3}, {
        0}}, {{5, 3}, {1}}, {{2, 2}, {1}}, {{3, 3}, {0}}, {{4, 3}, {1}}, {{5, 
        4}, {0}}, {{2, 3}, {0}}, {{3, 3}, {1}}, {{4, 4}, {0}}, {{5, 4}, {
        1}}, {{3, 4}, {0}}, {{4, 4}, {1}}, {{5, 5}, {0}}, {{4, 5}, {0}}, {{5, 
        5}, {1}}, {{5, 6}, {0}}}, {{0, 9}, {1, 7}, {1, 10}, {2, 5}, {2, 8}, {
      2, 8}, {3, 3}, {3, 6}, {3, 6}, {3, 9}, {4, 1}, {4, 4}, {4, 4}, {4, 7}, {
      4, 7}, {5, 2}, {5, 2}, {5, 5}, {5, 5}, {5, 8}, {6, 0}, {6, 3}, {6, 3}, {
      6, 6}, {6, 6}, {7, 1}, {7, 1}, {7, 4}, {7, 4}, {7, 7}, {8, 2}, {8, 2}, {
      8, 5}, {8, 5}, {9, 0}, {9, 3}, {9, 3}, {9, 6}, {10, 1}, {10, 4}, {10, 
      4}, {11, 2}, {11, 5}, {12, 3}}}, 
    Private`componentsEdgesAndnuc[{2, 0}, {2, 4}] = {{{2, 0, 0, 0, 0, 2, 2}, {
      1, 0, 1, 0, 0, 2, 3}, {1, 1, 0, 0, 0, 1, 3}, {0, 0, 2, 0, 0, 2, 4}, {0, 
      1, 1, 0, 0, 1, 4}, {0, 2, 0, 0, 0, 0, 
      4}}, {{{2, 2}, {0}}, {{1, 1}, {0}}, {{1, 2}, {0}}, {{0, 0}, {0}}, {{0, 
        1}, {0}}, {{0, 2}, {0}}}, {{{2, 2}, {2}}, {{2, 2}, {3}}, {{1, 2}, {
        3}}, {{2, 2}, {4}}, {{1, 2}, {4}}, {{0, 2}, {4}}}, {{{0, 0}, {0}}, {{
        0, 0}, {1}}, {{0, 1}, {0}}, {{0, 0}, {2}}, {{0, 1}, {1}}, {{0, 2}, {
        0}}}, {{2, 2}, {3, 3}, {4, 1}, {4, 4}, {5, 2}, {6, 0}}}, 
    Private`componentsEdgesAndnuc[{3, 2}, {5, 6}] = {CompressedData["
1:eJxtkVGOAjEMQ9N22jkHv3ucPcIeAO7/Q+hIsfZhqBQNJLVju7e/x++9R8TP
rnPX3PXMzKjTq992HbuyZq1q1p2jcM1w13fE/+n1HagsHDmH7RN2gfPa1zE7
q69es32HadG+A7gsTmrRPM3fAu7SMjA7Cycuelde7FPnjHcP1OkehFdmrXSO
ePcgzrTMFrSouvHSg+4oTx3mPoqX/ujB/XGXtKTluWru+sQx8bvbHWnxYtbS
IYyypj96cH/0MPGfehtw/r49Pj1Qp3ugTuGkk1rWl77OQs/f33XqnjKL+HwL
5cJ95PV95HScZtLyAkvCM/I=
      
      "], {{{5, 3}, {0}}, {{4, 3}, {1}}, {{4, 2}, {0}}, {{3, 3}, {2}}, {{3, 
        2}, {1}}, {{4, 3}, {0}}, {{3, 1}, {0}}, {{2, 2}, {2}}, {{3, 3}, {
        1}}, {{2, 1}, {1}}, {{3, 2}, {0}}, {{2, 0}, {0}}, {{2, 3}, {2}}, {{1, 
        1}, {2}}, {{2, 2}, {1}}, {{3, 3}, {0}}, {{1, 0}, {1}}, {{2, 1}, {
        0}}, {{1, 2}, {2}}, {{2, 3}, {1}}, {{0, 0}, {2}}, {{1, 1}, {1}}, {{2, 
        2}, {0}}, {{1, 0}, {0}}, {{1, 3}, {2}}, {{0, 1}, {2}}, {{1, 2}, {
        1}}, {{2, 3}, {0}}, {{0, 0}, {1}}, {{1, 1}, {0}}, {{0, 2}, {2}}, {{1, 
        3}, {1}}, {{0, 1}, {1}}, {{1, 2}, {0}}, {{0, 0}, {0}}, {{0, 3}, {
        2}}, {{0, 2}, {1}}, {{1, 3}, {0}}, {{0, 1}, {0}}, {{0, 3}, {1}}, {{0, 
        2}, {0}}, {{0, 3}, {0}}}, {{{7, 5}, {1}}, {{5, 4}, {2}}, {{7, 5}, {
        2}}, {{3, 3}, {3}}, {{5, 4}, {3}}, {{6, 5}, {2}}, {{7, 5}, {3}}, {{3, 
        3}, {4}}, {{4, 4}, {3}}, {{5, 4}, {4}}, {{6, 5}, {3}}, {{7, 5}, {
        4}}, {{2, 3}, {4}}, {{3, 3}, {5}}, {{4, 4}, {4}}, {{5, 5}, {3}}, {{5, 
        4}, {5}}, {{6, 5}, {4}}, {{2, 3}, {5}}, {{3, 4}, {4}}, {{3, 3}, {
        6}}, {{4, 4}, {5}}, {{5, 5}, {4}}, {{6, 5}, {5}}, {{1, 3}, {5}}, {{2, 
        3}, {6}}, {{3, 4}, {5}}, {{4, 5}, {4}}, {{4, 4}, {6}}, {{5, 5}, {
        5}}, {{1, 3}, {6}}, {{2, 4}, {5}}, {{3, 4}, {6}}, {{4, 5}, {5}}, {{5, 
        5}, {6}}, {{0, 3}, {6}}, {{2, 4}, {6}}, {{3, 5}, {5}}, {{4, 5}, {
        6}}, {{1, 4}, {6}}, {{3, 5}, {6}}, {{2, 5}, {6}}}, {{{2, 0}, {0}}, {{
        1, 0}, {0}}, {{2, 0}, {1}}, {{0, 0}, {0}}, {{1, 0}, {1}}, {{2, 1}, {
        0}}, {{2, 0}, {2}}, {{0, 0}, {1}}, {{1, 1}, {0}}, {{1, 0}, {2}}, {{2, 
        1}, {1}}, {{2, 0}, {3}}, {{0, 1}, {0}}, {{0, 0}, {2}}, {{1, 1}, {
        1}}, {{2, 2}, {0}}, {{1, 0}, {3}}, {{2, 1}, {2}}, {{0, 1}, {1}}, {{1, 
        2}, {0}}, {{0, 0}, {3}}, {{1, 1}, {2}}, {{2, 2}, {1}}, {{2, 1}, {
        3}}, {{0, 2}, {0}}, {{0, 1}, {2}}, {{1, 2}, {1}}, {{2, 3}, {0}}, {{1, 
        1}, {3}}, {{2, 2}, {2}}, {{0, 2}, {1}}, {{1, 3}, {0}}, {{1, 2}, {
        2}}, {{2, 3}, {1}}, {{2, 2}, {3}}, {{0, 3}, {0}}, {{1, 3}, {1}}, {{2, 
        4}, {0}}, {{2, 3}, {2}}, {{1, 4}, {0}}, {{2, 4}, {1}}, {{2, 5}, {
        0}}}, {{1, 7}, {2, 5}, {2, 8}, {3, 3}, {3, 6}, {3, 6}, {3, 9}, {4, 
      4}, {4, 4}, {4, 7}, {4, 7}, {4, 10}, {5, 2}, {5, 5}, {5, 5}, {5, 5}, {5,
       8}, {5, 8}, {6, 3}, {6, 3}, {6, 6}, {6, 6}, {6, 6}, {6, 9}, {7, 1}, {7,
       4}, {7, 4}, {7, 4}, {7, 7}, {7, 7}, {8, 2}, {8, 2}, {8, 5}, {8, 5}, {8,
       8}, {9, 0}, {9, 3}, {9, 3}, {9, 6}, {10, 1}, {10, 4}, {11, 2}}}, 
    Private`componentsEdgesAndnuc[{4, 3}, {1, 5}] = {CompressedData["
1:eJx1kVEKAzEIRDXJ0nOU3qhH6AHa+380bgIOvLV0QbJhHH2a++vzfDcze6y4
rThWzIjwde5oGZbad2m69xUD2pLC4PPURtZspaaXfqrZ4dv9OrSRvpH9yOmo
KRb5yDyzJlla4SSL57lZBrQBnz7VNPiizO7wRZmd+sx+5BTTLHvp0NWbLJVT
PuZF2Yv4OQM5FbPshTxm15mYI06yKDfK7HpzcpKFb8X52L/2MdQ0u/I5zijz
Nfi0P/bTqfrsd/zJd+TWXamOlX/5jry7/TJs7QS6PFcY
      
      "], {{{5, 3}, {1}}, {{5, 2}, {0}}, {{5, 4}, {1}}, {{4, 2}, {1}}, {{5, 
        3}, {0}}, {{4, 1}, {0}}, {{4, 3}, {1}}, {{5, 4}, {0}}, {{3, 1}, {
        1}}, {{4, 2}, {0}}, {{3, 0}, {0}}, {{4, 4}, {1}}, {{3, 2}, {1}}, {{4, 
        3}, {0}}, {{2, 0}, {1}}, {{3, 1}, {0}}, {{3, 3}, {1}}, {{4, 4}, {
        0}}, {{2, 1}, {1}}, {{3, 2}, {0}}, {{2, 0}, {0}}, {{2, 2}, {1}}, {{3, 
        3}, {0}}, {{1, 0}, {1}}, {{2, 1}, {0}}, {{3, 4}, {0}}, {{1, 1}, {
        1}}, {{2, 2}, {0}}, {{1, 0}, {0}}, {{2, 3}, {0}}, {{0, 0}, {1}}, {{1, 
        1}, {0}}, {{1, 2}, {0}}, {{0, 0}, {0}}, {{0, 1}, {0}}}, {{{2, 0}, {
        0}}, {{4, 1}, {0}}, {{1, 0}, {0}}, {{2, 0}, {1}}, {{3, 1}, {0}}, {{4, 
        1}, {1}}, {{1, 0}, {1}}, {{2, 1}, {0}}, {{2, 0}, {2}}, {{3, 1}, {
        1}}, {{4, 1}, {2}}, {{0, 0}, {1}}, {{1, 0}, {2}}, {{2, 1}, {1}}, {{2, 
        0}, {3}}, {{3, 1}, {2}}, {{0, 0}, {2}}, {{1, 1}, {1}}, {{1, 0}, {
        3}}, {{2, 1}, {2}}, {{3, 1}, {3}}, {{0, 0}, {3}}, {{1, 1}, {2}}, {{1, 
        0}, {4}}, {{2, 1}, {3}}, {{0, 1}, {2}}, {{0, 0}, {4}}, {{1, 1}, {
        3}}, {{2, 1}, {4}}, {{0, 1}, {3}}, {{0, 0}, {5}}, {{1, 1}, {4}}, {{0, 
        1}, {4}}, {{1, 1}, {5}}, {{0, 1}, {5}}}, {{{2, 0}, {1}}, {{3, 0}, {
        2}}, {{2, 1}, {0}}, {{2, 0}, {2}}, {{3, 1}, {1}}, {{3, 0}, {3}}, {{2, 
        1}, {1}}, {{3, 2}, {0}}, {{2, 0}, {3}}, {{3, 1}, {2}}, {{3, 0}, {
        4}}, {{2, 2}, {0}}, {{2, 1}, {2}}, {{3, 2}, {1}}, {{2, 0}, {4}}, {{3, 
        1}, {3}}, {{2, 2}, {1}}, {{3, 3}, {0}}, {{2, 1}, {3}}, {{3, 2}, {
        2}}, {{3, 1}, {4}}, {{2, 2}, {2}}, {{3, 3}, {1}}, {{2, 1}, {4}}, {{3, 
        2}, {3}}, {{3, 4}, {0}}, {{2, 2}, {3}}, {{3, 3}, {2}}, {{3, 2}, {
        4}}, {{3, 4}, {1}}, {{2, 2}, {4}}, {{3, 3}, {3}}, {{3, 4}, {2}}, {{3, 
        3}, {4}}, {{3, 4}, {3}}}, {{0, 3}, {0, 6}, {1, 1}, {1, 4}, {1, 4}, {1,
       7}, {2, 2}, {2, 2}, {2, 5}, {2, 5}, {2, 8}, {3, 0}, {3, 3}, {3, 3}, {3,
       6}, {3, 6}, {4, 1}, {4, 1}, {4, 4}, {4, 4}, {4, 7}, {5, 2}, {5, 2}, {5,
       5}, {5, 5}, {6, 0}, {6, 3}, {6, 3}, {6, 6}, {7, 1}, {7, 4}, {7, 4}, {8,
       2}, {8, 5}, {9, 3}}}, 
    Private`componentsEdgesAndnuc[{4, 4}, {4, 4}] = {CompressedData["
1:eJx1lQtuwyAQBTE4Sa/RK1XqBXqA9v5SYoolnjqdEEuI3+6yb/j4/evn47uW
Uj5HuY2yl7+P7fT7+LZRt1HOumLuGHN1jlX4n/VjzMXnrK+Yu4852r7Ndpv1
plzcT9wN/T5zYZ7xi4bk2eB3zDypIX7RFw0X+D2mBuqLX7RH3222K2rqYU5k
nWLblPT7XI/aE7Nrj1p55pI1d8Q8pj5yif+hvb0smEV79p3MyIV6i9reY58B
MiAz86T+1dlqsu8zz6Z4ZF01TtbkadbRnrNE1uRp1uTJ821+ddGnbUEs332y
Jk+zdiG7Tf6rN2WHfdc5iy9Zk6dZk2e4HDpnVzEwo7aYry9sN9lTF5mZp3mR
J5mZJ5kldtd52cszM3JZvRlsUxe1ck3fITPjmJmZD8f8//A70Mp/Nsx5Rwxy
oXb/D6i9qb/6z1kX95ZxuXe+b9wfaqc+a6e+9H3vGGf1Hlhf7F9pjr31UUNT
LOZJTUVta+C61sA8V7GSS9b3W0Uuzpdj5sj/8uoeUO+KwS82P33l
      
      "], {{{4, 4}, {4}}, {{4, 3}, {3}}, {{4, 2}, {2}}, {{4, 1}, {1}}, {{4, 
        0}, {0}}, {{3, 3}, {4}}, {{4, 4}, {3}}, {{3, 2}, {3}}, {{4, 3}, {
        2}}, {{3, 1}, {2}}, {{4, 2}, {1}}, {{3, 0}, {1}}, {{4, 1}, {0}}, {{2, 
        2}, {4}}, {{3, 3}, {3}}, {{4, 4}, {2}}, {{2, 1}, {3}}, {{3, 2}, {
        2}}, {{4, 3}, {1}}, {{2, 0}, {2}}, {{3, 1}, {1}}, {{4, 2}, {0}}, {{3, 
        0}, {0}}, {{3, 4}, {3}}, {{1, 1}, {4}}, {{2, 2}, {3}}, {{3, 3}, {
        2}}, {{4, 4}, {1}}, {{1, 0}, {3}}, {{2, 1}, {2}}, {{3, 2}, {1}}, {{4, 
        3}, {0}}, {{2, 0}, {1}}, {{3, 1}, {0}}, {{2, 3}, {3}}, {{3, 4}, {
        2}}, {{0, 0}, {4}}, {{1, 1}, {3}}, {{2, 2}, {2}}, {{3, 3}, {1}}, {{4, 
        4}, {0}}, {{1, 0}, {2}}, {{2, 1}, {1}}, {{3, 2}, {0}}, {{2, 0}, {
        0}}, {{1, 2}, {3}}, {{2, 3}, {2}}, {{3, 4}, {1}}, {{0, 0}, {3}}, {{1, 
        1}, {2}}, {{2, 2}, {1}}, {{3, 3}, {0}}, {{1, 0}, {1}}, {{2, 1}, {
        0}}, {{2, 4}, {2}}, {{0, 1}, {3}}, {{1, 2}, {2}}, {{2, 3}, {1}}, {{3, 
        4}, {0}}, {{0, 0}, {2}}, {{1, 1}, {1}}, {{2, 2}, {0}}, {{1, 0}, {
        0}}, {{1, 3}, {2}}, {{2, 4}, {1}}, {{0, 1}, {2}}, {{1, 2}, {1}}, {{2, 
        3}, {0}}, {{0, 0}, {1}}, {{1, 1}, {0}}, {{0, 2}, {2}}, {{1, 3}, {
        1}}, {{2, 4}, {0}}, {{0, 1}, {1}}, {{1, 2}, {0}}, {{0, 0}, {0}}, {{1, 
        4}, {1}}, {{0, 2}, {1}}, {{1, 3}, {0}}, {{0, 1}, {0}}, {{0, 3}, {
        1}}, {{1, 4}, {0}}, {{0, 2}, {0}}, {{0, 3}, {0}}, {{0, 4}, {0}}}, {{{
        0, 0}, {0}}, {{2, 1}, {0}}, {{4, 2}, {0}}, {{6, 3}, {0}}, {{8, 4}, {
        0}}, {{0, 0}, {1}}, {{1, 1}, {0}}, {{2, 1}, {1}}, {{3, 2}, {0}}, {{4, 
        2}, {1}}, {{5, 3}, {0}}, {{6, 3}, {1}}, {{7, 4}, {0}}, {{0, 0}, {
        2}}, {{1, 1}, {1}}, {{2, 2}, {0}}, {{2, 1}, {2}}, {{3, 2}, {1}}, {{4, 
        3}, {0}}, {{4, 2}, {2}}, {{5, 3}, {1}}, {{6, 4}, {0}}, {{7, 4}, {
        1}}, {{0, 1}, {1}}, {{0, 0}, {3}}, {{1, 1}, {2}}, {{2, 2}, {1}}, {{3, 
        3}, {0}}, {{2, 1}, {3}}, {{3, 2}, {2}}, {{4, 3}, {1}}, {{5, 4}, {
        0}}, {{5, 3}, {2}}, {{6, 4}, {1}}, {{0, 1}, {2}}, {{1, 2}, {1}}, {{0, 
        0}, {4}}, {{1, 1}, {3}}, {{2, 2}, {2}}, {{3, 3}, {1}}, {{4, 4}, {
        0}}, {{3, 2}, {3}}, {{4, 3}, {2}}, {{5, 4}, {1}}, {{6, 4}, {2}}, {{0, 
        1}, {3}}, {{1, 2}, {2}}, {{2, 3}, {1}}, {{1, 1}, {4}}, {{2, 2}, {
        3}}, {{3, 3}, {2}}, {{4, 4}, {1}}, {{4, 3}, {3}}, {{5, 4}, {2}}, {{0, 
        2}, {2}}, {{0, 1}, {4}}, {{1, 2}, {3}}, {{2, 3}, {2}}, {{3, 4}, {
        1}}, {{2, 2}, {4}}, {{3, 3}, {3}}, {{4, 4}, {2}}, {{5, 4}, {3}}, {{0, 
        2}, {3}}, {{1, 3}, {2}}, {{1, 2}, {4}}, {{2, 3}, {3}}, {{3, 4}, {
        2}}, {{3, 3}, {4}}, {{4, 4}, {3}}, {{0, 2}, {4}}, {{1, 3}, {3}}, {{2, 
        4}, {2}}, {{2, 3}, {4}}, {{3, 4}, {3}}, {{4, 4}, {4}}, {{0, 3}, {
        3}}, {{1, 3}, {4}}, {{2, 4}, {3}}, {{3, 4}, {4}}, {{0, 3}, {4}}, {{1, 
        4}, {3}}, {{2, 4}, {4}}, {{1, 4}, {4}}, {{0, 4}, {4}}}, {{{0, 0}, {
        0}}, {{1, 0}, {1}}, {{2, 0}, {2}}, {{3, 0}, {3}}, {{4, 0}, {4}}, {{0, 
        0}, {1}}, {{1, 1}, {0}}, {{1, 0}, {2}}, {{2, 1}, {1}}, {{2, 0}, {
        3}}, {{3, 1}, {2}}, {{3, 0}, {4}}, {{4, 1}, {3}}, {{0, 0}, {2}}, {{1, 
        1}, {1}}, {{2, 2}, {0}}, {{1, 0}, {3}}, {{2, 1}, {2}}, {{3, 2}, {
        1}}, {{2, 0}, {4}}, {{3, 1}, {3}}, {{4, 2}, {2}}, {{4, 1}, {4}}, {{1, 
        2}, {0}}, {{0, 0}, {3}}, {{1, 1}, {2}}, {{2, 2}, {1}}, {{3, 3}, {
        0}}, {{1, 0}, {4}}, {{2, 1}, {3}}, {{3, 2}, {2}}, {{4, 3}, {1}}, {{3, 
        1}, {4}}, {{4, 2}, {3}}, {{1, 2}, {1}}, {{2, 3}, {0}}, {{0, 0}, {
        4}}, {{1, 1}, {3}}, {{2, 2}, {2}}, {{3, 3}, {1}}, {{4, 4}, {0}}, {{2, 
        1}, {4}}, {{3, 2}, {3}}, {{4, 3}, {2}}, {{4, 2}, {4}}, {{1, 2}, {
        2}}, {{2, 3}, {1}}, {{3, 4}, {0}}, {{1, 1}, {4}}, {{2, 2}, {3}}, {{3, 
        3}, {2}}, {{4, 4}, {1}}, {{3, 2}, {4}}, {{4, 3}, {3}}, {{2, 4}, {
        0}}, {{1, 2}, {3}}, {{2, 3}, {2}}, {{3, 4}, {1}}, {{4, 5}, {0}}, {{2, 
        2}, {4}}, {{3, 3}, {3}}, {{4, 4}, {2}}, {{4, 3}, {4}}, {{2, 4}, {
        1}}, {{3, 5}, {0}}, {{2, 3}, {3}}, {{3, 4}, {2}}, {{4, 5}, {1}}, {{3, 
        3}, {4}}, {{4, 4}, {3}}, {{2, 4}, {2}}, {{3, 5}, {1}}, {{4, 6}, {
        0}}, {{3, 4}, {3}}, {{4, 5}, {2}}, {{4, 4}, {4}}, {{3, 6}, {0}}, {{3, 
        5}, {2}}, {{4, 6}, {1}}, {{4, 5}, {3}}, {{3, 6}, {1}}, {{4, 7}, {
        0}}, {{4, 6}, {2}}, {{4, 7}, {1}}, {{4, 8}, {0}}}, {{0, 0}, {0, 3}, {
      0, 6}, {0, 9}, {0, 12}, {1, 1}, {1, 1}, {1, 4}, {1, 4}, {1, 7}, {1, 
      7}, {1, 10}, {1, 10}, {2, 2}, {2, 2}, {2, 2}, {2, 5}, {2, 5}, {2, 5}, {
      2, 8}, {2, 8}, {2, 8}, {2, 11}, {3, 0}, {3, 3}, {3, 3}, {3, 3}, {3, 
      3}, {3, 6}, {3, 6}, {3, 6}, {3, 6}, {3, 9}, {3, 9}, {4, 1}, {4, 1}, {4, 
      4}, {4, 4}, {4, 4}, {4, 4}, {4, 4}, {4, 7}, {4, 7}, {4, 7}, {4, 10}, {5,
       2}, {5, 2}, {5, 2}, {5, 5}, {5, 5}, {5, 5}, {5, 5}, {5, 8}, {5, 8}, {6,
       0}, {6, 3}, {6, 3}, {6, 3}, {6, 3}, {6, 6}, {6, 6}, {6, 6}, {6, 9}, {7,
       1}, {7, 1}, {7, 4}, {7, 4}, {7, 4}, {7, 7}, {7, 7}, {8, 2}, {8, 2}, {8,
       2}, {8, 5}, {8, 5}, {8, 8}, {9, 0}, {9, 3}, {9, 3}, {9, 6}, {10, 1}, {
      10, 1}, {10, 4}, {11, 2}, {12, 0}}}, 
    Private`componentsEdgesAndnuc[{4, 5}, {4, 0}] = {{{0, 0, 4, 4, 1, 0, 0}, {
      0, 0, 4, 3, 2, 1, 0}, {0, 1, 3, 3, 2, 0, 0}, {0, 0, 4, 2, 3, 2, 0}, {0, 
      1, 3, 2, 3, 1, 0}, {0, 0, 4, 1, 4, 3, 0}, {0, 2, 2, 2, 3, 0, 0}, {0, 1, 
      3, 1, 4, 2, 0}, {0, 0, 4, 0, 5, 4, 0}, {0, 2, 2, 1, 4, 1, 0}, {0, 1, 3, 
      0, 5, 3, 0}, {0, 3, 1, 1, 4, 0, 0}, {0, 2, 2, 0, 5, 2, 0}, {0, 3, 1, 0, 
      5, 1, 0}, {0, 4, 0, 0, 5, 0, 
      0}}, {{{0, 0}, {4}}, {{0, 0}, {3}}, {{0, 1}, {3}}, {{0, 0}, {2}}, {{0, 
        1}, {2}}, {{0, 0}, {1}}, {{0, 2}, {2}}, {{0, 1}, {1}}, {{0, 0}, {
        0}}, {{0, 2}, {1}}, {{0, 1}, {0}}, {{0, 3}, {1}}, {{0, 2}, {0}}, {{0, 
        3}, {0}}, {{0, 4}, {0}}}, {{{0, 0}, {0}}, {{1, 1}, {0}}, {{0, 1}, {
        0}}, {{2, 2}, {0}}, {{1, 2}, {0}}, {{3, 3}, {0}}, {{0, 2}, {0}}, {{2, 
        3}, {0}}, {{4, 4}, {0}}, {{1, 3}, {0}}, {{3, 4}, {0}}, {{0, 3}, {
        0}}, {{2, 4}, {0}}, {{1, 4}, {0}}, {{0, 4}, {0}}}, {{{1, 1}, {4}}, {{
        2, 2}, {4}}, {{2, 3}, {3}}, {{3, 3}, {4}}, {{3, 4}, {3}}, {{4, 4}, {
        4}}, {{3, 5}, {2}}, {{4, 5}, {3}}, {{5, 5}, {4}}, {{4, 6}, {2}}, {{5, 
        6}, {3}}, {{4, 7}, {1}}, {{5, 7}, {2}}, {{5, 8}, {1}}, {{5, 9}, {
        0}}}, {{1, 4}, {2, 5}, {3, 3}, {3, 6}, {4, 4}, {4, 7}, {5, 2}, {5, 
      5}, {5, 8}, {6, 3}, {6, 6}, {7, 1}, {7, 4}, {8, 2}, {9, 0}}}, 
    Private`componentsEdgesAndnuc[{4, 5}, {6, 6}] = {CompressedData["
1:eJxtlwGSmzAMRZXgsCR7il6pR+gB2rP0vCV4Yeo38/hLZpgE25Kl/yRwfvz6
8/P3var+7tfHfs37tfXe96+a9uuYe9T/zzH33uduY3waNsyt+9wxfsy3/Xpq
7t8+N437w9+nfvexXxu20/h+jFgYI5ZbxEkss3y+RyyOEztyIM5FduuI0zlg
R36sfen3kV+L/PBRGq8xfh9zfcTi3MmzB4cmn9uIxev53oLRfKEZfuDXhi5T
nTXD5zvYLhd6kuNTPtehi/XE5xo18ZIGxGjNptATv+bcR5zWE7setdQutMbP
Q/bbiNNa43OLOpsvOFjr5EDu1OA09Gx15sB+76jP5YKRObBujfp8yb/Z8SFX
NDGHVmdG5pCMXE/o1EcOZoTPHnXd6js/M0p+xEPN34fWrc78uN+i5uf6ztb8
ki260Q/mZ0bJz4zQhVoxB+K86Z51Hp/qzAhtSjr6uWN+zj/5mSkx9pGf+bFf
j15hndmaX7I1v2SLZvSR2ZpfsjW/ZIvPRT7e0StPac2+ZkTujt+/k5M14NPq
zG8OG/NLtuaXbHPcbInP8ffoFc/36BX3UY9ecR/16BX6yPzMKPlhRx9hi27u
DfJyP5T0dA+438zPeyQ/90nyM6Pkl7qZnxklPzNKfuhCr5if90p+ZpT88Emv
mBFzS+TqmmeNGU2xjtxc16551y1+klE+r8yIfaxl6T7PRRXjrvmK2F3zVeec
qXlzsNbJwVqji+sO336XuT5du1fPg9TaeqbW1jO1tp6pNTlQn9baeqbW1jO1
tp7o0KMGP+p8RsOv7a2nNUs9r87R+PEzPPW0ZqmnNUs9rdnVeRab1My6PDTu
eEp22Picl7o499TFuacuxEKO1sW5py7OPc85zo//clOdGZlfnkH9XvaZihwy
P+eQ/zMcJ7G4R1mTcTqWjBOffjdZU2LJ/fx8zf3sM+2YI5YvKpgPKw==
      
      "], {{{6, 4}, {3}}, {{6, 3}, {2}}, {{6, 2}, {1}}, {{6, 1}, {0}}, {{5, 
        4}, {4}}, {{5, 3}, {3}}, {{6, 4}, {2}}, {{5, 2}, {2}}, {{6, 3}, {
        1}}, {{5, 1}, {1}}, {{6, 2}, {0}}, {{5, 0}, {0}}, {{4, 4}, {5}}, {{4, 
        3}, {4}}, {{5, 4}, {3}}, {{4, 2}, {3}}, {{5, 3}, {2}}, {{6, 4}, {
        1}}, {{4, 1}, {2}}, {{5, 2}, {1}}, {{6, 3}, {0}}, {{4, 0}, {1}}, {{5, 
        1}, {0}}, {{3, 3}, {5}}, {{4, 4}, {4}}, {{3, 2}, {4}}, {{4, 3}, {
        3}}, {{5, 4}, {2}}, {{3, 1}, {3}}, {{4, 2}, {2}}, {{5, 3}, {1}}, {{6, 
        4}, {0}}, {{3, 0}, {2}}, {{4, 1}, {1}}, {{5, 2}, {0}}, {{4, 0}, {
        0}}, {{3, 4}, {5}}, {{2, 2}, {5}}, {{3, 3}, {4}}, {{4, 4}, {3}}, {{2, 
        1}, {4}}, {{3, 2}, {3}}, {{4, 3}, {2}}, {{5, 4}, {1}}, {{2, 0}, {
        3}}, {{3, 1}, {2}}, {{4, 2}, {1}}, {{5, 3}, {0}}, {{3, 0}, {1}}, {{4, 
        1}, {0}}, {{2, 3}, {5}}, {{3, 4}, {4}}, {{1, 1}, {5}}, {{2, 2}, {
        4}}, {{3, 3}, {3}}, {{4, 4}, {2}}, {{1, 0}, {4}}, {{2, 1}, {3}}, {{3, 
        2}, {2}}, {{4, 3}, {1}}, {{5, 4}, {0}}, {{2, 0}, {2}}, {{3, 1}, {
        1}}, {{4, 2}, {0}}, {{3, 0}, {0}}, {{1, 2}, {5}}, {{2, 3}, {4}}, {{3, 
        4}, {3}}, {{0, 0}, {5}}, {{1, 1}, {4}}, {{2, 2}, {3}}, {{3, 3}, {
        2}}, {{4, 4}, {1}}, {{1, 0}, {3}}, {{2, 1}, {2}}, {{3, 2}, {1}}, {{4, 
        3}, {0}}, {{2, 0}, {1}}, {{3, 1}, {0}}, {{2, 4}, {4}}, {{0, 1}, {
        5}}, {{1, 2}, {4}}, {{2, 3}, {3}}, {{3, 4}, {2}}, {{0, 0}, {4}}, {{1, 
        1}, {3}}, {{2, 2}, {2}}, {{3, 3}, {1}}, {{4, 4}, {0}}, {{1, 0}, {
        2}}, {{2, 1}, {1}}, {{3, 2}, {0}}, {{2, 0}, {0}}, {{1, 3}, {4}}, {{2, 
        4}, {3}}, {{0, 1}, {4}}, {{1, 2}, {3}}, {{2, 3}, {2}}, {{3, 4}, {
        1}}, {{0, 0}, {3}}, {{1, 1}, {2}}, {{2, 2}, {1}}, {{3, 3}, {0}}, {{1, 
        0}, {1}}, {{2, 1}, {0}}, {{0, 2}, {4}}, {{1, 3}, {3}}, {{2, 4}, {
        2}}, {{0, 1}, {3}}, {{1, 2}, {2}}, {{2, 3}, {1}}, {{3, 4}, {0}}, {{0, 
        0}, {2}}, {{1, 1}, {1}}, {{2, 2}, {0}}, {{1, 0}, {0}}, {{1, 4}, {
        3}}, {{0, 2}, {3}}, {{1, 3}, {2}}, {{2, 4}, {1}}, {{0, 1}, {2}}, {{1, 
        2}, {1}}, {{2, 3}, {0}}, {{0, 0}, {1}}, {{1, 1}, {0}}, {{0, 3}, {
        3}}, {{1, 4}, {2}}, {{0, 2}, {2}}, {{1, 3}, {1}}, {{2, 4}, {0}}, {{0, 
        1}, {1}}, {{1, 2}, {0}}, {{0, 0}, {0}}, {{0, 3}, {2}}, {{1, 4}, {
        1}}, {{0, 2}, {1}}, {{1, 3}, {0}}, {{0, 1}, {0}}, {{0, 4}, {2}}, {{0, 
        3}, {1}}, {{1, 4}, {0}}, {{0, 2}, {0}}, {{0, 4}, {1}}, {{0, 3}, {
        0}}, {{0, 4}, {0}}}, {{{5, 3}, {0}}, {{7, 4}, {0}}, {{9, 5}, {0}}, {{
        11, 6}, {0}}, {{3, 2}, {1}}, {{5, 3}, {1}}, {{6, 4}, {0}}, {{7, 4}, {
        1}}, {{8, 5}, {0}}, {{9, 5}, {1}}, {{10, 6}, {0}}, {{11, 6}, {1}}, {{
        1, 1}, {2}}, {{3, 2}, {2}}, {{4, 3}, {1}}, {{5, 3}, {2}}, {{6, 4}, {
        1}}, {{7, 5}, {0}}, {{7, 4}, {2}}, {{8, 5}, {1}}, {{9, 6}, {0}}, {{9, 
        5}, {2}}, {{10, 6}, {1}}, {{1, 1}, {3}}, {{2, 2}, {2}}, {{3, 2}, {
        3}}, {{4, 3}, {2}}, {{5, 4}, {1}}, {{5, 3}, {3}}, {{6, 4}, {2}}, {{7, 
        5}, {1}}, {{8, 6}, {0}}, {{7, 4}, {3}}, {{8, 5}, {2}}, {{9, 6}, {
        1}}, {{10, 6}, {2}}, {{0, 1}, {3}}, {{1, 1}, {4}}, {{2, 2}, {3}}, {{3,
         3}, {2}}, {{3, 2}, {4}}, {{4, 3}, {3}}, {{5, 4}, {2}}, {{6, 5}, {
        1}}, {{5, 3}, {4}}, {{6, 4}, {3}}, {{7, 5}, {2}}, {{8, 6}, {1}}, {{8, 
        5}, {3}}, {{9, 6}, {2}}, {{0, 1}, {4}}, {{1, 2}, {3}}, {{1, 1}, {
        5}}, {{2, 2}, {4}}, {{3, 3}, {3}}, {{4, 4}, {2}}, {{3, 2}, {5}}, {{4, 
        3}, {4}}, {{5, 4}, {3}}, {{6, 5}, {2}}, {{7, 6}, {1}}, {{6, 4}, {
        4}}, {{7, 5}, {3}}, {{8, 6}, {2}}, {{9, 6}, {3}}, {{0, 1}, {5}}, {{1, 
        2}, {4}}, {{2, 3}, {3}}, {{1, 1}, {6}}, {{2, 2}, {5}}, {{3, 3}, {
        4}}, {{4, 4}, {3}}, {{5, 5}, {2}}, {{4, 3}, {5}}, {{5, 4}, {4}}, {{6, 
        5}, {3}}, {{7, 6}, {2}}, {{7, 5}, {4}}, {{8, 6}, {3}}, {{0, 2}, {
        4}}, {{0, 1}, {6}}, {{1, 2}, {5}}, {{2, 3}, {4}}, {{3, 4}, {3}}, {{2, 
        2}, {6}}, {{3, 3}, {5}}, {{4, 4}, {4}}, {{5, 5}, {3}}, {{6, 6}, {
        2}}, {{5, 4}, {5}}, {{6, 5}, {4}}, {{7, 6}, {3}}, {{8, 6}, {4}}, {{0, 
        2}, {5}}, {{1, 3}, {4}}, {{1, 2}, {6}}, {{2, 3}, {5}}, {{3, 4}, {
        4}}, {{4, 5}, {3}}, {{3, 3}, {6}}, {{4, 4}, {5}}, {{5, 5}, {4}}, {{6, 
        6}, {3}}, {{6, 5}, {5}}, {{7, 6}, {4}}, {{0, 2}, {6}}, {{1, 3}, {
        5}}, {{2, 4}, {4}}, {{2, 3}, {6}}, {{3, 4}, {5}}, {{4, 5}, {4}}, {{5, 
        6}, {3}}, {{4, 4}, {6}}, {{5, 5}, {5}}, {{6, 6}, {4}}, {{7, 6}, {
        5}}, {{0, 3}, {5}}, {{1, 3}, {6}}, {{2, 4}, {5}}, {{3, 5}, {4}}, {{3, 
        4}, {6}}, {{4, 5}, {5}}, {{5, 6}, {4}}, {{5, 5}, {6}}, {{6, 6}, {
        5}}, {{0, 3}, {6}}, {{1, 4}, {5}}, {{2, 4}, {6}}, {{3, 5}, {5}}, {{4, 
        6}, {4}}, {{4, 5}, {6}}, {{5, 6}, {5}}, {{6, 6}, {6}}, {{1, 4}, {
        6}}, {{2, 5}, {5}}, {{3, 5}, {6}}, {{4, 6}, {5}}, {{5, 6}, {6}}, {{0, 
        4}, {6}}, {{2, 5}, {6}}, {{3, 6}, {5}}, {{4, 6}, {6}}, {{1, 5}, {
        6}}, {{3, 6}, {6}}, {{2, 6}, {6}}}, {{{2, 0}, {0}}, {{3, 0}, {1}}, {{
        4, 0}, {2}}, {{5, 0}, {3}}, {{1, 0}, {0}}, {{2, 0}, {1}}, {{3, 1}, {
        0}}, {{3, 0}, {2}}, {{4, 1}, {1}}, {{4, 0}, {3}}, {{5, 1}, {2}}, {{5, 
        0}, {4}}, {{0, 0}, {0}}, {{1, 0}, {1}}, {{2, 1}, {0}}, {{2, 0}, {
        2}}, {{3, 1}, {1}}, {{4, 2}, {0}}, {{3, 0}, {3}}, {{4, 1}, {2}}, {{5, 
        2}, {1}}, {{4, 0}, {4}}, {{5, 1}, {3}}, {{0, 0}, {1}}, {{1, 1}, {
        0}}, {{1, 0}, {2}}, {{2, 1}, {1}}, {{3, 2}, {0}}, {{2, 0}, {3}}, {{3, 
        1}, {2}}, {{4, 2}, {1}}, {{5, 3}, {0}}, {{3, 0}, {4}}, {{4, 1}, {
        3}}, {{5, 2}, {2}}, {{5, 1}, {4}}, {{0, 1}, {0}}, {{0, 0}, {2}}, {{1, 
        1}, {1}}, {{2, 2}, {0}}, {{1, 0}, {3}}, {{2, 1}, {2}}, {{3, 2}, {
        1}}, {{4, 3}, {0}}, {{2, 0}, {4}}, {{3, 1}, {3}}, {{4, 2}, {2}}, {{5, 
        3}, {1}}, {{4, 1}, {4}}, {{5, 2}, {3}}, {{0, 1}, {1}}, {{1, 2}, {
        0}}, {{0, 0}, {3}}, {{1, 1}, {2}}, {{2, 2}, {1}}, {{3, 3}, {0}}, {{1, 
        0}, {4}}, {{2, 1}, {3}}, {{3, 2}, {2}}, {{4, 3}, {1}}, {{5, 4}, {
        0}}, {{3, 1}, {4}}, {{4, 2}, {3}}, {{5, 3}, {2}}, {{5, 2}, {4}}, {{0, 
        1}, {2}}, {{1, 2}, {1}}, {{2, 3}, {0}}, {{0, 0}, {4}}, {{1, 1}, {
        3}}, {{2, 2}, {2}}, {{3, 3}, {1}}, {{4, 4}, {0}}, {{2, 1}, {4}}, {{3, 
        2}, {3}}, {{4, 3}, {2}}, {{5, 4}, {1}}, {{4, 2}, {4}}, {{5, 3}, {
        3}}, {{1, 3}, {0}}, {{0, 1}, {3}}, {{1, 2}, {2}}, {{2, 3}, {1}}, {{3, 
        4}, {0}}, {{1, 1}, {4}}, {{2, 2}, {3}}, {{3, 3}, {2}}, {{4, 4}, {
        1}}, {{5, 5}, {0}}, {{3, 2}, {4}}, {{4, 3}, {3}}, {{5, 4}, {2}}, {{5, 
        3}, {4}}, {{1, 3}, {1}}, {{2, 4}, {0}}, {{1, 2}, {3}}, {{2, 3}, {
        2}}, {{3, 4}, {1}}, {{4, 5}, {0}}, {{2, 2}, {4}}, {{3, 3}, {3}}, {{4, 
        4}, {2}}, {{5, 5}, {1}}, {{4, 3}, {4}}, {{5, 4}, {3}}, {{1, 3}, {
        2}}, {{2, 4}, {1}}, {{3, 5}, {0}}, {{2, 3}, {3}}, {{3, 4}, {2}}, {{4, 
        5}, {1}}, {{5, 6}, {0}}, {{3, 3}, {4}}, {{4, 4}, {3}}, {{5, 5}, {
        2}}, {{5, 4}, {4}}, {{2, 5}, {0}}, {{2, 4}, {2}}, {{3, 5}, {1}}, {{4, 
        6}, {0}}, {{3, 4}, {3}}, {{4, 5}, {2}}, {{5, 6}, {1}}, {{4, 4}, {
        4}}, {{5, 5}, {3}}, {{2, 5}, {1}}, {{3, 6}, {0}}, {{3, 5}, {2}}, {{4, 
        6}, {1}}, {{5, 7}, {0}}, {{4, 5}, {3}}, {{5, 6}, {2}}, {{5, 5}, {
        4}}, {{3, 6}, {1}}, {{4, 7}, {0}}, {{4, 6}, {2}}, {{5, 7}, {1}}, {{5, 
        6}, {3}}, {{3, 7}, {0}}, {{4, 7}, {1}}, {{5, 8}, {0}}, {{5, 7}, {
        2}}, {{4, 8}, {0}}, {{5, 8}, {1}}, {{5, 9}, {0}}}, {{0, 5}, {0, 8}, {
      0, 11}, {0, 14}, {1, 3}, {1, 6}, {1, 6}, {1, 9}, {1, 9}, {1, 12}, {1, 
      12}, {1, 15}, {2, 1}, {2, 4}, {2, 4}, {2, 7}, {2, 7}, {2, 7}, {2, 10}, {
      2, 10}, {2, 10}, {2, 13}, {2, 13}, {3, 2}, {3, 2}, {3, 5}, {3, 5}, {3, 
      5}, {3, 8}, {3, 8}, {3, 8}, {3, 8}, {3, 11}, {3, 11}, {3, 11}, {3, 
      14}, {4, 0}, {4, 3}, {4, 3}, {4, 3}, {4, 6}, {4, 6}, {4, 6}, {4, 6}, {4,
       9}, {4, 9}, {4, 9}, {4, 9}, {4, 12}, {4, 12}, {5, 1}, {5, 1}, {5, 4}, {
      5, 4}, {5, 4}, {5, 4}, {5, 7}, {5, 7}, {5, 7}, {5, 7}, {5, 7}, {5, 
      10}, {5, 10}, {5, 10}, {5, 13}, {6, 2}, {6, 2}, {6, 2}, {6, 5}, {6, 
      5}, {6, 5}, {6, 5}, {6, 5}, {6, 8}, {6, 8}, {6, 8}, {6, 8}, {6, 11}, {6,
       11}, {7, 0}, {7, 3}, {7, 3}, {7, 3}, {7, 3}, {7, 6}, {7, 6}, {7, 6}, {
      7, 6}, {7, 6}, {7, 9}, {7, 9}, {7, 9}, {7, 12}, {8, 1}, {8, 1}, {8, 
      4}, {8, 4}, {8, 4}, {8, 4}, {8, 7}, {8, 7}, {8, 7}, {8, 7}, {8, 10}, {8,
       10}, {9, 2}, {9, 2}, {9, 2}, {9, 5}, {9, 5}, {9, 5}, {9, 5}, {9, 8}, {
      9, 8}, {9, 8}, {9, 11}, {10, 0}, {10, 3}, {10, 3}, {10, 3}, {10, 6}, {
      10, 6}, {10, 6}, {10, 9}, {10, 9}, {11, 1}, {11, 1}, {11, 4}, {11, 4}, {
      11, 4}, {11, 7}, {11, 7}, {11, 10}, {12, 2}, {12, 2}, {12, 5}, {12, 
      5}, {12, 8}, {13, 0}, {13, 3}, {13, 3}, {13, 6}, {14, 1}, {14, 4}, {15, 
      2}}}, Private`componentsEdgesAndnuc[{5, 1}, {7, 0}] = {{{0, 0, 5, 1, 0, 
      6, 0}, {0, 1, 4, 1, 0, 5, 0}, {0, 0, 5, 0, 1, 7, 0}, {0, 2, 3, 1, 0, 4, 
      0}, {0, 1, 4, 0, 1, 6, 0}, {0, 3, 2, 1, 0, 3, 0}, {0, 2, 3, 0, 1, 5, 
      0}, {0, 4, 1, 1, 0, 2, 0}, {0, 3, 2, 0, 1, 4, 0}, {0, 5, 0, 1, 0, 1, 
      0}, {0, 4, 1, 0, 1, 3, 0}, {0, 5, 0, 0, 1, 2, 
      0}}, {{{0, 0}, {1}}, {{0, 1}, {1}}, {{0, 0}, {0}}, {{0, 2}, {1}}, {{0, 
        1}, {0}}, {{0, 3}, {1}}, {{0, 2}, {0}}, {{0, 4}, {1}}, {{0, 3}, {
        0}}, {{0, 5}, {1}}, {{0, 4}, {0}}, {{0, 5}, {0}}}, {{{6, 6}, {0}}, {{
        5, 6}, {0}}, {{7, 7}, {0}}, {{4, 6}, {0}}, {{6, 7}, {0}}, {{3, 6}, {
        0}}, {{5, 7}, {0}}, {{2, 6}, {0}}, {{4, 7}, {0}}, {{1, 6}, {0}}, {{3, 
        7}, {0}}, {{2, 7}, {0}}}, {{{0, 0}, {5}}, {{0, 1}, {4}}, {{1, 1}, {
        5}}, {{0, 2}, {3}}, {{1, 2}, {4}}, {{0, 3}, {2}}, {{1, 3}, {3}}, {{0, 
        4}, {1}}, {{1, 4}, {2}}, {{0, 5}, {0}}, {{1, 5}, {1}}, {{1, 6}, {
        0}}}, {{0, 11}, {1, 9}, {1, 12}, {2, 7}, {2, 10}, {3, 5}, {3, 8}, {4, 
      3}, {4, 6}, {5, 1}, {5, 4}, {6, 2}}}, 
    Private`componentsEdgesAndnuc[{6, 1}, {6, 7}] = {CompressedData["
1:eJx9leFtxSAMhA/wgzm6SIfoCB2g3f9X30PilC+ntkgoCfjsOxuTt8/vj68u
6f0115k/r6Ez2lnbY+oa7Twf530eXAtcOzZeI66HT9tM4LbPHj474pJLnb06
3z3ijeDCeMbteCPijbPXdNdQ8Ok146zPvkZwqeBJLuPMzaWwt4AjRsA4DrUX
Jvmb54C/0p2n94WneZrH5sm8rvDLmM4lNRhXgWHOCj6b7vqdzzyTfp+666MG
224NE3tL91p4XbrOSsekvtROfawBORd4Wjv1Ob/S1R/Wt+Kb+uzTeaMG83Qs
43jeibU++/SkPsZnHQo8bUs73gOsw9TV88RkjMy375bkb9sH7FiHAZ7sX3Mm
t9S6dK/rX3eMsN7hh/1rbvbJHvX3hB1zw1znfSfgfIZ/u7Mr1nlXZ084Z9JV
D8ZLLoJNcmG89Encf/+kvfcEd84hsw==
      
      "], {{{7, 6}, {0}}, {{6, 6}, {1}}, {{6, 5}, {0}}, {{5, 5}, {1}}, {{6, 
        6}, {0}}, {{5, 4}, {0}}, {{5, 6}, {1}}, {{4, 4}, {1}}, {{5, 5}, {
        0}}, {{4, 3}, {0}}, {{4, 5}, {1}}, {{5, 6}, {0}}, {{3, 3}, {1}}, {{4, 
        4}, {0}}, {{3, 2}, {0}}, {{4, 6}, {1}}, {{3, 4}, {1}}, {{4, 5}, {
        0}}, {{2, 2}, {1}}, {{3, 3}, {0}}, {{2, 1}, {0}}, {{3, 5}, {1}}, {{4, 
        6}, {0}}, {{2, 3}, {1}}, {{3, 4}, {0}}, {{1, 1}, {1}}, {{2, 2}, {
        0}}, {{1, 0}, {0}}, {{3, 6}, {1}}, {{2, 4}, {1}}, {{3, 5}, {0}}, {{1, 
        2}, {1}}, {{2, 3}, {0}}, {{0, 0}, {1}}, {{1, 1}, {0}}, {{2, 5}, {
        1}}, {{3, 6}, {0}}, {{1, 3}, {1}}, {{2, 4}, {0}}, {{0, 1}, {1}}, {{1, 
        2}, {0}}, {{0, 0}, {0}}, {{2, 6}, {1}}, {{1, 4}, {1}}, {{2, 5}, {
        0}}, {{0, 2}, {1}}, {{1, 3}, {0}}, {{0, 1}, {0}}, {{1, 5}, {1}}, {{2, 
        6}, {0}}, {{0, 3}, {1}}, {{1, 4}, {0}}, {{0, 2}, {0}}, {{1, 6}, {
        1}}, {{0, 4}, {1}}, {{1, 5}, {0}}, {{0, 3}, {0}}, {{0, 5}, {1}}, {{1, 
        6}, {0}}, {{0, 4}, {0}}, {{0, 5}, {0}}, {{0, 6}, {0}}}, {{{7, 6}, {
        0}}, {{5, 5}, {1}}, {{7, 6}, {1}}, {{5, 5}, {2}}, {{6, 6}, {1}}, {{7, 
        6}, {2}}, {{4, 5}, {2}}, {{5, 5}, {3}}, {{6, 6}, {2}}, {{7, 6}, {
        3}}, {{4, 5}, {3}}, {{5, 6}, {2}}, {{5, 5}, {4}}, {{6, 6}, {3}}, {{7, 
        6}, {4}}, {{3, 5}, {3}}, {{4, 5}, {4}}, {{5, 6}, {3}}, {{5, 5}, {
        5}}, {{6, 6}, {4}}, {{7, 6}, {5}}, {{3, 5}, {4}}, {{4, 6}, {3}}, {{4, 
        5}, {5}}, {{5, 6}, {4}}, {{5, 5}, {6}}, {{6, 6}, {5}}, {{7, 6}, {
        6}}, {{2, 5}, {4}}, {{3, 5}, {5}}, {{4, 6}, {4}}, {{4, 5}, {6}}, {{5, 
        6}, {5}}, {{5, 5}, {7}}, {{6, 6}, {6}}, {{2, 5}, {5}}, {{3, 6}, {
        4}}, {{3, 5}, {6}}, {{4, 6}, {5}}, {{4, 5}, {7}}, {{5, 6}, {6}}, {{6, 
        6}, {7}}, {{1, 5}, {5}}, {{2, 5}, {6}}, {{3, 6}, {5}}, {{3, 5}, {
        7}}, {{4, 6}, {6}}, {{5, 6}, {7}}, {{1, 5}, {6}}, {{2, 6}, {5}}, {{2, 
        5}, {7}}, {{3, 6}, {6}}, {{4, 6}, {7}}, {{0, 5}, {6}}, {{1, 5}, {
        7}}, {{2, 6}, {6}}, {{3, 6}, {7}}, {{0, 5}, {7}}, {{1, 6}, {6}}, {{2, 
        6}, {7}}, {{1, 6}, {7}}, {{0, 6}, {7}}}, {{{1, 0}, {0}}, {{0, 0}, {
        0}}, {{1, 0}, {1}}, {{0, 0}, {1}}, {{1, 1}, {0}}, {{1, 0}, {2}}, {{0, 
        1}, {0}}, {{0, 0}, {2}}, {{1, 1}, {1}}, {{1, 0}, {3}}, {{0, 1}, {
        1}}, {{1, 2}, {0}}, {{0, 0}, {3}}, {{1, 1}, {2}}, {{1, 0}, {4}}, {{0, 
        2}, {0}}, {{0, 1}, {2}}, {{1, 2}, {1}}, {{0, 0}, {4}}, {{1, 1}, {
        3}}, {{1, 0}, {5}}, {{0, 2}, {1}}, {{1, 3}, {0}}, {{0, 1}, {3}}, {{1, 
        2}, {2}}, {{0, 0}, {5}}, {{1, 1}, {4}}, {{1, 0}, {6}}, {{0, 3}, {
        0}}, {{0, 2}, {2}}, {{1, 3}, {1}}, {{0, 1}, {4}}, {{1, 2}, {3}}, {{0, 
        0}, {6}}, {{1, 1}, {5}}, {{0, 3}, {1}}, {{1, 4}, {0}}, {{0, 2}, {
        3}}, {{1, 3}, {2}}, {{0, 1}, {5}}, {{1, 2}, {4}}, {{1, 1}, {6}}, {{0, 
        4}, {0}}, {{0, 3}, {2}}, {{1, 4}, {1}}, {{0, 2}, {4}}, {{1, 3}, {
        3}}, {{1, 2}, {5}}, {{0, 4}, {1}}, {{1, 5}, {0}}, {{0, 3}, {3}}, {{1, 
        4}, {2}}, {{1, 3}, {4}}, {{0, 5}, {0}}, {{0, 4}, {2}}, {{1, 5}, {
        1}}, {{1, 4}, {3}}, {{0, 5}, {1}}, {{1, 6}, {0}}, {{1, 5}, {2}}, {{1, 
        6}, {1}}, {{1, 7}, {0}}}, {{0, 7}, {1, 5}, {1, 8}, {2, 6}, {2, 6}, {2,
       9}, {3, 4}, {3, 7}, {3, 7}, {3, 10}, {4, 5}, {4, 5}, {4, 8}, {4, 8}, {
      4, 11}, {5, 3}, {5, 6}, {5, 6}, {5, 9}, {5, 9}, {5, 12}, {6, 4}, {6, 
      4}, {6, 7}, {6, 7}, {6, 10}, {6, 10}, {6, 13}, {7, 2}, {7, 5}, {7, 5}, {
      7, 8}, {7, 8}, {7, 11}, {7, 11}, {8, 3}, {8, 3}, {8, 6}, {8, 6}, {8, 
      9}, {8, 9}, {8, 12}, {9, 1}, {9, 4}, {9, 4}, {9, 7}, {9, 7}, {9, 10}, {
      10, 2}, {10, 2}, {10, 5}, {10, 5}, {10, 8}, {11, 0}, {11, 3}, {11, 3}, {
      11, 6}, {12, 1}, {12, 1}, {12, 4}, {13, 2}, {14, 0}}}, 
    Private`componentsEdgesAndnuc[{6, 3}, {4, 4}] = {CompressedData["
1:eJxtlttthTAQRNdguHWkpXykgBSQ9P8RuKB4pMMBJGTwPrwzOzZ8fP9+/kxV
9XXcr+Pu9X+dc/N4bmM8bftxzcPe4HPatsPWx/xpX2D7O2x5n8dasTXlKvhl
ZC1NdaaWCf77qIV1Ji4YEtMRt406iSFxwRffFc8nPr6/tC75DA5in/AcXOGH
2JmHfchIXuw/DeyLeInPrv71unOWdRfk3AZ2cpacm/q+IueEHMHNd/Y98+ST
nJlP+oS7GrWRz7muXE+KJWbyaa7jk7k2OFsf8LAP5Np9SE76bdLZijhrIXWQ
6yd7fMi19zi5dh/cD/Yhuby317r2ode1R9Yve+R59igja9ilz173PiQua/vm
vnzigzymVvKYq9VVg8TEeJ6JPsNYF+eyXuZyUYPc11VXbVGfqYt8JscuDS6I
9VmVZ/eM2jDPT723P/VLvVh/1Ivz+fvCPlEv1FM4Iy/UIbGWeC3E+awnv1V3
nZMXc2YeyQuxmxdiZ33sbUeczxiuS81Zk1zbZ8TT94waItfUYeov+D/tAZ8b
s/ya4smLv4HE59HfieThecB/pTfqJ1ZC
      
      "], {{{4, 4}, {3}}, {{4, 3}, {2}}, {{4, 2}, {1}}, {{4, 1}, {0}}, {{4, 
        5}, {3}}, {{3, 3}, {3}}, {{4, 4}, {2}}, {{3, 2}, {2}}, {{4, 3}, {
        1}}, {{3, 1}, {1}}, {{4, 2}, {0}}, {{3, 0}, {0}}, {{3, 4}, {3}}, {{4, 
        5}, {2}}, {{2, 2}, {3}}, {{3, 3}, {2}}, {{4, 4}, {1}}, {{2, 1}, {
        2}}, {{3, 2}, {1}}, {{4, 3}, {0}}, {{2, 0}, {1}}, {{3, 1}, {0}}, {{4, 
        6}, {2}}, {{2, 3}, {3}}, {{3, 4}, {2}}, {{4, 5}, {1}}, {{1, 1}, {
        3}}, {{2, 2}, {2}}, {{3, 3}, {1}}, {{4, 4}, {0}}, {{1, 0}, {2}}, {{2, 
        1}, {1}}, {{3, 2}, {0}}, {{2, 0}, {0}}, {{3, 5}, {2}}, {{4, 6}, {
        1}}, {{1, 2}, {3}}, {{2, 3}, {2}}, {{3, 4}, {1}}, {{4, 5}, {0}}, {{0, 
        0}, {3}}, {{1, 1}, {2}}, {{2, 2}, {1}}, {{3, 3}, {0}}, {{1, 0}, {
        1}}, {{2, 1}, {0}}, {{2, 4}, {2}}, {{3, 5}, {1}}, {{4, 6}, {0}}, {{0, 
        1}, {3}}, {{1, 2}, {2}}, {{2, 3}, {1}}, {{3, 4}, {0}}, {{0, 0}, {
        2}}, {{1, 1}, {1}}, {{2, 2}, {0}}, {{1, 0}, {0}}, {{3, 6}, {1}}, {{1, 
        3}, {2}}, {{2, 4}, {1}}, {{3, 5}, {0}}, {{0, 1}, {2}}, {{1, 2}, {
        1}}, {{2, 3}, {0}}, {{0, 0}, {1}}, {{1, 1}, {0}}, {{2, 5}, {1}}, {{3, 
        6}, {0}}, {{0, 2}, {2}}, {{1, 3}, {1}}, {{2, 4}, {0}}, {{0, 1}, {
        1}}, {{1, 2}, {0}}, {{0, 0}, {0}}, {{1, 4}, {1}}, {{2, 5}, {0}}, {{0, 
        2}, {1}}, {{1, 3}, {0}}, {{0, 1}, {0}}, {{2, 6}, {0}}, {{0, 3}, {
        1}}, {{1, 4}, {0}}, {{0, 2}, {0}}, {{1, 5}, {0}}, {{0, 3}, {0}}, {{0, 
        4}, {0}}}, {{{1, 1}, {0}}, {{3, 2}, {0}}, {{5, 3}, {0}}, {{7, 4}, {
        0}}, {{0, 1}, {0}}, {{1, 1}, {1}}, {{2, 2}, {0}}, {{3, 2}, {1}}, {{4, 
        3}, {0}}, {{5, 3}, {1}}, {{6, 4}, {0}}, {{7, 4}, {1}}, {{0, 1}, {
        1}}, {{1, 2}, {0}}, {{1, 1}, {2}}, {{2, 2}, {1}}, {{3, 3}, {0}}, {{3, 
        2}, {2}}, {{4, 3}, {1}}, {{5, 4}, {0}}, {{5, 3}, {2}}, {{6, 4}, {
        1}}, {{0, 2}, {0}}, {{0, 1}, {2}}, {{1, 2}, {1}}, {{2, 3}, {0}}, {{1, 
        1}, {3}}, {{2, 2}, {2}}, {{3, 3}, {1}}, {{4, 4}, {0}}, {{3, 2}, {
        3}}, {{4, 3}, {2}}, {{5, 4}, {1}}, {{6, 4}, {2}}, {{0, 2}, {1}}, {{1, 
        3}, {0}}, {{0, 1}, {3}}, {{1, 2}, {2}}, {{2, 3}, {1}}, {{3, 4}, {
        0}}, {{1, 1}, {4}}, {{2, 2}, {3}}, {{3, 3}, {2}}, {{4, 4}, {1}}, {{4, 
        3}, {3}}, {{5, 4}, {2}}, {{0, 2}, {2}}, {{1, 3}, {1}}, {{2, 4}, {
        0}}, {{0, 1}, {4}}, {{1, 2}, {3}}, {{2, 3}, {2}}, {{3, 4}, {1}}, {{2, 
        2}, {4}}, {{3, 3}, {3}}, {{4, 4}, {2}}, {{5, 4}, {3}}, {{0, 3}, {
        1}}, {{0, 2}, {3}}, {{1, 3}, {2}}, {{2, 4}, {1}}, {{1, 2}, {4}}, {{2, 
        3}, {3}}, {{3, 4}, {2}}, {{3, 3}, {4}}, {{4, 4}, {3}}, {{0, 3}, {
        2}}, {{1, 4}, {1}}, {{0, 2}, {4}}, {{1, 3}, {3}}, {{2, 4}, {2}}, {{2, 
        3}, {4}}, {{3, 4}, {3}}, {{4, 4}, {4}}, {{0, 3}, {3}}, {{1, 4}, {
        2}}, {{1, 3}, {4}}, {{2, 4}, {3}}, {{3, 4}, {4}}, {{0, 4}, {2}}, {{0, 
        3}, {4}}, {{1, 4}, {3}}, {{2, 4}, {4}}, {{0, 4}, {3}}, {{1, 4}, {
        4}}, {{0, 4}, {4}}}, {{{0, 0}, {2}}, {{1, 0}, {3}}, {{2, 0}, {4}}, {{
        3, 0}, {5}}, {{0, 1}, {1}}, {{0, 0}, {3}}, {{1, 1}, {2}}, {{1, 0}, {
        4}}, {{2, 1}, {3}}, {{2, 0}, {5}}, {{3, 1}, {4}}, {{3, 0}, {6}}, {{0, 
        1}, {2}}, {{1, 2}, {1}}, {{0, 0}, {4}}, {{1, 1}, {3}}, {{2, 2}, {
        2}}, {{1, 0}, {5}}, {{2, 1}, {4}}, {{3, 2}, {3}}, {{2, 0}, {6}}, {{3, 
        1}, {5}}, {{1, 3}, {0}}, {{0, 1}, {3}}, {{1, 2}, {2}}, {{2, 3}, {
        1}}, {{0, 0}, {5}}, {{1, 1}, {4}}, {{2, 2}, {3}}, {{3, 3}, {2}}, {{1, 
        0}, {6}}, {{2, 1}, {5}}, {{3, 2}, {4}}, {{3, 1}, {6}}, {{1, 3}, {
        1}}, {{2, 4}, {0}}, {{0, 1}, {4}}, {{1, 2}, {3}}, {{2, 3}, {2}}, {{3, 
        4}, {1}}, {{0, 0}, {6}}, {{1, 1}, {5}}, {{2, 2}, {4}}, {{3, 3}, {
        3}}, {{2, 1}, {6}}, {{3, 2}, {5}}, {{1, 3}, {2}}, {{2, 4}, {1}}, {{3, 
        5}, {0}}, {{0, 1}, {5}}, {{1, 2}, {4}}, {{2, 3}, {3}}, {{3, 4}, {
        2}}, {{1, 1}, {6}}, {{2, 2}, {5}}, {{3, 3}, {4}}, {{3, 2}, {6}}, {{2, 
        5}, {0}}, {{1, 3}, {3}}, {{2, 4}, {2}}, {{3, 5}, {1}}, {{1, 2}, {
        5}}, {{2, 3}, {4}}, {{3, 4}, {3}}, {{2, 2}, {6}}, {{3, 3}, {5}}, {{2, 
        5}, {1}}, {{3, 6}, {0}}, {{1, 3}, {4}}, {{2, 4}, {3}}, {{3, 5}, {
        2}}, {{2, 3}, {5}}, {{3, 4}, {4}}, {{3, 3}, {6}}, {{2, 5}, {2}}, {{3, 
        6}, {1}}, {{2, 4}, {4}}, {{3, 5}, {3}}, {{3, 4}, {5}}, {{3, 7}, {
        0}}, {{2, 5}, {3}}, {{3, 6}, {2}}, {{3, 5}, {4}}, {{3, 7}, {1}}, {{3, 
        6}, {3}}, {{3, 7}, {2}}}, {{0, 3}, {0, 6}, {0, 9}, {0, 12}, {1, 1}, {
      1, 4}, {1, 4}, {1, 7}, {1, 7}, {1, 10}, {1, 10}, {1, 13}, {2, 2}, {2, 
      2}, {2, 5}, {2, 5}, {2, 5}, {2, 8}, {2, 8}, {2, 8}, {2, 11}, {2, 11}, {
      3, 0}, {3, 3}, {3, 3}, {3, 3}, {3, 6}, {3, 6}, {3, 6}, {3, 6}, {3, 9}, {
      3, 9}, {3, 9}, {3, 12}, {4, 1}, {4, 1}, {4, 4}, {4, 4}, {4, 4}, {4, 
      4}, {4, 7}, {4, 7}, {4, 7}, {4, 7}, {4, 10}, {4, 10}, {5, 2}, {5, 2}, {
      5, 2}, {5, 5}, {5, 5}, {5, 5}, {5, 5}, {5, 8}, {5, 8}, {5, 8}, {5, 
      11}, {6, 0}, {6, 3}, {6, 3}, {6, 3}, {6, 6}, {6, 6}, {6, 6}, {6, 9}, {6,
       9}, {7, 1}, {7, 1}, {7, 4}, {7, 4}, {7, 4}, {7, 7}, {7, 7}, {7, 10}, {
      8, 2}, {8, 2}, {8, 5}, {8, 5}, {8, 8}, {9, 0}, {9, 3}, {9, 3}, {9, 6}, {
      10, 1}, {10, 4}, {11, 2}}}, 
    Private`componentsEdgesAndnuc[{7, 0}, {0, 5}] = {{{5, 0, 2, 0, 0, 0, 0}, {
      4, 0, 3, 0, 0, 0, 1}, {3, 0, 4, 0, 0, 0, 2}, {2, 0, 5, 0, 0, 0, 3}, {1, 
      0, 6, 0, 0, 0, 4}, {0, 0, 7, 0, 0, 0, 
      5}}, {{{5, 5}, {0}}, {{4, 4}, {0}}, {{3, 3}, {0}}, {{2, 2}, {0}}, {{1, 
        1}, {0}}, {{0, 0}, {0}}}, {{{0, 0}, {0}}, {{0, 0}, {1}}, {{0, 0}, {
        2}}, {{0, 0}, {3}}, {{0, 0}, {4}}, {{0, 0}, {5}}}, {{{0, 0}, {2}}, {{
        0, 0}, {3}}, {{0, 0}, {4}}, {{0, 0}, {5}}, {{0, 0}, {6}}, {{0, 0}, {
        7}}}, {{0, 2}, {1, 3}, {2, 4}, {3, 5}, {4, 6}, {5, 7}}}, 
    Private`componentsEdgesAndnuc[{7, 6}, {7, 7}] = {CompressedData["
1:eJx1molxW0cQBQeAeFNBOAdF4hAcgJS/icP45e1SowGhigXw7+zsHP0GS9l/
/fPr75/7mfmxm3mZ/394Pa/33Xrf1i7X1/b703p+0Nr5urb5+nb92S8b1k7X
tcOyP+ic7f14XWPP9v6mta/rGmdt7x9a+/e6Rozb+/cHcfvzLvnhd699l5WD
82MfuTtW9p1Xfs6dfdSF3B3zaeXuurCPmnHWq/YdV11cM/ZRT2r2rn1fq2au
J/uoNbaf+rzV+kW/f1d9d3rOC/+zYnQf+rv70B5RTzjbbC+rLu4RPi9h8Nvc
949aP8nnedXM/cPnOew+z31vOetFPk+rnu4tPk9h/nXu+05t3uTzuPrnvuPz
GK28zz0Ts2w/5PNr9dZM4PMrGvtMz6yx0T6YsB3ambnVAT0xL2aivJiJ8kKt
OWd7v6zczQvnXaJb3s2S7csSe5513nn1wSyxH87MUjkzS+WM2r/qvNPqkTnj
PBg0Z2XQnJXBWbbvOu+4eDGDnAefZrB84vNDdjDI2ufc6tcMTPpRHssgfaB+
Bz0vV+bTDJZPM1g+zWD5ZC++NrvLqov5JBbYNZ9l13yWXfNZdqkb8W0+zqt/
Zpfz4drslmuzW67NbrmeZcus2+xPiwlzTSwwb67LvLku85zHjDTXZrdcs48Z
Sc1H/Zu5nU+edaMcdvKxk61/N7vl2r33PeZpbnmkZ5xtrsu8uS7zh9j0O92+
zTwxPMvXZdXTzBMnejBP1cMhe6wHM189mPnqYZYts3WzPy8mrAfORCvWQ7Vi
PVQr1kO1QizMZOvBzFcPZr56wOe7fMA8ax9z22PP1pFPWLOdZ6xn66hmf2Lc
ejDztTXz1cM+vtzT/k1grVgP1Yr1UK1YD9WK9VCtWA/VCvG+yP6yemStkAM6
slaqI2ulOrJWqiNrpToiTma5tWI9VCvWQ7ViPVQrnMcstx7MfPXAPmY53Hju
ztz2epfPZb5+2lP30f56X7EezHz1cMhP7zqO3XrgHOc5q/bm8WVutWI9VCvW
Q7ViPVQrZdNace2qFWIiRuuh/FoPrlX14D3Vg5mvHoiFeW3mzXWZN9dlHp/M
a3PN2rv2ud7m8dG8HMVitsxkOT/ED2f47skzZqmZd5/Mnuduz/bc7Yw3T/6O
cT36NybnVg/Us888W/dzrwczXz04xurBzFcPZr564Fy4MvPmusyb6zJvrss8
5zF3zbXZLdfsY+76Lmo+y67tfHf1jMS3ue6dpNx7zvRe0jujGfZc45nnoGdk
7T0jdznHM5Jce58112a3XFMP8zfzu5/UoOyaz7Lrmpdd81l28Q2P5tMMlk8z
WD7xyYw0g6y9KW7X8pEed3PPoxn0Xj/r9yX1fMRV+TSD5dMM1o+ZKp/kXmY9
lzyzrA3fw3qvIYbyaQbLJ7HAFS/PJb4Dq2HOKoPmrAyyH8bNmVkqZ+zzzOq9
feTTsTtPc2aWyplZKme1n/nNhxkoZ2apnNmmnJmlckZerjMsmZey5LzKknkp
S5wHq7w8J/y3OPZmorxg4+/sS+bE69xy5x7jx0zYzpy4fsT96H7iWfDorlVe
zER5IYfOKvuw3sue9U48ZqK8cB7rk3yIr0y472UCn/jlZd36To/96DkceEab
KffMn9vbMjxad0/aW9e1vfU57S3x+TuT/rlH7Z971P7hk3qTl7ViHe3mViuP
7uiuNXr0HZTYedZ7DX7cI+fSHrkP7RGxdE6bazP/aBa3R/iEefIyu+baOVPr
/psRa2b36Q/7Xc9qxvV0jVpP16z1dM3weZh7HbRmrgs5OVZy93/HdG/nQe7+
3Nwf1YPcnV9zd37EaT7IgX3ulXNxDo6zOThO9nkGE4u1U601Fts1Fp9Xn/7s
/0/CPnn2H7dU2hA=
      
      "], {{{7, 7}, {6}}, {{7, 6}, {5}}, {{7, 5}, {4}}, {{7, 4}, {3}}, {{7, 
        3}, {2}}, {{7, 2}, {1}}, {{7, 1}, {0}}, {{6, 6}, {6}}, {{7, 7}, {
        5}}, {{6, 5}, {5}}, {{7, 6}, {4}}, {{6, 4}, {4}}, {{7, 5}, {3}}, {{6, 
        3}, {3}}, {{7, 4}, {2}}, {{6, 2}, {2}}, {{7, 3}, {1}}, {{6, 1}, {
        1}}, {{7, 2}, {0}}, {{6, 0}, {0}}, {{6, 7}, {6}}, {{5, 5}, {6}}, {{6, 
        6}, {5}}, {{7, 7}, {4}}, {{5, 4}, {5}}, {{6, 5}, {4}}, {{7, 6}, {
        3}}, {{5, 3}, {4}}, {{6, 4}, {3}}, {{7, 5}, {2}}, {{5, 2}, {3}}, {{6, 
        3}, {2}}, {{7, 4}, {1}}, {{5, 1}, {2}}, {{6, 2}, {1}}, {{7, 3}, {
        0}}, {{5, 0}, {1}}, {{6, 1}, {0}}, {{5, 6}, {6}}, {{6, 7}, {5}}, {{4, 
        4}, {6}}, {{5, 5}, {5}}, {{6, 6}, {4}}, {{7, 7}, {3}}, {{4, 3}, {
        5}}, {{5, 4}, {4}}, {{6, 5}, {3}}, {{7, 6}, {2}}, {{4, 2}, {4}}, {{5, 
        3}, {3}}, {{6, 4}, {2}}, {{7, 5}, {1}}, {{4, 1}, {3}}, {{5, 2}, {
        2}}, {{6, 3}, {1}}, {{7, 4}, {0}}, {{4, 0}, {2}}, {{5, 1}, {1}}, {{6, 
        2}, {0}}, {{5, 0}, {0}}, {{4, 5}, {6}}, {{5, 6}, {5}}, {{6, 7}, {
        4}}, {{3, 3}, {6}}, {{4, 4}, {5}}, {{5, 5}, {4}}, {{6, 6}, {3}}, {{7, 
        7}, {2}}, {{3, 2}, {5}}, {{4, 3}, {4}}, {{5, 4}, {3}}, {{6, 5}, {
        2}}, {{7, 6}, {1}}, {{3, 1}, {4}}, {{4, 2}, {3}}, {{5, 3}, {2}}, {{6, 
        4}, {1}}, {{7, 5}, {0}}, {{3, 0}, {3}}, {{4, 1}, {2}}, {{5, 2}, {
        1}}, {{6, 3}, {0}}, {{4, 0}, {1}}, {{5, 1}, {0}}, {{5, 7}, {5}}, {{3, 
        4}, {6}}, {{4, 5}, {5}}, {{5, 6}, {4}}, {{6, 7}, {3}}, {{2, 2}, {
        6}}, {{3, 3}, {5}}, {{4, 4}, {4}}, {{5, 5}, {3}}, {{6, 6}, {2}}, {{7, 
        7}, {1}}, {{2, 1}, {5}}, {{3, 2}, {4}}, {{4, 3}, {3}}, {{5, 4}, {
        2}}, {{6, 5}, {1}}, {{7, 6}, {0}}, {{2, 0}, {4}}, {{3, 1}, {3}}, {{4, 
        2}, {2}}, {{5, 3}, {1}}, {{6, 4}, {0}}, {{3, 0}, {2}}, {{4, 1}, {
        1}}, {{5, 2}, {0}}, {{4, 0}, {0}}, {{4, 6}, {5}}, {{5, 7}, {4}}, {{2, 
        3}, {6}}, {{3, 4}, {5}}, {{4, 5}, {4}}, {{5, 6}, {3}}, {{6, 7}, {
        2}}, {{1, 1}, {6}}, {{2, 2}, {5}}, {{3, 3}, {4}}, {{4, 4}, {3}}, {{5, 
        5}, {2}}, {{6, 6}, {1}}, {{7, 7}, {0}}, {{1, 0}, {5}}, {{2, 1}, {
        4}}, {{3, 2}, {3}}, {{4, 3}, {2}}, {{5, 4}, {1}}, {{6, 5}, {0}}, {{2, 
        0}, {3}}, {{3, 1}, {2}}, {{4, 2}, {1}}, {{5, 3}, {0}}, {{3, 0}, {
        1}}, {{4, 1}, {0}}, {{3, 5}, {5}}, {{4, 6}, {4}}, {{5, 7}, {3}}, {{1, 
        2}, {6}}, {{2, 3}, {5}}, {{3, 4}, {4}}, {{4, 5}, {3}}, {{5, 6}, {
        2}}, {{6, 7}, {1}}, {{0, 0}, {6}}, {{1, 1}, {5}}, {{2, 2}, {4}}, {{3, 
        3}, {3}}, {{4, 4}, {2}}, {{5, 5}, {1}}, {{6, 6}, {0}}, {{1, 0}, {
        4}}, {{2, 1}, {3}}, {{3, 2}, {2}}, {{4, 3}, {1}}, {{5, 4}, {0}}, {{2, 
        0}, {2}}, {{3, 1}, {1}}, {{4, 2}, {0}}, {{3, 0}, {0}}, {{4, 7}, {
        4}}, {{2, 4}, {5}}, {{3, 5}, {4}}, {{4, 6}, {3}}, {{5, 7}, {2}}, {{0, 
        1}, {6}}, {{1, 2}, {5}}, {{2, 3}, {4}}, {{3, 4}, {3}}, {{4, 5}, {
        2}}, {{5, 6}, {1}}, {{6, 7}, {0}}, {{0, 0}, {5}}, {{1, 1}, {4}}, {{2, 
        2}, {3}}, {{3, 3}, {2}}, {{4, 4}, {1}}, {{5, 5}, {0}}, {{1, 0}, {
        3}}, {{2, 1}, {2}}, {{3, 2}, {1}}, {{4, 3}, {0}}, {{2, 0}, {1}}, {{3, 
        1}, {0}}, {{3, 6}, {4}}, {{4, 7}, {3}}, {{1, 3}, {5}}, {{2, 4}, {
        4}}, {{3, 5}, {3}}, {{4, 6}, {2}}, {{5, 7}, {1}}, {{0, 1}, {5}}, {{1, 
        2}, {4}}, {{2, 3}, {3}}, {{3, 4}, {2}}, {{4, 5}, {1}}, {{5, 6}, {
        0}}, {{0, 0}, {4}}, {{1, 1}, {3}}, {{2, 2}, {2}}, {{3, 3}, {1}}, {{4, 
        4}, {0}}, {{1, 0}, {2}}, {{2, 1}, {1}}, {{3, 2}, {0}}, {{2, 0}, {
        0}}, {{2, 5}, {4}}, {{3, 6}, {3}}, {{4, 7}, {2}}, {{0, 2}, {5}}, {{1, 
        3}, {4}}, {{2, 4}, {3}}, {{3, 5}, {2}}, {{4, 6}, {1}}, {{5, 7}, {
        0}}, {{0, 1}, {4}}, {{1, 2}, {3}}, {{2, 3}, {2}}, {{3, 4}, {1}}, {{4, 
        5}, {0}}, {{0, 0}, {3}}, {{1, 1}, {2}}, {{2, 2}, {1}}, {{3, 3}, {
        0}}, {{1, 0}, {1}}, {{2, 1}, {0}}, {{3, 7}, {3}}, {{1, 4}, {4}}, {{2, 
        5}, {3}}, {{3, 6}, {2}}, {{4, 7}, {1}}, {{0, 2}, {4}}, {{1, 3}, {
        3}}, {{2, 4}, {2}}, {{3, 5}, {1}}, {{4, 6}, {0}}, {{0, 1}, {3}}, {{1, 
        2}, {2}}, {{2, 3}, {1}}, {{3, 4}, {0}}, {{0, 0}, {2}}, {{1, 1}, {
        1}}, {{2, 2}, {0}}, {{1, 0}, {0}}, {{2, 6}, {3}}, {{3, 7}, {2}}, {{0, 
        3}, {4}}, {{1, 4}, {3}}, {{2, 5}, {2}}, {{3, 6}, {1}}, {{4, 7}, {
        0}}, {{0, 2}, {3}}, {{1, 3}, {2}}, {{2, 4}, {1}}, {{3, 5}, {0}}, {{0, 
        1}, {2}}, {{1, 2}, {1}}, {{2, 3}, {0}}, {{0, 0}, {1}}, {{1, 1}, {
        0}}, {{1, 5}, {3}}, {{2, 6}, {2}}, {{3, 7}, {1}}, {{0, 3}, {3}}, {{1, 
        4}, {2}}, {{2, 5}, {1}}, {{3, 6}, {0}}, {{0, 2}, {2}}, {{1, 3}, {
        1}}, {{2, 4}, {0}}, {{0, 1}, {1}}, {{1, 2}, {0}}, {{0, 0}, {0}}, {{2, 
        7}, {2}}, {{0, 4}, {3}}, {{1, 5}, {2}}, {{2, 6}, {1}}, {{3, 7}, {
        0}}, {{0, 3}, {2}}, {{1, 4}, {1}}, {{2, 5}, {0}}, {{0, 2}, {1}}, {{1, 
        3}, {0}}, {{0, 1}, {0}}, {{1, 6}, {2}}, {{2, 7}, {1}}, {{0, 4}, {
        2}}, {{1, 5}, {1}}, {{2, 6}, {0}}, {{0, 3}, {1}}, {{1, 4}, {0}}, {{0, 
        2}, {0}}, {{0, 5}, {2}}, {{1, 6}, {1}}, {{2, 7}, {0}}, {{0, 4}, {
        1}}, {{1, 5}, {0}}, {{0, 3}, {0}}, {{1, 7}, {1}}, {{0, 5}, {1}}, {{1, 
        6}, {0}}, {{0, 4}, {0}}, {{0, 6}, {1}}, {{1, 7}, {0}}, {{0, 5}, {
        0}}, {{0, 6}, {0}}, {{0, 7}, {0}}}, {{{1, 1}, {0}}, {{3, 2}, {0}}, {{
        5, 3}, {0}}, {{7, 4}, {0}}, {{9, 5}, {0}}, {{11, 6}, {0}}, {{13, 7}, {
        0}}, {{1, 1}, {1}}, {{2, 2}, {0}}, {{3, 2}, {1}}, {{4, 3}, {0}}, {{5, 
        3}, {1}}, {{6, 4}, {0}}, {{7, 4}, {1}}, {{8, 5}, {0}}, {{9, 5}, {
        1}}, {{10, 6}, {0}}, {{11, 6}, {1}}, {{12, 7}, {0}}, {{13, 7}, {
        1}}, {{0, 1}, {1}}, {{1, 1}, {2}}, {{2, 2}, {1}}, {{3, 3}, {0}}, {{3, 
        2}, {2}}, {{4, 3}, {1}}, {{5, 4}, {0}}, {{5, 3}, {2}}, {{6, 4}, {
        1}}, {{7, 5}, {0}}, {{7, 4}, {2}}, {{8, 5}, {1}}, {{9, 6}, {0}}, {{9, 
        5}, {2}}, {{10, 6}, {1}}, {{11, 7}, {0}}, {{11, 6}, {2}}, {{12, 7}, {
        1}}, {{0, 1}, {2}}, {{1, 2}, {1}}, {{1, 1}, {3}}, {{2, 2}, {2}}, {{3, 
        3}, {1}}, {{4, 4}, {0}}, {{3, 2}, {3}}, {{4, 3}, {2}}, {{5, 4}, {
        1}}, {{6, 5}, {0}}, {{5, 3}, {3}}, {{6, 4}, {2}}, {{7, 5}, {1}}, {{8, 
        6}, {0}}, {{7, 4}, {3}}, {{8, 5}, {2}}, {{9, 6}, {1}}, {{10, 7}, {
        0}}, {{9, 5}, {3}}, {{10, 6}, {2}}, {{11, 7}, {1}}, {{12, 7}, {2}}, {{
        0, 1}, {3}}, {{1, 2}, {2}}, {{2, 3}, {1}}, {{1, 1}, {4}}, {{2, 2}, {
        3}}, {{3, 3}, {2}}, {{4, 4}, {1}}, {{5, 5}, {0}}, {{3, 2}, {4}}, {{4, 
        3}, {3}}, {{5, 4}, {2}}, {{6, 5}, {1}}, {{7, 6}, {0}}, {{5, 3}, {
        4}}, {{6, 4}, {3}}, {{7, 5}, {2}}, {{8, 6}, {1}}, {{9, 7}, {0}}, {{7, 
        4}, {4}}, {{8, 5}, {3}}, {{9, 6}, {2}}, {{10, 7}, {1}}, {{10, 6}, {
        3}}, {{11, 7}, {2}}, {{0, 2}, {2}}, {{0, 1}, {4}}, {{1, 2}, {3}}, {{2,
         3}, {2}}, {{3, 4}, {1}}, {{1, 1}, {5}}, {{2, 2}, {4}}, {{3, 3}, {
        3}}, {{4, 4}, {2}}, {{5, 5}, {1}}, {{6, 6}, {0}}, {{3, 2}, {5}}, {{4, 
        3}, {4}}, {{5, 4}, {3}}, {{6, 5}, {2}}, {{7, 6}, {1}}, {{8, 7}, {
        0}}, {{5, 3}, {5}}, {{6, 4}, {4}}, {{7, 5}, {3}}, {{8, 6}, {2}}, {{9, 
        7}, {1}}, {{8, 5}, {4}}, {{9, 6}, {3}}, {{10, 7}, {2}}, {{11, 7}, {
        3}}, {{0, 2}, {3}}, {{1, 3}, {2}}, {{0, 1}, {5}}, {{1, 2}, {4}}, {{2, 
        3}, {3}}, {{3, 4}, {2}}, {{4, 5}, {1}}, {{1, 1}, {6}}, {{2, 2}, {
        5}}, {{3, 3}, {4}}, {{4, 4}, {3}}, {{5, 5}, {2}}, {{6, 6}, {1}}, {{7, 
        7}, {0}}, {{3, 2}, {6}}, {{4, 3}, {5}}, {{5, 4}, {4}}, {{6, 5}, {
        3}}, {{7, 6}, {2}}, {{8, 7}, {1}}, {{6, 4}, {5}}, {{7, 5}, {4}}, {{8, 
        6}, {3}}, {{9, 7}, {2}}, {{9, 6}, {4}}, {{10, 7}, {3}}, {{0, 2}, {
        4}}, {{1, 3}, {3}}, {{2, 4}, {2}}, {{0, 1}, {6}}, {{1, 2}, {5}}, {{2, 
        3}, {4}}, {{3, 4}, {3}}, {{4, 5}, {2}}, {{5, 6}, {1}}, {{1, 1}, {
        7}}, {{2, 2}, {6}}, {{3, 3}, {5}}, {{4, 4}, {4}}, {{5, 5}, {3}}, {{6, 
        6}, {2}}, {{7, 7}, {1}}, {{4, 3}, {6}}, {{5, 4}, {5}}, {{6, 5}, {
        4}}, {{7, 6}, {3}}, {{8, 7}, {2}}, {{7, 5}, {5}}, {{8, 6}, {4}}, {{9, 
        7}, {3}}, {{10, 7}, {4}}, {{0, 3}, {3}}, {{0, 2}, {5}}, {{1, 3}, {
        4}}, {{2, 4}, {3}}, {{3, 5}, {2}}, {{0, 1}, {7}}, {{1, 2}, {6}}, {{2, 
        3}, {5}}, {{3, 4}, {4}}, {{4, 5}, {3}}, {{5, 6}, {2}}, {{6, 7}, {
        1}}, {{2, 2}, {7}}, {{3, 3}, {6}}, {{4, 4}, {5}}, {{5, 5}, {4}}, {{6, 
        6}, {3}}, {{7, 7}, {2}}, {{5, 4}, {6}}, {{6, 5}, {5}}, {{7, 6}, {
        4}}, {{8, 7}, {3}}, {{8, 6}, {5}}, {{9, 7}, {4}}, {{0, 3}, {4}}, {{1, 
        4}, {3}}, {{0, 2}, {6}}, {{1, 3}, {5}}, {{2, 4}, {4}}, {{3, 5}, {
        3}}, {{4, 6}, {2}}, {{1, 2}, {7}}, {{2, 3}, {6}}, {{3, 4}, {5}}, {{4, 
        5}, {4}}, {{5, 6}, {3}}, {{6, 7}, {2}}, {{3, 3}, {7}}, {{4, 4}, {
        6}}, {{5, 5}, {5}}, {{6, 6}, {4}}, {{7, 7}, {3}}, {{6, 5}, {6}}, {{7, 
        6}, {5}}, {{8, 7}, {4}}, {{9, 7}, {5}}, {{0, 3}, {5}}, {{1, 4}, {
        4}}, {{2, 5}, {3}}, {{0, 2}, {7}}, {{1, 3}, {6}}, {{2, 4}, {5}}, {{3, 
        5}, {4}}, {{4, 6}, {3}}, {{5, 7}, {2}}, {{2, 3}, {7}}, {{3, 4}, {
        6}}, {{4, 5}, {5}}, {{5, 6}, {4}}, {{6, 7}, {3}}, {{4, 4}, {7}}, {{5, 
        5}, {6}}, {{6, 6}, {5}}, {{7, 7}, {4}}, {{7, 6}, {6}}, {{8, 7}, {
        5}}, {{0, 4}, {4}}, {{0, 3}, {6}}, {{1, 4}, {5}}, {{2, 5}, {4}}, {{3, 
        6}, {3}}, {{1, 3}, {7}}, {{2, 4}, {6}}, {{3, 5}, {5}}, {{4, 6}, {
        4}}, {{5, 7}, {3}}, {{3, 4}, {7}}, {{4, 5}, {6}}, {{5, 6}, {5}}, {{6, 
        7}, {4}}, {{5, 5}, {7}}, {{6, 6}, {6}}, {{7, 7}, {5}}, {{8, 7}, {
        6}}, {{0, 4}, {5}}, {{1, 5}, {4}}, {{0, 3}, {7}}, {{1, 4}, {6}}, {{2, 
        5}, {5}}, {{3, 6}, {4}}, {{4, 7}, {3}}, {{2, 4}, {7}}, {{3, 5}, {
        6}}, {{4, 6}, {5}}, {{5, 7}, {4}}, {{4, 5}, {7}}, {{5, 6}, {6}}, {{6, 
        7}, {5}}, {{6, 6}, {7}}, {{7, 7}, {6}}, {{0, 4}, {6}}, {{1, 5}, {
        5}}, {{2, 6}, {4}}, {{1, 4}, {7}}, {{2, 5}, {6}}, {{3, 6}, {5}}, {{4, 
        7}, {4}}, {{3, 5}, {7}}, {{4, 6}, {6}}, {{5, 7}, {5}}, {{5, 6}, {
        7}}, {{6, 7}, {6}}, {{7, 7}, {7}}, {{0, 5}, {5}}, {{0, 4}, {7}}, {{1, 
        5}, {6}}, {{2, 6}, {5}}, {{3, 7}, {4}}, {{2, 5}, {7}}, {{3, 6}, {
        6}}, {{4, 7}, {5}}, {{4, 6}, {7}}, {{5, 7}, {6}}, {{6, 7}, {7}}, {{0, 
        5}, {6}}, {{1, 6}, {5}}, {{1, 5}, {7}}, {{2, 6}, {6}}, {{3, 7}, {
        5}}, {{3, 6}, {7}}, {{4, 7}, {6}}, {{5, 7}, {7}}, {{0, 5}, {7}}, {{1, 
        6}, {6}}, {{2, 7}, {5}}, {{2, 6}, {7}}, {{3, 7}, {6}}, {{4, 7}, {
        7}}, {{0, 6}, {6}}, {{1, 6}, {7}}, {{2, 7}, {6}}, {{3, 7}, {7}}, {{0, 
        6}, {7}}, {{1, 7}, {6}}, {{2, 7}, {7}}, {{1, 7}, {7}}, {{0, 7}, {
        7}}}, {{{0, 0}, {0}}, {{1, 0}, {1}}, {{2, 0}, {2}}, {{3, 0}, {3}}, {{
        4, 0}, {4}}, {{5, 0}, {5}}, {{6, 0}, {6}}, {{0, 0}, {1}}, {{1, 1}, {
        0}}, {{1, 0}, {2}}, {{2, 1}, {1}}, {{2, 0}, {3}}, {{3, 1}, {2}}, {{3, 
        0}, {4}}, {{4, 1}, {3}}, {{4, 0}, {5}}, {{5, 1}, {4}}, {{5, 0}, {
        6}}, {{6, 1}, {5}}, {{6, 0}, {7}}, {{0, 1}, {0}}, {{0, 0}, {2}}, {{1, 
        1}, {1}}, {{2, 2}, {0}}, {{1, 0}, {3}}, {{2, 1}, {2}}, {{3, 2}, {
        1}}, {{2, 0}, {4}}, {{3, 1}, {3}}, {{4, 2}, {2}}, {{3, 0}, {5}}, {{4, 
        1}, {4}}, {{5, 2}, {3}}, {{4, 0}, {6}}, {{5, 1}, {5}}, {{6, 2}, {
        4}}, {{5, 0}, {7}}, {{6, 1}, {6}}, {{0, 1}, {1}}, {{1, 2}, {0}}, {{0, 
        0}, {3}}, {{1, 1}, {2}}, {{2, 2}, {1}}, {{3, 3}, {0}}, {{1, 0}, {
        4}}, {{2, 1}, {3}}, {{3, 2}, {2}}, {{4, 3}, {1}}, {{2, 0}, {5}}, {{3, 
        1}, {4}}, {{4, 2}, {3}}, {{5, 3}, {2}}, {{3, 0}, {6}}, {{4, 1}, {
        5}}, {{5, 2}, {4}}, {{6, 3}, {3}}, {{4, 0}, {7}}, {{5, 1}, {6}}, {{6, 
        2}, {5}}, {{6, 1}, {7}}, {{0, 1}, {2}}, {{1, 2}, {1}}, {{2, 3}, {
        0}}, {{0, 0}, {4}}, {{1, 1}, {3}}, {{2, 2}, {2}}, {{3, 3}, {1}}, {{4, 
        4}, {0}}, {{1, 0}, {5}}, {{2, 1}, {4}}, {{3, 2}, {3}}, {{4, 3}, {
        2}}, {{5, 4}, {1}}, {{2, 0}, {6}}, {{3, 1}, {5}}, {{4, 2}, {4}}, {{5, 
        3}, {3}}, {{6, 4}, {2}}, {{3, 0}, {7}}, {{4, 1}, {6}}, {{5, 2}, {
        5}}, {{6, 3}, {4}}, {{5, 1}, {7}}, {{6, 2}, {6}}, {{1, 3}, {0}}, {{0, 
        1}, {3}}, {{1, 2}, {2}}, {{2, 3}, {1}}, {{3, 4}, {0}}, {{0, 0}, {
        5}}, {{1, 1}, {4}}, {{2, 2}, {3}}, {{3, 3}, {2}}, {{4, 4}, {1}}, {{5, 
        5}, {0}}, {{1, 0}, {6}}, {{2, 1}, {5}}, {{3, 2}, {4}}, {{4, 3}, {
        3}}, {{5, 4}, {2}}, {{6, 5}, {1}}, {{2, 0}, {7}}, {{3, 1}, {6}}, {{4, 
        2}, {5}}, {{5, 3}, {4}}, {{6, 4}, {3}}, {{4, 1}, {7}}, {{5, 2}, {
        6}}, {{6, 3}, {5}}, {{6, 2}, {7}}, {{1, 3}, {1}}, {{2, 4}, {0}}, {{0, 
        1}, {4}}, {{1, 2}, {3}}, {{2, 3}, {2}}, {{3, 4}, {1}}, {{4, 5}, {
        0}}, {{0, 0}, {6}}, {{1, 1}, {5}}, {{2, 2}, {4}}, {{3, 3}, {3}}, {{4, 
        4}, {2}}, {{5, 5}, {1}}, {{6, 6}, {0}}, {{1, 0}, {7}}, {{2, 1}, {
        6}}, {{3, 2}, {5}}, {{4, 3}, {4}}, {{5, 4}, {3}}, {{6, 5}, {2}}, {{3, 
        1}, {7}}, {{4, 2}, {6}}, {{5, 3}, {5}}, {{6, 4}, {4}}, {{5, 2}, {
        7}}, {{6, 3}, {6}}, {{1, 3}, {2}}, {{2, 4}, {1}}, {{3, 5}, {0}}, {{0, 
        1}, {5}}, {{1, 2}, {4}}, {{2, 3}, {3}}, {{3, 4}, {2}}, {{4, 5}, {
        1}}, {{5, 6}, {0}}, {{0, 0}, {7}}, {{1, 1}, {6}}, {{2, 2}, {5}}, {{3, 
        3}, {4}}, {{4, 4}, {3}}, {{5, 5}, {2}}, {{6, 6}, {1}}, {{2, 1}, {
        7}}, {{3, 2}, {6}}, {{4, 3}, {5}}, {{5, 4}, {4}}, {{6, 5}, {3}}, {{4, 
        2}, {7}}, {{5, 3}, {6}}, {{6, 4}, {5}}, {{6, 3}, {7}}, {{2, 5}, {
        0}}, {{1, 3}, {3}}, {{2, 4}, {2}}, {{3, 5}, {1}}, {{4, 6}, {0}}, {{0, 
        1}, {6}}, {{1, 2}, {5}}, {{2, 3}, {4}}, {{3, 4}, {3}}, {{4, 5}, {
        2}}, {{5, 6}, {1}}, {{6, 7}, {0}}, {{1, 1}, {7}}, {{2, 2}, {6}}, {{3, 
        3}, {5}}, {{4, 4}, {4}}, {{5, 5}, {3}}, {{6, 6}, {2}}, {{3, 2}, {
        7}}, {{4, 3}, {6}}, {{5, 4}, {5}}, {{6, 5}, {4}}, {{5, 3}, {7}}, {{6, 
        4}, {6}}, {{2, 5}, {1}}, {{3, 6}, {0}}, {{1, 3}, {4}}, {{2, 4}, {
        3}}, {{3, 5}, {2}}, {{4, 6}, {1}}, {{5, 7}, {0}}, {{1, 2}, {6}}, {{2, 
        3}, {5}}, {{3, 4}, {4}}, {{4, 5}, {3}}, {{5, 6}, {2}}, {{6, 7}, {
        1}}, {{2, 2}, {7}}, {{3, 3}, {6}}, {{4, 4}, {5}}, {{5, 5}, {4}}, {{6, 
        6}, {3}}, {{4, 3}, {7}}, {{5, 4}, {6}}, {{6, 5}, {5}}, {{6, 4}, {
        7}}, {{2, 5}, {2}}, {{3, 6}, {1}}, {{4, 7}, {0}}, {{1, 3}, {5}}, {{2, 
        4}, {4}}, {{3, 5}, {3}}, {{4, 6}, {2}}, {{5, 7}, {1}}, {{6, 8}, {
        0}}, {{2, 3}, {6}}, {{3, 4}, {5}}, {{4, 5}, {4}}, {{5, 6}, {3}}, {{6, 
        7}, {2}}, {{3, 3}, {7}}, {{4, 4}, {6}}, {{5, 5}, {5}}, {{6, 6}, {
        4}}, {{5, 4}, {7}}, {{6, 5}, {6}}, {{3, 7}, {0}}, {{2, 5}, {3}}, {{3, 
        6}, {2}}, {{4, 7}, {1}}, {{5, 8}, {0}}, {{2, 4}, {5}}, {{3, 5}, {
        4}}, {{4, 6}, {3}}, {{5, 7}, {2}}, {{6, 8}, {1}}, {{3, 4}, {6}}, {{4, 
        5}, {5}}, {{5, 6}, {4}}, {{6, 7}, {3}}, {{4, 4}, {7}}, {{5, 5}, {
        6}}, {{6, 6}, {5}}, {{6, 5}, {7}}, {{3, 7}, {1}}, {{4, 8}, {0}}, {{2, 
        5}, {4}}, {{3, 6}, {3}}, {{4, 7}, {2}}, {{5, 8}, {1}}, {{6, 9}, {
        0}}, {{3, 5}, {5}}, {{4, 6}, {4}}, {{5, 7}, {3}}, {{6, 8}, {2}}, {{4, 
        5}, {6}}, {{5, 6}, {5}}, {{6, 7}, {4}}, {{5, 5}, {7}}, {{6, 6}, {
        6}}, {{3, 7}, {2}}, {{4, 8}, {1}}, {{5, 9}, {0}}, {{3, 6}, {4}}, {{4, 
        7}, {3}}, {{5, 8}, {2}}, {{6, 9}, {1}}, {{4, 6}, {5}}, {{5, 7}, {
        4}}, {{6, 8}, {3}}, {{5, 6}, {6}}, {{6, 7}, {5}}, {{6, 6}, {7}}, {{4, 
        9}, {0}}, {{3, 7}, {3}}, {{4, 8}, {2}}, {{5, 9}, {1}}, {{6, 10}, {
        0}}, {{4, 7}, {4}}, {{5, 8}, {3}}, {{6, 9}, {2}}, {{5, 7}, {5}}, {{6, 
        8}, {4}}, {{6, 7}, {6}}, {{4, 9}, {1}}, {{5, 10}, {0}}, {{4, 8}, {
        3}}, {{5, 9}, {2}}, {{6, 10}, {1}}, {{5, 8}, {4}}, {{6, 9}, {3}}, {{6,
         8}, {5}}, {{4, 9}, {2}}, {{5, 10}, {1}}, {{6, 11}, {0}}, {{5, 9}, {
        3}}, {{6, 10}, {2}}, {{6, 9}, {4}}, {{5, 11}, {0}}, {{5, 10}, {2}}, {{
        6, 11}, {1}}, {{6, 10}, {3}}, {{5, 11}, {1}}, {{6, 12}, {0}}, {{6, 
        11}, {2}}, {{6, 12}, {1}}, {{6, 13}, {0}}}, CompressedData["
1:eJxVxcltAzEMAECKum9p1w2kh1TiEtyA+/+FIQhCi3nMz+f7/iAA/BqA/8GA
gwgFOiy4DRJPEqlkkE1eCGhZYJk1NtmFlzXEiSiK6GKx2yHzKqmqhthue/BW
hEM+NDXZFQxxKj6UQxcrrIjMH9JDVYPtBMmK8JAPTcw0syFOxUNRna2CzB+S
qmKUUaFaEVQWjc1miFNRFNZb78i8SKySMWBYEVgmbRriWCRlIfMkbdiWhMsQ
d+ML/gB0ZBR4
      "]}, 
    Private`componentsEdgesAndnuc[{1, 5}, {4, 6}, {1, 7}] = {{{5, -4, 0, 1, 4,
       7, 1}}, {{{5, 1}, {1}}}, {{{7, 3}, {1}}}, {{{4, 0}, {0}}}, {{1, 7}}}, 
    Private`componentsEdgesAndnuc[{2, 0}, {2, 4}, {3, 3}] = {{{1, 0, 1, 0, 0, 
      2, 3}}, {{{1, 1}, {0}}}, {{{2, 2}, {3}}}, {{{0, 0}, {1}}}, {{3, 3}}}, 
    Private`componentsEdgesAndnuc[{3, 2}, {5, 6}, {3, 9}] = {{{3, -2, 2, 0, 2,
       7, 3}}, {{{3, 1}, {0}}}, {{{7, 5}, {3}}}, {{{2, 0}, {2}}}, {{3, 9}}}, 
    Private`componentsEdgesAndnuc[{4, 3}, {1, 5}, {3, 6}] = {{{2, -2, 4, 1, 2,
       2, 3}, {3, -2, 3, 0, 3, 3, 
      2}}, {{{2, 0}, {1}}, {{3, 1}, {0}}}, {{{2, 0}, {3}}, {{3, 1}, {2}}}, {{{
        2, 0}, {4}}, {{3, 1}, {3}}}, {{3, 6}, {3, 6}}}, 
    Private`componentsEdgesAndnuc[{4, 4}, {4, 4}, {3, 6}] = {{{1, -1, 4, 3, 1,
       2, 3}, {2, -1, 3, 2, 2, 3, 2}, {3, -1, 2, 1, 3, 4, 1}, {4, -1, 1, 0, 4,
       5, 0}}, {{{1, 0}, {3}}, {{2, 1}, {2}}, {{3, 2}, {1}}, {{4, 3}, {
        0}}}, {{{2, 1}, {3}}, {{3, 2}, {2}}, {{4, 3}, {1}}, {{5, 4}, {
        0}}}, {{{1, 0}, {4}}, {{2, 1}, {3}}, {{3, 2}, {2}}, {{4, 3}, {1}}}, {{
      3, 6}, {3, 6}, {3, 6}, {3, 6}}}, 
    Private`componentsEdgesAndnuc[{4, 5}, {6, 6}, {7, 6}] = {{{0, 0, 4, 4, 1, 
      2, 6}, {1, 0, 3, 3, 2, 3, 5}, {2, 0, 2, 2, 3, 4, 4}, {3, 0, 1, 1, 4, 5, 
      3}, {4, 0, 0, 0, 5, 6, 
      2}}, {{{0, 0}, {4}}, {{1, 1}, {3}}, {{2, 2}, {2}}, {{3, 3}, {1}}, {{4, 
        4}, {0}}}, {{{2, 2}, {6}}, {{3, 3}, {5}}, {{4, 4}, {4}}, {{5, 5}, {
        3}}, {{6, 6}, {2}}}, {{{1, 1}, {4}}, {{2, 2}, {3}}, {{3, 3}, {2}}, {{
        4, 4}, {1}}, {{5, 5}, {0}}}, {{7, 6}, {7, 6}, {7, 6}, {7, 6}, {7, 
      6}}}, Private`componentsEdgesAndnuc[{5, 1}, {7, 0}, {5, 4}] = {{{0, 4, 
      1, 0, 1, 3, 0}}, {{{0, 4}, {0}}}, {{{3, 7}, {0}}}, {{{1, 5}, {1}}}, {{5,
       4}}}, Private`componentsEdgesAndnuc[{6, 1}, {6, 7}, {1, 5}] = {{{6, 0, 
      0, 1, 0, 5, 1}}, {{{6, 6}, {1}}}, {{{5, 5}, {1}}}, {{{0, 0}, {0}}}, {{1,
       5}}}, Private`componentsEdgesAndnuc[{6, 3}, {4, 4}, {5, 2}] = {{{2, 2, 
      2, 2, 1, 0, 2}, {3, 2, 1, 1, 2, 1, 1}, {4, 2, 0, 0, 3, 2, 
      0}}, {{{2, 4}, {2}}, {{3, 5}, {1}}, {{4, 6}, {0}}}, {{{0, 2}, {2}}, {{1,
         3}, {1}}, {{2, 4}, {0}}}, {{{1, 3}, {2}}, {{2, 4}, {1}}, {{3, 5}, {
        0}}}, {{5, 2}, {5, 2}, {5, 2}}}, 
    Private`componentsEdgesAndnuc[{3, 2, 3, 2, 2}, {2, 3, 2, 2, 3}, {5, 2, 4, 
      5, 4}] = {CompressedData["
1:eJytnVtyG8sRRAsUtQh/ekcOL8ELsPf/IdEXEcq4iWRmVXWTEwGRGEz36Xpl
9QAU+c///O/f/32rqn/99c8/yh8/zLnnmMdfj4+/Dlzz+PPQa/DaW5hrYtQf
Dq55mMcNA2Pf/szvGLyOd3o+Mdg3b+aaB113a4dj4ByPfZPXbxi8Ro151ff4
ihkV7OBrThjPa34TQ6/BGm4Z7BdeKz+HreqrH/L9xNC1cjyYdcuo8rmLnEkx
/yqD59P1c32cMjSvHINZ78KbGOC4Ooddrs5P7MDhapDP39rxfLj64JizjbcM
rNvVIA5Xg6cMzlH1FRjM+knXdwzuFTxPl2McZ8y9YVR9zivEg5m3DMyPuRzD
2fFO5xxDx/M8qu1OS97o2qS7EwP5nPLqlvGQ847BdrAmT4xpz4C8+Iqvpj2D
64O3jNTPnZac+mrq53j9lpH6ua4drzGD/bVhqM+r/H73loH5eK2qGy4epwxw
pv3udzI4d3G43D1l4LyLBxhsB/efiTH1wa4+NozUP9j3yQ6uiw0DOjvtfW4Z
OFj3lOHs4B433Vu689w/XDw4FklLmDHprtOrE0bSktQHldHVB8+FI9Vg56sN
I+VVqnNlpLxy43ke+J/Hap1g78PMjqEx5+fdvcEJg9edapBtxBxbhusfnGs8
p/aUbt+uDMRb7dA9GOfiLYPHqx3MB6u7N9AarmCH6o0yuj21022eBzUz7Rm6
vY8yptxN/fyrjKq5n58wpvpwennCSPXBa9fvN/3cMcCZtOSWMdXgzb7EMZCr
k15pPE4ZZZ53ewZo4sTAOGdHpyXTvoR1SQ/mTv1cn3eMqQZTPz9hTDWY9j5b
RqoPtgOHY3R5pY8udztfbRg8Z7enTnakvEJ/SHW+6YNTfeg+QH21qUF+70oZ
rv/gOc+Dg/WCr8G8/P0pg3u+2sxxPmVoPnf9vNv7pF6NGKu+pH7+HQz1Fc+N
xw2DY4FzKa+e16Q9nGOgPtx+K9X5CYP1kNf6MM81HlwjG4autWSs26OeMFDj
GnM3NzPSfjcx+HVnR6qPLaPKv8egY13MH+Y61dSNljj/8SPl1cRALnT7qxuG
at7mvfCuzplR1WuJq8ETRqpB7pXJDt6PbBi61tQ/bhmuPpLuMiPtRXm93Mvd
PJv3yLq8eqNrnK9S7ioj+arqc87wPKoFPD9f0/UoZeC5zsUMrZ1bBo9XO5wm
dj1KGahpnkft4Lnx2DK4f2Aevrbrg522K6OCHcxg/kbb1XaXV7wOZ8ekV2k+
XiuOrn98lZG0hPvHDYNzBudu7s8dY8rd1D+2jJS77PtkR6e7jlGyVrYD41zM
twzMr6/rWOerrj6cNmH8Zs/Q3Ts7BtuR9leuR20ZKR5Tr+3uz9k/qQY32j7l
ruvp288N2P4tg3VXGZ3uTnmlManav4eMr9P7DC63tu8h3zC4Brs6T3Y4X/H+
Vu85ld/1qK7XOoazYaqPrtfyvpD31G6tm/uPZAfW3d2fl4xN+8QtA8+7/ZWL
R+crroVkxxTzja/4WmfHFPOuzjEn6066V9v0j2RH1ateuX5eMjbpbrJDGVX7
PTUzfg7XYW3dvmSjickOjGe92vYPZryb63R/wOO7Nbj9LrSWvz9l6Nr5Nd4n
nDLcPiL1QWiJ7ks6hvb4tGf4ih3at/RnJlL/2NrB511uu33MqR2cRw95royv
2FEyj16DublGT+1g/7iY8/rx2Nqh57TmXK3w2vU9mY7hcpe1xuXVCaMq1xz7
7it24HD7n0lLThm4xvmKbez2JczQ8bpWfa6+4kfKK2V0euW0/TsYVfN7GTcM
Po/+O+1FuxrU3O80ETr8lXhMeuV095ZRNIfG3OXV1ldJS4rm0+/Zhq4GXW/4
/TH32lsGjqQlXQ2eMB7lP+uc6uOUwf029Si2w91/aB1oPqU6d77C+S533R4z
1YerwRNGyiu2w/kKjC4ezMBrKeadrxIDX9OeGjZN/bzblyjD2Zf6IPfaLYN9
r4ykK5te+5AxzldO60800TF47YiHrk/16oQxxeNG2x2j6jUGSUtYr7YMp7td
XqkdXczZv/wax3yqc7ZrYky+SnW+ZTgt2Wh7ek9G6y1pCR+6T+RHuo/aMpym
vcnrNwxeo8aDx0+auGXgupv7wY7BMZ1y9zmX+0w4MTTf+Eh70VM7NP839XFi
B8/H/sD1bm/BueR67Zbh9F99dcNwOpY0seuDiaE+LzPW1fmJHaoXLi9cDW7t
wDmn96kP3jBKrsEx1fkpg/01aTvqA2McQ/uozsN2QFs4HvxINTgxWNudltwy
ku66mHf7EseYNNHdf5wwNlqS7ACnasfo6txp4ncwOOZso8b8lFHlY84MtiPt
Ex2Dj6kPnjDc/LxW9pXLq+6+VhmbeDg7untOHOprtqPTdtXEVB+JwTmz+fyj
2zMog9ed+iBeY1+e2KFa0mk7X7O1w2kJM3ndJ71WGXhe9eor1eaTPpgY6ivH
YFbXB3WMntN4JE3stH3DYFv1Ndh3w+DxH3+OThPdzxQlxlQfrCW3dkz1kXR3
a0eqD10Hf7/RdsdQfyRNvGVU9TV406McA5xJEzXmpwxc02ki2+F+9oPne9Tn
+ZU79UG2a2JM9ZH6+ZaR8ortYBuV0cWDGTi6fWLyVWLoGD4wbvO+aFfnytB4
bHrtCcPV4KZHTbmrX/nA+Enb+d482eHsUjuwvhTzLcPl1abOwXC+ej5+mzU6
Jl/Da5v2PlsGzt+8B9AxOJcrMJiV9j6OgflcTaaYbxjaf/j1qldfnfYoXK/j
1R8Vxm7jkRiqxW7s1lfKqOrfZ2AbeR0Tg8dMvnL1sYnHxJjq45ahfaurj053
HQPzdVricndiuBxKvkq6m3qt1rVjbHJ3skMZeM52lIxlPmJ+w+hqkPmww/38
rsY0xWOTV1OPUgbm43l4fSnmHUNzSxkbXz3Pu58R5r2Zjud5eN2P8nY8yJYt
Q+eFnbq/Yl/cMPAV1zkGs1z/YIaO7+xIWvJWvR1ujZvPhLkGbxi8dt23q6+S
tvNYrrXJjlQfiLtjuP7DLOU5O6aYP2RMyVo3eTX5Svsdv8YMHquM1D8QV5cz
Og9sS3Xf1WDHcHqW6qOLR2LoPCVjMZ578akdrCWbGry1g/NtivnzWrdPZIbm
pc4DrtZL0bmkJYnRxcPl1S2jyscj6W6qQTBUJzo7nK86vcL6Or3a9sEurxKD
fb3pg11e6ZjJjpt4OIbrtTyW+WDfMPB12wfdfpcZbs+Y7Eh9sNP2lKe8xk2P
6uxgvzg7tj3K7XdxjRsPzkPOJS3p6qNjcG+Y4tHVBxhOd5MdSXdT7lb59wrV
Fmbwa2xr56vE0H7uGHxN5yuMn3oUxqb+MfnKzZfsSHqV6gMMF99kR+ofqc5x
dHW+1cTOjsTQ/uEY+Pp8uPtzN+fGjqSJnZZwD3KMrV7pvTOvTc9Xfc41vX/Q
PR72C2/0mBjgpDp3e4cTxvOh/6da7eDvMR/yasvg/ujscL46YXDf02PaU+O5
Y/C+pupzzNEzu16rj4kBjuZ38tUpw8VDGc4O9rVj8PzODsSoq0GeXxm8Rs5d
nodtdb6a8koZz9d/Gb3v9ldTXul6nB1TDU7xcAz0+KQlLq9OGKyzqc6dHe/y
XBn6UDum3P1Rr2tUBtcwx5znqepjPtmh+QhfdfFwdrDuO13S8TzPQ57zevga
1z86hu7TdF+y7VGJ4fyI8zz2K3akWKX143HD4PE8r37f6VXHwGtTnX/FjqLv
Xcy3upsYqI+ku5xzX2FM+xKeG48tI+0Zuvhz7rL2Tgy8dtIHTxhO95Xh7Hin
7x1Dx5eM1zgrwz0mhuoVrj3dXyXGpCUud28YVbnOnSZ+ByP1Wu5rN4yqV793
/Ry9sKvBh4zp6jzFY8tINZj6BzOUMzGeX2//ZtiGwa9NmsgM3WM57dNYcw3C
rtN7g8SYctfF/ISR4pHqQxkpHjpeteRB13Xa3vUoZaDX8lqLxrMd2z6ovoaf
lKF5cdI/tL6cr3ReZUx17hh4jeNRdX4flRhTPG70yjE+/hxJS3Ada/uWwb27
25fomiYt4fyr8vHA89P7wcSYfJW0ZMtg1u3frkm9SMfrPGqH1gy0ymniluE0
TR83DPWdY7AdSa8cg3XW9UHNv+9ipP6x0d2O4fTr9H3RxIBeaU7hGlcfJwzW
WF6r02aNR7rHSQxdK9vBrFsGzjkNS5rY9cHEwOFyF+dd7m4Z7C89przifqIM
7Q06D9eH8597nDKQzzf3OB1DNW/7N182jElLXA2eMFINojd2/Vw5E8NpVqft
pww+Jt1lRtqXgOHm13m2f/MlxYPz0Pkq5a4ykq/A6d5Ddvqv13Q9Shk8Z9Jd
t2e4YfB41ytVE7sepQz4Pu0Ziq7jdWwZ3D9wPQ7VghNtVwa0Se1QTTvRdh2j
59i2m/sox5jyKvWPrzKSlrBvbhicMxUYbIf7PCoxptxN/WPLSLnLvk92dLrr
GOBMWnLL4JhPdc4M/j0TqRdN3O3ffEnxcPsDnmfaM5wwUjymXjvd16b9QdG1
k7ZPuZv6Kq8VR1fnWwbHVxmd7k55pRrnfFU1x4N73MSYfJXyasvgGuzqPNnh
fMW+13tOVzM391GOUfVZq6b66Hot926tBV3r9m++OAZ8392f45j2iVsGfJV6
lLNx8lXSDV7vFPONr0rOqx1TzLs6x1itDTfP9m++OAbW3fVzHJPuJjuUwfl8
0mv59y05hq5tu4fD10lLXEy+8jdfmMFz6XieR9fjGA+xZcPQvgU72XdagycM
rRm1yfWPG0aV197EvGWwT9RXbGOniY7B86sd2j+dr97lHDN0jRpznVcZrIvJ
DueH278LsGFMMXd5dcPAa1Ods3bcMFhf1FdVn+PhepRjsG6oHV3usr6rjdv/
J1w16+6jel857bv9nf0Tg/Px1+FeFLXufKX9RzVxqseNljxkjNbHRq+mvGLt
rPocj03upn0JxrrxOk/JWLZ36h9bhvqT5576R8dQHzoGs1LME0NrAEf33uup
HRr/SdtP7VA9ZG7S9huG2qO+4rnxuGHw16k+nte4exzH4Pl4ni7Hpj1DYri8
Yi1xMT9h8OFinux4r9d7UmXoeJ1H13yyZ0iMrgadXn0HQ3uM+uOWUfUaW8dg
O1L/cIypBlM8toyUu0nbmZH2PonBex+1o+rVhzeMqld7HMPZoe/FKUP3HF1e
uXh0+ytlJF+l3FVG8lWZ8SXXutw76VHK4PNJE3Wtt4yHXDdpYtc/mME1rXZo
Xpzoro7hI82rjKnO3XjOL77u9L2+xJhifqNXjlEyD45O228YZa47fc/SMXh+
taPL3UmveL08n+rYpCVgJTuYMcUjaeKWwZybnxdNvko6ztdOWjLFXH2kvtrk
VXrvFXPd/G4RXsuk7VtG6lEbbe8Yru5v7g0cQ3OAj5S7J4ypZroelfpHYujc
bIfybxg4dH5mODt+mnPM0PrStXJenfYPZXR12eVVp7tVf+/jpvdkqj7HY1sf
icHjp34+5a4y2F8pr9QfJwxes/qK8+I0d5WBc2pHp+1T7rp9jrOjqr+v7XJ3
w5h095bxMNfd7H0cY8qrVOdbRsqrSXc3da6M1EOmPfWWwcdUg8x4l3PKcL7n
eSbd7fZwyki+mnS328PhSP077a9cPLq8UgbPOe1Fec4bRqftzIcd7ucAHKOr
/U4Tp7ziOfRQ7u1+VxlTPFLubhlTrk12JF9xjJ0dm5jz+8dqx/Px68PvRTXe
XTy6Pvh84Pe6dPtd9ZXr5xPD+cX580YTMZbrI+1LOjtOGVX7/RUz+PcOOkaZ
5zzPRndT7qZ1bzWRGfz7+riP/KI16+dqGiPtk7pm9xkLM5ze6ee1kyYi7omh
a/xRf39+vq3zR2Cg/nS8zsPjnCZ2vkoMnafK+5Nz54ZR9bruLh7wk+4ZmKHj
Ozucr7qYJwbnFR/T51GnDK7LzZ7B7UWZ4err5udLkh1Vu88mpjrvYq5jysy7
qfPOV5gz+Wpb52/lGc+x2/f6utztfJUYD/mKY3qv75Th9kKn+xJmuDpPdqQ6
TzH/oGPS3UkTO18lhvb8SRM7X6Xeney49ZWbT3W3qtfEG0bVq68cg+1wezhm
uHpLdiRN7Oq8wnx87UavOjt47c6OrV65fSKe/zLjeQ4+pvfbE4PvP/jQGDk7
uIYmhlt3YqT6SPGoer030OOkPm4YqiWOwXa4+w9mVH32S7Ij1UeXV+AkxjZ3
9f5D483jec43Oud6Pq+DbXE5pQzYlvoH824YXP9uz5DsQF4lhq5R7eA1Owb3
kC3jUfe/H27D4JyetIQZ7r1RZuB8sgO5Nt0PJjt0/Ft5DeN1KGOKucaT+2PK
Xb1+8pXWF782aSK+8vxJD3W8zqP8kxpMjGnv4+J0wuA9gu57b+o8Mcp8r9eo
r04YyCun9dO9Ae9XlaF56ebR+Gz1KjE05lqnJ3rlGC4ek5Z0Ncj13O13oS83
eoV4qx+015aMO80rZWDN2r+nPtjllY5Jewa16yQejoHXTvrgCeONzp/0Qf6d
NWmPqNrU1YcyJm1PecrzVPUxn+xw2ur6YNV8H+UYRWvu7nEmLenqwzFcf5ri
0dUHGE53da3b/6vvGPD99J4M2+p6becrZbheqwwXj85XTv/Ujk3/mHzl5uvy
iq+f6gMM5xedZ/t/9R0DnE53cXS+6uxQRuofzFA7ng/+/VdpD6K+53k2mthp
CceY7ajKvnIM937+86v77C71qLd69Z1qCd+jO4bbD9z+H97E4DXi9dv/+6qM
7Wd3D3o4Ruer28/unF6dMHRP5RjODrwXnhgpn3ndVXcxv/3szmnJCQPXcF0q
w9nBte4Yrr5u/1+RY1R97j9Od6c672KuY5KWTHXe+arqNYZJS6p2n90p47nW
7R6O51VG56vE0LnVDlfnJ4w0v65D7fhJ3zuGq3P9Ou1LUsw/6Jj2iZMmdr7a
7hMnTex8lfY5fG6jiZOvnF+0Bqvme84tI/UPZjg7+GfoHcP5XvvHpIldnVeY
j+ep6mM+2aF+SZpYtfvsThnPY/PZ3eSrLnefx81nd64GJ4auW+fZaEmKR9Xd
Z3euPk4YSUuY4ezg/5vhGFWf5+N5NvXR5RU46nueZ7JD96FgYH+z7YOT7r7X
55+vZYYbz7ZNdrAtjrHtUZv9VcfQ+Zy2T3o12aF5itdO91eO8Zzf6ZWrjY4B
LeEaZcZWrzb9vGNUfY4Hf53sgJ8SY6tXmx7VMXTN055BGT/ooYzn8TvYcaOJ
rG/M4H2DHqd6xYz/A2LrrLM=
      
      "], {{{0, 0, 0, 0, 0}, {0, 0, 0, 0}, {1, 0, 0}, {1, 2}, {0}}, {{0, 0, 0,
         0, 0}, {0, 0, 0, 0}, {1, 1, 0}, {0, 1}, {1}}, {{0, 0, 0, 0, 0}, {0, 
        0, 0, 1}, {2, 1, 0}, {0, 1}, {0}}, {{0, 0, 0, 0, 0}, {0, 1, 0, 0}, {0,
         0, 0}, {1, 1}, {1}}, {{0, 0, 0, 0, 0}, {0, 1, 0, 0}, {0, 1, 0}, {0, 
        0}, {2}}, {{0, 0, 0, 0, 0}, {0, 1, 0, 1}, {1, 0, 0}, {1, 1}, {0}}, {{
        0, 0, 0, 0, 0}, {0, 1, 0, 1}, {1, 1, 0}, {0, 0}, {1}}, {{0, 0, 0, 0, 
        0}, {0, 2, 0, 1}, {0, 0, 0}, {1, 0}, {1}}, {{0, 0, 0, 0, 0}, {1, 0, 0,
         0}, {1, 1, 1}, {0, 1}, {0}}, {{0, 0, 0, 0, 0}, {1, 0, 1, 0}, {1, 0, 
        0}, {0, 2}, {0}}, {{0, 0, 0, 0, 0}, {1, 1, 0, 0}, {0, 0, 1}, {1, 1}, {
        0}}, {{0, 0, 0, 0, 0}, {1, 1, 0, 0}, {0, 1, 1}, {0, 0}, {1}}, {{0, 0, 
        0, 0, 0}, {1, 1, 0, 1}, {1, 1, 1}, {0, 0}, {0}}, {{0, 0, 0, 0, 0}, {1,
         1, 1, 0}, {0, 0, 0}, {0, 1}, {1}}, {{0, 0, 0, 0, 0}, {1, 1, 1, 1}, {
        1, 0, 0}, {0, 1}, {0}}, {{0, 0, 0, 0, 0}, {1, 2, 0, 1}, {0, 0, 1}, {1,
         0}, {0}}, {{0, 0, 0, 0, 0}, {1, 2, 1, 1}, {0, 0, 0}, {0, 0}, {1}}, {{
        0, 0, 0, 0, 0}, {1, 2, 1, 2}, {1, 0, 0}, {0, 0}, {0}}, {{0, 0, 0, 0, 
        0}, {2, 1, 0, 0}, {0, 1, 2}, {0, 0}, {0}}, {{0, 0, 0, 0, 0}, {2, 1, 1,
         0}, {0, 0, 1}, {0, 1}, {0}}, {{0, 0, 0, 0, 0}, {2, 2, 1, 1}, {0, 0, 
        1}, {0, 0}, {0}}, {{0, 0, 0, 0, 1}, {0, 0, 0, 0}, {1, 1, 0}, {1, 1}, {
        0}}, {{0, 0, 0, 0, 1}, {0, 0, 0, 0}, {1, 2, 0}, {0, 0}, {1}}, {{0, 0, 
        0, 0, 1}, {0, 0, 0, 1}, {2, 2, 0}, {0, 0}, {0}}, {{0, 0, 0, 0, 1}, {0,
         1, 0, 0}, {0, 0, 0}, {2, 1}, {0}}, {{0, 0, 0, 0, 1}, {0, 1, 0, 0}, {
        0, 1, 0}, {1, 0}, {1}}, {{0, 0, 0, 0, 1}, {0, 1, 0, 1}, {1, 1, 0}, {1,
         0}, {0}}, {{0, 0, 0, 0, 1}, {0, 2, 0, 1}, {0, 0, 0}, {2, 0}, {0}}, {{
        0, 0, 0, 0, 1}, {1, 0, 0, 0}, {1, 2, 1}, {0, 0}, {0}}, {{0, 0, 0, 0, 
        1}, {1, 0, 1, 0}, {1, 1, 0}, {0, 1}, {0}}, {{0, 0, 0, 0, 1}, {1, 1, 0,
         0}, {0, 1, 1}, {1, 0}, {0}}, {{0, 0, 0, 0, 1}, {1, 1, 1, 0}, {0, 0, 
        0}, {1, 1}, {0}}, {{0, 0, 0, 0, 1}, {1, 1, 1, 0}, {0, 1, 0}, {0, 0}, {
        1}}, {{0, 0, 0, 0, 1}, {1, 1, 1, 1}, {1, 1, 0}, {0, 0}, {0}}, {{0, 0, 
        0, 0, 1}, {1, 2, 1, 1}, {0, 0, 0}, {1, 0}, {0}}, {{0, 0, 0, 0, 1}, {2,
         1, 1, 0}, {0, 1, 1}, {0, 0}, {0}}, {{0, 0, 0, 0, 1}, {2, 1, 2, 0}, {
        0, 0, 0}, {0, 1}, {0}}, {{0, 0, 0, 0, 1}, {2, 2, 2, 1}, {0, 0, 0}, {0,
         0}, {0}}, {{0, 0, 0, 0, 2}, {0, 0, 0, 0}, {1, 2, 0}, {1, 0}, {0}}, {{
        0, 0, 0, 0, 2}, {0, 1, 0, 0}, {0, 1, 0}, {2, 0}, {0}}, {{0, 0, 0, 0, 
        2}, {1, 0, 1, 0}, {1, 2, 0}, {0, 0}, {0}}, {{0, 0, 0, 0, 2}, {1, 1, 1,
         0}, {0, 1, 0}, {1, 0}, {0}}, {{0, 0, 0, 0, 2}, {2, 1, 2, 0}, {0, 1, 
        0}, {0, 0}, {0}}, {{0, 0, 0, 1, 0}, {0, 0, 0, 0}, {2, 0, 0}, {0, 2}, {
        0}}, {{0, 0, 0, 1, 0}, {0, 1, 0, 0}, {1, 0, 0}, {0, 1}, {1}}, {{0, 0, 
        0, 1, 0}, {0, 2, 0, 0}, {0, 0, 0}, {0, 0}, {2}}, {{0, 0, 0, 1, 0}, {1,
         1, 0, 0}, {1, 0, 1}, {0, 1}, {0}}, {{0, 0, 0, 1, 0}, {1, 2, 0, 0}, {
        0, 0, 1}, {0, 0}, {1}}, {{0, 0, 0, 1, 0}, {1, 2, 0, 1}, {1, 0, 1}, {0,
         0}, {0}}, {{0, 0, 0, 1, 0}, {2, 2, 0, 0}, {0, 0, 2}, {0, 0}, {0}}, {{
        0, 0, 0, 1, 1}, {0, 0, 0, 0}, {2, 1, 0}, {0, 1}, {0}}, {{0, 0, 0, 1, 
        1}, {0, 1, 0, 0}, {1, 0, 0}, {1, 1}, {0}}, {{0, 0, 0, 1, 1}, {0, 1, 0,
         0}, {1, 1, 0}, {0, 0}, {1}}, {{0, 0, 0, 1, 1}, {0, 2, 0, 0}, {0, 0, 
        0}, {1, 0}, {1}}, {{0, 0, 0, 1, 1}, {1, 1, 0, 0}, {1, 1, 1}, {0, 0}, {
        0}}, {{0, 0, 0, 1, 1}, {1, 1, 1, 0}, {1, 0, 0}, {0, 1}, {0}}, {{0, 0, 
        0, 1, 1}, {1, 2, 0, 0}, {0, 0, 1}, {1, 0}, {0}}, {{0, 0, 0, 1, 1}, {1,
         2, 1, 0}, {0, 0, 0}, {0, 0}, {1}}, {{0, 0, 0, 1, 1}, {1, 2, 1, 1}, {
        1, 0, 0}, {0, 0}, {0}}, {{0, 0, 0, 1, 1}, {2, 2, 1, 0}, {0, 0, 1}, {0,
         0}, {0}}, {{0, 0, 0, 1, 2}, {0, 0, 0, 0}, {2, 2, 0}, {0, 0}, {0}}, {{
        0, 0, 0, 1, 2}, {0, 1, 0, 0}, {1, 1, 0}, {1, 0}, {0}}, {{0, 0, 0, 1, 
        2}, {0, 2, 0, 0}, {0, 0, 0}, {2, 0}, {0}}, {{0, 0, 0, 1, 2}, {1, 1, 1,
         0}, {1, 1, 0}, {0, 0}, {0}}, {{0, 0, 0, 1, 2}, {1, 2, 1, 0}, {0, 0, 
        0}, {1, 0}, {0}}, {{0, 0, 0, 1, 2}, {2, 2, 2, 0}, {0, 0, 0}, {0, 0}, {
        0}}, {{0, 0, 0, 2, 1}, {1, 2, 0, 0}, {1, 0, 1}, {0, 0}, {0}}, {{0, 0, 
        0, 2, 2}, {1, 2, 1, 0}, {1, 0, 0}, {0, 0}, {0}}, {{0, 0, 1, 0, 0}, {1,
         0, 0, 0}, {0, 0, 0}, {1, 2}, {0}}, {{0, 0, 1, 0, 0}, {1, 0, 0, 0}, {
        0, 1, 0}, {0, 1}, {1}}, {{0, 0, 1, 0, 0}, {1, 0, 0, 1}, {1, 1, 0}, {0,
         1}, {0}}, {{0, 0, 1, 0, 0}, {1, 1, 0, 1}, {0, 0, 0}, {1, 1}, {0}}, {{
        0, 0, 1, 0, 0}, {1, 1, 0, 1}, {0, 1, 0}, {0, 0}, {1}}, {{0, 0, 1, 0, 
        0}, {1, 1, 0, 2}, {1, 1, 0}, {0, 0}, {0}}, {{0, 0, 1, 0, 0}, {1, 2, 0,
         2}, {0, 0, 0}, {1, 0}, {0}}, {{0, 0, 1, 0, 0}, {2, 0, 0, 0}, {0, 1, 
        1}, {0, 1}, {0}}, {{0, 0, 1, 0, 0}, {2, 0, 1, 0}, {0, 0, 0}, {0, 2}, {
        0}}, {{0, 0, 1, 0, 0}, {2, 1, 0, 1}, {0, 1, 1}, {0, 0}, {0}}, {{0, 0, 
        1, 0, 0}, {2, 1, 1, 1}, {0, 0, 0}, {0, 1}, {0}}, {{0, 0, 1, 0, 0}, {2,
         2, 1, 2}, {0, 0, 0}, {0, 0}, {0}}, {{0, 0, 1, 0, 1}, {1, 0, 0, 0}, {
        0, 1, 0}, {1, 1}, {0}}, {{0, 0, 1, 0, 1}, {1, 0, 0, 0}, {0, 2, 0}, {0,
         0}, {1}}, {{0, 0, 1, 0, 1}, {1, 0, 0, 1}, {1, 2, 0}, {0, 0}, {0}}, {{
        0, 0, 1, 0, 1}, {1, 1, 0, 1}, {0, 1, 0}, {1, 0}, {0}}, {{0, 0, 1, 0, 
        1}, {2, 0, 0, 0}, {0, 2, 1}, {0, 0}, {0}}, {{0, 0, 1, 0, 1}, {2, 0, 1,
         0}, {0, 1, 0}, {0, 1}, {0}}, {{0, 0, 1, 0, 1}, {2, 1, 1, 1}, {0, 1, 
        0}, {0, 0}, {0}}, {{0, 0, 1, 0, 2}, {1, 0, 0, 0}, {0, 2, 0}, {1, 0}, {
        0}}, {{0, 0, 1, 0, 2}, {2, 0, 1, 0}, {0, 2, 0}, {0, 0}, {0}}, {{0, 0, 
        1, 1, 0}, {1, 0, 0, 0}, {1, 0, 0}, {0, 2}, {0}}, {{0, 0, 1, 1, 0}, {1,
         1, 0, 0}, {0, 0, 0}, {0, 1}, {1}}, {{0, 0, 1, 1, 0}, {1, 1, 0, 1}, {
        1, 0, 0}, {0, 1}, {0}}, {{0, 0, 1, 1, 0}, {1, 2, 0, 1}, {0, 0, 0}, {0,
         0}, {1}}, {{0, 0, 1, 1, 0}, {2, 1, 0, 0}, {0, 0, 1}, {0, 1}, {0}}, {{
        0, 0, 1, 1, 0}, {2, 2, 0, 1}, {0, 0, 1}, {0, 0}, {0}}, {{0, 0, 1, 1, 
        1}, {1, 0, 0, 0}, {1, 1, 0}, {0, 1}, {0}}, {{0, 0, 1, 1, 1}, {1, 1, 0,
         0}, {0, 0, 0}, {1, 1}, {0}}, {{0, 0, 1, 1, 1}, {1, 1, 0, 0}, {0, 1, 
        0}, {0, 0}, {1}}, {{0, 0, 1, 1, 1}, {1, 1, 0, 1}, {1, 1, 0}, {0, 0}, {
        0}}, {{0, 0, 1, 1, 1}, {1, 2, 0, 1}, {0, 0, 0}, {1, 0}, {0}}, {{0, 0, 
        1, 1, 1}, {2, 1, 0, 0}, {0, 1, 1}, {0, 0}, {0}}, {{0, 0, 1, 1, 1}, {2,
         1, 1, 0}, {0, 0, 0}, {0, 1}, {0}}, {{0, 0, 1, 1, 1}, {2, 2, 1, 1}, {
        0, 0, 0}, {0, 0}, {0}}, {{0, 0, 1, 1, 2}, {1, 0, 0, 0}, {1, 2, 0}, {0,
         0}, {0}}, {{0, 0, 1, 1, 2}, {1, 1, 0, 0}, {0, 1, 0}, {1, 0}, {0}}, {{
        0, 0, 1, 1, 2}, {2, 1, 1, 0}, {0, 1, 0}, {0, 0}, {0}}, {{0, 0, 1, 2, 
        1}, {1, 1, 0, 0}, {1, 0, 0}, {0, 1}, {0}}, {{0, 0, 1, 2, 1}, {1, 2, 0,
         0}, {0, 0, 0}, {0, 0}, {1}}, {{0, 0, 1, 2, 1}, {2, 2, 0, 0}, {0, 0, 
        1}, {0, 0}, {0}}, {{0, 0, 1, 2, 2}, {1, 1, 0, 0}, {1, 1, 0}, {0, 0}, {
        0}}, {{0, 0, 1, 2, 2}, {1, 2, 0, 0}, {0, 0, 0}, {1, 0}, {0}}, {{0, 0, 
        1, 2, 2}, {2, 2, 1, 0}, {0, 0, 0}, {0, 0}, {0}}, {{0, 0, 2, 0, 0}, {2,
         0, 0, 1}, {0, 1, 0}, {0, 1}, {0}}, {{0, 0, 2, 0, 0}, {2, 1, 0, 2}, {
        0, 1, 0}, {0, 0}, {0}}, {{0, 0, 2, 0, 1}, {2, 0, 0, 1}, {0, 2, 0}, {0,
         0}, {0}}, {{0, 0, 2, 1, 0}, {2, 0, 0, 0}, {0, 0, 0}, {0, 2}, {0}}, {{
        0, 0, 2, 1, 0}, {2, 1, 0, 1}, {0, 0, 0}, {0, 1}, {0}}, {{0, 0, 2, 1, 
        1}, {2, 0, 0, 0}, {0, 1, 0}, {0, 1}, {0}}, {{0, 0, 2, 1, 1}, {2, 1, 0,
         1}, {0, 1, 0}, {0, 0}, {0}}, {{0, 0, 2, 1, 2}, {2, 0, 0, 0}, {0, 2, 
        0}, {0, 0}, {0}}, {{0, 0, 2, 2, 1}, {2, 1, 0, 0}, {0, 0, 0}, {0, 1}, {
        0}}, {{0, 0, 2, 2, 1}, {2, 2, 0, 1}, {0, 0, 0}, {0, 0}, {0}}, {{0, 0, 
        2, 2, 2}, {2, 1, 0, 0}, {0, 1, 0}, {0, 0}, {0}}, {{0, 0, 2, 3, 2}, {2,
         2, 0, 0}, {0, 0, 0}, {0, 0}, {0}}, {{0, 1, 0, 0, 0}, {0, 0, 0, 0}, {
        1, 0, 1}, {1, 1}, {0}}, {{0, 1, 0, 0, 0}, {0, 0, 0, 0}, {1, 1, 1}, {0,
         0}, {1}}, {{0, 1, 0, 0, 0}, {0, 0, 0, 1}, {2, 1, 1}, {0, 0}, {0}}, {{
        0, 1, 0, 0, 0}, {0, 0, 1, 0}, {1, 0, 0}, {0, 1}, {1}}, {{0, 1, 0, 0, 
        0}, {0, 0, 1, 1}, {2, 0, 0}, {0, 1}, {0}}, {{0, 1, 0, 0, 0}, {0, 1, 0,
         0}, {0, 0, 1}, {1, 0}, {1}}, {{0, 1, 0, 0, 0}, {0, 1, 0, 1}, {1, 0, 
        1}, {1, 0}, {0}}, {{0, 1, 0, 0, 0}, {0, 1, 1, 0}, {0, 0, 0}, {0, 0}, {
        2}}, {{0, 1, 0, 0, 0}, {0, 1, 1, 1}, {1, 0, 0}, {0, 0}, {1}}, {{0, 1, 
        0, 0, 0}, {1, 0, 0, 0}, {1, 1, 2}, {0, 0}, {0}}, {{0, 1, 0, 0, 0}, {1,
         0, 1, 0}, {1, 0, 1}, {0, 1}, {0}}, {{0, 1, 0, 0, 0}, {1, 1, 0, 0}, {
        0, 0, 2}, {1, 0}, {0}}, {{0, 1, 0, 0, 0}, {1, 1, 1, 0}, {0, 0, 1}, {0,
         0}, {1}}, {{0, 1, 0, 0, 0}, {1, 1, 1, 1}, {1, 0, 1}, {0, 0}, {0}}, {{
        0, 1, 0, 0, 1}, {0, 0, 0, 0}, {1, 1, 1}, {1, 0}, {0}}, {{0, 1, 0, 0, 
        1}, {0, 0, 1, 0}, {1, 0, 0}, {1, 1}, {0}}, {{0, 1, 0, 0, 1}, {0, 0, 1,
         0}, {1, 1, 0}, {0, 0}, {1}}, {{0, 1, 0, 0, 1}, {0, 0, 1, 1}, {2, 1, 
        0}, {0, 0}, {0}}, {{0, 1, 0, 0, 1}, {0, 1, 0, 0}, {0, 0, 1}, {2, 0}, {
        0}}, {{0, 1, 0, 0, 1}, {0, 1, 1, 0}, {0, 0, 0}, {1, 0}, {1}}, {{0, 1, 
        0, 0, 1}, {0, 1, 1, 1}, {1, 0, 0}, {1, 0}, {0}}, {{0, 1, 0, 0, 1}, {1,
         0, 1, 0}, {1, 1, 1}, {0, 0}, {0}}, {{0, 1, 0, 0, 1}, {1, 0, 2, 0}, {
        1, 0, 0}, {0, 1}, {0}}, {{0, 1, 0, 0, 1}, {1, 1, 1, 0}, {0, 0, 1}, {1,
         0}, {0}}, {{0, 1, 0, 0, 1}, {1, 1, 2, 0}, {0, 0, 0}, {0, 0}, {1}}, {{
        0, 1, 0, 0, 1}, {1, 1, 2, 1}, {1, 0, 0}, {0, 0}, {0}}, {{0, 1, 0, 0, 
        2}, {0, 0, 1, 0}, {1, 1, 0}, {1, 0}, {0}}, {{0, 1, 0, 0, 2}, {0, 1, 1,
         0}, {0, 0, 0}, {2, 0}, {0}}, {{0, 1, 0, 0, 2}, {1, 0, 2, 0}, {1, 1, 
        0}, {0, 0}, {0}}, {{0, 1, 0, 0, 2}, {1, 1, 2, 0}, {0, 0, 0}, {1, 0}, {
        0}}, {{0, 1, 0, 1, 0}, {0, 0, 0, 0}, {2, 0, 1}, {0, 1}, {0}}, {{0, 1, 
        0, 1, 0}, {0, 1, 0, 0}, {1, 0, 1}, {0, 0}, {1}}, {{0, 1, 0, 1, 0}, {1,
         1, 0, 0}, {1, 0, 2}, {0, 0}, {0}}, {{0, 1, 0, 1, 1}, {0, 0, 0, 0}, {
        2, 1, 1}, {0, 0}, {0}}, {{0, 1, 0, 1, 1}, {0, 0, 1, 0}, {2, 0, 0}, {0,
         1}, {0}}, {{0, 1, 0, 1, 1}, {0, 1, 0, 0}, {1, 0, 1}, {1, 0}, {0}}, {{
        0, 1, 0, 1, 1}, {0, 1, 1, 0}, {1, 0, 0}, {0, 0}, {1}}, {{0, 1, 0, 1, 
        1}, {1, 1, 1, 0}, {1, 0, 1}, {0, 0}, {0}}, {{0, 1, 0, 1, 2}, {0, 0, 1,
         0}, {2, 1, 0}, {0, 0}, {0}}, {{0, 1, 0, 1, 2}, {0, 1, 1, 0}, {1, 0, 
        0}, {1, 0}, {0}}, {{0, 1, 0, 1, 2}, {1, 1, 2, 0}, {1, 0, 0}, {0, 0}, {
        0}}, {{0, 1, 1, 0, 0}, {0, 0, 0, 0}, {0, 0, 0}, {1, 1}, {1}}, {{0, 1, 
        1, 0, 0}, {0, 0, 0, 0}, {0, 1, 0}, {0, 0}, {2}}, {{0, 1, 1, 0, 0}, {0,
         0, 0, 1}, {1, 0, 0}, {1, 1}, {0}}, {{0, 1, 1, 0, 0}, {0, 0, 0, 1}, {
        1, 1, 0}, {0, 0}, {1}}, {{0, 1, 1, 0, 0}, {0, 0, 0, 2}, {2, 1, 0}, {0,
         0}, {0}}, {{0, 1, 1, 0, 0}, {0, 1, 0, 1}, {0, 0, 0}, {1, 0}, {1}}, {{
        0, 1, 1, 0, 0}, {0, 1, 0, 2}, {1, 0, 0}, {1, 0}, {0}}, {{0, 1, 1, 0, 
        0}, {1, 0, 0, 0}, {0, 0, 1}, {1, 1}, {0}}, {{0, 1, 1, 0, 0}, {1, 0, 0,
         0}, {0, 1, 1}, {0, 0}, {1}}, {{0, 1, 1, 0, 0}, {1, 0, 0, 1}, {1, 1, 
        1}, {0, 0}, {0}}, {{0, 1, 1, 0, 0}, {1, 0, 1, 0}, {0, 0, 0}, {0, 1}, {
        1}}, {{0, 1, 1, 0, 0}, {1, 0, 1, 1}, {1, 0, 0}, {0, 1}, {0}}, {{0, 1, 
        1, 0, 0}, {1, 1, 0, 1}, {0, 0, 1}, {1, 0}, {0}}, {{0, 1, 1, 0, 0}, {1,
         1, 1, 1}, {0, 0, 0}, {0, 0}, {1}}, {{0, 1, 1, 0, 0}, {1, 1, 1, 2}, {
        1, 0, 0}, {0, 0}, {0}}, {{0, 1, 1, 0, 1}, {0, 0, 0, 0}, {0, 0, 0}, {2,
         1}, {0}}, {{0, 1, 1, 0, 1}, {0, 0, 0, 0}, {0, 1, 0}, {1, 0}, {1}}, {{
        0, 1, 1, 0, 1}, {0, 0, 0, 1}, {1, 1, 0}, {1, 0}, {0}}, {{0, 1, 1, 0, 
        1}, {0, 1, 0, 1}, {0, 0, 0}, {2, 0}, {0}}, {{0, 1, 1, 0, 1}, {1, 0, 0,
         0}, {0, 1, 1}, {1, 0}, {0}}, {{0, 1, 1, 0, 1}, {1, 0, 1, 0}, {0, 0, 
        0}, {1, 1}, {0}}, {{0, 1, 1, 0, 1}, {1, 0, 1, 0}, {0, 1, 0}, {0, 0}, {
        1}}, {{0, 1, 1, 0, 1}, {1, 0, 1, 1}, {1, 1, 0}, {0, 0}, {0}}, {{0, 1, 
        1, 0, 1}, {1, 1, 1, 1}, {0, 0, 0}, {1, 0}, {0}}, {{0, 1, 1, 0, 2}, {0,
         0, 0, 0}, {0, 1, 0}, {2, 0}, {0}}, {{0, 1, 1, 0, 2}, {1, 0, 1, 0}, {
        0, 1, 0}, {1, 0}, {0}}, {{0, 1, 1, 1, 0}, {0, 0, 0, 0}, {1, 0, 0}, {0,
         1}, {1}}, {{0, 1, 1, 1, 0}, {0, 0, 0, 1}, {2, 0, 0}, {0, 1}, {0}}, {{
        0, 1, 1, 1, 0}, {0, 1, 0, 0}, {0, 0, 0}, {0, 0}, {2}}, {{0, 1, 1, 1, 
        0}, {0, 1, 0, 1}, {1, 0, 0}, {0, 0}, {1}}, {{0, 1, 1, 1, 0}, {1, 0, 0,
         0}, {1, 0, 1}, {0, 1}, {0}}, {{0, 1, 1, 1, 0}, {1, 1, 0, 0}, {0, 0, 
        1}, {0, 0}, {1}}, {{0, 1, 1, 1, 0}, {1, 1, 0, 1}, {1, 0, 1}, {0, 0}, {
        0}}, {{0, 1, 1, 1, 1}, {0, 0, 0, 0}, {1, 0, 0}, {1, 1}, {0}}, {{0, 1, 
        1, 1, 1}, {0, 0, 0, 0}, {1, 1, 0}, {0, 0}, {1}}, {{0, 1, 1, 1, 1}, {0,
         0, 0, 1}, {2, 1, 0}, {0, 0}, {0}}, {{0, 1, 1, 1, 1}, {0, 1, 0, 0}, {
        0, 0, 0}, {1, 0}, {1}}, {{0, 1, 1, 1, 1}, {0, 1, 0, 1}, {1, 0, 0}, {1,
         0}, {0}}, {{0, 1, 1, 1, 1}, {1, 0, 0, 0}, {1, 1, 1}, {0, 0}, {0}}, {{
        0, 1, 1, 1, 1}, {1, 0, 1, 0}, {1, 0, 0}, {0, 1}, {0}}, {{0, 1, 1, 1, 
        1}, {1, 1, 0, 0}, {0, 0, 1}, {1, 0}, {0}}, {{0, 1, 1, 1, 1}, {1, 1, 1,
         0}, {0, 0, 0}, {0, 0}, {1}}, {{0, 1, 1, 1, 1}, {1, 1, 1, 1}, {1, 0, 
        0}, {0, 0}, {0}}, {{0, 1, 1, 1, 2}, {0, 0, 0, 0}, {1, 1, 0}, {1, 0}, {
        0}}, {{0, 1, 1, 1, 2}, {0, 1, 0, 0}, {0, 0, 0}, {2, 0}, {0}}, {{0, 1, 
        1, 1, 2}, {1, 0, 1, 0}, {1, 1, 0}, {0, 0}, {0}}, {{0, 1, 1, 1, 2}, {1,
         1, 1, 0}, {0, 0, 0}, {1, 0}, {0}}, {{0, 1, 1, 2, 1}, {0, 0, 0, 0}, {
        2, 0, 0}, {0, 1}, {0}}, {{0, 1, 1, 2, 1}, {0, 1, 0, 0}, {1, 0, 0}, {0,
         0}, {1}}, {{0, 1, 1, 2, 1}, {1, 1, 0, 0}, {1, 0, 1}, {0, 0}, {0}}, {{
        0, 1, 1, 2, 2}, {0, 0, 0, 0}, {2, 1, 0}, {0, 0}, {0}}, {{0, 1, 1, 2, 
        2}, {0, 1, 0, 0}, {1, 0, 0}, {1, 0}, {0}}, {{0, 1, 1, 2, 2}, {1, 1, 1,
         0}, {1, 0, 0}, {0, 0}, {0}}, {{0, 1, 2, 0, 0}, {1, 0, 0, 1}, {0, 0, 
        0}, {1, 1}, {0}}, {{0, 1, 2, 0, 0}, {1, 0, 0, 1}, {0, 1, 0}, {0, 0}, {
        1}}, {{0, 1, 2, 0, 0}, {1, 0, 0, 2}, {1, 1, 0}, {0, 0}, {0}}, {{0, 1, 
        2, 0, 0}, {1, 1, 0, 2}, {0, 0, 0}, {1, 0}, {0}}, {{0, 1, 2, 0, 1}, {1,
         0, 0, 1}, {0, 1, 0}, {1, 0}, {0}}, {{0, 1, 2, 1, 0}, {1, 0, 0, 0}, {
        0, 0, 0}, {0, 1}, {1}}, {{0, 1, 2, 1, 0}, {1, 0, 0, 1}, {1, 0, 0}, {0,
         1}, {0}}, {{0, 1, 2, 1, 0}, {1, 1, 0, 1}, {0, 0, 0}, {0, 0}, {1}}, {{
        0, 1, 2, 1, 1}, {1, 0, 0, 0}, {0, 0, 0}, {1, 1}, {0}}, {{0, 1, 2, 1, 
        1}, {1, 0, 0, 0}, {0, 1, 0}, {0, 0}, {1}}, {{0, 1, 2, 1, 1}, {1, 0, 0,
         1}, {1, 1, 0}, {0, 0}, {0}}, {{0, 1, 2, 1, 1}, {1, 1, 0, 1}, {0, 0, 
        0}, {1, 0}, {0}}, {{0, 1, 2, 1, 2}, {1, 0, 0, 0}, {0, 1, 0}, {1, 0}, {
        0}}, {{0, 1, 2, 2, 1}, {1, 0, 0, 0}, {1, 0, 0}, {0, 1}, {0}}, {{0, 1, 
        2, 2, 1}, {1, 1, 0, 0}, {0, 0, 0}, {0, 0}, {1}}, {{0, 1, 2, 2, 1}, {1,
         1, 0, 1}, {1, 0, 0}, {0, 0}, {0}}, {{0, 1, 2, 2, 2}, {1, 0, 0, 0}, {
        1, 1, 0}, {0, 0}, {0}}, {{0, 1, 2, 2, 2}, {1, 1, 0, 0}, {0, 0, 0}, {1,
         0}, {0}}, {{0, 1, 2, 3, 2}, {1, 1, 0, 0}, {1, 0, 0}, {0, 0}, {0}}, {{
        0, 2, 0, 0, 0}, {0, 0, 0, 0}, {1, 0, 2}, {1, 0}, {0}}, {{0, 2, 0, 0, 
        0}, {0, 0, 1, 0}, {1, 0, 1}, {0, 0}, {1}}, {{0, 2, 0, 0, 0}, {0, 0, 1,
         1}, {2, 0, 1}, {0, 0}, {0}}, {{0, 2, 0, 0, 1}, {0, 0, 1, 0}, {1, 0, 
        1}, {1, 0}, {0}}, {{0, 2, 0, 0, 1}, {0, 0, 2, 0}, {1, 0, 0}, {0, 0}, {
        1}}, {{0, 2, 0, 0, 1}, {0, 0, 2, 1}, {2, 0, 0}, {0, 0}, {0}}, {{0, 2, 
        0, 0, 2}, {0, 0, 2, 0}, {1, 0, 0}, {1, 0}, {0}}, {{0, 2, 0, 1, 0}, {0,
         0, 0, 0}, {2, 0, 2}, {0, 0}, {0}}, {{0, 2, 0, 1, 1}, {0, 0, 1, 0}, {
        2, 0, 1}, {0, 0}, {0}}, {{0, 2, 0, 1, 2}, {0, 0, 2, 0}, {2, 0, 0}, {0,
         0}, {0}}, {{0, 2, 1, 0, 0}, {0, 0, 0, 0}, {0, 0, 1}, {1, 0}, {1}}, {{
        0, 2, 1, 0, 0}, {0, 0, 0, 1}, {1, 0, 1}, {1, 0}, {0}}, {{0, 2, 1, 0, 
        0}, {0, 0, 1, 0}, {0, 0, 0}, {0, 0}, {2}}, {{0, 2, 1, 0, 0}, {0, 0, 1,
         1}, {1, 0, 0}, {0, 0}, {1}}, {{0, 2, 1, 0, 0}, {0, 0, 1, 2}, {2, 0, 
        0}, {0, 0}, {0}}, {{0, 2, 1, 0, 1}, {0, 0, 0, 0}, {0, 0, 1}, {2, 0}, {
        0}}, {{0, 2, 1, 0, 1}, {0, 0, 1, 0}, {0, 0, 0}, {1, 0}, {1}}, {{0, 2, 
        1, 0, 1}, {0, 0, 1, 1}, {1, 0, 0}, {1, 0}, {0}}, {{0, 2, 1, 0, 2}, {0,
         0, 1, 0}, {0, 0, 0}, {2, 0}, {0}}, {{0, 2, 1, 1, 0}, {0, 0, 0, 0}, {
        1, 0, 1}, {0, 0}, {1}}, {{0, 2, 1, 1, 0}, {0, 0, 0, 1}, {2, 0, 1}, {0,
         0}, {0}}, {{0, 2, 1, 1, 1}, {0, 0, 0, 0}, {1, 0, 1}, {1, 0}, {0}}, {{
        0, 2, 1, 1, 1}, {0, 0, 1, 0}, {1, 0, 0}, {0, 0}, {1}}, {{0, 2, 1, 1, 
        1}, {0, 0, 1, 1}, {2, 0, 0}, {0, 0}, {0}}, {{0, 2, 1, 1, 2}, {0, 0, 1,
         0}, {1, 0, 0}, {1, 0}, {0}}, {{0, 2, 1, 2, 1}, {0, 0, 0, 0}, {2, 0, 
        1}, {0, 0}, {0}}, {{0, 2, 1, 2, 2}, {0, 0, 1, 0}, {2, 0, 0}, {0, 0}, {
        0}}, {{0, 2, 2, 0, 0}, {0, 0, 0, 1}, {0, 0, 0}, {1, 0}, {1}}, {{0, 2, 
        2, 0, 0}, {0, 0, 0, 2}, {1, 0, 0}, {1, 0}, {0}}, {{0, 2, 2, 0, 1}, {0,
         0, 0, 1}, {0, 0, 0}, {2, 0}, {0}}, {{0, 2, 2, 1, 0}, {0, 0, 0, 0}, {
        0, 0, 0}, {0, 0}, {2}}, {{0, 2, 2, 1, 0}, {0, 0, 0, 1}, {1, 0, 0}, {0,
         0}, {1}}, {{0, 2, 2, 1, 1}, {0, 0, 0, 0}, {0, 0, 0}, {1, 0}, {1}}, {{
        0, 2, 2, 1, 1}, {0, 0, 0, 1}, {1, 0, 0}, {1, 0}, {0}}, {{0, 2, 2, 1, 
        2}, {0, 0, 0, 0}, {0, 0, 0}, {2, 0}, {0}}, {{0, 2, 2, 2, 1}, {0, 0, 0,
         0}, {1, 0, 0}, {0, 0}, {1}}, {{0, 2, 2, 2, 1}, {0, 0, 0, 1}, {2, 0, 
        0}, {0, 0}, {0}}, {{0, 2, 2, 2, 2}, {0, 0, 0, 0}, {1, 0, 0}, {1, 0}, {
        0}}, {{0, 2, 2, 3, 2}, {0, 0, 0, 0}, {2, 0, 0}, {0, 0}, {0}}, {{1, 0, 
        0, 0, 0}, {1, 1, 0, 0}, {0, 1, 1}, {0, 1}, {0}}, {{1, 0, 0, 0, 0}, {1,
         1, 1, 0}, {0, 0, 0}, {0, 2}, {0}}, {{1, 0, 0, 0, 0}, {1, 2, 0, 1}, {
        0, 1, 1}, {0, 0}, {0}}, {{1, 0, 0, 0, 0}, {1, 2, 1, 1}, {0, 0, 0}, {0,
         1}, {0}}, {{1, 0, 0, 0, 0}, {1, 3, 1, 2}, {0, 0, 0}, {0, 0}, {0}}, {{
        1, 0, 0, 0, 1}, {1, 1, 0, 0}, {0, 2, 1}, {0, 0}, {0}}, {{1, 0, 0, 0, 
        1}, {1, 1, 1, 0}, {0, 1, 0}, {0, 1}, {0}}, {{1, 0, 0, 0, 1}, {1, 2, 1,
         1}, {0, 1, 0}, {0, 0}, {0}}, {{1, 0, 0, 0, 2}, {1, 1, 1, 0}, {0, 2, 
        0}, {0, 0}, {0}}, {{1, 0, 0, 1, 0}, {1, 2, 0, 0}, {0, 0, 1}, {0, 1}, {
        0}}, {{1, 0, 0, 1, 0}, {1, 3, 0, 1}, {0, 0, 1}, {0, 0}, {0}}, {{1, 0, 
        0, 1, 1}, {1, 2, 0, 0}, {0, 1, 1}, {0, 0}, {0}}, {{1, 0, 0, 1, 1}, {1,
         2, 1, 0}, {0, 0, 0}, {0, 1}, {0}}, {{1, 0, 0, 1, 1}, {1, 3, 1, 1}, {
        0, 0, 0}, {0, 0}, {0}}, {{1, 0, 0, 1, 2}, {1, 2, 1, 0}, {0, 1, 0}, {0,
         0}, {0}}, {{1, 0, 0, 2, 1}, {1, 3, 0, 0}, {0, 0, 1}, {0, 0}, {0}}, {{
        1, 0, 0, 2, 2}, {1, 3, 1, 0}, {0, 0, 0}, {0, 0}, {0}}, {{1, 1, 0, 0, 
        0}, {0, 0, 0, 0}, {1, 1, 1}, {0, 1}, {0}}, {{1, 1, 0, 0, 0}, {0, 0, 1,
         0}, {1, 0, 0}, {0, 2}, {0}}, {{1, 1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 
        1}, {1, 1}, {0}}, {{1, 1, 0, 0, 0}, {0, 1, 0, 0}, {0, 1, 1}, {0, 0}, {
        1}}, {{1, 1, 0, 0, 0}, {0, 1, 0, 1}, {1, 1, 1}, {0, 0}, {0}}, {{1, 1, 
        0, 0, 0}, {0, 1, 1, 0}, {0, 0, 0}, {0, 1}, {1}}, {{1, 1, 0, 0, 0}, {0,
         1, 1, 1}, {1, 0, 0}, {0, 1}, {0}}, {{1, 1, 0, 0, 0}, {0, 2, 0, 1}, {
        0, 0, 1}, {1, 0}, {0}}, {{1, 1, 0, 0, 0}, {0, 2, 1, 1}, {0, 0, 0}, {0,
         0}, {1}}, {{1, 1, 0, 0, 0}, {1, 1, 0, 0}, {0, 1, 2}, {0, 0}, {0}}, {{
        1, 1, 0, 0, 0}, {1, 1, 1, 0}, {0, 0, 1}, {0, 1}, {0}}, {{1, 1, 0, 0, 
        0}, {1, 2, 1, 1}, {0, 0, 1}, {0, 0}, {0}}, {{1, 1, 0, 0, 1}, {0, 0, 0,
         0}, {1, 2, 1}, {0, 0}, {0}}, {{1, 1, 0, 0, 1}, {0, 0, 1, 0}, {1, 1, 
        0}, {0, 1}, {0}}, {{1, 1, 0, 0, 1}, {0, 1, 0, 0}, {0, 1, 1}, {1, 0}, {
        0}}, {{1, 1, 0, 0, 1}, {0, 1, 1, 0}, {0, 0, 0}, {1, 1}, {0}}, {{1, 1, 
        0, 0, 1}, {0, 1, 1, 0}, {0, 1, 0}, {0, 0}, {1}}, {{1, 1, 0, 0, 1}, {0,
         1, 1, 1}, {1, 1, 0}, {0, 0}, {0}}, {{1, 1, 0, 0, 1}, {0, 2, 1, 1}, {
        0, 0, 0}, {1, 0}, {0}}, {{1, 1, 0, 0, 1}, {1, 1, 1, 0}, {0, 1, 1}, {0,
         0}, {0}}, {{1, 1, 0, 0, 1}, {1, 1, 2, 0}, {0, 0, 0}, {0, 1}, {0}}, {{
        1, 1, 0, 0, 1}, {1, 2, 2, 1}, {0, 0, 0}, {0, 0}, {0}}, {{1, 1, 0, 0, 
        2}, {0, 0, 1, 0}, {1, 2, 0}, {0, 0}, {0}}, {{1, 1, 0, 0, 2}, {0, 1, 1,
         0}, {0, 1, 0}, {1, 0}, {0}}, {{1, 1, 0, 0, 2}, {1, 1, 2, 0}, {0, 1, 
        0}, {0, 0}, {0}}, {{1, 1, 0, 1, 0}, {0, 1, 0, 0}, {1, 0, 1}, {0, 1}, {
        0}}, {{1, 1, 0, 1, 0}, {0, 2, 0, 0}, {0, 0, 1}, {0, 0}, {1}}, {{1, 1, 
        0, 1, 0}, {1, 2, 0, 0}, {0, 0, 2}, {0, 0}, {0}}, {{1, 1, 0, 1, 1}, {0,
         1, 0, 0}, {1, 1, 1}, {0, 0}, {0}}, {{1, 1, 0, 1, 1}, {0, 1, 1, 0}, {
        1, 0, 0}, {0, 1}, {0}}, {{1, 1, 0, 1, 1}, {0, 2, 0, 0}, {0, 0, 1}, {1,
         0}, {0}}, {{1, 1, 0, 1, 1}, {0, 2, 1, 0}, {0, 0, 0}, {0, 0}, {1}}, {{
        1, 1, 0, 1, 1}, {1, 2, 1, 0}, {0, 0, 1}, {0, 0}, {0}}, {{1, 1, 0, 1, 
        2}, {0, 1, 1, 0}, {1, 1, 0}, {0, 0}, {0}}, {{1, 1, 0, 1, 2}, {0, 2, 1,
         0}, {0, 0, 0}, {1, 0}, {0}}, {{1, 1, 0, 1, 2}, {1, 2, 2, 0}, {0, 0, 
        0}, {0, 0}, {0}}, {{1, 1, 1, 0, 0}, {0, 0, 0, 0}, {0, 0, 0}, {1, 2}, {
        0}}, {{1, 1, 1, 0, 0}, {0, 0, 0, 0}, {0, 1, 0}, {0, 1}, {1}}, {{1, 1, 
        1, 0, 0}, {0, 0, 0, 1}, {1, 1, 0}, {0, 1}, {0}}, {{1, 1, 1, 0, 0}, {0,
         1, 0, 1}, {0, 0, 0}, {1, 1}, {0}}, {{1, 1, 1, 0, 0}, {0, 1, 0, 1}, {
        0, 1, 0}, {0, 0}, {1}}, {{1, 1, 1, 0, 0}, {0, 1, 0, 2}, {1, 1, 0}, {0,
         0}, {0}}, {{1, 1, 1, 0, 0}, {0, 2, 0, 2}, {0, 0, 0}, {1, 0}, {0}}, {{
        1, 1, 1, 0, 0}, {1, 0, 0, 0}, {0, 1, 1}, {0, 1}, {0}}, {{1, 1, 1, 0, 
        0}, {1, 0, 1, 0}, {0, 0, 0}, {0, 2}, {0}}, {{1, 1, 1, 0, 0}, {1, 1, 0,
         1}, {0, 1, 1}, {0, 0}, {0}}, {{1, 1, 1, 0, 0}, {1, 1, 1, 1}, {0, 0, 
        0}, {0, 1}, {0}}, {{1, 1, 1, 0, 0}, {1, 2, 1, 2}, {0, 0, 0}, {0, 0}, {
        0}}, {{1, 1, 1, 0, 1}, {0, 0, 0, 0}, {0, 1, 0}, {1, 1}, {0}}, {{1, 1, 
        1, 0, 1}, {0, 0, 0, 0}, {0, 2, 0}, {0, 0}, {1}}, {{1, 1, 1, 0, 1}, {0,
         0, 0, 1}, {1, 2, 0}, {0, 0}, {0}}, {{1, 1, 1, 0, 1}, {0, 1, 0, 1}, {
        0, 1, 0}, {1, 0}, {0}}, {{1, 1, 1, 0, 1}, {1, 0, 0, 0}, {0, 2, 1}, {0,
         0}, {0}}, {{1, 1, 1, 0, 1}, {1, 0, 1, 0}, {0, 1, 0}, {0, 1}, {0}}, {{
        1, 1, 1, 0, 1}, {1, 1, 1, 1}, {0, 1, 0}, {0, 0}, {0}}, {{1, 1, 1, 0, 
        2}, {0, 0, 0, 0}, {0, 2, 0}, {1, 0}, {0}}, {{1, 1, 1, 0, 2}, {1, 0, 1,
         0}, {0, 2, 0}, {0, 0}, {0}}, {{1, 1, 1, 1, 0}, {0, 0, 0, 0}, {1, 0, 
        0}, {0, 2}, {0}}, {{1, 1, 1, 1, 0}, {0, 1, 0, 0}, {0, 0, 0}, {0, 1}, {
        1}}, {{1, 1, 1, 1, 0}, {0, 1, 0, 1}, {1, 0, 0}, {0, 1}, {0}}, {{1, 1, 
        1, 1, 0}, {0, 2, 0, 1}, {0, 0, 0}, {0, 0}, {1}}, {{1, 1, 1, 1, 0}, {1,
         1, 0, 0}, {0, 0, 1}, {0, 1}, {0}}, {{1, 1, 1, 1, 0}, {1, 2, 0, 1}, {
        0, 0, 1}, {0, 0}, {0}}, {{1, 1, 1, 1, 1}, {0, 0, 0, 0}, {1, 1, 0}, {0,
         1}, {0}}, {{1, 1, 1, 1, 1}, {0, 1, 0, 0}, {0, 0, 0}, {1, 1}, {0}}, {{
        1, 1, 1, 1, 1}, {0, 1, 0, 0}, {0, 1, 0}, {0, 0}, {1}}, {{1, 1, 1, 1, 
        1}, {0, 1, 0, 1}, {1, 1, 0}, {0, 0}, {0}}, {{1, 1, 1, 1, 1}, {0, 2, 0,
         1}, {0, 0, 0}, {1, 0}, {0}}, {{1, 1, 1, 1, 1}, {1, 1, 0, 0}, {0, 1, 
        1}, {0, 0}, {0}}, {{1, 1, 1, 1, 1}, {1, 1, 1, 0}, {0, 0, 0}, {0, 1}, {
        0}}, {{1, 1, 1, 1, 1}, {1, 2, 1, 1}, {0, 0, 0}, {0, 0}, {0}}, {{1, 1, 
        1, 1, 2}, {0, 0, 0, 0}, {1, 2, 0}, {0, 0}, {0}}, {{1, 1, 1, 1, 2}, {0,
         1, 0, 0}, {0, 1, 0}, {1, 0}, {0}}, {{1, 1, 1, 1, 2}, {1, 1, 1, 0}, {
        0, 1, 0}, {0, 0}, {0}}, {{1, 1, 1, 2, 1}, {0, 1, 0, 0}, {1, 0, 0}, {0,
         1}, {0}}, {{1, 1, 1, 2, 1}, {0, 2, 0, 0}, {0, 0, 0}, {0, 0}, {1}}, {{
        1, 1, 1, 2, 1}, {1, 2, 0, 0}, {0, 0, 1}, {0, 0}, {0}}, {{1, 1, 1, 2, 
        2}, {0, 1, 0, 0}, {1, 1, 0}, {0, 0}, {0}}, {{1, 1, 1, 2, 2}, {0, 2, 0,
         0}, {0, 0, 0}, {1, 0}, {0}}, {{1, 1, 1, 2, 2}, {1, 2, 1, 0}, {0, 0, 
        0}, {0, 0}, {0}}, {{1, 1, 2, 0, 0}, {1, 0, 0, 1}, {0, 1, 0}, {0, 1}, {
        0}}, {{1, 1, 2, 0, 0}, {1, 1, 0, 2}, {0, 1, 0}, {0, 0}, {0}}, {{1, 1, 
        2, 0, 1}, {1, 0, 0, 1}, {0, 2, 0}, {0, 0}, {0}}, {{1, 1, 2, 1, 0}, {1,
         0, 0, 0}, {0, 0, 0}, {0, 2}, {0}}, {{1, 1, 2, 1, 0}, {1, 1, 0, 1}, {
        0, 0, 0}, {0, 1}, {0}}, {{1, 1, 2, 1, 1}, {1, 0, 0, 0}, {0, 1, 0}, {0,
         1}, {0}}, {{1, 1, 2, 1, 1}, {1, 1, 0, 1}, {0, 1, 0}, {0, 0}, {0}}, {{
        1, 1, 2, 1, 2}, {1, 0, 0, 0}, {0, 2, 0}, {0, 0}, {0}}, {{1, 1, 2, 2, 
        1}, {1, 1, 0, 0}, {0, 0, 0}, {0, 1}, {0}}, {{1, 1, 2, 2, 1}, {1, 2, 0,
         1}, {0, 0, 0}, {0, 0}, {0}}, {{1, 1, 2, 2, 2}, {1, 1, 0, 0}, {0, 1, 
        0}, {0, 0}, {0}}, {{1, 1, 2, 3, 2}, {1, 2, 0, 0}, {0, 0, 0}, {0, 0}, {
        0}}, {{1, 2, 0, 0, 0}, {0, 0, 0, 0}, {1, 1, 2}, {0, 0}, {0}}, {{1, 2, 
        0, 0, 0}, {0, 0, 1, 0}, {1, 0, 1}, {0, 1}, {0}}, {{1, 2, 0, 0, 0}, {0,
         1, 0, 0}, {0, 0, 2}, {1, 0}, {0}}, {{1, 2, 0, 0, 0}, {0, 1, 1, 0}, {
        0, 0, 1}, {0, 0}, {1}}, {{1, 2, 0, 0, 0}, {0, 1, 1, 1}, {1, 0, 1}, {0,
         0}, {0}}, {{1, 2, 0, 0, 0}, {1, 1, 1, 0}, {0, 0, 2}, {0, 0}, {0}}, {{
        1, 2, 0, 0, 1}, {0, 0, 1, 0}, {1, 1, 1}, {0, 0}, {0}}, {{1, 2, 0, 0, 
        1}, {0, 0, 2, 0}, {1, 0, 0}, {0, 1}, {0}}, {{1, 2, 0, 0, 1}, {0, 1, 1,
         0}, {0, 0, 1}, {1, 0}, {0}}, {{1, 2, 0, 0, 1}, {0, 1, 2, 0}, {0, 0, 
        0}, {0, 0}, {1}}, {{1, 2, 0, 0, 1}, {0, 1, 2, 1}, {1, 0, 0}, {0, 0}, {
        0}}, {{1, 2, 0, 0, 1}, {1, 1, 2, 0}, {0, 0, 1}, {0, 0}, {0}}, {{1, 2, 
        0, 0, 2}, {0, 0, 2, 0}, {1, 1, 0}, {0, 0}, {0}}, {{1, 2, 0, 0, 2}, {0,
         1, 2, 0}, {0, 0, 0}, {1, 0}, {0}}, {{1, 2, 0, 0, 2}, {1, 1, 3, 0}, {
        0, 0, 0}, {0, 0}, {0}}, {{1, 2, 0, 1, 0}, {0, 1, 0, 0}, {1, 0, 2}, {0,
         0}, {0}}, {{1, 2, 0, 1, 1}, {0, 1, 1, 0}, {1, 0, 1}, {0, 0}, {0}}, {{
        1, 2, 0, 1, 2}, {0, 1, 2, 0}, {1, 0, 0}, {0, 0}, {0}}, {{1, 2, 1, 0, 
        0}, {0, 0, 0, 0}, {0, 0, 1}, {1, 1}, {0}}, {{1, 2, 1, 0, 0}, {0, 0, 0,
         0}, {0, 1, 1}, {0, 0}, {1}}, {{1, 2, 1, 0, 0}, {0, 0, 0, 1}, {1, 1, 
        1}, {0, 0}, {0}}, {{1, 2, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0}, {0, 1}, {
        1}}, {{1, 2, 1, 0, 0}, {0, 0, 1, 1}, {1, 0, 0}, {0, 1}, {0}}, {{1, 2, 
        1, 0, 0}, {0, 1, 0, 1}, {0, 0, 1}, {1, 0}, {0}}, {{1, 2, 1, 0, 0}, {0,
         1, 1, 1}, {0, 0, 0}, {0, 0}, {1}}, {{1, 2, 1, 0, 0}, {0, 1, 1, 2}, {
        1, 0, 0}, {0, 0}, {0}}, {{1, 2, 1, 0, 0}, {1, 0, 0, 0}, {0, 1, 2}, {0,
         0}, {0}}, {{1, 2, 1, 0, 0}, {1, 0, 1, 0}, {0, 0, 1}, {0, 1}, {0}}, {{
        1, 2, 1, 0, 0}, {1, 1, 1, 1}, {0, 0, 1}, {0, 0}, {0}}, {{1, 2, 1, 0, 
        1}, {0, 0, 0, 0}, {0, 1, 1}, {1, 0}, {0}}, {{1, 2, 1, 0, 1}, {0, 0, 1,
         0}, {0, 0, 0}, {1, 1}, {0}}, {{1, 2, 1, 0, 1}, {0, 0, 1, 0}, {0, 1, 
        0}, {0, 0}, {1}}, {{1, 2, 1, 0, 1}, {0, 0, 1, 1}, {1, 1, 0}, {0, 0}, {
        0}}, {{1, 2, 1, 0, 1}, {0, 1, 1, 1}, {0, 0, 0}, {1, 0}, {0}}, {{1, 2, 
        1, 0, 1}, {1, 0, 1, 0}, {0, 1, 1}, {0, 0}, {0}}, {{1, 2, 1, 0, 1}, {1,
         0, 2, 0}, {0, 0, 0}, {0, 1}, {0}}, {{1, 2, 1, 0, 1}, {1, 1, 2, 1}, {
        0, 0, 0}, {0, 0}, {0}}, {{1, 2, 1, 0, 2}, {0, 0, 1, 0}, {0, 1, 0}, {1,
         0}, {0}}, {{1, 2, 1, 0, 2}, {1, 0, 2, 0}, {0, 1, 0}, {0, 0}, {0}}, {{
        1, 2, 1, 1, 0}, {0, 0, 0, 0}, {1, 0, 1}, {0, 1}, {0}}, {{1, 2, 1, 1, 
        0}, {0, 1, 0, 0}, {0, 0, 1}, {0, 0}, {1}}, {{1, 2, 1, 1, 0}, {0, 1, 0,
         1}, {1, 0, 1}, {0, 0}, {0}}, {{1, 2, 1, 1, 0}, {1, 1, 0, 0}, {0, 0, 
        2}, {0, 0}, {0}}, {{1, 2, 1, 1, 1}, {0, 0, 0, 0}, {1, 1, 1}, {0, 0}, {
        0}}, {{1, 2, 1, 1, 1}, {0, 0, 1, 0}, {1, 0, 0}, {0, 1}, {0}}, {{1, 2, 
        1, 1, 1}, {0, 1, 0, 0}, {0, 0, 1}, {1, 0}, {0}}, {{1, 2, 1, 1, 1}, {0,
         1, 1, 0}, {0, 0, 0}, {0, 0}, {1}}, {{1, 2, 1, 1, 1}, {0, 1, 1, 1}, {
        1, 0, 0}, {0, 0}, {0}}, {{1, 2, 1, 1, 1}, {1, 1, 1, 0}, {0, 0, 1}, {0,
         0}, {0}}, {{1, 2, 1, 1, 2}, {0, 0, 1, 0}, {1, 1, 0}, {0, 0}, {0}}, {{
        1, 2, 1, 1, 2}, {0, 1, 1, 0}, {0, 0, 0}, {1, 0}, {0}}, {{1, 2, 1, 1, 
        2}, {1, 1, 2, 0}, {0, 0, 0}, {0, 0}, {0}}, {{1, 2, 1, 2, 1}, {0, 1, 0,
         0}, {1, 0, 1}, {0, 0}, {0}}, {{1, 2, 1, 2, 2}, {0, 1, 1, 0}, {1, 0, 
        0}, {0, 0}, {0}}, {{1, 2, 2, 0, 0}, {0, 0, 0, 1}, {0, 0, 0}, {1, 1}, {
        0}}, {{1, 2, 2, 0, 0}, {0, 0, 0, 1}, {0, 1, 0}, {0, 0}, {1}}, {{1, 2, 
        2, 0, 0}, {0, 0, 0, 2}, {1, 1, 0}, {0, 0}, {0}}, {{1, 2, 2, 0, 0}, {0,
         1, 0, 2}, {0, 0, 0}, {1, 0}, {0}}, {{1, 2, 2, 0, 0}, {1, 0, 0, 1}, {
        0, 1, 1}, {0, 0}, {0}}, {{1, 2, 2, 0, 0}, {1, 0, 1, 1}, {0, 0, 0}, {0,
         1}, {0}}, {{1, 2, 2, 0, 0}, {1, 1, 1, 2}, {0, 0, 0}, {0, 0}, {0}}, {{
        1, 2, 2, 0, 1}, {0, 0, 0, 1}, {0, 1, 0}, {1, 0}, {0}}, {{1, 2, 2, 0, 
        1}, {1, 0, 1, 1}, {0, 1, 0}, {0, 0}, {0}}, {{1, 2, 2, 1, 0}, {0, 0, 0,
         0}, {0, 0, 0}, {0, 1}, {1}}, {{1, 2, 2, 1, 0}, {0, 0, 0, 1}, {1, 0, 
        0}, {0, 1}, {0}}, {{1, 2, 2, 1, 0}, {0, 1, 0, 1}, {0, 0, 0}, {0, 0}, {
        1}}, {{1, 2, 2, 1, 0}, {1, 0, 0, 0}, {0, 0, 1}, {0, 1}, {0}}, {{1, 2, 
        2, 1, 0}, {1, 1, 0, 1}, {0, 0, 1}, {0, 0}, {0}}, {{1, 2, 2, 1, 1}, {0,
         0, 0, 0}, {0, 0, 0}, {1, 1}, {0}}, {{1, 2, 2, 1, 1}, {0, 0, 0, 0}, {
        0, 1, 0}, {0, 0}, {1}}, {{1, 2, 2, 1, 1}, {0, 0, 0, 1}, {1, 1, 0}, {0,
         0}, {0}}, {{1, 2, 2, 1, 1}, {0, 1, 0, 1}, {0, 0, 0}, {1, 0}, {0}}, {{
        1, 2, 2, 1, 1}, {1, 0, 0, 0}, {0, 1, 1}, {0, 0}, {0}}, {{1, 2, 2, 1, 
        1}, {1, 0, 1, 0}, {0, 0, 0}, {0, 1}, {0}}, {{1, 2, 2, 1, 1}, {1, 1, 1,
         1}, {0, 0, 0}, {0, 0}, {0}}, {{1, 2, 2, 1, 2}, {0, 0, 0, 0}, {0, 1, 
        0}, {1, 0}, {0}}, {{1, 2, 2, 1, 2}, {1, 0, 1, 0}, {0, 1, 0}, {0, 0}, {
        0}}, {{1, 2, 2, 2, 1}, {0, 0, 0, 0}, {1, 0, 0}, {0, 1}, {0}}, {{1, 2, 
        2, 2, 1}, {0, 1, 0, 0}, {0, 0, 0}, {0, 0}, {1}}, {{1, 2, 2, 2, 1}, {0,
         1, 0, 1}, {1, 0, 0}, {0, 0}, {0}}, {{1, 2, 2, 2, 1}, {1, 1, 0, 0}, {
        0, 0, 1}, {0, 0}, {0}}, {{1, 2, 2, 2, 2}, {0, 0, 0, 0}, {1, 1, 0}, {0,
         0}, {0}}, {{1, 2, 2, 2, 2}, {0, 1, 0, 0}, {0, 0, 0}, {1, 0}, {0}}, {{
        1, 2, 2, 2, 2}, {1, 1, 1, 0}, {0, 0, 0}, {0, 0}, {0}}, {{1, 2, 2, 3, 
        2}, {0, 1, 0, 0}, {1, 0, 0}, {0, 0}, {0}}, {{1, 2, 3, 0, 0}, {1, 0, 0,
         2}, {0, 1, 0}, {0, 0}, {0}}, {{1, 2, 3, 1, 0}, {1, 0, 0, 1}, {0, 0, 
        0}, {0, 1}, {0}}, {{1, 2, 3, 1, 1}, {1, 0, 0, 1}, {0, 1, 0}, {0, 0}, {
        0}}, {{1, 2, 3, 2, 1}, {1, 0, 0, 0}, {0, 0, 0}, {0, 1}, {0}}, {{1, 2, 
        3, 2, 1}, {1, 1, 0, 1}, {0, 0, 0}, {0, 0}, {0}}, {{1, 2, 3, 2, 2}, {1,
         0, 0, 0}, {0, 1, 0}, {0, 0}, {0}}, {{1, 2, 3, 3, 2}, {1, 1, 0, 0}, {
        0, 0, 0}, {0, 0}, {0}}, {{1, 3, 0, 0, 0}, {0, 0, 1, 0}, {1, 0, 2}, {0,
         0}, {0}}, {{1, 3, 0, 0, 1}, {0, 0, 2, 0}, {1, 0, 1}, {0, 0}, {0}}, {{
        1, 3, 0, 0, 2}, {0, 0, 3, 0}, {1, 0, 0}, {0, 0}, {0}}, {{1, 3, 1, 0, 
        0}, {0, 0, 0, 0}, {0, 0, 2}, {1, 0}, {0}}, {{1, 3, 1, 0, 0}, {0, 0, 1,
         0}, {0, 0, 1}, {0, 0}, {1}}, {{1, 3, 1, 0, 0}, {0, 0, 1, 1}, {1, 0, 
        1}, {0, 0}, {0}}, {{1, 3, 1, 0, 1}, {0, 0, 1, 0}, {0, 0, 1}, {1, 0}, {
        0}}, {{1, 3, 1, 0, 1}, {0, 0, 2, 0}, {0, 0, 0}, {0, 0}, {1}}, {{1, 3, 
        1, 0, 1}, {0, 0, 2, 1}, {1, 0, 0}, {0, 0}, {0}}, {{1, 3, 1, 0, 2}, {0,
         0, 2, 0}, {0, 0, 0}, {1, 0}, {0}}, {{1, 3, 1, 1, 0}, {0, 0, 0, 0}, {
        1, 0, 2}, {0, 0}, {0}}, {{1, 3, 1, 1, 1}, {0, 0, 1, 0}, {1, 0, 1}, {0,
         0}, {0}}, {{1, 3, 1, 1, 2}, {0, 0, 2, 0}, {1, 0, 0}, {0, 0}, {0}}, {{
        1, 3, 2, 0, 0}, {0, 0, 0, 1}, {0, 0, 1}, {1, 0}, {0}}, {{1, 3, 2, 0, 
        0}, {0, 0, 1, 1}, {0, 0, 0}, {0, 0}, {1}}, {{1, 3, 2, 0, 0}, {0, 0, 1,
         2}, {1, 0, 0}, {0, 0}, {0}}, {{1, 3, 2, 0, 1}, {0, 0, 1, 1}, {0, 0, 
        0}, {1, 0}, {0}}, {{1, 3, 2, 1, 0}, {0, 0, 0, 0}, {0, 0, 1}, {0, 0}, {
        1}}, {{1, 3, 2, 1, 0}, {0, 0, 0, 1}, {1, 0, 1}, {0, 0}, {0}}, {{1, 3, 
        2, 1, 1}, {0, 0, 0, 0}, {0, 0, 1}, {1, 0}, {0}}, {{1, 3, 2, 1, 1}, {0,
         0, 1, 0}, {0, 0, 0}, {0, 0}, {1}}, {{1, 3, 2, 1, 1}, {0, 0, 1, 1}, {
        1, 0, 0}, {0, 0}, {0}}, {{1, 3, 2, 1, 2}, {0, 0, 1, 0}, {0, 0, 0}, {1,
         0}, {0}}, {{1, 3, 2, 2, 1}, {0, 0, 0, 0}, {1, 0, 1}, {0, 0}, {0}}, {{
        1, 3, 2, 2, 2}, {0, 0, 1, 0}, {1, 0, 0}, {0, 0}, {0}}, {{1, 3, 3, 0, 
        0}, {0, 0, 0, 2}, {0, 0, 0}, {1, 0}, {0}}, {{1, 3, 3, 1, 0}, {0, 0, 0,
         1}, {0, 0, 0}, {0, 0}, {1}}, {{1, 3, 3, 1, 1}, {0, 0, 0, 1}, {0, 0, 
        0}, {1, 0}, {0}}, {{1, 3, 3, 2, 1}, {0, 0, 0, 0}, {0, 0, 0}, {0, 0}, {
        1}}, {{1, 3, 3, 2, 1}, {0, 0, 0, 1}, {1, 0, 0}, {0, 0}, {0}}, {{1, 3, 
        3, 2, 2}, {0, 0, 0, 0}, {0, 0, 0}, {1, 0}, {0}}, {{1, 3, 3, 3, 2}, {0,
         0, 0, 0}, {1, 0, 0}, {0, 0}, {0}}, {{2, 2, 0, 0, 0}, {0, 1, 0, 0}, {
        0, 1, 2}, {0, 0}, {0}}, {{2, 2, 0, 0, 0}, {0, 1, 1, 0}, {0, 0, 1}, {0,
         1}, {0}}, {{2, 2, 0, 0, 0}, {0, 2, 1, 1}, {0, 0, 1}, {0, 0}, {0}}, {{
        2, 2, 0, 0, 1}, {0, 1, 1, 0}, {0, 1, 1}, {0, 0}, {0}}, {{2, 2, 0, 0, 
        1}, {0, 1, 2, 0}, {0, 0, 0}, {0, 1}, {0}}, {{2, 2, 0, 0, 1}, {0, 2, 2,
         1}, {0, 0, 0}, {0, 0}, {0}}, {{2, 2, 0, 0, 2}, {0, 1, 2, 0}, {0, 1, 
        0}, {0, 0}, {0}}, {{2, 2, 0, 1, 0}, {0, 2, 0, 0}, {0, 0, 2}, {0, 0}, {
        0}}, {{2, 2, 0, 1, 1}, {0, 2, 1, 0}, {0, 0, 1}, {0, 0}, {0}}, {{2, 2, 
        0, 1, 2}, {0, 2, 2, 0}, {0, 0, 0}, {0, 0}, {0}}, {{2, 2, 1, 0, 0}, {0,
         0, 0, 0}, {0, 1, 1}, {0, 1}, {0}}, {{2, 2, 1, 0, 0}, {0, 0, 1, 0}, {
        0, 0, 0}, {0, 2}, {0}}, {{2, 2, 1, 0, 0}, {0, 1, 0, 1}, {0, 1, 1}, {0,
         0}, {0}}, {{2, 2, 1, 0, 0}, {0, 1, 1, 1}, {0, 0, 0}, {0, 1}, {0}}, {{
        2, 2, 1, 0, 0}, {0, 2, 1, 2}, {0, 0, 0}, {0, 0}, {0}}, {{2, 2, 1, 0, 
        1}, {0, 0, 0, 0}, {0, 2, 1}, {0, 0}, {0}}, {{2, 2, 1, 0, 1}, {0, 0, 1,
         0}, {0, 1, 0}, {0, 1}, {0}}, {{2, 2, 1, 0, 1}, {0, 1, 1, 1}, {0, 1, 
        0}, {0, 0}, {0}}, {{2, 2, 1, 0, 2}, {0, 0, 1, 0}, {0, 2, 0}, {0, 0}, {
        0}}, {{2, 2, 1, 1, 0}, {0, 1, 0, 0}, {0, 0, 1}, {0, 1}, {0}}, {{2, 2, 
        1, 1, 0}, {0, 2, 0, 1}, {0, 0, 1}, {0, 0}, {0}}, {{2, 2, 1, 1, 1}, {0,
         1, 0, 0}, {0, 1, 1}, {0, 0}, {0}}, {{2, 2, 1, 1, 1}, {0, 1, 1, 0}, {
        0, 0, 0}, {0, 1}, {0}}, {{2, 2, 1, 1, 1}, {0, 2, 1, 1}, {0, 0, 0}, {0,
         0}, {0}}, {{2, 2, 1, 1, 2}, {0, 1, 1, 0}, {0, 1, 0}, {0, 0}, {0}}, {{
        2, 2, 1, 2, 1}, {0, 2, 0, 0}, {0, 0, 1}, {0, 0}, {0}}, {{2, 2, 1, 2, 
        2}, {0, 2, 1, 0}, {0, 0, 0}, {0, 0}, {0}}, {{2, 2, 2, 0, 0}, {0, 0, 0,
         1}, {0, 1, 0}, {0, 1}, {0}}, {{2, 2, 2, 0, 0}, {0, 1, 0, 2}, {0, 1, 
        0}, {0, 0}, {0}}, {{2, 2, 2, 0, 1}, {0, 0, 0, 1}, {0, 2, 0}, {0, 0}, {
        0}}, {{2, 2, 2, 1, 0}, {0, 0, 0, 0}, {0, 0, 0}, {0, 2}, {0}}, {{2, 2, 
        2, 1, 0}, {0, 1, 0, 1}, {0, 0, 0}, {0, 1}, {0}}, {{2, 2, 2, 1, 1}, {0,
         0, 0, 0}, {0, 1, 0}, {0, 1}, {0}}, {{2, 2, 2, 1, 1}, {0, 1, 0, 1}, {
        0, 1, 0}, {0, 0}, {0}}, {{2, 2, 2, 1, 2}, {0, 0, 0, 0}, {0, 2, 0}, {0,
         0}, {0}}, {{2, 2, 2, 2, 1}, {0, 1, 0, 0}, {0, 0, 0}, {0, 1}, {0}}, {{
        2, 2, 2, 2, 1}, {0, 2, 0, 1}, {0, 0, 0}, {0, 0}, {0}}, {{2, 2, 2, 2, 
        2}, {0, 1, 0, 0}, {0, 1, 0}, {0, 0}, {0}}, {{2, 2, 2, 3, 2}, {0, 2, 0,
         0}, {0, 0, 0}, {0, 0}, {0}}, {{2, 3, 0, 0, 0}, {0, 1, 1, 0}, {0, 0, 
        2}, {0, 0}, {0}}, {{2, 3, 0, 0, 1}, {0, 1, 2, 0}, {0, 0, 1}, {0, 0}, {
        0}}, {{2, 3, 0, 0, 2}, {0, 1, 3, 0}, {0, 0, 0}, {0, 0}, {0}}, {{2, 3, 
        1, 0, 0}, {0, 0, 0, 0}, {0, 1, 2}, {0, 0}, {0}}, {{2, 3, 1, 0, 0}, {0,
         0, 1, 0}, {0, 0, 1}, {0, 1}, {0}}, {{2, 3, 1, 0, 0}, {0, 1, 1, 1}, {
        0, 0, 1}, {0, 0}, {0}}, {{2, 3, 1, 0, 1}, {0, 0, 1, 0}, {0, 1, 1}, {0,
         0}, {0}}, {{2, 3, 1, 0, 1}, {0, 0, 2, 0}, {0, 0, 0}, {0, 1}, {0}}, {{
        2, 3, 1, 0, 1}, {0, 1, 2, 1}, {0, 0, 0}, {0, 0}, {0}}, {{2, 3, 1, 0, 
        2}, {0, 0, 2, 0}, {0, 1, 0}, {0, 0}, {0}}, {{2, 3, 1, 1, 0}, {0, 1, 0,
         0}, {0, 0, 2}, {0, 0}, {0}}, {{2, 3, 1, 1, 1}, {0, 1, 1, 0}, {0, 0, 
        1}, {0, 0}, {0}}, {{2, 3, 1, 1, 2}, {0, 1, 2, 0}, {0, 0, 0}, {0, 0}, {
        0}}, {{2, 3, 2, 0, 0}, {0, 0, 0, 1}, {0, 1, 1}, {0, 0}, {0}}, {{2, 3, 
        2, 0, 0}, {0, 0, 1, 1}, {0, 0, 0}, {0, 1}, {0}}, {{2, 3, 2, 0, 0}, {0,
         1, 1, 2}, {0, 0, 0}, {0, 0}, {0}}, {{2, 3, 2, 0, 1}, {0, 0, 1, 1}, {
        0, 1, 0}, {0, 0}, {0}}, {{2, 3, 2, 1, 0}, {0, 0, 0, 0}, {0, 0, 1}, {0,
         1}, {0}}, {{2, 3, 2, 1, 0}, {0, 1, 0, 1}, {0, 0, 1}, {0, 0}, {0}}, {{
        2, 3, 2, 1, 1}, {0, 0, 0, 0}, {0, 1, 1}, {0, 0}, {0}}, {{2, 3, 2, 1, 
        1}, {0, 0, 1, 0}, {0, 0, 0}, {0, 1}, {0}}, {{2, 3, 2, 1, 1}, {0, 1, 1,
         1}, {0, 0, 0}, {0, 0}, {0}}, {{2, 3, 2, 1, 2}, {0, 0, 1, 0}, {0, 1, 
        0}, {0, 0}, {0}}, {{2, 3, 2, 2, 1}, {0, 1, 0, 0}, {0, 0, 1}, {0, 0}, {
        0}}, {{2, 3, 2, 2, 2}, {0, 1, 1, 0}, {0, 0, 0}, {0, 0}, {0}}, {{2, 3, 
        3, 0, 0}, {0, 0, 0, 2}, {0, 1, 0}, {0, 0}, {0}}, {{2, 3, 3, 1, 0}, {0,
         0, 0, 1}, {0, 0, 0}, {0, 1}, {0}}, {{2, 3, 3, 1, 1}, {0, 0, 0, 1}, {
        0, 1, 0}, {0, 0}, {0}}, {{2, 3, 3, 2, 1}, {0, 0, 0, 0}, {0, 0, 0}, {0,
         1}, {0}}, {{2, 3, 3, 2, 1}, {0, 1, 0, 1}, {0, 0, 0}, {0, 0}, {0}}, {{
        2, 3, 3, 2, 2}, {0, 0, 0, 0}, {0, 1, 0}, {0, 0}, {0}}, {{2, 3, 3, 3, 
        2}, {0, 1, 0, 0}, {0, 0, 0}, {0, 0}, {0}}, {{2, 4, 2, 0, 0}, {0, 0, 1,
         1}, {0, 0, 1}, {0, 0}, {0}}, {{2, 4, 2, 0, 1}, {0, 0, 2, 1}, {0, 0, 
        0}, {0, 0}, {0}}, {{2, 4, 2, 1, 0}, {0, 0, 0, 0}, {0, 0, 2}, {0, 0}, {
        0}}, {{2, 4, 2, 1, 1}, {0, 0, 1, 0}, {0, 0, 1}, {0, 0}, {0}}, {{2, 4, 
        2, 1, 2}, {0, 0, 2, 0}, {0, 0, 0}, {0, 0}, {0}}, {{2, 4, 3, 0, 0}, {0,
         0, 1, 2}, {0, 0, 0}, {0, 0}, {0}}, {{2, 4, 3, 1, 0}, {0, 0, 0, 1}, {
        0, 0, 1}, {0, 0}, {0}}, {{2, 4, 3, 1, 1}, {0, 0, 1, 1}, {0, 0, 0}, {0,
         0}, {0}}, {{2, 4, 3, 2, 1}, {0, 0, 0, 0}, {0, 0, 1}, {0, 0}, {0}}, {{
        2, 4, 3, 2, 2}, {0, 0, 1, 0}, {0, 0, 0}, {0, 0}, {0}}, {{2, 4, 4, 2, 
        1}, {0, 0, 0, 1}, {0, 0, 0}, {0, 0}, {0}}, {{2, 4, 4, 3, 2}, {0, 0, 0,
         0}, {0, 0, 0}, {0, 0}, {0}}}, {{{1, 1, 1, 1, 2}, {3, 3, 3, 2}, {1, 1,
         1}, {2, 2}, {3}}, {{1, 1, 1, 0, 1}, {3, 3, 3, 3}, {1, 1, 1}, {2, 
        2}, {3}}, {{1, 1, 2, 1, 2}, {4, 4, 4, 3}, {0, 0, 0}, {2, 2}, {3}}, {{
        1, 1, 1, 1, 1}, {3, 3, 2, 2}, {1, 1, 2}, {2, 2}, {3}}, {{1, 1, 1, 0, 
        0}, {3, 3, 2, 3}, {1, 1, 2}, {2, 2}, {3}}, {{1, 1, 2, 2, 2}, {4, 4, 3,
         2}, {0, 0, 1}, {2, 2}, {3}}, {{1, 1, 2, 1, 1}, {4, 4, 3, 3}, {0, 0, 
        1}, {2, 2}, {3}}, {{1, 1, 2, 2, 1}, {4, 4, 2, 2}, {0, 0, 2}, {2, 2}, {
        3}}, {{1, 1, 1, 1, 2}, {3, 3, 3, 3}, {2, 2, 1}, {1, 1}, {3}}, {{1, 1, 
        0, 0, 2}, {3, 3, 4, 3}, {2, 2, 1}, {1, 1}, {3}}, {{1, 1, 1, 2, 2}, {3,
         3, 2, 2}, {2, 2, 2}, {1, 1}, {3}}, {{1, 1, 1, 1, 1}, {3, 3, 2, 3}, {
        2, 2, 2}, {1, 1}, {3}}, {{1, 1, 2, 2, 2}, {4, 4, 3, 3}, {1, 1, 1}, {1,
         1}, {3}}, {{1, 1, 0, 0, 1}, {3, 3, 3, 3}, {2, 2, 2}, {1, 1}, {3}}, {{
        1, 1, 1, 1, 2}, {4, 4, 4, 3}, {1, 1, 1}, {1, 1}, {3}}, {{1, 1, 2, 3, 
        2}, {4, 4, 2, 2}, {1, 1, 2}, {1, 1}, {3}}, {{1, 1, 1, 1, 1}, {4, 4, 3,
         3}, {1, 1, 2}, {1, 1}, {3}}, {{1, 1, 2, 2, 2}, {5, 5, 4, 3}, {0, 0, 
        1}, {1, 1}, {3}}, {{1, 1, 1, 2, 2}, {3, 3, 2, 3}, {3, 3, 2}, {0, 0}, {
        3}}, {{1, 1, 0, 1, 2}, {3, 3, 3, 3}, {3, 3, 2}, {0, 0}, {3}}, {{1, 1, 
        1, 2, 2}, {4, 4, 3, 3}, {2, 2, 2}, {0, 0}, {3}}, {{2, 3, 3, 2, 2}, {2,
         2, 2, 2}, {1, 1, 1}, {2, 2}, {3}}, {{2, 3, 3, 1, 1}, {2, 2, 2, 3}, {
        1, 1, 1}, {2, 2}, {3}}, {{2, 3, 4, 2, 2}, {3, 3, 3, 3}, {0, 0, 0}, {2,
         2}, {3}}, {{2, 3, 3, 3, 2}, {2, 2, 1, 1}, {1, 1, 2}, {2, 2}, {3}}, {{
        2, 3, 3, 2, 1}, {2, 2, 1, 2}, {1, 1, 2}, {2, 2}, {3}}, {{2, 3, 4, 3, 
        2}, {3, 3, 2, 2}, {0, 0, 1}, {2, 2}, {3}}, {{2, 3, 4, 4, 2}, {3, 3, 1,
         1}, {0, 0, 2}, {2, 2}, {3}}, {{2, 3, 3, 2, 2}, {2, 2, 2, 3}, {2, 2, 
        1}, {1, 1}, {3}}, {{2, 3, 2, 1, 2}, {2, 2, 3, 3}, {2, 2, 1}, {1, 1}, {
        3}}, {{2, 3, 3, 3, 2}, {2, 2, 1, 2}, {2, 2, 2}, {1, 1}, {3}}, {{2, 3, 
        2, 2, 2}, {2, 2, 2, 2}, {2, 2, 2}, {1, 1}, {3}}, {{2, 3, 2, 1, 1}, {2,
         2, 2, 3}, {2, 2, 2}, {1, 1}, {3}}, {{2, 3, 3, 2, 2}, {3, 3, 3, 3}, {
        1, 1, 1}, {1, 1}, {3}}, {{2, 3, 3, 3, 2}, {3, 3, 2, 2}, {1, 1, 2}, {1,
         1}, {3}}, {{2, 3, 2, 2, 2}, {2, 2, 2, 3}, {3, 3, 2}, {0, 0}, {3}}, {{
        2, 3, 1, 1, 2}, {2, 2, 3, 3}, {3, 3, 2}, {0, 0}, {3}}, {{2, 3, 2, 2, 
        2}, {3, 3, 3, 3}, {2, 2, 2}, {0, 0}, {3}}, {{3, 5, 5, 3, 2}, {1, 1, 1,
         2}, {1, 1, 1}, {2, 2}, {3}}, {{3, 5, 5, 4, 2}, {1, 1, 0, 1}, {1, 1, 
        2}, {2, 2}, {3}}, {{3, 5, 4, 2, 2}, {1, 1, 2, 3}, {2, 2, 1}, {1, 1}, {
        3}}, {{3, 5, 4, 3, 2}, {1, 1, 1, 2}, {2, 2, 2}, {1, 1}, {3}}, {{3, 5, 
        3, 2, 2}, {1, 1, 2, 3}, {3, 3, 2}, {0, 0}, {3}}, {{1, 0, 0, 0, 2}, {4,
         5, 5, 3}, {0, 0, 0}, {2, 2}, {3}}, {{1, 0, 0, 0, 1}, {4, 5, 4, 3}, {
        0, 0, 1}, {2, 2}, {3}}, {{1, 0, 0, 0, 0}, {4, 5, 3, 3}, {0, 0, 2}, {2,
         2}, {3}}, {{1, 0, 0, 1, 2}, {4, 5, 4, 3}, {1, 1, 1}, {1, 1}, {3}}, {{
        1, 0, 0, 1, 1}, {4, 5, 3, 3}, {1, 1, 2}, {1, 1}, {3}}, {{1, 0, 1, 2, 
        2}, {5, 6, 4, 3}, {0, 0, 1}, {1, 1}, {3}}, {{1, 0, 0, 2, 2}, {4, 5, 3,
         3}, {2, 2, 2}, {0, 0}, {3}}, {{2, 2, 2, 1, 2}, {3, 4, 4, 3}, {0, 0, 
        0}, {2, 2}, {3}}, {{2, 2, 2, 2, 2}, {3, 4, 3, 2}, {0, 0, 1}, {2, 2}, {
        3}}, {{2, 2, 2, 1, 1}, {3, 4, 3, 3}, {0, 0, 1}, {2, 2}, {3}}, {{2, 2, 
        2, 2, 1}, {3, 4, 2, 2}, {0, 0, 2}, {2, 2}, {3}}, {{2, 2, 2, 2, 2}, {3,
         4, 3, 3}, {1, 1, 1}, {1, 1}, {3}}, {{2, 2, 1, 1, 2}, {3, 4, 4, 3}, {
        1, 1, 1}, {1, 1}, {3}}, {{2, 2, 2, 3, 2}, {3, 4, 2, 2}, {1, 1, 2}, {1,
         1}, {3}}, {{2, 2, 1, 1, 1}, {3, 4, 3, 3}, {1, 1, 2}, {1, 1}, {3}}, {{
        2, 2, 2, 2, 2}, {4, 5, 4, 3}, {0, 0, 1}, {1, 1}, {3}}, {{2, 2, 1, 2, 
        2}, {3, 4, 3, 3}, {2, 2, 2}, {0, 0}, {3}}, {{3, 4, 4, 2, 2}, {2, 3, 3,
         3}, {0, 0, 0}, {2, 2}, {3}}, {{3, 4, 4, 3, 2}, {2, 3, 2, 2}, {0, 0, 
        1}, {2, 2}, {3}}, {{3, 4, 4, 4, 2}, {2, 3, 1, 1}, {0, 0, 2}, {2, 2}, {
        3}}, {{3, 4, 3, 2, 2}, {2, 3, 3, 3}, {1, 1, 1}, {1, 1}, {3}}, {{3, 4, 
        3, 3, 2}, {2, 3, 2, 2}, {1, 1, 2}, {1, 1}, {3}}, {{3, 4, 2, 2, 2}, {2,
         3, 3, 3}, {2, 2, 2}, {0, 0}, {3}}, {{2, 1, 1, 2, 2}, {4, 6, 4, 3}, {
        0, 0, 1}, {1, 1}, {3}}, {{3, 3, 2, 2, 2}, {3, 5, 4, 3}, {0, 0, 1}, {1,
         1}, {3}}, {{1, 1, 1, 1, 2}, {3, 2, 2, 2}, {2, 3, 2}, {1, 1}, {3}}, {{
        1, 1, 1, 0, 1}, {3, 2, 2, 3}, {2, 3, 2}, {1, 1}, {3}}, {{1, 1, 2, 1, 
        2}, {4, 3, 3, 3}, {1, 2, 1}, {1, 1}, {3}}, {{1, 1, 2, 2, 2}, {4, 3, 2,
         2}, {1, 2, 2}, {1, 1}, {3}}, {{1, 1, 2, 1, 1}, {4, 3, 2, 3}, {1, 2, 
        2}, {1, 1}, {3}}, {{1, 1, 3, 2, 2}, {5, 4, 3, 3}, {0, 1, 1}, {1, 1}, {
        3}}, {{1, 1, 3, 3, 2}, {5, 4, 2, 2}, {0, 1, 2}, {1, 1}, {3}}, {{1, 1, 
        1, 1, 2}, {3, 2, 2, 3}, {3, 4, 2}, {0, 0}, {3}}, {{1, 1, 0, 0, 2}, {3,
         2, 3, 3}, {3, 4, 2}, {0, 0}, {3}}, {{1, 1, 2, 2, 2}, {4, 3, 2, 3}, {
        2, 3, 2}, {0, 0}, {3}}, {{1, 1, 1, 1, 2}, {4, 3, 3, 3}, {2, 3, 2}, {0,
         0}, {3}}, {{1, 1, 2, 2, 2}, {5, 4, 3, 3}, {1, 2, 2}, {0, 0}, {3}}, {{
        2, 3, 3, 2, 2}, {2, 1, 1, 2}, {2, 3, 2}, {1, 1}, {3}}, {{2, 3, 3, 1, 
        1}, {2, 1, 1, 3}, {2, 3, 2}, {1, 1}, {3}}, {{2, 3, 4, 2, 2}, {3, 2, 2,
         3}, {1, 2, 1}, {1, 1}, {3}}, {{2, 3, 4, 3, 2}, {3, 2, 1, 2}, {1, 2, 
        2}, {1, 1}, {3}}, {{2, 3, 3, 2, 2}, {2, 1, 1, 3}, {3, 4, 2}, {0, 0}, {
        3}}, {{2, 3, 2, 1, 2}, {2, 1, 2, 3}, {3, 4, 2}, {0, 0}, {3}}, {{2, 3, 
        3, 2, 2}, {3, 2, 2, 3}, {2, 3, 2}, {0, 0}, {3}}, {{3, 5, 5, 3, 2}, {1,
         0, 0, 2}, {2, 3, 2}, {1, 1}, {3}}, {{3, 5, 4, 2, 2}, {1, 0, 1, 3}, {
        3, 4, 2}, {0, 0}, {3}}, {{1, 0, 0, 0, 2}, {4, 4, 4, 3}, {1, 2, 1}, {1,
         1}, {3}}, {{1, 0, 0, 0, 1}, {4, 4, 3, 3}, {1, 2, 2}, {1, 1}, {3}}, {{
        1, 0, 1, 1, 2}, {5, 5, 4, 3}, {0, 1, 1}, {1, 1}, {3}}, {{1, 0, 1, 1, 
        1}, {5, 5, 3, 3}, {0, 1, 2}, {1, 1}, {3}}, {{1, 0, 0, 1, 2}, {4, 4, 3,
         3}, {2, 3, 2}, {0, 0}, {3}}, {{1, 0, 1, 2, 2}, {5, 5, 3, 3}, {1, 2, 
        2}, {0, 0}, {3}}, {{2, 2, 2, 1, 2}, {3, 3, 3, 3}, {1, 2, 1}, {1, 1}, {
        3}}, {{2, 2, 2, 2, 2}, {3, 3, 2, 2}, {1, 2, 2}, {1, 1}, {3}}, {{2, 2, 
        2, 1, 1}, {3, 3, 2, 3}, {1, 2, 2}, {1, 1}, {3}}, {{2, 2, 3, 2, 2}, {4,
         4, 3, 3}, {0, 1, 1}, {1, 1}, {3}}, {{2, 2, 3, 3, 2}, {4, 4, 2, 2}, {
        0, 1, 2}, {1, 1}, {3}}, {{2, 2, 2, 2, 2}, {3, 3, 2, 3}, {2, 3, 2}, {0,
         0}, {3}}, {{2, 2, 1, 1, 2}, {3, 3, 3, 3}, {2, 3, 2}, {0, 0}, {3}}, {{
        2, 2, 2, 2, 2}, {4, 4, 3, 3}, {1, 2, 2}, {0, 0}, {3}}, {{3, 4, 4, 2, 
        2}, {2, 2, 2, 3}, {1, 2, 1}, {1, 1}, {3}}, {{3, 4, 4, 3, 2}, {2, 2, 1,
         2}, {1, 2, 2}, {1, 1}, {3}}, {{3, 4, 3, 2, 2}, {2, 2, 2, 3}, {2, 3, 
        2}, {0, 0}, {3}}, {{2, 1, 1, 1, 2}, {4, 5, 4, 3}, {0, 1, 1}, {1, 1}, {
        3}}, {{2, 1, 1, 1, 1}, {4, 5, 3, 3}, {0, 1, 2}, {1, 1}, {3}}, {{2, 1, 
        1, 2, 2}, {4, 5, 3, 3}, {1, 2, 2}, {0, 0}, {3}}, {{3, 3, 3, 2, 2}, {3,
         4, 3, 3}, {0, 1, 1}, {1, 1}, {3}}, {{3, 3, 3, 3, 2}, {3, 4, 2, 2}, {
        0, 1, 2}, {1, 1}, {3}}, {{3, 3, 2, 2, 2}, {3, 4, 3, 3}, {1, 2, 2}, {0,
         0}, {3}}, {{1, 1, 2, 1, 2}, {4, 2, 2, 3}, {2, 4, 2}, {0, 0}, {3}}, {{
        1, 1, 3, 2, 2}, {5, 3, 2, 3}, {1, 3, 2}, {0, 0}, {3}}, {{2, 3, 4, 2, 
        2}, {3, 1, 1, 3}, {2, 4, 2}, {0, 0}, {3}}, {{1, 0, 0, 0, 2}, {4, 3, 3,
         3}, {2, 4, 2}, {0, 0}, {3}}, {{1, 0, 1, 1, 2}, {5, 4, 3, 3}, {1, 3, 
        2}, {0, 0}, {3}}, {{2, 2, 2, 1, 2}, {3, 2, 2, 3}, {2, 4, 2}, {0, 0}, {
        3}}, {{2, 2, 3, 2, 2}, {4, 3, 2, 3}, {1, 3, 2}, {0, 0}, {3}}, {{3, 4, 
        4, 2, 2}, {2, 1, 1, 3}, {2, 4, 2}, {0, 0}, {3}}, {{2, 1, 1, 1, 2}, {4,
         4, 3, 3}, {1, 3, 2}, {0, 0}, {3}}, {{2, 1, 2, 2, 2}, {5, 5, 3, 3}, {
        0, 2, 2}, {0, 0}, {3}}, {{3, 3, 3, 2, 2}, {3, 3, 2, 3}, {1, 3, 2}, {0,
         0}, {3}}, {{3, 2, 2, 2, 2}, {4, 5, 3, 3}, {0, 2, 2}, {0, 0}, {3}}, {{
        1, 1, 1, 2, 2}, {3, 3, 3, 2}, {2, 1, 1}, {1, 2}, {3}}, {{1, 1, 1, 1, 
        1}, {3, 3, 3, 3}, {2, 1, 1}, {1, 2}, {3}}, {{1, 1, 2, 2, 2}, {4, 4, 4,
         3}, {1, 0, 0}, {1, 2}, {3}}, {{1, 1, 0, 0, 1}, {3, 3, 4, 3}, {2, 1, 
        1}, {1, 2}, {3}}, {{1, 1, 1, 1, 2}, {4, 4, 5, 3}, {1, 0, 0}, {1, 2}, {
        3}}, {{1, 1, 1, 2, 1}, {3, 3, 2, 2}, {2, 1, 2}, {1, 2}, {3}}, {{1, 1, 
        2, 3, 2}, {4, 4, 3, 2}, {1, 0, 1}, {1, 2}, {3}}, {{1, 1, 0, 0, 0}, {3,
         3, 3, 3}, {2, 1, 2}, {1, 2}, {3}}, {{1, 1, 1, 1, 1}, {4, 4, 4, 3}, {
        1, 0, 1}, {1, 2}, {3}}, {{1, 1, 1, 2, 2}, {3, 3, 3, 3}, {3, 2, 1}, {0,
         1}, {3}}, {{1, 1, 0, 1, 2}, {3, 3, 4, 3}, {3, 2, 1}, {0, 1}, {3}}, {{
        1, 1, 1, 3, 2}, {3, 3, 2, 2}, {3, 2, 2}, {0, 1}, {3}}, {{1, 1, 0, 1, 
        1}, {3, 3, 3, 3}, {3, 2, 2}, {0, 1}, {3}}, {{1, 1, 1, 2, 2}, {4, 4, 4,
         3}, {2, 1, 1}, {0, 1}, {3}}, {{2, 3, 3, 3, 2}, {2, 2, 2, 2}, {2, 1, 
        1}, {1, 2}, {3}}, {{2, 3, 2, 2, 2}, {2, 2, 3, 2}, {2, 1, 1}, {1, 2}, {
        3}}, {{2, 3, 2, 1, 1}, {2, 2, 3, 3}, {2, 1, 1}, {1, 2}, {3}}, {{2, 3, 
        3, 2, 2}, {3, 3, 4, 3}, {1, 0, 0}, {1, 2}, {3}}, {{2, 3, 3, 4, 2}, {2,
         2, 1, 1}, {2, 1, 2}, {1, 2}, {3}}, {{2, 3, 2, 2, 1}, {2, 2, 2, 2}, {
        2, 1, 2}, {1, 2}, {3}}, {{2, 3, 3, 3, 2}, {3, 3, 3, 2}, {1, 0, 1}, {1,
         2}, {3}}, {{2, 3, 2, 2, 2}, {2, 2, 3, 3}, {3, 2, 1}, {0, 1}, {3}}, {{
        2, 3, 1, 1, 2}, {2, 2, 4, 3}, {3, 2, 1}, {0, 1}, {3}}, {{2, 3, 2, 3, 
        2}, {2, 2, 2, 2}, {3, 2, 2}, {0, 1}, {3}}, {{2, 3, 1, 1, 1}, {2, 2, 3,
         3}, {3, 2, 2}, {0, 1}, {3}}, {{2, 3, 2, 2, 2}, {3, 3, 4, 3}, {2, 1, 
        1}, {0, 1}, {3}}, {{3, 5, 4, 3, 2}, {1, 1, 2, 2}, {2, 1, 1}, {1, 2}, {
        3}}, {{3, 5, 4, 4, 2}, {1, 1, 1, 1}, {2, 1, 2}, {1, 2}, {3}}, {{3, 5, 
        3, 2, 2}, {1, 1, 3, 3}, {3, 2, 1}, {0, 1}, {3}}, {{3, 5, 3, 3, 2}, {1,
         1, 2, 2}, {3, 2, 2}, {0, 1}, {3}}, {{1, 0, 0, 1, 2}, {4, 5, 5, 3}, {
        1, 0, 0}, {1, 2}, {3}}, {{1, 0, 0, 1, 1}, {4, 5, 4, 3}, {1, 0, 1}, {1,
         2}, {3}}, {{1, 0, 0, 2, 2}, {4, 5, 4, 3}, {2, 1, 1}, {0, 1}, {3}}, {{
        2, 2, 2, 2, 2}, {3, 4, 4, 3}, {1, 0, 0}, {1, 2}, {3}}, {{2, 2, 1, 1, 
        2}, {3, 4, 5, 3}, {1, 0, 0}, {1, 2}, {3}}, {{2, 2, 2, 3, 2}, {3, 4, 3,
         2}, {1, 0, 1}, {1, 2}, {3}}, {{2, 2, 1, 1, 1}, {3, 4, 4, 3}, {1, 0, 
        1}, {1, 2}, {3}}, {{2, 2, 1, 2, 2}, {3, 4, 4, 3}, {2, 1, 1}, {0, 1}, {
        3}}, {{3, 4, 3, 2, 2}, {2, 3, 4, 3}, {1, 0, 0}, {1, 2}, {3}}, {{3, 4, 
        3, 3, 2}, {2, 3, 3, 2}, {1, 0, 1}, {1, 2}, {3}}, {{3, 4, 2, 2, 2}, {2,
         3, 4, 3}, {2, 1, 1}, {0, 1}, {3}}, {{1, 1, 1, 1, 1}, {3, 2, 2, 2}, {
        2, 2, 2}, {1, 2}, {3}}, {{1, 1, 1, 0, 0}, {3, 2, 2, 3}, {2, 2, 2}, {1,
         2}, {3}}, {{1, 1, 2, 2, 2}, {4, 3, 3, 2}, {1, 1, 1}, {1, 2}, {3}}, {{
        1, 1, 2, 1, 1}, {4, 3, 3, 3}, {1, 1, 1}, {1, 2}, {3}}, {{1, 1, 3, 2, 
        2}, {5, 4, 4, 3}, {0, 0, 0}, {1, 2}, {3}}, {{1, 1, 2, 2, 1}, {4, 3, 2,
         2}, {1, 1, 2}, {1, 2}, {3}}, {{1, 1, 3, 3, 2}, {5, 4, 3, 2}, {0, 0, 
        1}, {1, 2}, {3}}, {{1, 1, 1, 2, 2}, {3, 2, 2, 2}, {3, 3, 2}, {0, 1}, {
        3}}, {{1, 1, 1, 1, 1}, {3, 2, 2, 3}, {3, 3, 2}, {0, 1}, {3}}, {{1, 1, 
        2, 2, 2}, {4, 3, 3, 3}, {2, 2, 1}, {0, 1}, {3}}, {{1, 1, 0, 0, 1}, {3,
         2, 3, 3}, {3, 3, 2}, {0, 1}, {3}}, {{1, 1, 1, 1, 2}, {4, 3, 4, 3}, {
        2, 2, 1}, {0, 1}, {3}}, {{1, 1, 2, 3, 2}, {4, 3, 2, 2}, {2, 2, 2}, {0,
         1}, {3}}, {{1, 1, 1, 1, 1}, {4, 3, 3, 3}, {2, 2, 2}, {0, 1}, {3}}, {{
        1, 1, 2, 2, 2}, {5, 4, 4, 3}, {1, 1, 1}, {0, 1}, {3}}, {{2, 3, 3, 3, 
        2}, {2, 1, 1, 1}, {2, 2, 2}, {1, 2}, {3}}, {{2, 3, 3, 2, 1}, {2, 1, 1,
         2}, {2, 2, 2}, {1, 2}, {3}}, {{2, 3, 4, 3, 2}, {3, 2, 2, 2}, {1, 1, 
        1}, {1, 2}, {3}}, {{2, 3, 4, 4, 2}, {3, 2, 1, 1}, {1, 1, 2}, {1, 2}, {
        3}}, {{2, 3, 3, 3, 2}, {2, 1, 1, 2}, {3, 3, 2}, {0, 1}, {3}}, {{2, 3, 
        2, 2, 2}, {2, 1, 2, 2}, {3, 3, 2}, {0, 1}, {3}}, {{2, 3, 2, 1, 1}, {2,
         1, 2, 3}, {3, 3, 2}, {0, 1}, {3}}, {{2, 3, 3, 2, 2}, {3, 2, 3, 3}, {
        2, 2, 1}, {0, 1}, {3}}, {{2, 3, 3, 3, 2}, {3, 2, 2, 2}, {2, 2, 2}, {0,
         1}, {3}}, {{3, 5, 5, 4, 2}, {1, 0, 0, 1}, {2, 2, 2}, {1, 2}, {3}}, {{
        3, 5, 4, 3, 2}, {1, 0, 1, 2}, {3, 3, 2}, {0, 1}, {3}}, {{1, 0, 0, 0, 
        1}, {4, 4, 4, 3}, {1, 1, 1}, {1, 2}, {3}}, {{1, 0, 1, 1, 2}, {5, 5, 5,
         3}, {0, 0, 0}, {1, 2}, {3}}, {{1, 0, 0, 0, 0}, {4, 4, 3, 3}, {1, 1, 
        2}, {1, 2}, {3}}, {{1, 0, 1, 1, 1}, {5, 5, 4, 3}, {0, 0, 1}, {1, 2}, {
        3}}, {{1, 0, 0, 1, 2}, {4, 4, 4, 3}, {2, 2, 1}, {0, 1}, {3}}, {{1, 0, 
        0, 1, 1}, {4, 4, 3, 3}, {2, 2, 2}, {0, 1}, {3}}, {{1, 0, 1, 2, 2}, {5,
         5, 4, 3}, {1, 1, 1}, {0, 1}, {3}}, {{2, 2, 2, 2, 2}, {3, 3, 3, 2}, {
        1, 1, 1}, {1, 2}, {3}}, {{2, 2, 2, 1, 1}, {3, 3, 3, 3}, {1, 1, 1}, {1,
         2}, {3}}, {{2, 2, 3, 2, 2}, {4, 4, 4, 3}, {0, 0, 0}, {1, 2}, {3}}, {{
        2, 2, 2, 2, 1}, {3, 3, 2, 2}, {1, 1, 2}, {1, 2}, {3}}, {{2, 2, 3, 3, 
        2}, {4, 4, 3, 2}, {0, 0, 1}, {1, 2}, {3}}, {{2, 2, 2, 2, 2}, {3, 3, 3,
         3}, {2, 2, 1}, {0, 1}, {3}}, {{2, 2, 1, 1, 2}, {3, 3, 4, 3}, {2, 2, 
        1}, {0, 1}, {3}}, {{2, 2, 2, 3, 2}, {3, 3, 2, 2}, {2, 2, 2}, {0, 1}, {
        3}}, {{2, 2, 1, 1, 1}, {3, 3, 3, 3}, {2, 2, 2}, {0, 1}, {3}}, {{2, 2, 
        2, 2, 2}, {4, 4, 4, 3}, {1, 1, 1}, {0, 1}, {3}}, {{3, 4, 4, 3, 2}, {2,
         2, 2, 2}, {1, 1, 1}, {1, 2}, {3}}, {{3, 4, 4, 4, 2}, {2, 2, 1, 1}, {
        1, 1, 2}, {1, 2}, {3}}, {{3, 4, 3, 2, 2}, {2, 2, 3, 3}, {2, 2, 1}, {0,
         1}, {3}}, {{3, 4, 3, 3, 2}, {2, 2, 2, 2}, {2, 2, 2}, {0, 1}, {3}}, {{
        2, 1, 1, 1, 2}, {4, 5, 5, 3}, {0, 0, 0}, {1, 2}, {3}}, {{2, 1, 1, 1, 
        1}, {4, 5, 4, 3}, {0, 0, 1}, {1, 2}, {3}}, {{2, 1, 1, 2, 2}, {4, 5, 4,
         3}, {1, 1, 1}, {0, 1}, {3}}, {{3, 3, 3, 2, 2}, {3, 4, 4, 3}, {0, 0, 
        0}, {1, 2}, {3}}, {{3, 3, 3, 3, 2}, {3, 4, 3, 2}, {0, 0, 1}, {1, 2}, {
        3}}, {{3, 3, 2, 2, 2}, {3, 4, 4, 3}, {1, 1, 1}, {0, 1}, {3}}, {{1, 1, 
        2, 2, 2}, {4, 2, 2, 2}, {2, 3, 2}, {0, 1}, {3}}, {{1, 1, 2, 1, 1}, {4,
         2, 2, 3}, {2, 3, 2}, {0, 1}, {3}}, {{1, 1, 3, 2, 2}, {5, 3, 3, 3}, {
        1, 2, 1}, {0, 1}, {3}}, {{1, 1, 3, 3, 2}, {5, 3, 2, 2}, {1, 2, 2}, {0,
         1}, {3}}, {{2, 3, 4, 3, 2}, {3, 1, 1, 2}, {2, 3, 2}, {0, 1}, {3}}, {{
        1, 0, 0, 0, 1}, {4, 3, 3, 3}, {2, 3, 2}, {0, 1}, {3}}, {{1, 0, 1, 1, 
        2}, {5, 4, 4, 3}, {1, 2, 1}, {0, 1}, {3}}, {{1, 0, 1, 1, 1}, {5, 4, 3,
         3}, {1, 2, 2}, {0, 1}, {3}}, {{2, 2, 2, 2, 2}, {3, 2, 2, 2}, {2, 3, 
        2}, {0, 1}, {3}}, {{2, 2, 2, 1, 1}, {3, 2, 2, 3}, {2, 3, 2}, {0, 1}, {
        3}}, {{2, 2, 3, 2, 2}, {4, 3, 3, 3}, {1, 2, 1}, {0, 1}, {3}}, {{2, 2, 
        3, 3, 2}, {4, 3, 2, 2}, {1, 2, 2}, {0, 1}, {3}}, {{3, 4, 4, 3, 2}, {2,
         1, 1, 2}, {2, 3, 2}, {0, 1}, {3}}, {{2, 1, 1, 1, 2}, {4, 4, 4, 3}, {
        1, 2, 1}, {0, 1}, {3}}, {{2, 1, 1, 1, 1}, {4, 4, 3, 3}, {1, 2, 2}, {0,
         1}, {3}}, {{2, 1, 2, 2, 2}, {5, 5, 4, 3}, {0, 1, 1}, {0, 1}, {3}}, {{
        3, 3, 3, 2, 2}, {3, 3, 3, 3}, {1, 2, 1}, {0, 1}, {3}}, {{3, 3, 3, 3, 
        2}, {3, 3, 2, 2}, {1, 2, 2}, {0, 1}, {3}}, {{3, 2, 2, 2, 2}, {4, 5, 4,
         3}, {0, 1, 1}, {0, 1}, {3}}, {{1, 1, 1, 3, 2}, {3, 3, 3, 2}, {3, 1, 
        1}, {0, 2}, {3}}, {{1, 1, 0, 1, 1}, {3, 3, 4, 3}, {3, 1, 1}, {0, 2}, {
        3}}, {{1, 1, 1, 2, 2}, {4, 4, 5, 3}, {2, 0, 0}, {0, 2}, {3}}, {{2, 3, 
        2, 3, 2}, {2, 2, 3, 2}, {3, 1, 1}, {0, 2}, {3}}, {{2, 3, 1, 1, 1}, {2,
         2, 4, 3}, {3, 1, 1}, {0, 2}, {3}}, {{2, 3, 2, 2, 2}, {3, 3, 5, 3}, {
        2, 0, 0}, {0, 2}, {3}}, {{3, 5, 3, 3, 2}, {1, 1, 3, 2}, {3, 1, 1}, {0,
         2}, {3}}, {{1, 0, 0, 2, 2}, {4, 5, 5, 3}, {2, 0, 0}, {0, 2}, {3}}, {{
        2, 2, 1, 2, 2}, {3, 4, 5, 3}, {2, 0, 0}, {0, 2}, {3}}, {{3, 4, 2, 2, 
        2}, {2, 3, 5, 3}, {2, 0, 0}, {0, 2}, {3}}, {{1, 1, 1, 2, 1}, {3, 2, 2,
         2}, {3, 2, 2}, {0, 2}, {3}}, {{1, 1, 2, 3, 2}, {4, 3, 3, 2}, {2, 1, 
        1}, {0, 2}, {3}}, {{1, 1, 0, 0, 0}, {3, 2, 3, 3}, {3, 2, 2}, {0, 2}, {
        3}}, {{1, 1, 1, 1, 1}, {4, 3, 4, 3}, {2, 1, 1}, {0, 2}, {3}}, {{1, 1, 
        2, 2, 2}, {5, 4, 5, 3}, {1, 0, 0}, {0, 2}, {3}}, {{2, 3, 3, 4, 2}, {2,
         1, 1, 1}, {3, 2, 2}, {0, 2}, {3}}, {{2, 3, 2, 2, 1}, {2, 1, 2, 2}, {
        3, 2, 2}, {0, 2}, {3}}, {{2, 3, 3, 3, 2}, {3, 2, 3, 2}, {2, 1, 1}, {0,
         2}, {3}}, {{3, 5, 4, 4, 2}, {1, 0, 1, 1}, {3, 2, 2}, {0, 2}, {3}}, {{
        1, 0, 0, 1, 1}, {4, 4, 4, 3}, {2, 1, 1}, {0, 2}, {3}}, {{1, 0, 1, 2, 
        2}, {5, 5, 5, 3}, {1, 0, 0}, {0, 2}, {3}}, {{2, 2, 2, 3, 2}, {3, 3, 3,
         2}, {2, 1, 1}, {0, 2}, {3}}, {{2, 2, 1, 1, 1}, {3, 3, 4, 3}, {2, 1, 
        1}, {0, 2}, {3}}, {{2, 2, 2, 2, 2}, {4, 4, 5, 3}, {1, 0, 0}, {0, 2}, {
        3}}, {{3, 4, 3, 3, 2}, {2, 2, 3, 2}, {2, 1, 1}, {0, 2}, {3}}, {{2, 1, 
        1, 2, 2}, {4, 5, 5, 3}, {1, 0, 0}, {0, 2}, {3}}, {{3, 3, 2, 2, 2}, {3,
         4, 5, 3}, {1, 0, 0}, {0, 2}, {3}}, {{1, 1, 2, 2, 1}, {4, 2, 2, 2}, {
        2, 2, 2}, {0, 2}, {3}}, {{1, 1, 3, 3, 2}, {5, 3, 3, 2}, {1, 1, 1}, {0,
         2}, {3}}, {{2, 3, 4, 4, 2}, {3, 1, 1, 1}, {2, 2, 2}, {0, 2}, {3}}, {{
        1, 0, 0, 0, 0}, {4, 3, 3, 3}, {2, 2, 2}, {0, 2}, {3}}, {{1, 0, 1, 1, 
        1}, {5, 4, 4, 3}, {1, 1, 1}, {0, 2}, {3}}, {{2, 2, 2, 2, 1}, {3, 2, 2,
         2}, {2, 2, 2}, {0, 2}, {3}}, {{2, 2, 3, 3, 2}, {4, 3, 3, 2}, {1, 1, 
        1}, {0, 2}, {3}}, {{3, 4, 4, 4, 2}, {2, 1, 1, 1}, {2, 2, 2}, {0, 2}, {
        3}}, {{2, 1, 1, 1, 1}, {4, 4, 4, 3}, {1, 1, 1}, {0, 2}, {3}}, {{2, 1, 
        2, 2, 2}, {5, 5, 5, 3}, {0, 0, 0}, {0, 2}, {3}}, {{3, 3, 3, 3, 2}, {3,
         3, 3, 2}, {1, 1, 1}, {0, 2}, {3}}, {{3, 2, 2, 2, 2}, {4, 5, 5, 3}, {
        0, 0, 0}, {0, 2}, {3}}, {{1, 1, 1, 1, 2}, {3, 3, 2, 3}, {2, 2, 2}, {2,
         1}, {2}}, {{1, 1, 0, 0, 2}, {3, 3, 3, 3}, {2, 2, 2}, {2, 1}, {2}}, {{
        1, 1, 2, 2, 2}, {4, 4, 2, 3}, {1, 1, 2}, {2, 1}, {2}}, {{1, 1, 1, 1, 
        2}, {4, 4, 3, 3}, {1, 1, 2}, {2, 1}, {2}}, {{1, 1, 2, 2, 2}, {5, 5, 3,
         3}, {0, 0, 2}, {2, 1}, {2}}, {{2, 3, 3, 2, 2}, {2, 2, 1, 3}, {2, 2, 
        2}, {2, 1}, {2}}, {{2, 3, 2, 1, 2}, {2, 2, 2, 3}, {2, 2, 2}, {2, 1}, {
        2}}, {{2, 3, 3, 2, 2}, {3, 3, 2, 3}, {1, 1, 2}, {2, 1}, {2}}, {{3, 5, 
        4, 2, 2}, {1, 1, 1, 3}, {2, 2, 2}, {2, 1}, {2}}, {{1, 0, 0, 1, 2}, {4,
         5, 3, 3}, {1, 1, 2}, {2, 1}, {2}}, {{1, 0, 1, 2, 2}, {5, 6, 3, 3}, {
        0, 0, 2}, {2, 1}, {2}}, {{2, 2, 2, 2, 2}, {3, 4, 2, 3}, {1, 1, 2}, {2,
         1}, {2}}, {{2, 2, 1, 1, 2}, {3, 4, 3, 3}, {1, 1, 2}, {2, 1}, {2}}, {{
        2, 2, 2, 2, 2}, {4, 5, 3, 3}, {0, 0, 2}, {2, 1}, {2}}, {{3, 4, 3, 2, 
        2}, {2, 3, 2, 3}, {1, 1, 2}, {2, 1}, {2}}, {{2, 1, 1, 2, 2}, {4, 6, 3,
         3}, {0, 0, 2}, {2, 1}, {2}}, {{3, 3, 2, 2, 2}, {3, 5, 3, 3}, {0, 0, 
        2}, {2, 1}, {2}}, {{1, 1, 1, 1, 2}, {3, 3, 3, 3}, {2, 1, 1}, {2, 2}, {
        2}}, {{1, 1, 0, 0, 2}, {3, 3, 4, 3}, {2, 1, 1}, {2, 2}, {2}}, {{1, 1, 
        1, 2, 2}, {3, 3, 2, 2}, {2, 1, 2}, {2, 2}, {2}}, {{1, 1, 1, 1, 1}, {3,
         3, 2, 3}, {2, 1, 2}, {2, 2}, {2}}, {{1, 1, 2, 2, 2}, {4, 4, 3, 3}, {
        1, 0, 1}, {2, 2}, {2}}, {{1, 1, 0, 0, 1}, {3, 3, 3, 3}, {2, 1, 2}, {2,
         2}, {2}}, {{1, 1, 1, 1, 2}, {4, 4, 4, 3}, {1, 0, 1}, {2, 2}, {2}}, {{
        1, 1, 2, 3, 2}, {4, 4, 2, 2}, {1, 0, 2}, {2, 2}, {2}}, {{1, 1, 1, 1, 
        1}, {4, 4, 3, 3}, {1, 0, 2}, {2, 2}, {2}}, {{1, 1, 1, 2, 2}, {3, 3, 2,
         3}, {3, 2, 2}, {1, 1}, {2}}, {{1, 1, 0, 1, 2}, {3, 3, 3, 3}, {3, 2, 
        2}, {1, 1}, {2}}, {{1, 1, 1, 2, 2}, {4, 4, 3, 3}, {2, 1, 2}, {1, 1}, {
        2}}, {{2, 3, 3, 2, 2}, {2, 2, 2, 3}, {2, 1, 1}, {2, 2}, {2}}, {{2, 3, 
        2, 1, 2}, {2, 2, 3, 3}, {2, 1, 1}, {2, 2}, {2}}, {{2, 3, 3, 3, 2}, {2,
         2, 1, 2}, {2, 1, 2}, {2, 2}, {2}}, {{2, 3, 2, 2, 2}, {2, 2, 2, 2}, {
        2, 1, 2}, {2, 2}, {2}}, {{2, 3, 2, 1, 1}, {2, 2, 2, 3}, {2, 1, 2}, {2,
         2}, {2}}, {{2, 3, 3, 2, 2}, {3, 3, 3, 3}, {1, 0, 1}, {2, 2}, {2}}, {{
        2, 3, 3, 3, 2}, {3, 3, 2, 2}, {1, 0, 2}, {2, 2}, {2}}, {{2, 3, 2, 2, 
        2}, {2, 2, 2, 3}, {3, 2, 2}, {1, 1}, {2}}, {{2, 3, 1, 1, 2}, {2, 2, 3,
         3}, {3, 2, 2}, {1, 1}, {2}}, {{2, 3, 2, 2, 2}, {3, 3, 3, 3}, {2, 1, 
        2}, {1, 1}, {2}}, {{3, 5, 4, 2, 2}, {1, 1, 2, 3}, {2, 1, 1}, {2, 2}, {
        2}}, {{3, 5, 4, 3, 2}, {1, 1, 1, 2}, {2, 1, 2}, {2, 2}, {2}}, {{3, 5, 
        3, 2, 2}, {1, 1, 2, 3}, {3, 2, 2}, {1, 1}, {2}}, {{1, 0, 0, 1, 2}, {4,
         5, 4, 3}, {1, 0, 1}, {2, 2}, {2}}, {{1, 0, 0, 1, 1}, {4, 5, 3, 3}, {
        1, 0, 2}, {2, 2}, {2}}, {{1, 0, 0, 2, 2}, {4, 5, 3, 3}, {2, 1, 2}, {1,
         1}, {2}}, {{2, 2, 2, 2, 2}, {3, 4, 3, 3}, {1, 0, 1}, {2, 2}, {2}}, {{
        2, 2, 1, 1, 2}, {3, 4, 4, 3}, {1, 0, 1}, {2, 2}, {2}}, {{2, 2, 2, 3, 
        2}, {3, 4, 2, 2}, {1, 0, 2}, {2, 2}, {2}}, {{2, 2, 1, 1, 1}, {3, 4, 3,
         3}, {1, 0, 2}, {2, 2}, {2}}, {{2, 2, 1, 2, 2}, {3, 4, 3, 3}, {2, 1, 
        2}, {1, 1}, {2}}, {{3, 4, 3, 2, 2}, {2, 3, 3, 3}, {1, 0, 1}, {2, 2}, {
        2}}, {{3, 4, 3, 3, 2}, {2, 3, 2, 2}, {1, 0, 2}, {2, 2}, {2}}, {{3, 4, 
        2, 2, 2}, {2, 3, 3, 3}, {2, 1, 2}, {1, 1}, {2}}, {{1, 1, 1, 1, 2}, {3,
         2, 2, 2}, {2, 2, 2}, {2, 2}, {2}}, {{1, 1, 1, 0, 1}, {3, 2, 2, 3}, {
        2, 2, 2}, {2, 2}, {2}}, {{1, 1, 2, 1, 2}, {4, 3, 3, 3}, {1, 1, 1}, {2,
         2}, {2}}, {{1, 1, 2, 2, 2}, {4, 3, 2, 2}, {1, 1, 2}, {2, 2}, {2}}, {{
        1, 1, 2, 1, 1}, {4, 3, 2, 3}, {1, 1, 2}, {2, 2}, {2}}, {{1, 1, 3, 2, 
        2}, {5, 4, 3, 3}, {0, 0, 1}, {2, 2}, {2}}, {{1, 1, 3, 3, 2}, {5, 4, 2,
         2}, {0, 0, 2}, {2, 2}, {2}}, {{1, 1, 1, 1, 2}, {3, 2, 2, 3}, {3, 3, 
        2}, {1, 1}, {2}}, {{1, 1, 0, 0, 2}, {3, 2, 3, 3}, {3, 3, 2}, {1, 1}, {
        2}}, {{1, 1, 2, 2, 2}, {4, 3, 2, 3}, {2, 2, 2}, {1, 1}, {2}}, {{1, 1, 
        1, 1, 2}, {4, 3, 3, 3}, {2, 2, 2}, {1, 1}, {2}}, {{1, 1, 2, 2, 2}, {5,
         4, 3, 3}, {1, 1, 2}, {1, 1}, {2}}, {{2, 3, 3, 2, 2}, {2, 1, 1, 2}, {
        2, 2, 2}, {2, 2}, {2}}, {{2, 3, 3, 1, 1}, {2, 1, 1, 3}, {2, 2, 2}, {2,
         2}, {2}}, {{2, 3, 4, 2, 2}, {3, 2, 2, 3}, {1, 1, 1}, {2, 2}, {2}}, {{
        2, 3, 4, 3, 2}, {3, 2, 1, 2}, {1, 1, 2}, {2, 2}, {2}}, {{2, 3, 3, 2, 
        2}, {2, 1, 1, 3}, {3, 3, 2}, {1, 1}, {2}}, {{2, 3, 2, 1, 2}, {2, 1, 2,
         3}, {3, 3, 2}, {1, 1}, {2}}, {{2, 3, 3, 2, 2}, {3, 2, 2, 3}, {2, 2, 
        2}, {1, 1}, {2}}, {{3, 5, 5, 3, 2}, {1, 0, 0, 2}, {2, 2, 2}, {2, 2}, {
        2}}, {{3, 5, 4, 2, 2}, {1, 0, 1, 3}, {3, 3, 2}, {1, 1}, {2}}, {{1, 0, 
        0, 0, 2}, {4, 4, 4, 3}, {1, 1, 1}, {2, 2}, {2}}, {{1, 0, 0, 0, 1}, {4,
         4, 3, 3}, {1, 1, 2}, {2, 2}, {2}}, {{1, 0, 1, 1, 2}, {5, 5, 4, 3}, {
        0, 0, 1}, {2, 2}, {2}}, {{1, 0, 1, 1, 1}, {5, 5, 3, 3}, {0, 0, 2}, {2,
         2}, {2}}, {{1, 0, 0, 1, 2}, {4, 4, 3, 3}, {2, 2, 2}, {1, 1}, {2}}, {{
        1, 0, 1, 2, 2}, {5, 5, 3, 3}, {1, 1, 2}, {1, 1}, {2}}, {{2, 2, 2, 1, 
        2}, {3, 3, 3, 3}, {1, 1, 1}, {2, 2}, {2}}, {{2, 2, 2, 2, 2}, {3, 3, 2,
         2}, {1, 1, 2}, {2, 2}, {2}}, {{2, 2, 2, 1, 1}, {3, 3, 2, 3}, {1, 1, 
        2}, {2, 2}, {2}}, {{2, 2, 3, 2, 2}, {4, 4, 3, 3}, {0, 0, 1}, {2, 2}, {
        2}}, {{2, 2, 3, 3, 2}, {4, 4, 2, 2}, {0, 0, 2}, {2, 2}, {2}}, {{2, 2, 
        2, 2, 2}, {3, 3, 2, 3}, {2, 2, 2}, {1, 1}, {2}}, {{2, 2, 1, 1, 2}, {3,
         3, 3, 3}, {2, 2, 2}, {1, 1}, {2}}, {{2, 2, 2, 2, 2}, {4, 4, 3, 3}, {
        1, 1, 2}, {1, 1}, {2}}, {{3, 4, 4, 2, 2}, {2, 2, 2, 3}, {1, 1, 1}, {2,
         2}, {2}}, {{3, 4, 4, 3, 2}, {2, 2, 1, 2}, {1, 1, 2}, {2, 2}, {2}}, {{
        3, 4, 3, 2, 2}, {2, 2, 2, 3}, {2, 2, 2}, {1, 1}, {2}}, {{2, 1, 1, 1, 
        2}, {4, 5, 4, 3}, {0, 0, 1}, {2, 2}, {2}}, {{2, 1, 1, 1, 1}, {4, 5, 3,
         3}, {0, 0, 2}, {2, 2}, {2}}, {{2, 1, 1, 2, 2}, {4, 5, 3, 3}, {1, 1, 
        2}, {1, 1}, {2}}, {{3, 3, 3, 2, 2}, {3, 4, 3, 3}, {0, 0, 1}, {2, 2}, {
        2}}, {{3, 3, 3, 3, 2}, {3, 4, 2, 2}, {0, 0, 2}, {2, 2}, {2}}, {{3, 3, 
        2, 2, 2}, {3, 4, 3, 3}, {1, 1, 2}, {1, 1}, {2}}, {{1, 1, 2, 1, 2}, {4,
         2, 2, 3}, {2, 3, 2}, {1, 1}, {2}}, {{1, 1, 3, 2, 2}, {5, 3, 2, 3}, {
        1, 2, 2}, {1, 1}, {2}}, {{2, 3, 4, 2, 2}, {3, 1, 1, 3}, {2, 3, 2}, {1,
         1}, {2}}, {{1, 0, 0, 0, 2}, {4, 3, 3, 3}, {2, 3, 2}, {1, 1}, {2}}, {{
        1, 0, 1, 1, 2}, {5, 4, 3, 3}, {1, 2, 2}, {1, 1}, {2}}, {{2, 2, 2, 1, 
        2}, {3, 2, 2, 3}, {2, 3, 2}, {1, 1}, {2}}, {{2, 2, 3, 2, 2}, {4, 3, 2,
         3}, {1, 2, 2}, {1, 1}, {2}}, {{3, 4, 4, 2, 2}, {2, 1, 1, 3}, {2, 3, 
        2}, {1, 1}, {2}}, {{2, 1, 1, 1, 2}, {4, 4, 3, 3}, {1, 2, 2}, {1, 1}, {
        2}}, {{2, 1, 2, 2, 2}, {5, 5, 3, 3}, {0, 1, 2}, {1, 1}, {2}}, {{3, 3, 
        3, 2, 2}, {3, 3, 2, 3}, {1, 2, 2}, {1, 1}, {2}}, {{3, 2, 2, 2, 2}, {4,
         5, 3, 3}, {0, 1, 2}, {1, 1}, {2}}, {{1, 1, 1, 2, 2}, {3, 3, 3, 3}, {
        3, 1, 1}, {1, 2}, {2}}, {{1, 1, 0, 1, 2}, {3, 3, 4, 3}, {3, 1, 1}, {1,
         2}, {2}}, {{1, 1, 1, 3, 2}, {3, 3, 2, 2}, {3, 1, 2}, {1, 2}, {2}}, {{
        1, 1, 0, 1, 1}, {3, 3, 3, 3}, {3, 1, 2}, {1, 2}, {2}}, {{1, 1, 1, 2, 
        2}, {4, 4, 4, 3}, {2, 0, 1}, {1, 2}, {2}}, {{1, 1, 0, 2, 2}, {3, 3, 3,
         3}, {4, 2, 2}, {0, 1}, {2}}, {{2, 3, 2, 2, 2}, {2, 2, 3, 3}, {3, 1, 
        1}, {1, 2}, {2}}, {{2, 3, 1, 1, 2}, {2, 2, 4, 3}, {3, 1, 1}, {1, 2}, {
        2}}, {{2, 3, 2, 3, 2}, {2, 2, 2, 2}, {3, 1, 2}, {1, 2}, {2}}, {{2, 3, 
        1, 1, 1}, {2, 2, 3, 3}, {3, 1, 2}, {1, 2}, {2}}, {{2, 3, 2, 2, 2}, {3,
         3, 4, 3}, {2, 0, 1}, {1, 2}, {2}}, {{2, 3, 1, 2, 2}, {2, 2, 3, 3}, {
        4, 2, 2}, {0, 1}, {2}}, {{3, 5, 3, 2, 2}, {1, 1, 3, 3}, {3, 1, 1}, {1,
         2}, {2}}, {{3, 5, 3, 3, 2}, {1, 1, 2, 2}, {3, 1, 2}, {1, 2}, {2}}, {{
        3, 5, 2, 2, 2}, {1, 1, 3, 3}, {4, 2, 2}, {0, 1}, {2}}, {{1, 0, 0, 2, 
        2}, {4, 5, 4, 3}, {2, 0, 1}, {1, 2}, {2}}, {{2, 2, 1, 2, 2}, {3, 4, 4,
         3}, {2, 0, 1}, {1, 2}, {2}}, {{3, 4, 2, 2, 2}, {2, 3, 4, 3}, {2, 0, 
        1}, {1, 2}, {2}}, {{1, 1, 1, 2, 2}, {3, 2, 2, 2}, {3, 2, 2}, {1, 2}, {
        2}}, {{1, 1, 1, 1, 1}, {3, 2, 2, 3}, {3, 2, 2}, {1, 2}, {2}}, {{1, 1, 
        2, 2, 2}, {4, 3, 3, 3}, {2, 1, 1}, {1, 2}, {2}}, {{1, 1, 0, 0, 1}, {3,
         2, 3, 3}, {3, 2, 2}, {1, 2}, {2}}, {{1, 1, 1, 1, 2}, {4, 3, 4, 3}, {
        2, 1, 1}, {1, 2}, {2}}, {{1, 1, 2, 3, 2}, {4, 3, 2, 2}, {2, 1, 2}, {1,
         2}, {2}}, {{1, 1, 1, 1, 1}, {4, 3, 3, 3}, {2, 1, 2}, {1, 2}, {2}}, {{
        1, 1, 2, 2, 2}, {5, 4, 4, 3}, {1, 0, 1}, {1, 2}, {2}}, {{1, 1, 1, 2, 
        2}, {3, 2, 2, 3}, {4, 3, 2}, {0, 1}, {2}}, {{1, 1, 0, 1, 2}, {3, 2, 3,
         3}, {4, 3, 2}, {0, 1}, {2}}, {{1, 1, 1, 2, 2}, {4, 3, 3, 3}, {3, 2, 
        2}, {0, 1}, {2}}, {{2, 3, 3, 3, 2}, {2, 1, 1, 2}, {3, 2, 2}, {1, 2}, {
        2}}, {{2, 3, 2, 2, 2}, {2, 1, 2, 2}, {3, 2, 2}, {1, 2}, {2}}, {{2, 3, 
        2, 1, 1}, {2, 1, 2, 3}, {3, 2, 2}, {1, 2}, {2}}, {{2, 3, 3, 2, 2}, {3,
         2, 3, 3}, {2, 1, 1}, {1, 2}, {2}}, {{2, 3, 3, 3, 2}, {3, 2, 2, 2}, {
        2, 1, 2}, {1, 2}, {2}}, {{2, 3, 2, 2, 2}, {2, 1, 2, 3}, {4, 3, 2}, {0,
         1}, {2}}, {{2, 3, 1, 1, 2}, {2, 1, 3, 3}, {4, 3, 2}, {0, 1}, {2}}, {{
        2, 3, 2, 2, 2}, {3, 2, 3, 3}, {3, 2, 2}, {0, 1}, {2}}, {{3, 5, 4, 3, 
        2}, {1, 0, 1, 2}, {3, 2, 2}, {1, 2}, {2}}, {{3, 5, 3, 2, 2}, {1, 0, 2,
         3}, {4, 3, 2}, {0, 1}, {2}}, {{1, 0, 0, 1, 2}, {4, 4, 4, 3}, {2, 1, 
        1}, {1, 2}, {2}}, {{1, 0, 0, 1, 1}, {4, 4, 3, 3}, {2, 1, 2}, {1, 2}, {
        2}}, {{1, 0, 1, 2, 2}, {5, 5, 4, 3}, {1, 0, 1}, {1, 2}, {2}}, {{1, 0, 
        0, 2, 2}, {4, 4, 3, 3}, {3, 2, 2}, {0, 1}, {2}}, {{2, 2, 2, 2, 2}, {3,
         3, 3, 3}, {2, 1, 1}, {1, 2}, {2}}, {{2, 2, 1, 1, 2}, {3, 3, 4, 3}, {
        2, 1, 1}, {1, 2}, {2}}, {{2, 2, 2, 3, 2}, {3, 3, 2, 2}, {2, 1, 2}, {1,
         2}, {2}}, {{2, 2, 1, 1, 1}, {3, 3, 3, 3}, {2, 1, 2}, {1, 2}, {2}}, {{
        2, 2, 2, 2, 2}, {4, 4, 4, 3}, {1, 0, 1}, {1, 2}, {2}}, {{2, 2, 1, 2, 
        2}, {3, 3, 3, 3}, {3, 2, 2}, {0, 1}, {2}}, {{3, 4, 3, 2, 2}, {2, 2, 3,
         3}, {2, 1, 1}, {1, 2}, {2}}, {{3, 4, 3, 3, 2}, {2, 2, 2, 2}, {2, 1, 
        2}, {1, 2}, {2}}, {{3, 4, 2, 2, 2}, {2, 2, 3, 3}, {3, 2, 2}, {0, 1}, {
        2}}, {{2, 1, 1, 2, 2}, {4, 5, 4, 3}, {1, 0, 1}, {1, 2}, {2}}, {{3, 3, 
        2, 2, 2}, {3, 4, 4, 3}, {1, 0, 1}, {1, 2}, {2}}, {{1, 1, 2, 2, 2}, {4,
         2, 2, 2}, {2, 2, 2}, {1, 2}, {2}}, {{1, 1, 2, 1, 1}, {4, 2, 2, 3}, {
        2, 2, 2}, {1, 2}, {2}}, {{1, 1, 3, 2, 2}, {5, 3, 3, 3}, {1, 1, 1}, {1,
         2}, {2}}, {{1, 1, 3, 3, 2}, {5, 3, 2, 2}, {1, 1, 2}, {1, 2}, {2}}, {{
        1, 1, 2, 2, 2}, {4, 2, 2, 3}, {3, 3, 2}, {0, 1}, {2}}, {{1, 1, 1, 1, 
        2}, {4, 2, 3, 3}, {3, 3, 2}, {0, 1}, {2}}, {{1, 1, 2, 2, 2}, {5, 3, 3,
         3}, {2, 2, 2}, {0, 1}, {2}}, {{2, 3, 4, 3, 2}, {3, 1, 1, 2}, {2, 2, 
        2}, {1, 2}, {2}}, {{2, 3, 3, 2, 2}, {3, 1, 2, 3}, {3, 3, 2}, {0, 1}, {
        2}}, {{1, 0, 0, 0, 1}, {4, 3, 3, 3}, {2, 2, 2}, {1, 2}, {2}}, {{1, 0, 
        1, 1, 2}, {5, 4, 4, 3}, {1, 1, 1}, {1, 2}, {2}}, {{1, 0, 1, 1, 1}, {5,
         4, 3, 3}, {1, 1, 2}, {1, 2}, {2}}, {{1, 0, 0, 1, 2}, {4, 3, 3, 3}, {
        3, 3, 2}, {0, 1}, {2}}, {{1, 0, 1, 2, 2}, {5, 4, 3, 3}, {2, 2, 2}, {0,
         1}, {2}}, {{2, 2, 2, 2, 2}, {3, 2, 2, 2}, {2, 2, 2}, {1, 2}, {2}}, {{
        2, 2, 2, 1, 1}, {3, 2, 2, 3}, {2, 2, 2}, {1, 2}, {2}}, {{2, 2, 3, 2, 
        2}, {4, 3, 3, 3}, {1, 1, 1}, {1, 2}, {2}}, {{2, 2, 3, 3, 2}, {4, 3, 2,
         2}, {1, 1, 2}, {1, 2}, {2}}, {{2, 2, 2, 2, 2}, {3, 2, 2, 3}, {3, 3, 
        2}, {0, 1}, {2}}, {{2, 2, 1, 1, 2}, {3, 2, 3, 3}, {3, 3, 2}, {0, 1}, {
        2}}, {{2, 2, 2, 2, 2}, {4, 3, 3, 3}, {2, 2, 2}, {0, 1}, {2}}, {{3, 4, 
        4, 3, 2}, {2, 1, 1, 2}, {2, 2, 2}, {1, 2}, {2}}, {{3, 4, 3, 2, 2}, {2,
         1, 2, 3}, {3, 3, 2}, {0, 1}, {2}}, {{2, 1, 1, 1, 2}, {4, 4, 4, 3}, {
        1, 1, 1}, {1, 2}, {2}}, {{2, 1, 1, 1, 1}, {4, 4, 3, 3}, {1, 1, 2}, {1,
         2}, {2}}, {{2, 1, 2, 2, 2}, {5, 5, 4, 3}, {0, 0, 1}, {1, 2}, {2}}, {{
        2, 1, 1, 2, 2}, {4, 4, 3, 3}, {2, 2, 2}, {0, 1}, {2}}, {{3, 3, 3, 2, 
        2}, {3, 3, 3, 3}, {1, 1, 1}, {1, 2}, {2}}, {{3, 3, 3, 3, 2}, {3, 3, 2,
         2}, {1, 1, 2}, {1, 2}, {2}}, {{3, 3, 2, 2, 2}, {3, 3, 3, 3}, {2, 2, 
        2}, {0, 1}, {2}}, {{3, 2, 2, 2, 2}, {4, 5, 4, 3}, {0, 0, 1}, {1, 2}, {
        2}}, {{1, 1, 3, 2, 2}, {5, 2, 2, 3}, {2, 3, 2}, {0, 1}, {2}}, {{1, 0, 
        1, 1, 2}, {5, 3, 3, 3}, {2, 3, 2}, {0, 1}, {2}}, {{2, 2, 3, 2, 2}, {4,
         2, 2, 3}, {2, 3, 2}, {0, 1}, {2}}, {{2, 1, 1, 1, 2}, {4, 3, 3, 3}, {
        2, 3, 2}, {0, 1}, {2}}, {{2, 1, 2, 2, 2}, {5, 4, 3, 3}, {1, 2, 2}, {0,
         1}, {2}}, {{3, 3, 3, 2, 2}, {3, 2, 2, 3}, {2, 3, 2}, {0, 1}, {2}}, {{
        3, 2, 2, 2, 2}, {4, 4, 3, 3}, {1, 2, 2}, {0, 1}, {2}}, {{1, 1, 0, 2, 
        2}, {3, 3, 4, 3}, {4, 1, 1}, {0, 2}, {2}}, {{2, 3, 1, 2, 2}, {2, 2, 4,
         3}, {4, 1, 1}, {0, 2}, {2}}, {{3, 5, 2, 2, 2}, {1, 1, 4, 3}, {4, 1, 
        1}, {0, 2}, {2}}, {{1, 1, 1, 3, 2}, {3, 2, 2, 2}, {4, 2, 2}, {0, 2}, {
        2}}, {{1, 1, 0, 1, 1}, {3, 2, 3, 3}, {4, 2, 2}, {0, 2}, {2}}, {{1, 1, 
        1, 2, 2}, {4, 3, 4, 3}, {3, 1, 1}, {0, 2}, {2}}, {{2, 3, 2, 3, 2}, {2,
         1, 2, 2}, {4, 2, 2}, {0, 2}, {2}}, {{2, 3, 1, 1, 1}, {2, 1, 3, 3}, {
        4, 2, 2}, {0, 2}, {2}}, {{2, 3, 2, 2, 2}, {3, 2, 4, 3}, {3, 1, 1}, {0,
         2}, {2}}, {{3, 5, 3, 3, 2}, {1, 0, 2, 2}, {4, 2, 2}, {0, 2}, {2}}, {{
        1, 0, 0, 2, 2}, {4, 4, 4, 3}, {3, 1, 1}, {0, 2}, {2}}, {{2, 2, 1, 2, 
        2}, {3, 3, 4, 3}, {3, 1, 1}, {0, 2}, {2}}, {{3, 4, 2, 2, 2}, {2, 2, 4,
         3}, {3, 1, 1}, {0, 2}, {2}}, {{1, 1, 2, 3, 2}, {4, 2, 2, 2}, {3, 2, 
        2}, {0, 2}, {2}}, {{1, 1, 1, 1, 1}, {4, 2, 3, 3}, {3, 2, 2}, {0, 2}, {
        2}}, {{1, 1, 2, 2, 2}, {5, 3, 4, 3}, {2, 1, 1}, {0, 2}, {2}}, {{2, 3, 
        3, 3, 2}, {3, 1, 2, 2}, {3, 2, 2}, {0, 2}, {2}}, {{1, 0, 0, 1, 1}, {4,
         3, 3, 3}, {3, 2, 2}, {0, 2}, {2}}, {{1, 0, 1, 2, 2}, {5, 4, 4, 3}, {
        2, 1, 1}, {0, 2}, {2}}, {{2, 2, 2, 3, 2}, {3, 2, 2, 2}, {3, 2, 2}, {0,
         2}, {2}}, {{2, 2, 1, 1, 1}, {3, 2, 3, 3}, {3, 2, 2}, {0, 2}, {2}}, {{
        2, 2, 2, 2, 2}, {4, 3, 4, 3}, {2, 1, 1}, {0, 2}, {2}}, {{3, 4, 3, 3, 
        2}, {2, 1, 2, 2}, {3, 2, 2}, {0, 2}, {2}}, {{2, 1, 1, 2, 2}, {4, 4, 4,
         3}, {2, 1, 1}, {0, 2}, {2}}, {{3, 3, 2, 2, 2}, {3, 3, 4, 3}, {2, 1, 
        1}, {0, 2}, {2}}, {{1, 1, 3, 3, 2}, {5, 2, 2, 2}, {2, 2, 2}, {0, 2}, {
        2}}, {{1, 0, 1, 1, 1}, {5, 3, 3, 3}, {2, 2, 2}, {0, 2}, {2}}, {{2, 2, 
        3, 3, 2}, {4, 2, 2, 2}, {2, 2, 2}, {0, 2}, {2}}, {{2, 1, 1, 1, 1}, {4,
         3, 3, 3}, {2, 2, 2}, {0, 2}, {2}}, {{2, 1, 2, 2, 2}, {5, 4, 4, 3}, {
        1, 1, 1}, {0, 2}, {2}}, {{3, 3, 3, 3, 2}, {3, 2, 2, 2}, {2, 2, 2}, {0,
         2}, {2}}, {{3, 2, 2, 2, 2}, {4, 4, 4, 3}, {1, 1, 1}, {0, 2}, {2}}, {{
        1, 1, 1, 2, 2}, {3, 3, 2, 3}, {3, 1, 2}, {2, 2}, {1}}, {{1, 1, 0, 1, 
        2}, {3, 3, 3, 3}, {3, 1, 2}, {2, 2}, {1}}, {{1, 1, 1, 2, 2}, {4, 4, 3,
         3}, {2, 0, 2}, {2, 2}, {1}}, {{2, 3, 2, 2, 2}, {2, 2, 2, 3}, {3, 1, 
        2}, {2, 2}, {1}}, {{2, 3, 1, 1, 2}, {2, 2, 3, 3}, {3, 1, 2}, {2, 2}, {
        1}}, {{2, 3, 2, 2, 2}, {3, 3, 3, 3}, {2, 0, 2}, {2, 2}, {1}}, {{3, 5, 
        3, 2, 2}, {1, 1, 2, 3}, {3, 1, 2}, {2, 2}, {1}}, {{1, 0, 0, 2, 2}, {4,
         5, 3, 3}, {2, 0, 2}, {2, 2}, {1}}, {{2, 2, 1, 2, 2}, {3, 4, 3, 3}, {
        2, 0, 2}, {2, 2}, {1}}, {{3, 4, 2, 2, 2}, {2, 3, 3, 3}, {2, 0, 2}, {2,
         2}, {1}}, {{1, 1, 1, 1, 2}, {3, 2, 2, 3}, {3, 2, 2}, {2, 2}, {1}}, {{
        1, 1, 0, 0, 2}, {3, 2, 3, 3}, {3, 2, 2}, {2, 2}, {1}}, {{1, 1, 2, 2, 
        2}, {4, 3, 2, 3}, {2, 1, 2}, {2, 2}, {1}}, {{1, 1, 1, 1, 2}, {4, 3, 3,
         3}, {2, 1, 2}, {2, 2}, {1}}, {{1, 1, 2, 2, 2}, {5, 4, 3, 3}, {1, 0, 
        2}, {2, 2}, {1}}, {{2, 3, 3, 2, 2}, {2, 1, 1, 3}, {3, 2, 2}, {2, 2}, {
        1}}, {{2, 3, 2, 1, 2}, {2, 1, 2, 3}, {3, 2, 2}, {2, 2}, {1}}, {{2, 3, 
        3, 2, 2}, {3, 2, 2, 3}, {2, 1, 2}, {2, 2}, {1}}, {{3, 5, 4, 2, 2}, {1,
         0, 1, 3}, {3, 2, 2}, {2, 2}, {1}}, {{1, 0, 0, 1, 2}, {4, 4, 3, 3}, {
        2, 1, 2}, {2, 2}, {1}}, {{1, 0, 1, 2, 2}, {5, 5, 3, 3}, {1, 0, 2}, {2,
         2}, {1}}, {{2, 2, 2, 2, 2}, {3, 3, 2, 3}, {2, 1, 2}, {2, 2}, {1}}, {{
        2, 2, 1, 1, 2}, {3, 3, 3, 3}, {2, 1, 2}, {2, 2}, {1}}, {{2, 2, 2, 2, 
        2}, {4, 4, 3, 3}, {1, 0, 2}, {2, 2}, {1}}, {{3, 4, 3, 2, 2}, {2, 2, 2,
         3}, {2, 1, 2}, {2, 2}, {1}}, {{2, 1, 1, 2, 2}, {4, 5, 3, 3}, {1, 0, 
        2}, {2, 2}, {1}}, {{3, 3, 2, 2, 2}, {3, 4, 3, 3}, {1, 0, 2}, {2, 2}, {
        1}}, {{1, 1, 2, 1, 2}, {4, 2, 2, 3}, {2, 2, 2}, {2, 2}, {1}}, {{1, 1, 
        3, 2, 2}, {5, 3, 2, 3}, {1, 1, 2}, {2, 2}, {1}}, {{2, 3, 4, 2, 2}, {3,
         1, 1, 3}, {2, 2, 2}, {2, 2}, {1}}, {{1, 0, 0, 0, 2}, {4, 3, 3, 3}, {
        2, 2, 2}, {2, 2}, {1}}, {{1, 0, 1, 1, 2}, {5, 4, 3, 3}, {1, 1, 2}, {2,
         2}, {1}}, {{2, 2, 2, 1, 2}, {3, 2, 2, 3}, {2, 2, 2}, {2, 2}, {1}}, {{
        2, 2, 3, 2, 2}, {4, 3, 2, 3}, {1, 1, 2}, {2, 2}, {1}}, {{3, 4, 4, 2, 
        2}, {2, 1, 1, 3}, {2, 2, 2}, {2, 2}, {1}}, {{2, 1, 1, 1, 2}, {4, 4, 3,
         3}, {1, 1, 2}, {2, 2}, {1}}, {{2, 1, 2, 2, 2}, {5, 5, 3, 3}, {0, 0, 
        2}, {2, 2}, {1}}, {{3, 3, 3, 2, 2}, {3, 3, 2, 3}, {1, 1, 2}, {2, 2}, {
        1}}, {{3, 2, 2, 2, 2}, {4, 5, 3, 3}, {0, 0, 2}, {2, 2}, {1}}, {{1, 1, 
        0, 2, 2}, {3, 3, 3, 3}, {4, 1, 2}, {1, 2}, {1}}, {{2, 3, 1, 2, 2}, {2,
         2, 3, 3}, {4, 1, 2}, {1, 2}, {1}}, {{3, 5, 2, 2, 2}, {1, 1, 3, 3}, {
        4, 1, 2}, {1, 2}, {1}}, {{1, 1, 1, 2, 2}, {3, 2, 2, 3}, {4, 2, 2}, {1,
         2}, {1}}, {{1, 1, 0, 1, 2}, {3, 2, 3, 3}, {4, 2, 2}, {1, 2}, {1}}, {{
        1, 1, 1, 2, 2}, {4, 3, 3, 3}, {3, 1, 2}, {1, 2}, {1}}, {{2, 3, 2, 2, 
        2}, {2, 1, 2, 3}, {4, 2, 2}, {1, 2}, {1}}, {{2, 3, 1, 1, 2}, {2, 1, 3,
         3}, {4, 2, 2}, {1, 2}, {1}}, {{2, 3, 2, 2, 2}, {3, 2, 3, 3}, {3, 1, 
        2}, {1, 2}, {1}}, {{3, 5, 3, 2, 2}, {1, 0, 2, 3}, {4, 2, 2}, {1, 2}, {
        1}}, {{1, 0, 0, 2, 2}, {4, 4, 3, 3}, {3, 1, 2}, {1, 2}, {1}}, {{2, 2, 
        1, 2, 2}, {3, 3, 3, 3}, {3, 1, 2}, {1, 2}, {1}}, {{3, 4, 2, 2, 2}, {2,
         2, 3, 3}, {3, 1, 2}, {1, 2}, {1}}, {{1, 1, 2, 2, 2}, {4, 2, 2, 3}, {
        3, 2, 2}, {1, 2}, {1}}, {{1, 1, 1, 1, 2}, {4, 2, 3, 3}, {3, 2, 2}, {1,
         2}, {1}}, {{1, 1, 2, 2, 2}, {5, 3, 3, 3}, {2, 1, 2}, {1, 2}, {1}}, {{
        2, 3, 3, 2, 2}, {3, 1, 2, 3}, {3, 2, 2}, {1, 2}, {1}}, {{1, 0, 0, 1, 
        2}, {4, 3, 3, 3}, {3, 2, 2}, {1, 2}, {1}}, {{1, 0, 1, 2, 2}, {5, 4, 3,
         3}, {2, 1, 2}, {1, 2}, {1}}, {{2, 2, 2, 2, 2}, {3, 2, 2, 3}, {3, 2, 
        2}, {1, 2}, {1}}, {{2, 2, 1, 1, 2}, {3, 2, 3, 3}, {3, 2, 2}, {1, 2}, {
        1}}, {{2, 2, 2, 2, 2}, {4, 3, 3, 3}, {2, 1, 2}, {1, 2}, {1}}, {{3, 4, 
        3, 2, 2}, {2, 1, 2, 3}, {3, 2, 2}, {1, 2}, {1}}, {{2, 1, 1, 2, 2}, {4,
         4, 3, 3}, {2, 1, 2}, {1, 2}, {1}}, {{3, 3, 2, 2, 2}, {3, 3, 3, 3}, {
        2, 1, 2}, {1, 2}, {1}}, {{1, 1, 3, 2, 2}, {5, 2, 2, 3}, {2, 2, 2}, {1,
         2}, {1}}, {{1, 0, 1, 1, 2}, {5, 3, 3, 3}, {2, 2, 2}, {1, 2}, {1}}, {{
        2, 2, 3, 2, 2}, {4, 2, 2, 3}, {2, 2, 2}, {1, 2}, {1}}, {{2, 1, 1, 1, 
        2}, {4, 3, 3, 3}, {2, 2, 2}, {1, 2}, {1}}, {{2, 1, 2, 2, 2}, {5, 4, 3,
         3}, {1, 1, 2}, {1, 2}, {1}}, {{3, 3, 3, 2, 2}, {3, 2, 2, 3}, {2, 2, 
        2}, {1, 2}, {1}}, {{3, 2, 2, 2, 2}, {4, 4, 3, 3}, {1, 1, 2}, {1, 2}, {
        1}}, {{1, 1, 1, 2, 2}, {4, 2, 3, 3}, {4, 2, 2}, {0, 2}, {1}}, {{2, 3, 
        2, 2, 2}, {3, 1, 3, 3}, {4, 2, 2}, {0, 2}, {1}}, {{1, 0, 0, 2, 2}, {4,
         3, 3, 3}, {4, 2, 2}, {0, 2}, {1}}, {{2, 2, 1, 2, 2}, {3, 2, 3, 3}, {
        4, 2, 2}, {0, 2}, {1}}, {{3, 4, 2, 2, 2}, {2, 1, 3, 3}, {4, 2, 2}, {0,
         2}, {1}}, {{1, 1, 2, 2, 2}, {5, 2, 3, 3}, {3, 2, 2}, {0, 2}, {1}}, {{
        1, 0, 1, 2, 2}, {5, 3, 3, 3}, {3, 2, 2}, {0, 2}, {1}}, {{2, 2, 2, 2, 
        2}, {4, 2, 3, 3}, {3, 2, 2}, {0, 2}, {1}}, {{2, 1, 1, 2, 2}, {4, 3, 3,
         3}, {3, 2, 2}, {0, 2}, {1}}, {{3, 3, 2, 2, 2}, {3, 2, 3, 3}, {3, 2, 
        2}, {0, 2}, {1}}, {{2, 1, 2, 2, 2}, {5, 3, 3, 3}, {2, 2, 2}, {0, 2}, {
        1}}, {{3, 2, 2, 2, 2}, {4, 3, 3, 3}, {2, 2, 2}, {0, 2}, {1}}}, {{{2, 
        3, 2, 2, 2}, {0, 0, 0, 0}, {3, 3, 3}, {2, 2}, {3}}, {{1, 2, 2, 2, 
        2}, {1, 0, 0, 0}, {3, 3, 3}, {2, 2}, {3}}, {{2, 3, 2, 2, 2}, {1, 0, 0,
         0}, {3, 4, 4}, {1, 1}, {3}}, {{1, 1, 1, 2, 2}, {1, 1, 0, 0}, {3, 3, 
        3}, {2, 2}, {3}}, {{0, 0, 1, 2, 2}, {2, 1, 0, 0}, {3, 3, 3}, {2, 2}, {
        3}}, {{2, 2, 1, 2, 2}, {1, 1, 0, 0}, {3, 4, 4}, {1, 1}, {3}}, {{1, 1, 
        1, 2, 2}, {2, 1, 0, 0}, {3, 4, 4}, {1, 1}, {3}}, {{1, 0, 0, 2, 2}, {2,
         2, 0, 0}, {3, 4, 4}, {1, 1}, {3}}, {{2, 3, 3, 2, 2}, {1, 1, 1, 1}, {
        2, 2, 2}, {2, 2}, {3}}, {{2, 4, 3, 2, 2}, {0, 0, 1, 1}, {3, 2, 2}, {2,
         2}, {3}}, {{2, 2, 2, 2, 2}, {1, 2, 1, 1}, {2, 2, 2}, {2, 2}, {3}}, {{
        1, 1, 2, 2, 2}, {2, 2, 1, 1}, {2, 2, 2}, {2, 2}, {3}}, {{2, 2, 2, 2, 
        2}, {2, 2, 1, 1}, {2, 3, 3}, {1, 1}, {3}}, {{1, 2, 2, 2, 2}, {1, 1, 1,
         1}, {3, 2, 2}, {2, 2}, {3}}, {{2, 3, 2, 2, 2}, {1, 1, 1, 1}, {3, 3, 
        3}, {1, 1}, {3}}, {{2, 1, 1, 2, 2}, {2, 3, 1, 1}, {2, 3, 3}, {1, 1}, {
        3}}, {{1, 1, 1, 2, 2}, {2, 2, 1, 1}, {3, 3, 3}, {1, 1}, {3}}, {{2, 2, 
        1, 2, 2}, {2, 2, 1, 1}, {3, 4, 4}, {0, 0}, {3}}, {{2, 2, 3, 2, 2}, {2,
         3, 2, 2}, {1, 1, 1}, {2, 2}, {3}}, {{2, 3, 3, 2, 2}, {1, 2, 2, 2}, {
        2, 1, 1}, {2, 2}, {3}}, {{2, 2, 2, 2, 2}, {2, 3, 2, 2}, {2, 2, 2}, {1,
         1}, {3}}, {{2, 2, 2, 2, 2}, {1, 0, 0, 0}, {3, 3, 3}, {2, 3}, {2}}, {{
        1, 1, 2, 2, 2}, {2, 0, 0, 0}, {3, 3, 3}, {2, 3}, {2}}, {{2, 2, 2, 2, 
        2}, {2, 0, 0, 0}, {3, 4, 4}, {1, 2}, {2}}, {{2, 1, 1, 2, 2}, {1, 1, 0,
         0}, {3, 3, 3}, {2, 3}, {2}}, {{1, 0, 1, 2, 2}, {2, 1, 0, 0}, {3, 3, 
        3}, {2, 3}, {2}}, {{2, 1, 1, 2, 2}, {2, 1, 0, 0}, {3, 4, 4}, {1, 2}, {
        2}}, {{2, 0, 0, 2, 2}, {2, 2, 0, 0}, {3, 4, 4}, {1, 2}, {2}}, {{2, 2, 
        3, 2, 2}, {2, 1, 1, 1}, {2, 2, 2}, {2, 3}, {2}}, {{2, 3, 3, 2, 2}, {1,
         0, 1, 1}, {3, 2, 2}, {2, 3}, {2}}, {{2, 1, 2, 2, 2}, {2, 2, 1, 1}, {
        2, 2, 2}, {2, 3}, {2}}, {{2, 2, 2, 2, 2}, {1, 1, 1, 1}, {3, 2, 2}, {2,
         3}, {2}}, {{1, 1, 2, 2, 2}, {2, 1, 1, 1}, {3, 2, 2}, {2, 3}, {2}}, {{
        2, 2, 2, 2, 2}, {2, 1, 1, 1}, {3, 3, 3}, {1, 2}, {2}}, {{2, 1, 1, 2, 
        2}, {2, 2, 1, 1}, {3, 3, 3}, {1, 2}, {2}}, {{2, 2, 3, 2, 2}, {2, 2, 2,
         2}, {2, 1, 1}, {2, 3}, {2}}, {{2, 3, 3, 2, 2}, {1, 1, 2, 2}, {3, 1, 
        1}, {2, 3}, {2}}, {{2, 2, 2, 2, 2}, {2, 2, 2, 2}, {3, 2, 2}, {1, 2}, {
        2}}, {{2, 1, 2, 2, 2}, {2, 0, 0, 0}, {3, 3, 3}, {2, 4}, {1}}, {{2, 0, 
        1, 2, 2}, {2, 1, 0, 0}, {3, 3, 3}, {2, 4}, {1}}, {{2, 2, 3, 2, 2}, {2,
         0, 1, 1}, {3, 2, 2}, {2, 4}, {1}}, {{2, 1, 2, 2, 2}, {2, 1, 1, 1}, {
        3, 2, 2}, {2, 4}, {1}}, {{2, 2, 3, 2, 2}, {2, 1, 2, 2}, {3, 1, 1}, {2,
         4}, {1}}, {{2, 4, 2, 2, 2}, {0, 0, 0, 0}, {3, 3, 4}, {2, 1}, {3}}, {{
        1, 2, 1, 2, 2}, {1, 1, 0, 0}, {3, 3, 4}, {2, 1}, {3}}, {{0, 0, 0, 2, 
        2}, {2, 2, 0, 0}, {3, 3, 4}, {2, 1}, {3}}, {{2, 3, 2, 2, 2}, {1, 2, 1,
         1}, {2, 2, 3}, {2, 1}, {3}}, {{1, 1, 1, 2, 2}, {2, 3, 1, 1}, {2, 2, 
        3}, {2, 1}, {3}}, {{2, 2, 1, 2, 2}, {2, 3, 1, 1}, {2, 3, 4}, {1, 0}, {
        3}}, {{2, 2, 2, 2, 2}, {2, 4, 2, 2}, {1, 1, 2}, {2, 1}, {3}}, {{2, 3, 
        2, 2, 2}, {1, 0, 0, 0}, {3, 3, 4}, {2, 2}, {2}}, {{2, 2, 1, 2, 2}, {1,
         1, 0, 0}, {3, 3, 4}, {2, 2}, {2}}, {{1, 1, 1, 2, 2}, {2, 1, 0, 0}, {
        3, 3, 4}, {2, 2}, {2}}, {{1, 0, 0, 2, 2}, {2, 2, 0, 0}, {3, 3, 4}, {2,
         2}, {2}}, {{2, 2, 2, 2, 2}, {2, 2, 1, 1}, {2, 2, 3}, {2, 2}, {2}}, {{
        2, 3, 2, 2, 2}, {1, 1, 1, 1}, {3, 2, 3}, {2, 2}, {2}}, {{2, 1, 1, 2, 
        2}, {2, 3, 1, 1}, {2, 2, 3}, {2, 2}, {2}}, {{1, 1, 1, 2, 2}, {2, 2, 1,
         1}, {3, 2, 3}, {2, 2}, {2}}, {{2, 2, 1, 2, 2}, {2, 2, 1, 1}, {3, 3, 
        4}, {1, 1}, {2}}, {{2, 2, 2, 2, 2}, {2, 3, 2, 2}, {2, 1, 2}, {2, 2}, {
        2}}, {{2, 2, 2, 2, 2}, {2, 0, 0, 0}, {3, 3, 4}, {2, 3}, {1}}, {{2, 1, 
        1, 2, 2}, {2, 1, 0, 0}, {3, 3, 4}, {2, 3}, {1}}, {{2, 0, 0, 2, 2}, {2,
         2, 0, 0}, {3, 3, 4}, {2, 3}, {1}}, {{2, 2, 2, 2, 2}, {2, 1, 1, 1}, {
        3, 2, 3}, {2, 3}, {1}}, {{2, 1, 1, 2, 2}, {2, 2, 1, 1}, {3, 2, 3}, {2,
         3}, {1}}, {{2, 2, 2, 2, 2}, {2, 2, 2, 2}, {3, 1, 2}, {2, 3}, {1}}, {{
        2, 2, 1, 2, 2}, {2, 3, 1, 1}, {2, 2, 4}, {2, 1}, {2}}, {{2, 2, 1, 2, 
        2}, {2, 2, 1, 1}, {3, 2, 4}, {2, 2}, {1}}, {{2, 3, 3, 2, 2}, {0, 0, 0,
         1}, {3, 3, 2}, {2, 2}, {3}}, {{1, 2, 3, 2, 2}, {1, 0, 0, 1}, {3, 3, 
        2}, {2, 2}, {3}}, {{2, 3, 3, 2, 2}, {1, 0, 0, 1}, {3, 4, 3}, {1, 1}, {
        3}}, {{2, 2, 2, 2, 2}, {1, 1, 0, 1}, {3, 4, 3}, {1, 1}, {3}}, {{1, 1, 
        2, 2, 2}, {2, 1, 0, 1}, {3, 4, 3}, {1, 1}, {3}}, {{2, 2, 2, 2, 2}, {2,
         1, 0, 1}, {3, 5, 4}, {0, 0}, {3}}, {{2, 1, 1, 2, 2}, {2, 2, 0, 1}, {
        3, 5, 4}, {0, 0}, {3}}, {{2, 3, 4, 2, 2}, {1, 1, 1, 2}, {2, 2, 1}, {2,
         2}, {3}}, {{2, 4, 4, 2, 2}, {0, 0, 1, 2}, {3, 2, 1}, {2, 2}, {3}}, {{
        2, 2, 3, 2, 2}, {2, 2, 1, 2}, {2, 3, 2}, {1, 1}, {3}}, {{2, 3, 3, 2, 
        2}, {1, 1, 1, 2}, {3, 3, 2}, {1, 1}, {3}}, {{2, 2, 2, 2, 2}, {2, 2, 1,
         2}, {3, 4, 3}, {0, 0}, {3}}, {{2, 2, 3, 2, 2}, {1, 0, 0, 1}, {3, 3, 
        2}, {2, 3}, {2}}, {{1, 1, 3, 2, 2}, {2, 0, 0, 1}, {3, 3, 2}, {2, 3}, {
        2}}, {{2, 2, 3, 2, 2}, {2, 0, 0, 1}, {3, 4, 3}, {1, 2}, {2}}, {{2, 1, 
        2, 2, 2}, {2, 1, 0, 1}, {3, 4, 3}, {1, 2}, {2}}, {{2, 2, 4, 2, 2}, {2,
         1, 1, 2}, {2, 2, 1}, {2, 3}, {2}}, {{2, 3, 4, 2, 2}, {1, 0, 1, 2}, {
        3, 2, 1}, {2, 3}, {2}}, {{2, 2, 3, 2, 2}, {2, 1, 1, 2}, {3, 3, 2}, {1,
         2}, {2}}, {{2, 1, 3, 2, 2}, {2, 0, 0, 1}, {3, 3, 2}, {2, 4}, {1}}, {{
        2, 2, 4, 2, 2}, {2, 0, 1, 2}, {3, 2, 1}, {2, 4}, {1}}, {{2, 4, 3, 2, 
        2}, {0, 0, 0, 1}, {3, 3, 3}, {2, 1}, {3}}, {{1, 2, 2, 2, 2}, {1, 1, 0,
         1}, {3, 3, 3}, {2, 1}, {3}}, {{2, 3, 2, 2, 2}, {1, 1, 0, 1}, {3, 4, 
        4}, {1, 0}, {3}}, {{1, 1, 1, 2, 2}, {2, 2, 0, 1}, {3, 4, 4}, {1, 0}, {
        3}}, {{2, 3, 3, 2, 2}, {1, 2, 1, 2}, {2, 2, 2}, {2, 1}, {3}}, {{2, 2, 
        2, 2, 2}, {2, 3, 1, 2}, {2, 3, 3}, {1, 0}, {3}}, {{2, 3, 3, 2, 2}, {1,
         0, 0, 1}, {3, 3, 3}, {2, 2}, {2}}, {{2, 2, 2, 2, 2}, {1, 1, 0, 1}, {
        3, 3, 3}, {2, 2}, {2}}, {{1, 1, 2, 2, 2}, {2, 1, 0, 1}, {3, 3, 3}, {2,
         2}, {2}}, {{2, 2, 2, 2, 2}, {2, 1, 0, 1}, {3, 4, 4}, {1, 1}, {2}}, {{
        2, 1, 1, 2, 2}, {2, 2, 0, 1}, {3, 4, 4}, {1, 1}, {2}}, {{2, 2, 3, 2, 
        2}, {2, 2, 1, 2}, {2, 2, 2}, {2, 2}, {2}}, {{2, 3, 3, 2, 2}, {1, 1, 1,
         2}, {3, 2, 2}, {2, 2}, {2}}, {{2, 2, 2, 2, 2}, {2, 2, 1, 2}, {3, 3, 
        3}, {1, 1}, {2}}, {{2, 2, 3, 2, 2}, {2, 0, 0, 1}, {3, 3, 3}, {2, 3}, {
        1}}, {{2, 1, 2, 2, 2}, {2, 1, 0, 1}, {3, 3, 3}, {2, 3}, {1}}, {{2, 2, 
        3, 2, 2}, {2, 1, 1, 2}, {3, 2, 2}, {2, 3}, {1}}, {{2, 3, 2, 2, 2}, {1,
         1, 0, 1}, {3, 3, 4}, {2, 1}, {2}}, {{1, 1, 1, 2, 2}, {2, 2, 0, 1}, {
        3, 3, 4}, {2, 1}, {2}}, {{2, 2, 2, 2, 2}, {2, 3, 1, 2}, {2, 2, 3}, {2,
         1}, {2}}, {{2, 2, 2, 2, 2}, {2, 1, 0, 1}, {3, 3, 4}, {2, 2}, {1}}, {{
        2, 1, 1, 2, 2}, {2, 2, 0, 1}, {3, 3, 4}, {2, 2}, {1}}, {{2, 2, 2, 2, 
        2}, {2, 2, 1, 2}, {3, 2, 3}, {2, 2}, {1}}, {{2, 3, 4, 2, 2}, {1, 0, 0,
         2}, {3, 4, 2}, {1, 1}, {3}}, {{2, 2, 3, 2, 2}, {2, 1, 0, 2}, {3, 5, 
        3}, {0, 0}, {3}}, {{2, 2, 4, 2, 2}, {2, 0, 0, 2}, {3, 4, 2}, {1, 2}, {
        2}}, {{2, 4, 4, 2, 2}, {0, 0, 0, 2}, {3, 3, 2}, {2, 1}, {3}}, {{2, 3, 
        3, 2, 2}, {1, 1, 0, 2}, {3, 4, 3}, {1, 0}, {3}}, {{2, 3, 4, 2, 2}, {1,
         0, 0, 2}, {3, 3, 2}, {2, 2}, {2}}, {{2, 2, 3, 2, 2}, {2, 1, 0, 2}, {
        3, 4, 3}, {1, 1}, {2}}, {{2, 2, 4, 2, 2}, {2, 0, 0, 2}, {3, 3, 2}, {2,
         3}, {1}}, {{2, 3, 3, 2, 2}, {1, 1, 0, 2}, {3, 3, 3}, {2, 1}, {2}}, {{
        2, 2, 2, 2, 2}, {2, 2, 0, 2}, {3, 4, 4}, {1, 0}, {2}}, {{2, 2, 3, 2, 
        2}, {2, 1, 0, 2}, {3, 3, 3}, {2, 2}, {1}}, {{2, 2, 2, 2, 2}, {2, 2, 0,
         2}, {3, 3, 4}, {2, 1}, {1}}, {{2, 2, 1, 1, 2}, {1, 2, 2, 1}, {2, 2, 
        2}, {2, 2}, {3}}, {{1, 1, 1, 1, 2}, {2, 2, 2, 1}, {2, 2, 2}, {2, 2}, {
        3}}, {{2, 2, 1, 1, 2}, {2, 2, 2, 1}, {2, 3, 3}, {1, 1}, {3}}, {{1, 2, 
        1, 1, 2}, {1, 1, 2, 1}, {3, 2, 2}, {2, 2}, {3}}, {{2, 3, 1, 1, 2}, {1,
         1, 2, 1}, {3, 3, 3}, {1, 1}, {3}}, {{1, 0, 0, 1, 2}, {2, 3, 2, 1}, {
        2, 2, 2}, {2, 2}, {3}}, {{2, 1, 0, 1, 2}, {2, 3, 2, 1}, {2, 3, 3}, {1,
         1}, {3}}, {{0, 0, 0, 1, 2}, {2, 2, 2, 1}, {3, 2, 2}, {2, 2}, {3}}, {{
        1, 1, 0, 1, 2}, {2, 2, 2, 1}, {3, 3, 3}, {1, 1}, {3}}, {{2, 2, 2, 1, 
        2}, {2, 3, 3, 2}, {1, 1, 1}, {2, 2}, {3}}, {{2, 3, 2, 1, 2}, {1, 2, 3,
         2}, {2, 1, 1}, {2, 2}, {3}}, {{2, 1, 1, 1, 2}, {2, 4, 3, 2}, {1, 1, 
        1}, {2, 2}, {3}}, {{1, 1, 1, 1, 2}, {2, 3, 3, 2}, {2, 1, 1}, {2, 2}, {
        3}}, {{2, 2, 1, 1, 2}, {2, 3, 3, 2}, {2, 2, 2}, {1, 1}, {3}}, {{2, 1, 
        1, 1, 2}, {2, 2, 2, 1}, {2, 2, 2}, {2, 3}, {2}}, {{2, 2, 1, 1, 2}, {1,
         1, 2, 1}, {3, 2, 2}, {2, 3}, {2}}, {{1, 1, 1, 1, 2}, {2, 1, 2, 1}, {
        3, 2, 2}, {2, 3}, {2}}, {{2, 2, 1, 1, 2}, {2, 1, 2, 1}, {3, 3, 3}, {1,
         2}, {2}}, {{2, 0, 0, 1, 2}, {2, 3, 2, 1}, {2, 2, 2}, {2, 3}, {2}}, {{
        1, 0, 0, 1, 2}, {2, 2, 2, 1}, {3, 2, 2}, {2, 3}, {2}}, {{2, 1, 0, 1, 
        2}, {2, 2, 2, 1}, {3, 3, 3}, {1, 2}, {2}}, {{2, 2, 2, 1, 2}, {2, 2, 3,
         2}, {2, 1, 1}, {2, 3}, {2}}, {{2, 3, 2, 1, 2}, {1, 1, 3, 2}, {3, 1, 
        1}, {2, 3}, {2}}, {{2, 1, 1, 1, 2}, {2, 3, 3, 2}, {2, 1, 1}, {2, 3}, {
        2}}, {{1, 1, 1, 1, 2}, {2, 2, 3, 2}, {3, 1, 1}, {2, 3}, {2}}, {{2, 2, 
        1, 1, 2}, {2, 2, 3, 2}, {3, 2, 2}, {1, 2}, {2}}, {{2, 1, 1, 1, 2}, {2,
         1, 2, 1}, {3, 2, 2}, {2, 4}, {1}}, {{2, 0, 0, 1, 2}, {2, 2, 2, 1}, {
        3, 2, 2}, {2, 4}, {1}}, {{2, 2, 2, 1, 2}, {2, 1, 3, 2}, {3, 1, 1}, {2,
         4}, {1}}, {{2, 1, 1, 1, 2}, {2, 2, 3, 2}, {3, 1, 1}, {2, 4}, {1}}, {{
        2, 3, 1, 1, 2}, {1, 2, 2, 1}, {2, 2, 3}, {2, 1}, {3}}, {{1, 1, 0, 1, 
        2}, {2, 3, 2, 1}, {2, 2, 3}, {2, 1}, {3}}, {{2, 2, 1, 1, 2}, {2, 4, 3,
         2}, {1, 1, 2}, {2, 1}, {3}}, {{2, 2, 1, 1, 2}, {2, 2, 2, 1}, {2, 2, 
        3}, {2, 2}, {2}}, {{2, 3, 1, 1, 2}, {1, 1, 2, 1}, {3, 2, 3}, {2, 2}, {
        2}}, {{2, 1, 0, 1, 2}, {2, 3, 2, 1}, {2, 2, 3}, {2, 2}, {2}}, {{1, 1, 
        0, 1, 2}, {2, 2, 2, 1}, {3, 2, 3}, {2, 2}, {2}}, {{2, 2, 1, 1, 2}, {2,
         3, 3, 2}, {2, 1, 2}, {2, 2}, {2}}, {{2, 2, 1, 1, 2}, {2, 1, 2, 1}, {
        3, 2, 3}, {2, 3}, {1}}, {{2, 1, 0, 1, 2}, {2, 2, 2, 1}, {3, 2, 3}, {2,
         3}, {1}}, {{2, 2, 1, 1, 2}, {2, 2, 3, 2}, {3, 1, 2}, {2, 3}, {1}}, {{
        1, 1, 1, 1, 2}, {1, 1, 1, 1}, {3, 3, 2}, {2, 2}, {3}}, {{0, 0, 1, 1, 
        2}, {2, 1, 1, 1}, {3, 3, 2}, {2, 2}, {3}}, {{2, 2, 1, 1, 2}, {1, 1, 1,
         1}, {3, 4, 3}, {1, 1}, {3}}, {{1, 1, 1, 1, 2}, {2, 1, 1, 1}, {3, 4, 
        3}, {1, 1}, {3}}, {{2, 2, 1, 1, 2}, {2, 1, 1, 1}, {3, 5, 4}, {0, 0}, {
        3}}, {{1, 0, 0, 1, 2}, {2, 2, 1, 1}, {3, 4, 3}, {1, 1}, {3}}, {{2, 1, 
        0, 1, 2}, {2, 2, 1, 1}, {3, 5, 4}, {0, 0}, {3}}, {{2, 2, 2, 1, 2}, {1,
         2, 2, 2}, {2, 2, 1}, {2, 2}, {3}}, {{1, 1, 2, 1, 2}, {2, 2, 2, 2}, {
        2, 2, 1}, {2, 2}, {3}}, {{2, 2, 2, 1, 2}, {2, 2, 2, 2}, {2, 3, 2}, {1,
         1}, {3}}, {{1, 2, 2, 1, 2}, {1, 1, 2, 2}, {3, 2, 1}, {2, 2}, {3}}, {{
        2, 3, 2, 1, 2}, {1, 1, 2, 2}, {3, 3, 2}, {1, 1}, {3}}, {{2, 1, 1, 1, 
        2}, {2, 3, 2, 2}, {2, 3, 2}, {1, 1}, {3}}, {{1, 1, 1, 1, 2}, {2, 2, 2,
         2}, {3, 3, 2}, {1, 1}, {3}}, {{2, 2, 1, 1, 2}, {2, 2, 2, 2}, {3, 4, 
        3}, {0, 0}, {3}}, {{2, 1, 1, 1, 2}, {1, 1, 1, 1}, {3, 3, 2}, {2, 3}, {
        2}}, {{1, 0, 1, 1, 2}, {2, 1, 1, 1}, {3, 3, 2}, {2, 3}, {2}}, {{2, 1, 
        1, 1, 2}, {2, 1, 1, 1}, {3, 4, 3}, {1, 2}, {2}}, {{2, 0, 0, 1, 2}, {2,
         2, 1, 1}, {3, 4, 3}, {1, 2}, {2}}, {{2, 1, 2, 1, 2}, {2, 2, 2, 2}, {
        2, 2, 1}, {2, 3}, {2}}, {{2, 2, 2, 1, 2}, {1, 1, 2, 2}, {3, 2, 1}, {2,
         3}, {2}}, {{1, 1, 2, 1, 2}, {2, 1, 2, 2}, {3, 2, 1}, {2, 3}, {2}}, {{
        2, 2, 2, 1, 2}, {2, 1, 2, 2}, {3, 3, 2}, {1, 2}, {2}}, {{2, 1, 1, 1, 
        2}, {2, 2, 2, 2}, {3, 3, 2}, {1, 2}, {2}}, {{2, 0, 1, 1, 2}, {2, 1, 1,
         1}, {3, 3, 2}, {2, 4}, {1}}, {{2, 1, 2, 1, 2}, {2, 1, 2, 2}, {3, 2, 
        1}, {2, 4}, {1}}, {{1, 2, 1, 1, 2}, {1, 1, 1, 1}, {3, 3, 3}, {2, 1}, {
        3}}, {{2, 3, 1, 1, 2}, {1, 1, 1, 1}, {3, 4, 4}, {1, 0}, {3}}, {{0, 0, 
        0, 1, 2}, {2, 2, 1, 1}, {3, 3, 3}, {2, 1}, {3}}, {{1, 1, 0, 1, 2}, {2,
         2, 1, 1}, {3, 4, 4}, {1, 0}, {3}}, {{2, 3, 2, 1, 2}, {1, 2, 2, 2}, {
        2, 2, 2}, {2, 1}, {3}}, {{1, 1, 1, 1, 2}, {2, 3, 2, 2}, {2, 2, 2}, {2,
         1}, {3}}, {{2, 2, 1, 1, 2}, {2, 3, 2, 2}, {2, 3, 3}, {1, 0}, {3}}, {{
        2, 2, 1, 1, 2}, {1, 1, 1, 1}, {3, 3, 3}, {2, 2}, {2}}, {{1, 1, 1, 1, 
        2}, {2, 1, 1, 1}, {3, 3, 3}, {2, 2}, {2}}, {{2, 2, 1, 1, 2}, {2, 1, 1,
         1}, {3, 4, 4}, {1, 1}, {2}}, {{1, 0, 0, 1, 2}, {2, 2, 1, 1}, {3, 3, 
        3}, {2, 2}, {2}}, {{2, 1, 0, 1, 2}, {2, 2, 1, 1}, {3, 4, 4}, {1, 1}, {
        2}}, {{2, 2, 2, 1, 2}, {2, 2, 2, 2}, {2, 2, 2}, {2, 2}, {2}}, {{2, 3, 
        2, 1, 2}, {1, 1, 2, 2}, {3, 2, 2}, {2, 2}, {2}}, {{2, 1, 1, 1, 2}, {2,
         3, 2, 2}, {2, 2, 2}, {2, 2}, {2}}, {{1, 1, 1, 1, 2}, {2, 2, 2, 2}, {
        3, 2, 2}, {2, 2}, {2}}, {{2, 2, 1, 1, 2}, {2, 2, 2, 2}, {3, 3, 3}, {1,
         1}, {2}}, {{2, 1, 1, 1, 2}, {2, 1, 1, 1}, {3, 3, 3}, {2, 3}, {1}}, {{
        2, 0, 0, 1, 2}, {2, 2, 1, 1}, {3, 3, 3}, {2, 3}, {1}}, {{2, 2, 2, 1, 
        2}, {2, 1, 2, 2}, {3, 2, 2}, {2, 3}, {1}}, {{2, 1, 1, 1, 2}, {2, 2, 2,
         2}, {3, 2, 2}, {2, 3}, {1}}, {{2, 3, 1, 1, 2}, {1, 1, 1, 1}, {3, 3, 
        4}, {2, 1}, {2}}, {{1, 1, 0, 1, 2}, {2, 2, 1, 1}, {3, 3, 4}, {2, 1}, {
        2}}, {{2, 2, 1, 1, 2}, {2, 3, 2, 2}, {2, 2, 3}, {2, 1}, {2}}, {{2, 2, 
        1, 1, 2}, {2, 1, 1, 1}, {3, 3, 4}, {2, 2}, {1}}, {{2, 1, 0, 1, 2}, {2,
         2, 1, 1}, {3, 3, 4}, {2, 2}, {1}}, {{2, 2, 1, 1, 2}, {2, 2, 2, 2}, {
        3, 2, 3}, {2, 2}, {1}}, {{2, 2, 2, 1, 2}, {1, 1, 1, 2}, {3, 4, 2}, {1,
         1}, {3}}, {{1, 1, 2, 1, 2}, {2, 1, 1, 2}, {3, 4, 2}, {1, 1}, {3}}, {{
        2, 2, 2, 1, 2}, {2, 1, 1, 2}, {3, 5, 3}, {0, 0}, {3}}, {{2, 1, 1, 1, 
        2}, {2, 2, 1, 2}, {3, 5, 3}, {0, 0}, {3}}, {{2, 1, 2, 1, 2}, {2, 1, 1,
         2}, {3, 4, 2}, {1, 2}, {2}}, {{1, 2, 2, 1, 2}, {1, 1, 1, 2}, {3, 3, 
        2}, {2, 1}, {3}}, {{2, 3, 2, 1, 2}, {1, 1, 1, 2}, {3, 4, 3}, {1, 0}, {
        3}}, {{1, 1, 1, 1, 2}, {2, 2, 1, 2}, {3, 4, 3}, {1, 0}, {3}}, {{2, 2, 
        2, 1, 2}, {1, 1, 1, 2}, {3, 3, 2}, {2, 2}, {2}}, {{1, 1, 2, 1, 2}, {2,
         1, 1, 2}, {3, 3, 2}, {2, 2}, {2}}, {{2, 2, 2, 1, 2}, {2, 1, 1, 2}, {
        3, 4, 3}, {1, 1}, {2}}, {{2, 1, 1, 1, 2}, {2, 2, 1, 2}, {3, 4, 3}, {1,
         1}, {2}}, {{2, 1, 2, 1, 2}, {2, 1, 1, 2}, {3, 3, 2}, {2, 3}, {1}}, {{
        2, 3, 2, 1, 2}, {1, 1, 1, 2}, {3, 3, 3}, {2, 1}, {2}}, {{1, 1, 1, 1, 
        2}, {2, 2, 1, 2}, {3, 3, 3}, {2, 1}, {2}}, {{2, 2, 1, 1, 2}, {2, 2, 1,
         2}, {3, 4, 4}, {1, 0}, {2}}, {{2, 2, 2, 1, 2}, {2, 1, 1, 2}, {3, 3, 
        3}, {2, 2}, {1}}, {{2, 1, 1, 1, 2}, {2, 2, 1, 2}, {3, 3, 3}, {2, 2}, {
        1}}, {{2, 2, 1, 1, 2}, {2, 2, 1, 2}, {3, 3, 4}, {2, 1}, {1}}, {{2, 1, 
        0, 0, 2}, {2, 4, 4, 2}, {1, 1, 1}, {2, 2}, {3}}, {{1, 1, 0, 0, 2}, {2,
         3, 4, 2}, {2, 1, 1}, {2, 2}, {3}}, {{2, 2, 0, 0, 2}, {2, 3, 4, 2}, {
        2, 2, 2}, {1, 1}, {3}}, {{2, 1, 0, 0, 2}, {2, 3, 4, 2}, {2, 1, 1}, {2,
         3}, {2}}, {{1, 1, 0, 0, 2}, {2, 2, 4, 2}, {3, 1, 1}, {2, 3}, {2}}, {{
        2, 2, 0, 0, 2}, {2, 2, 4, 2}, {3, 2, 2}, {1, 2}, {2}}, {{2, 1, 0, 0, 
        2}, {2, 2, 4, 2}, {3, 1, 1}, {2, 4}, {1}}, {{2, 2, 0, 0, 2}, {2, 4, 4,
         2}, {1, 1, 2}, {2, 1}, {3}}, {{2, 2, 0, 0, 2}, {2, 3, 4, 2}, {2, 1, 
        2}, {2, 2}, {2}}, {{2, 2, 0, 0, 2}, {2, 2, 4, 2}, {3, 1, 2}, {2, 3}, {
        1}}, {{1, 0, 0, 0, 2}, {2, 3, 3, 2}, {2, 2, 1}, {2, 2}, {3}}, {{2, 1, 
        0, 0, 2}, {2, 3, 3, 2}, {2, 3, 2}, {1, 1}, {3}}, {{0, 0, 0, 0, 2}, {2,
         2, 3, 2}, {3, 2, 1}, {2, 2}, {3}}, {{1, 1, 0, 0, 2}, {2, 2, 3, 2}, {
        3, 3, 2}, {1, 1}, {3}}, {{2, 2, 0, 0, 2}, {2, 2, 3, 2}, {3, 4, 3}, {0,
         0}, {3}}, {{2, 0, 0, 0, 2}, {2, 3, 3, 2}, {2, 2, 1}, {2, 3}, {2}}, {{
        1, 0, 0, 0, 2}, {2, 2, 3, 2}, {3, 2, 1}, {2, 3}, {2}}, {{2, 1, 0, 0, 
        2}, {2, 2, 3, 2}, {3, 3, 2}, {1, 2}, {2}}, {{2, 0, 0, 0, 2}, {2, 2, 3,
         2}, {3, 2, 1}, {2, 4}, {1}}, {{1, 1, 0, 0, 2}, {2, 3, 3, 2}, {2, 2, 
        2}, {2, 1}, {3}}, {{2, 2, 0, 0, 2}, {2, 3, 3, 2}, {2, 3, 3}, {1, 0}, {
        3}}, {{2, 1, 0, 0, 2}, {2, 3, 3, 2}, {2, 2, 2}, {2, 2}, {2}}, {{1, 1, 
        0, 0, 2}, {2, 2, 3, 2}, {3, 2, 2}, {2, 2}, {2}}, {{2, 2, 0, 0, 2}, {2,
         2, 3, 2}, {3, 3, 3}, {1, 1}, {2}}, {{2, 1, 0, 0, 2}, {2, 2, 3, 2}, {
        3, 2, 2}, {2, 3}, {1}}, {{2, 2, 0, 0, 2}, {2, 3, 3, 2}, {2, 2, 3}, {2,
         1}, {2}}, {{2, 2, 0, 0, 2}, {2, 2, 3, 2}, {3, 2, 3}, {2, 2}, {1}}, {{
        1, 0, 0, 0, 2}, {2, 2, 2, 2}, {3, 4, 2}, {1, 1}, {3}}, {{2, 1, 0, 0, 
        2}, {2, 2, 2, 2}, {3, 5, 3}, {0, 0}, {3}}, {{2, 0, 0, 0, 2}, {2, 2, 2,
         2}, {3, 4, 2}, {1, 2}, {2}}, {{0, 0, 0, 0, 2}, {2, 2, 2, 2}, {3, 3, 
        2}, {2, 1}, {3}}, {{1, 1, 0, 0, 2}, {2, 2, 2, 2}, {3, 4, 3}, {1, 0}, {
        3}}, {{1, 0, 0, 0, 2}, {2, 2, 2, 2}, {3, 3, 2}, {2, 2}, {2}}, {{2, 1, 
        0, 0, 2}, {2, 2, 2, 2}, {3, 4, 3}, {1, 1}, {2}}, {{2, 0, 0, 0, 2}, {2,
         2, 2, 2}, {3, 3, 2}, {2, 3}, {1}}, {{1, 1, 0, 0, 2}, {2, 2, 2, 2}, {
        3, 3, 3}, {2, 1}, {2}}, {{2, 2, 0, 0, 2}, {2, 2, 2, 2}, {3, 4, 4}, {1,
         0}, {2}}, {{2, 1, 0, 0, 2}, {2, 2, 2, 2}, {3, 3, 3}, {2, 2}, {1}}, {{
        2, 2, 0, 0, 2}, {2, 2, 2, 2}, {3, 3, 4}, {2, 1}, {1}}, {{2, 3, 4, 4, 
        3}, {1, 1, 0, 0}, {2, 2, 2}, {2, 2}, {3}}, {{2, 4, 4, 4, 3}, {0, 0, 0,
         0}, {3, 2, 2}, {2, 2}, {3}}, {{2, 2, 3, 4, 3}, {2, 2, 0, 0}, {2, 3, 
        3}, {1, 1}, {3}}, {{2, 3, 3, 4, 3}, {1, 1, 0, 0}, {3, 3, 3}, {1, 1}, {
        3}}, {{2, 2, 2, 4, 3}, {2, 2, 0, 0}, {3, 4, 4}, {0, 0}, {3}}, {{2, 2, 
        4, 4, 3}, {2, 1, 0, 0}, {2, 2, 2}, {2, 3}, {2}}, {{2, 3, 4, 4, 3}, {1,
         0, 0, 0}, {3, 2, 2}, {2, 3}, {2}}, {{2, 2, 3, 4, 3}, {2, 1, 0, 0}, {
        3, 3, 3}, {1, 2}, {2}}, {{2, 2, 4, 4, 3}, {2, 0, 0, 0}, {3, 2, 2}, {2,
         4}, {1}}, {{2, 3, 3, 4, 3}, {1, 2, 0, 0}, {2, 2, 3}, {2, 1}, {3}}, {{
        2, 2, 2, 4, 3}, {2, 3, 0, 0}, {2, 3, 4}, {1, 0}, {3}}, {{2, 2, 3, 4, 
        3}, {2, 2, 0, 0}, {2, 2, 3}, {2, 2}, {2}}, {{2, 3, 3, 4, 3}, {1, 1, 0,
         0}, {3, 2, 3}, {2, 2}, {2}}, {{2, 2, 2, 4, 3}, {2, 2, 0, 0}, {3, 3, 
        4}, {1, 1}, {2}}, {{2, 2, 3, 4, 3}, {2, 1, 0, 0}, {3, 2, 3}, {2, 3}, {
        1}}, {{2, 2, 2, 4, 3}, {2, 3, 0, 0}, {2, 2, 4}, {2, 1}, {2}}, {{2, 2, 
        2, 4, 3}, {2, 2, 0, 0}, {3, 2, 4}, {2, 2}, {1}}, {{2, 3, 3, 3, 3}, {1,
         1, 1, 0}, {2, 2, 2}, {2, 2}, {3}}, {{2, 4, 3, 3, 3}, {0, 0, 1, 0}, {
        3, 2, 2}, {2, 2}, {3}}, {{2, 2, 2, 3, 3}, {1, 2, 1, 0}, {2, 2, 2}, {2,
         2}, {3}}, {{1, 1, 2, 3, 3}, {2, 2, 1, 0}, {2, 2, 2}, {2, 2}, {3}}, {{
        2, 2, 2, 3, 3}, {2, 2, 1, 0}, {2, 3, 3}, {1, 1}, {3}}, {{1, 2, 2, 3, 
        3}, {1, 1, 1, 0}, {3, 2, 2}, {2, 2}, {3}}, {{2, 3, 2, 3, 3}, {1, 1, 1,
         0}, {3, 3, 3}, {1, 1}, {3}}, {{2, 1, 1, 3, 3}, {2, 3, 1, 0}, {2, 3, 
        3}, {1, 1}, {3}}, {{1, 1, 1, 3, 3}, {2, 2, 1, 0}, {3, 3, 3}, {1, 1}, {
        3}}, {{2, 2, 3, 3, 3}, {2, 3, 2, 1}, {1, 1, 1}, {2, 2}, {3}}, {{2, 3, 
        3, 3, 3}, {1, 2, 2, 1}, {2, 1, 1}, {2, 2}, {3}}, {{2, 2, 2, 3, 3}, {2,
         3, 2, 1}, {2, 2, 2}, {1, 1}, {3}}, {{2, 2, 3, 3, 3}, {2, 1, 1, 0}, {
        2, 2, 2}, {2, 3}, {2}}, {{2, 3, 3, 3, 3}, {1, 0, 1, 0}, {3, 2, 2}, {2,
         3}, {2}}, {{2, 1, 2, 3, 3}, {2, 2, 1, 0}, {2, 2, 2}, {2, 3}, {2}}, {{
        2, 2, 2, 3, 3}, {1, 1, 1, 0}, {3, 2, 2}, {2, 3}, {2}}, {{1, 1, 2, 3, 
        3}, {2, 1, 1, 0}, {3, 2, 2}, {2, 3}, {2}}, {{2, 2, 2, 3, 3}, {2, 1, 1,
         0}, {3, 3, 3}, {1, 2}, {2}}, {{2, 1, 1, 3, 3}, {2, 2, 1, 0}, {3, 3, 
        3}, {1, 2}, {2}}, {{2, 2, 3, 3, 3}, {2, 2, 2, 1}, {2, 1, 1}, {2, 3}, {
        2}}, {{2, 3, 3, 3, 3}, {1, 1, 2, 1}, {3, 1, 1}, {2, 3}, {2}}, {{2, 2, 
        2, 3, 3}, {2, 2, 2, 1}, {3, 2, 2}, {1, 2}, {2}}, {{2, 2, 3, 3, 3}, {2,
         0, 1, 0}, {3, 2, 2}, {2, 4}, {1}}, {{2, 1, 2, 3, 3}, {2, 1, 1, 0}, {
        3, 2, 2}, {2, 4}, {1}}, {{2, 2, 3, 3, 3}, {2, 1, 2, 1}, {3, 1, 1}, {2,
         4}, {1}}, {{2, 3, 2, 3, 3}, {1, 2, 1, 0}, {2, 2, 3}, {2, 1}, {3}}, {{
        1, 1, 1, 3, 3}, {2, 3, 1, 0}, {2, 2, 3}, {2, 1}, {3}}, {{2, 2, 2, 3, 
        3}, {2, 4, 2, 1}, {1, 1, 2}, {2, 1}, {3}}, {{2, 2, 2, 3, 3}, {2, 2, 1,
         0}, {2, 2, 3}, {2, 2}, {2}}, {{2, 3, 2, 3, 3}, {1, 1, 1, 0}, {3, 2, 
        3}, {2, 2}, {2}}, {{2, 1, 1, 3, 3}, {2, 3, 1, 0}, {2, 2, 3}, {2, 2}, {
        2}}, {{1, 1, 1, 3, 3}, {2, 2, 1, 0}, {3, 2, 3}, {2, 2}, {2}}, {{2, 2, 
        2, 3, 3}, {2, 3, 2, 1}, {2, 1, 2}, {2, 2}, {2}}, {{2, 2, 2, 3, 3}, {2,
         1, 1, 0}, {3, 2, 3}, {2, 3}, {1}}, {{2, 1, 1, 3, 3}, {2, 2, 1, 0}, {
        3, 2, 3}, {2, 3}, {1}}, {{2, 2, 2, 3, 3}, {2, 2, 2, 1}, {3, 1, 2}, {2,
         3}, {1}}, {{2, 3, 3, 3, 3}, {0, 0, 0, 0}, {3, 3, 2}, {2, 2}, {3}}, {{
        1, 2, 3, 3, 3}, {1, 0, 0, 0}, {3, 3, 2}, {2, 2}, {3}}, {{2, 3, 3, 3, 
        3}, {1, 0, 0, 0}, {3, 4, 3}, {1, 1}, {3}}, {{2, 2, 2, 3, 3}, {1, 1, 0,
         0}, {3, 4, 3}, {1, 1}, {3}}, {{1, 1, 2, 3, 3}, {2, 1, 0, 0}, {3, 4, 
        3}, {1, 1}, {3}}, {{2, 2, 2, 3, 3}, {2, 1, 0, 0}, {3, 5, 4}, {0, 0}, {
        3}}, {{2, 1, 1, 3, 3}, {2, 2, 0, 0}, {3, 5, 4}, {0, 0}, {3}}, {{2, 3, 
        4, 3, 3}, {1, 1, 1, 1}, {2, 2, 1}, {2, 2}, {3}}, {{2, 4, 4, 3, 3}, {0,
         0, 1, 1}, {3, 2, 1}, {2, 2}, {3}}, {{2, 2, 3, 3, 3}, {2, 2, 1, 1}, {
        2, 3, 2}, {1, 1}, {3}}, {{2, 3, 3, 3, 3}, {1, 1, 1, 1}, {3, 3, 2}, {1,
         1}, {3}}, {{2, 2, 2, 3, 3}, {2, 2, 1, 1}, {3, 4, 3}, {0, 0}, {3}}, {{
        2, 2, 3, 3, 3}, {1, 0, 0, 0}, {3, 3, 2}, {2, 3}, {2}}, {{1, 1, 3, 3, 
        3}, {2, 0, 0, 0}, {3, 3, 2}, {2, 3}, {2}}, {{2, 2, 3, 3, 3}, {2, 0, 0,
         0}, {3, 4, 3}, {1, 2}, {2}}, {{2, 1, 2, 3, 3}, {2, 1, 0, 0}, {3, 4, 
        3}, {1, 2}, {2}}, {{2, 2, 4, 3, 3}, {2, 1, 1, 1}, {2, 2, 1}, {2, 3}, {
        2}}, {{2, 3, 4, 3, 3}, {1, 0, 1, 1}, {3, 2, 1}, {2, 3}, {2}}, {{2, 2, 
        3, 3, 3}, {2, 1, 1, 1}, {3, 3, 2}, {1, 2}, {2}}, {{2, 1, 3, 3, 3}, {2,
         0, 0, 0}, {3, 3, 2}, {2, 4}, {1}}, {{2, 2, 4, 3, 3}, {2, 0, 1, 1}, {
        3, 2, 1}, {2, 4}, {1}}, {{2, 4, 3, 3, 3}, {0, 0, 0, 0}, {3, 3, 3}, {2,
         1}, {3}}, {{1, 2, 2, 3, 3}, {1, 1, 0, 0}, {3, 3, 3}, {2, 1}, {3}}, {{
        2, 3, 2, 3, 3}, {1, 1, 0, 0}, {3, 4, 4}, {1, 0}, {3}}, {{1, 1, 1, 3, 
        3}, {2, 2, 0, 0}, {3, 4, 4}, {1, 0}, {3}}, {{2, 3, 3, 3, 3}, {1, 2, 1,
         1}, {2, 2, 2}, {2, 1}, {3}}, {{2, 2, 2, 3, 3}, {2, 3, 1, 1}, {2, 3, 
        3}, {1, 0}, {3}}, {{2, 3, 3, 3, 3}, {1, 0, 0, 0}, {3, 3, 3}, {2, 2}, {
        2}}, {{2, 2, 2, 3, 3}, {1, 1, 0, 0}, {3, 3, 3}, {2, 2}, {2}}, {{1, 1, 
        2, 3, 3}, {2, 1, 0, 0}, {3, 3, 3}, {2, 2}, {2}}, {{2, 2, 2, 3, 3}, {2,
         1, 0, 0}, {3, 4, 4}, {1, 1}, {2}}, {{2, 1, 1, 3, 3}, {2, 2, 0, 0}, {
        3, 4, 4}, {1, 1}, {2}}, {{2, 2, 3, 3, 3}, {2, 2, 1, 1}, {2, 2, 2}, {2,
         2}, {2}}, {{2, 3, 3, 3, 3}, {1, 1, 1, 1}, {3, 2, 2}, {2, 2}, {2}}, {{
        2, 2, 2, 3, 3}, {2, 2, 1, 1}, {3, 3, 3}, {1, 1}, {2}}, {{2, 2, 3, 3, 
        3}, {2, 0, 0, 0}, {3, 3, 3}, {2, 3}, {1}}, {{2, 1, 2, 3, 3}, {2, 1, 0,
         0}, {3, 3, 3}, {2, 3}, {1}}, {{2, 2, 3, 3, 3}, {2, 1, 1, 1}, {3, 2, 
        2}, {2, 3}, {1}}, {{2, 3, 2, 3, 3}, {1, 1, 0, 0}, {3, 3, 4}, {2, 1}, {
        2}}, {{1, 1, 1, 3, 3}, {2, 2, 0, 0}, {3, 3, 4}, {2, 1}, {2}}, {{2, 2, 
        2, 3, 3}, {2, 3, 1, 1}, {2, 2, 3}, {2, 1}, {2}}, {{2, 2, 2, 3, 3}, {2,
         1, 0, 0}, {3, 3, 4}, {2, 2}, {1}}, {{2, 1, 1, 3, 3}, {2, 2, 0, 0}, {
        3, 3, 4}, {2, 2}, {1}}, {{2, 2, 2, 3, 3}, {2, 2, 1, 1}, {3, 2, 3}, {2,
         2}, {1}}, {{2, 3, 4, 3, 3}, {1, 0, 0, 1}, {3, 4, 2}, {1, 1}, {3}}, {{
        2, 2, 3, 3, 3}, {2, 1, 0, 1}, {3, 5, 3}, {0, 0}, {3}}, {{2, 2, 4, 3, 
        3}, {2, 0, 0, 1}, {3, 4, 2}, {1, 2}, {2}}, {{2, 4, 4, 3, 3}, {0, 0, 0,
         1}, {3, 3, 2}, {2, 1}, {3}}, {{2, 3, 3, 3, 3}, {1, 1, 0, 1}, {3, 4, 
        3}, {1, 0}, {3}}, {{2, 3, 4, 3, 3}, {1, 0, 0, 1}, {3, 3, 2}, {2, 2}, {
        2}}, {{2, 2, 3, 3, 3}, {2, 1, 0, 1}, {3, 4, 3}, {1, 1}, {2}}, {{2, 2, 
        4, 3, 3}, {2, 0, 0, 1}, {3, 3, 2}, {2, 3}, {1}}, {{2, 3, 3, 3, 3}, {1,
         1, 0, 1}, {3, 3, 3}, {2, 1}, {2}}, {{2, 2, 2, 3, 3}, {2, 2, 0, 1}, {
        3, 4, 4}, {1, 0}, {2}}, {{2, 2, 3, 3, 3}, {2, 1, 0, 1}, {3, 3, 3}, {2,
         2}, {1}}, {{2, 2, 2, 3, 3}, {2, 2, 0, 1}, {3, 3, 4}, {2, 1}, {1}}, {{
        2, 2, 2, 2, 3}, {2, 3, 3, 1}, {1, 1, 1}, {2, 2}, {3}}, {{2, 3, 2, 2, 
        3}, {1, 2, 3, 1}, {2, 1, 1}, {2, 2}, {3}}, {{2, 1, 1, 2, 3}, {2, 4, 3,
         1}, {1, 1, 1}, {2, 2}, {3}}, {{1, 1, 1, 2, 3}, {2, 3, 3, 1}, {2, 1, 
        1}, {2, 2}, {3}}, {{2, 2, 1, 2, 3}, {2, 3, 3, 1}, {2, 2, 2}, {1, 1}, {
        3}}, {{2, 2, 2, 2, 3}, {2, 4, 4, 2}, {1, 0, 0}, {2, 2}, {3}}, {{2, 2, 
        2, 2, 3}, {2, 2, 3, 1}, {2, 1, 1}, {2, 3}, {2}}, {{2, 3, 2, 2, 3}, {1,
         1, 3, 1}, {3, 1, 1}, {2, 3}, {2}}, {{2, 1, 1, 2, 3}, {2, 3, 3, 1}, {
        2, 1, 1}, {2, 3}, {2}}, {{1, 1, 1, 2, 3}, {2, 2, 3, 1}, {3, 1, 1}, {2,
         3}, {2}}, {{2, 2, 1, 2, 3}, {2, 2, 3, 1}, {3, 2, 2}, {1, 2}, {2}}, {{
        2, 2, 2, 2, 3}, {2, 3, 4, 2}, {2, 0, 0}, {2, 3}, {2}}, {{2, 2, 2, 2, 
        3}, {2, 1, 3, 1}, {3, 1, 1}, {2, 4}, {1}}, {{2, 1, 1, 2, 3}, {2, 2, 3,
         1}, {3, 1, 1}, {2, 4}, {1}}, {{2, 2, 2, 2, 3}, {2, 2, 4, 2}, {3, 0, 
        0}, {2, 4}, {1}}, {{2, 2, 1, 2, 3}, {2, 4, 3, 1}, {1, 1, 2}, {2, 1}, {
        3}}, {{2, 2, 1, 2, 3}, {2, 3, 3, 1}, {2, 1, 2}, {2, 2}, {2}}, {{2, 2, 
        1, 2, 3}, {2, 2, 3, 1}, {3, 1, 2}, {2, 3}, {1}}, {{2, 2, 2, 2, 3}, {1,
         2, 2, 1}, {2, 2, 1}, {2, 2}, {3}}, {{1, 1, 2, 2, 3}, {2, 2, 2, 1}, {
        2, 2, 1}, {2, 2}, {3}}, {{2, 2, 2, 2, 3}, {2, 2, 2, 1}, {2, 3, 2}, {1,
         1}, {3}}, {{1, 2, 2, 2, 3}, {1, 1, 2, 1}, {3, 2, 1}, {2, 2}, {3}}, {{
        2, 3, 2, 2, 3}, {1, 1, 2, 1}, {3, 3, 2}, {1, 1}, {3}}, {{2, 1, 1, 2, 
        3}, {2, 3, 2, 1}, {2, 3, 2}, {1, 1}, {3}}, {{1, 1, 1, 2, 3}, {2, 2, 2,
         1}, {3, 3, 2}, {1, 1}, {3}}, {{2, 2, 1, 2, 3}, {2, 2, 2, 1}, {3, 4, 
        3}, {0, 0}, {3}}, {{2, 2, 3, 2, 3}, {2, 3, 3, 2}, {1, 1, 0}, {2, 2}, {
        3}}, {{2, 3, 3, 2, 3}, {1, 2, 3, 2}, {2, 1, 0}, {2, 2}, {3}}, {{2, 2, 
        2, 2, 3}, {2, 3, 3, 2}, {2, 2, 1}, {1, 1}, {3}}, {{2, 1, 2, 2, 3}, {2,
         2, 2, 1}, {2, 2, 1}, {2, 3}, {2}}, {{2, 2, 2, 2, 3}, {1, 1, 2, 1}, {
        3, 2, 1}, {2, 3}, {2}}, {{1, 1, 2, 2, 3}, {2, 1, 2, 1}, {3, 2, 1}, {2,
         3}, {2}}, {{2, 2, 2, 2, 3}, {2, 1, 2, 1}, {3, 3, 2}, {1, 2}, {2}}, {{
        2, 1, 1, 2, 3}, {2, 2, 2, 1}, {3, 3, 2}, {1, 2}, {2}}, {{2, 2, 3, 2, 
        3}, {2, 2, 3, 2}, {2, 1, 0}, {2, 3}, {2}}, {{2, 3, 3, 2, 3}, {1, 1, 3,
         2}, {3, 1, 0}, {2, 3}, {2}}, {{2, 2, 2, 2, 3}, {2, 2, 3, 2}, {3, 2, 
        1}, {1, 2}, {2}}, {{2, 1, 2, 2, 3}, {2, 1, 2, 1}, {3, 2, 1}, {2, 4}, {
        1}}, {{2, 2, 3, 2, 3}, {2, 1, 3, 2}, {3, 1, 0}, {2, 4}, {1}}, {{2, 3, 
        2, 2, 3}, {1, 2, 2, 1}, {2, 2, 2}, {2, 1}, {3}}, {{1, 1, 1, 2, 3}, {2,
         3, 2, 1}, {2, 2, 2}, {2, 1}, {3}}, {{2, 2, 1, 2, 3}, {2, 3, 2, 1}, {
        2, 3, 3}, {1, 0}, {3}}, {{2, 2, 2, 2, 3}, {2, 4, 3, 2}, {1, 1, 1}, {2,
         1}, {3}}, {{2, 2, 2, 2, 3}, {2, 2, 2, 1}, {2, 2, 2}, {2, 2}, {2}}, {{
        2, 3, 2, 2, 3}, {1, 1, 2, 1}, {3, 2, 2}, {2, 2}, {2}}, {{2, 1, 1, 2, 
        3}, {2, 3, 2, 1}, {2, 2, 2}, {2, 2}, {2}}, {{1, 1, 1, 2, 3}, {2, 2, 2,
         1}, {3, 2, 2}, {2, 2}, {2}}, {{2, 2, 1, 2, 3}, {2, 2, 2, 1}, {3, 3, 
        3}, {1, 1}, {2}}, {{2, 2, 2, 2, 3}, {2, 3, 3, 2}, {2, 1, 1}, {2, 2}, {
        2}}, {{2, 2, 2, 2, 3}, {2, 1, 2, 1}, {3, 2, 2}, {2, 3}, {1}}, {{2, 1, 
        1, 2, 3}, {2, 2, 2, 1}, {3, 2, 2}, {2, 3}, {1}}, {{2, 2, 2, 2, 3}, {2,
         2, 3, 2}, {3, 1, 1}, {2, 3}, {1}}, {{2, 2, 1, 2, 3}, {2, 3, 2, 1}, {
        2, 2, 3}, {2, 1}, {2}}, {{2, 2, 1, 2, 3}, {2, 2, 2, 1}, {3, 2, 3}, {2,
         2}, {1}}, {{2, 2, 2, 2, 3}, {1, 1, 1, 1}, {3, 4, 2}, {1, 1}, {3}}, {{
        1, 1, 2, 2, 3}, {2, 1, 1, 1}, {3, 4, 2}, {1, 1}, {3}}, {{2, 2, 2, 2, 
        3}, {2, 1, 1, 1}, {3, 5, 3}, {0, 0}, {3}}, {{2, 1, 1, 2, 3}, {2, 2, 1,
         1}, {3, 5, 3}, {0, 0}, {3}}, {{2, 2, 3, 2, 3}, {2, 2, 2, 2}, {2, 3, 
        1}, {1, 1}, {3}}, {{2, 3, 3, 2, 3}, {1, 1, 2, 2}, {3, 3, 1}, {1, 1}, {
        3}}, {{2, 2, 2, 2, 3}, {2, 2, 2, 2}, {3, 4, 2}, {0, 0}, {3}}, {{2, 1, 
        2, 2, 3}, {2, 1, 1, 1}, {3, 4, 2}, {1, 2}, {2}}, {{2, 2, 3, 2, 3}, {2,
         1, 2, 2}, {3, 3, 1}, {1, 2}, {2}}, {{1, 2, 2, 2, 3}, {1, 1, 1, 1}, {
        3, 3, 2}, {2, 1}, {3}}, {{2, 3, 2, 2, 3}, {1, 1, 1, 1}, {3, 4, 3}, {1,
         0}, {3}}, {{1, 1, 1, 2, 3}, {2, 2, 1, 1}, {3, 4, 3}, {1, 0}, {3}}, {{
        2, 3, 3, 2, 3}, {1, 2, 2, 2}, {2, 2, 1}, {2, 1}, {3}}, {{2, 2, 2, 2, 
        3}, {2, 3, 2, 2}, {2, 3, 2}, {1, 0}, {3}}, {{2, 2, 2, 2, 3}, {1, 1, 1,
         1}, {3, 3, 2}, {2, 2}, {2}}, {{1, 1, 2, 2, 3}, {2, 1, 1, 1}, {3, 3, 
        2}, {2, 2}, {2}}, {{2, 2, 2, 2, 3}, {2, 1, 1, 1}, {3, 4, 3}, {1, 1}, {
        2}}, {{2, 1, 1, 2, 3}, {2, 2, 1, 1}, {3, 4, 3}, {1, 1}, {2}}, {{2, 2, 
        3, 2, 3}, {2, 2, 2, 2}, {2, 2, 1}, {2, 2}, {2}}, {{2, 3, 3, 2, 3}, {1,
         1, 2, 2}, {3, 2, 1}, {2, 2}, {2}}, {{2, 2, 2, 2, 3}, {2, 2, 2, 2}, {
        3, 3, 2}, {1, 1}, {2}}, {{2, 1, 2, 2, 3}, {2, 1, 1, 1}, {3, 3, 2}, {2,
         3}, {1}}, {{2, 2, 3, 2, 3}, {2, 1, 2, 2}, {3, 2, 1}, {2, 3}, {1}}, {{
        2, 3, 2, 2, 3}, {1, 1, 1, 1}, {3, 3, 3}, {2, 1}, {2}}, {{1, 1, 1, 2, 
        3}, {2, 2, 1, 1}, {3, 3, 3}, {2, 1}, {2}}, {{2, 2, 1, 2, 3}, {2, 2, 1,
         1}, {3, 4, 4}, {1, 0}, {2}}, {{2, 2, 2, 2, 3}, {2, 3, 2, 2}, {2, 2, 
        2}, {2, 1}, {2}}, {{2, 2, 2, 2, 3}, {2, 1, 1, 1}, {3, 3, 3}, {2, 2}, {
        1}}, {{2, 1, 1, 2, 3}, {2, 2, 1, 1}, {3, 3, 3}, {2, 2}, {1}}, {{2, 2, 
        2, 2, 3}, {2, 2, 2, 2}, {3, 2, 2}, {2, 2}, {1}}, {{2, 2, 1, 2, 3}, {2,
         2, 1, 1}, {3, 3, 4}, {2, 1}, {1}}, {{2, 2, 3, 2, 3}, {2, 1, 1, 2}, {
        3, 5, 2}, {0, 0}, {3}}, {{2, 3, 3, 2, 3}, {1, 1, 1, 2}, {3, 4, 2}, {1,
         0}, {3}}, {{2, 2, 3, 2, 3}, {2, 1, 1, 2}, {3, 4, 2}, {1, 1}, {2}}, {{
        2, 3, 3, 2, 3}, {1, 1, 1, 2}, {3, 3, 2}, {2, 1}, {2}}, {{2, 2, 2, 2, 
        3}, {2, 2, 1, 2}, {3, 4, 3}, {1, 0}, {2}}, {{2, 2, 3, 2, 3}, {2, 1, 1,
         2}, {3, 3, 2}, {2, 2}, {1}}, {{2, 2, 2, 2, 3}, {2, 2, 1, 2}, {3, 3, 
        3}, {2, 1}, {1}}, {{2, 2, 1, 1, 3}, {2, 4, 5, 2}, {1, 0, 0}, {2, 2}, {
        3}}, {{2, 2, 1, 1, 3}, {2, 3, 5, 2}, {2, 0, 0}, {2, 3}, {2}}, {{2, 2, 
        1, 1, 3}, {2, 2, 5, 2}, {3, 0, 0}, {2, 4}, {1}}, {{2, 1, 1, 1, 3}, {2,
         4, 4, 2}, {1, 1, 0}, {2, 2}, {3}}, {{1, 1, 1, 1, 3}, {2, 3, 4, 2}, {
        2, 1, 0}, {2, 2}, {3}}, {{2, 2, 1, 1, 3}, {2, 3, 4, 2}, {2, 2, 1}, {1,
         1}, {3}}, {{2, 1, 1, 1, 3}, {2, 3, 4, 2}, {2, 1, 0}, {2, 3}, {2}}, {{
        1, 1, 1, 1, 3}, {2, 2, 4, 2}, {3, 1, 0}, {2, 3}, {2}}, {{2, 2, 1, 1, 
        3}, {2, 2, 4, 2}, {3, 2, 1}, {1, 2}, {2}}, {{2, 1, 1, 1, 3}, {2, 2, 4,
         2}, {3, 1, 0}, {2, 4}, {1}}, {{2, 2, 1, 1, 3}, {2, 4, 4, 2}, {1, 1, 
        1}, {2, 1}, {3}}, {{2, 2, 1, 1, 3}, {2, 3, 4, 2}, {2, 1, 1}, {2, 2}, {
        2}}, {{2, 2, 1, 1, 3}, {2, 2, 4, 2}, {3, 1, 1}, {2, 3}, {1}}, {{2, 1, 
        1, 1, 3}, {2, 3, 3, 2}, {2, 3, 1}, {1, 1}, {3}}, {{1, 1, 1, 1, 3}, {2,
         2, 3, 2}, {3, 3, 1}, {1, 1}, {3}}, {{2, 2, 1, 1, 3}, {2, 2, 3, 2}, {
        3, 4, 2}, {0, 0}, {3}}, {{2, 1, 1, 1, 3}, {2, 2, 3, 2}, {3, 3, 1}, {1,
         2}, {2}}, {{1, 1, 1, 1, 3}, {2, 3, 3, 2}, {2, 2, 1}, {2, 1}, {3}}, {{
        2, 2, 1, 1, 3}, {2, 3, 3, 2}, {2, 3, 2}, {1, 0}, {3}}, {{2, 1, 1, 1, 
        3}, {2, 3, 3, 2}, {2, 2, 1}, {2, 2}, {2}}, {{1, 1, 1, 1, 3}, {2, 2, 3,
         2}, {3, 2, 1}, {2, 2}, {2}}, {{2, 2, 1, 1, 3}, {2, 2, 3, 2}, {3, 3, 
        2}, {1, 1}, {2}}, {{2, 1, 1, 1, 3}, {2, 2, 3, 2}, {3, 2, 1}, {2, 3}, {
        1}}, {{2, 2, 1, 1, 3}, {2, 3, 3, 2}, {2, 2, 2}, {2, 1}, {2}}, {{2, 2, 
        1, 1, 3}, {2, 2, 3, 2}, {3, 2, 2}, {2, 2}, {1}}, {{2, 1, 1, 1, 3}, {2,
         2, 2, 2}, {3, 5, 2}, {0, 0}, {3}}, {{1, 1, 1, 1, 3}, {2, 2, 2, 2}, {
        3, 4, 2}, {1, 0}, {3}}, {{2, 1, 1, 1, 3}, {2, 2, 2, 2}, {3, 4, 2}, {1,
         1}, {2}}, {{1, 1, 1, 1, 3}, {2, 2, 2, 2}, {3, 3, 2}, {2, 1}, {2}}, {{
        2, 2, 1, 1, 3}, {2, 2, 2, 2}, {3, 4, 3}, {1, 0}, {2}}, {{2, 1, 1, 1, 
        3}, {2, 2, 2, 2}, {3, 3, 2}, {2, 2}, {1}}, {{2, 2, 1, 1, 3}, {2, 2, 2,
         2}, {3, 3, 3}, {2, 1}, {1}}, {{2, 2, 3, 4, 4}, {2, 3, 2, 0}, {1, 1, 
        1}, {2, 2}, {3}}, {{2, 3, 3, 4, 4}, {1, 2, 2, 0}, {2, 1, 1}, {2, 2}, {
        3}}, {{2, 2, 2, 4, 4}, {2, 3, 2, 0}, {2, 2, 2}, {1, 1}, {3}}, {{2, 2, 
        3, 4, 4}, {2, 2, 2, 0}, {2, 1, 1}, {2, 3}, {2}}, {{2, 3, 3, 4, 4}, {1,
         1, 2, 0}, {3, 1, 1}, {2, 3}, {2}}, {{2, 2, 2, 4, 4}, {2, 2, 2, 0}, {
        3, 2, 2}, {1, 2}, {2}}, {{2, 2, 3, 4, 4}, {2, 1, 2, 0}, {3, 1, 1}, {2,
         4}, {1}}, {{2, 2, 2, 4, 4}, {2, 4, 2, 0}, {1, 1, 2}, {2, 1}, {3}}, {{
        2, 2, 2, 4, 4}, {2, 3, 2, 0}, {2, 1, 2}, {2, 2}, {2}}, {{2, 2, 2, 4, 
        4}, {2, 2, 2, 0}, {3, 1, 2}, {2, 3}, {1}}, {{2, 3, 4, 4, 4}, {1, 1, 1,
         0}, {2, 2, 1}, {2, 2}, {3}}, {{2, 4, 4, 4, 4}, {0, 0, 1, 0}, {3, 2, 
        1}, {2, 2}, {3}}, {{2, 2, 3, 4, 4}, {2, 2, 1, 0}, {2, 3, 2}, {1, 1}, {
        3}}, {{2, 3, 3, 4, 4}, {1, 1, 1, 0}, {3, 3, 2}, {1, 1}, {3}}, {{2, 2, 
        2, 4, 4}, {2, 2, 1, 0}, {3, 4, 3}, {0, 0}, {3}}, {{2, 2, 4, 4, 4}, {2,
         1, 1, 0}, {2, 2, 1}, {2, 3}, {2}}, {{2, 3, 4, 4, 4}, {1, 0, 1, 0}, {
        3, 2, 1}, {2, 3}, {2}}, {{2, 2, 3, 4, 4}, {2, 1, 1, 0}, {3, 3, 2}, {1,
         2}, {2}}, {{2, 2, 4, 4, 4}, {2, 0, 1, 0}, {3, 2, 1}, {2, 4}, {1}}, {{
        2, 3, 3, 4, 4}, {1, 2, 1, 0}, {2, 2, 2}, {2, 1}, {3}}, {{2, 2, 2, 4, 
        4}, {2, 3, 1, 0}, {2, 3, 3}, {1, 0}, {3}}, {{2, 2, 3, 4, 4}, {2, 2, 1,
         0}, {2, 2, 2}, {2, 2}, {2}}, {{2, 3, 3, 4, 4}, {1, 1, 1, 0}, {3, 2, 
        2}, {2, 2}, {2}}, {{2, 2, 2, 4, 4}, {2, 2, 1, 0}, {3, 3, 3}, {1, 1}, {
        2}}, {{2, 2, 3, 4, 4}, {2, 1, 1, 0}, {3, 2, 2}, {2, 3}, {1}}, {{2, 2, 
        2, 4, 4}, {2, 3, 1, 0}, {2, 2, 3}, {2, 1}, {2}}, {{2, 2, 2, 4, 4}, {2,
         2, 1, 0}, {3, 2, 3}, {2, 2}, {1}}, {{2, 3, 4, 4, 4}, {1, 0, 0, 0}, {
        3, 4, 2}, {1, 1}, {3}}, {{2, 2, 3, 4, 4}, {2, 1, 0, 0}, {3, 5, 3}, {0,
         0}, {3}}, {{2, 2, 4, 4, 4}, {2, 0, 0, 0}, {3, 4, 2}, {1, 2}, {2}}, {{
        2, 4, 4, 4, 4}, {0, 0, 0, 0}, {3, 3, 2}, {2, 1}, {3}}, {{2, 3, 3, 4, 
        4}, {1, 1, 0, 0}, {3, 4, 3}, {1, 0}, {3}}, {{2, 3, 4, 4, 4}, {1, 0, 0,
         0}, {3, 3, 2}, {2, 2}, {2}}, {{2, 2, 3, 4, 4}, {2, 1, 0, 0}, {3, 4, 
        3}, {1, 1}, {2}}, {{2, 2, 4, 4, 4}, {2, 0, 0, 0}, {3, 3, 2}, {2, 3}, {
        1}}, {{2, 3, 3, 4, 4}, {1, 1, 0, 0}, {3, 3, 3}, {2, 1}, {2}}, {{2, 2, 
        2, 4, 4}, {2, 2, 0, 0}, {3, 4, 4}, {1, 0}, {2}}, {{2, 2, 3, 4, 4}, {2,
         1, 0, 0}, {3, 3, 3}, {2, 2}, {1}}, {{2, 2, 2, 4, 4}, {2, 2, 0, 0}, {
        3, 3, 4}, {2, 1}, {1}}, {{2, 2, 2, 3, 4}, {2, 4, 4, 1}, {1, 0, 0}, {2,
         2}, {3}}, {{2, 2, 2, 3, 4}, {2, 3, 4, 1}, {2, 0, 0}, {2, 3}, {2}}, {{
        2, 2, 2, 3, 4}, {2, 2, 4, 1}, {3, 0, 0}, {2, 4}, {1}}, {{2, 2, 3, 3, 
        4}, {2, 3, 3, 1}, {1, 1, 0}, {2, 2}, {3}}, {{2, 3, 3, 3, 4}, {1, 2, 3,
         1}, {2, 1, 0}, {2, 2}, {3}}, {{2, 2, 2, 3, 4}, {2, 3, 3, 1}, {2, 2, 
        1}, {1, 1}, {3}}, {{2, 2, 3, 3, 4}, {2, 2, 3, 1}, {2, 1, 0}, {2, 3}, {
        2}}, {{2, 3, 3, 3, 4}, {1, 1, 3, 1}, {3, 1, 0}, {2, 3}, {2}}, {{2, 2, 
        2, 3, 4}, {2, 2, 3, 1}, {3, 2, 1}, {1, 2}, {2}}, {{2, 2, 3, 3, 4}, {2,
         1, 3, 1}, {3, 1, 0}, {2, 4}, {1}}, {{2, 2, 2, 3, 4}, {2, 4, 3, 1}, {
        1, 1, 1}, {2, 1}, {3}}, {{2, 2, 2, 3, 4}, {2, 3, 3, 1}, {2, 1, 1}, {2,
         2}, {2}}, {{2, 2, 2, 3, 4}, {2, 2, 3, 1}, {3, 1, 1}, {2, 3}, {1}}, {{
        2, 2, 3, 3, 4}, {2, 2, 2, 1}, {2, 3, 1}, {1, 1}, {3}}, {{2, 3, 3, 3, 
        4}, {1, 1, 2, 1}, {3, 3, 1}, {1, 1}, {3}}, {{2, 2, 2, 3, 4}, {2, 2, 2,
         1}, {3, 4, 2}, {0, 0}, {3}}, {{2, 2, 3, 3, 4}, {2, 1, 2, 1}, {3, 3, 
        1}, {1, 2}, {2}}, {{2, 3, 3, 3, 4}, {1, 2, 2, 1}, {2, 2, 1}, {2, 1}, {
        3}}, {{2, 2, 2, 3, 4}, {2, 3, 2, 1}, {2, 3, 2}, {1, 0}, {3}}, {{2, 2, 
        3, 3, 4}, {2, 2, 2, 1}, {2, 2, 1}, {2, 2}, {2}}, {{2, 3, 3, 3, 4}, {1,
         1, 2, 1}, {3, 2, 1}, {2, 2}, {2}}, {{2, 2, 2, 3, 4}, {2, 2, 2, 1}, {
        3, 3, 2}, {1, 1}, {2}}, {{2, 2, 3, 3, 4}, {2, 1, 2, 1}, {3, 2, 1}, {2,
         3}, {1}}, {{2, 2, 2, 3, 4}, {2, 3, 2, 1}, {2, 2, 2}, {2, 1}, {2}}, {{
        2, 2, 2, 3, 4}, {2, 2, 2, 1}, {3, 2, 2}, {2, 2}, {1}}, {{2, 2, 3, 3, 
        4}, {2, 1, 1, 1}, {3, 5, 2}, {0, 0}, {3}}, {{2, 3, 3, 3, 4}, {1, 1, 1,
         1}, {3, 4, 2}, {1, 0}, {3}}, {{2, 2, 3, 3, 4}, {2, 1, 1, 1}, {3, 4, 
        2}, {1, 1}, {2}}, {{2, 3, 3, 3, 4}, {1, 1, 1, 1}, {3, 3, 2}, {2, 1}, {
        2}}, {{2, 2, 2, 3, 4}, {2, 2, 1, 1}, {3, 4, 3}, {1, 0}, {2}}, {{2, 2, 
        3, 3, 4}, {2, 1, 1, 1}, {3, 3, 2}, {2, 2}, {1}}, {{2, 2, 2, 3, 4}, {2,
         2, 1, 1}, {3, 3, 3}, {2, 1}, {1}}, {{2, 2, 2, 2, 4}, {2, 3, 4, 2}, {
        2, 2, 0}, {1, 1}, {3}}, {{2, 2, 2, 2, 4}, {2, 2, 4, 2}, {3, 2, 0}, {1,
         2}, {2}}, {{2, 2, 2, 2, 4}, {2, 4, 4, 2}, {1, 1, 0}, {2, 1}, {3}}, {{
        2, 2, 2, 2, 4}, {2, 3, 4, 2}, {2, 1, 0}, {2, 2}, {2}}, {{2, 2, 2, 2, 
        4}, {2, 2, 4, 2}, {3, 1, 0}, {2, 3}, {1}}, {{2, 2, 2, 2, 4}, {2, 2, 3,
         2}, {3, 4, 1}, {0, 0}, {3}}, {{2, 2, 2, 2, 4}, {2, 3, 3, 2}, {2, 3, 
        1}, {1, 0}, {3}}, {{2, 2, 2, 2, 4}, {2, 2, 3, 2}, {3, 3, 1}, {1, 1}, {
        2}}, {{2, 2, 2, 2, 4}, {2, 3, 3, 2}, {2, 2, 1}, {2, 1}, {2}}, {{2, 2, 
        2, 2, 4}, {2, 2, 3, 2}, {3, 2, 1}, {2, 2}, {1}}, {{2, 2, 2, 2, 4}, {2,
         2, 2, 2}, {3, 4, 2}, {1, 0}, {2}}, {{2, 2, 2, 2, 4}, {2, 2, 2, 2}, {
        3, 3, 2}, {2, 1}, {1}}}, CompressedData["
1:eJxTTMoPSmJiYGAIABKsQJqViYWVZZQYJUaJUWKUGCVGiVFilBglRokBIQDC
4TBA
      "]}, Private`componentsEdgesAndnuc[{
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
        ReplaceRepeated[Private`fundamentalcomponents, {Private`locrules$}]; 
       Private`nuclist$ = ReplaceRepeated[
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
        ReplaceRepeated[Private`fundamentalcomponents, {Private`locrules$}]; 
       Private`nuclist$ = ReplaceRepeated[
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
    adjmatPackage`adjmatfct[6] = CompressedData["
1:eJxTTMoPSmJiYGCQgWIGRgY8gBGnLCMBrYy4ZBkJSeI1lxGHLCNlkngtxeFV
RlpK4nURI1ZZxoGTxOtc0kN9ICUBPb4CIA==
     "], adjmatPackage`adjmatfct[
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
       AdjacencyGraph[
        Private`adj$, VertexCoordinates -> 
         adjmatPackage`vertexcoordtriangle[3], DirectedEdges -> False]; 
      Private`grla$ = 
       AdjacencyGraph[Private`adj$, VertexShapeFunction -> (Apply[Which, 
           Flatten[
            Table[{#2 == Private`lambdalabel[3, Private`s], {
               Text[
                Style[
                 Part[Private`vert$, 1, Private`s], 25, Blue], #, 
                Offset[{20, -30}]], 
               Disk[#, 0.03], {Black}}}, {Private`s, 1, 3 - 1}], 1]]& ), 
         VertexCoordinates -> adjmatPackage`vertexcoordtriangle[3], 
         DirectedEdges -> False]; 
      Private`grmu$ = 
       AdjacencyGraph[Private`adj$, VertexShapeFunction -> (Apply[Which, 
           Flatten[
            Table[{#2 == Private`mulabel[3, Private`s], {
               Text[
                Style[
                 Part[Private`vert$, 2, Private`s], 25, Blue], #, 
                Offset[{-30, -30}]], 
               Disk[#, 0.03], {Black}}}, {Private`s, 1, 3 - 1}], 1]]& ), 
         VertexCoordinates -> adjmatPackage`vertexcoordtriangle[3], 
         DirectedEdges -> False]; 
      Private`grnu$ = 
       AdjacencyGraph[Private`adj$, VertexShapeFunction -> (Apply[Which, 
           Flatten[
            Table[{#2 == Private`nulabel[3, Private`s], {
               Text[
                Style[
                 Part[Private`vert$, 3, 3 - Private`s], 25, Blue], #, 
                Offset[{-5, 
                  Plus[25]}]], 
               Disk[#, 0.03], {Black}}}, {Private`s, 1, 3 - 1}], 1]]& ), 
         VertexCoordinates -> adjmatPackage`vertexcoordtriangle[3], 
         DirectedEdges -> False]; 
      Private`grEW$ = 
       AdjacencyGraph[Private`adj$, EdgeShapeFunction -> (Apply[Which, 
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
             Private`f, 1, 3 - 1}], 1]]& ), VertexCoordinates -> 
         adjmatPackage`vertexcoordtriangle[3], DirectedEdges -> False]; 
      Private`grNESW$ = 
       AdjacencyGraph[Private`adj$, EdgeShapeFunction -> (Apply[Which, 
           Flatten[
            Table[
             Flatten[
              Table[{
                And[
                First[#2] == First[Private`u], Last[#2] == Last[Private`u]], {
                
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
             Private`f, 1, 3 - 1}], 1]]& ), VertexCoordinates -> 
         adjmatPackage`vertexcoordtriangle[3], DirectedEdges -> False]; 
      Private`grNWSE$ = 
       AdjacencyGraph[Private`adj$, EdgeShapeFunction -> (Apply[Which, 
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
             Private`f, 1, 3 - 1}], 1]]& ), VertexCoordinates -> 
         adjmatPackage`vertexcoordtriangle[3], DirectedEdges -> False]; 
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
    Private`fullinfo = {{{1, -1, 4, 3, 1, 2, 3}, {2, -1, 3, 2, 2, 3, 2}, {
      3, -1, 2, 1, 3, 4, 1}, {4, -1, 1, 0, 4, 5, 
      0}}, {{{1, 0}, {3}}, {{2, 1}, {2}}, {{3, 2}, {1}}, {{4, 3}, {0}}}, {{{2,
         1}, {3}}, {{3, 2}, {2}}, {{4, 3}, {1}}, {{5, 4}, {0}}}, {{{1, 0}, {
        4}}, {{2, 1}, {3}}, {{3, 2}, {2}}, {{4, 3}, {1}}}, {{3, 6}, {3, 6}, {
      3, 6}, {3, 6}}}, adjmatPackage`vertexcoordtriangle[
      Pattern[Private`s, 
       Blank[]]] := Module[{Private`nw = {(-1)/2, Sqrt[3]/2}}, 
      N[
       Flatten[
        Table[{Private`p, 0} + Private`q Private`nw, {
         Private`p, 0, Private`s}, {Private`q, 0, Private`p}], 1]]], 
    TagSet[adjmatPackage`vertexcoordtriangle, 
     MessageName[adjmatPackage`vertexcoordtriangle, "usage"], 
     "vertexcoordtriangle[n] specifies the coordinates of the inner vertices \
of the graph drawn by the function adjmatgraph"], Private`lambdalabel[
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
      Private`p + (-1 + Private`p) Private`p + 2), Private`plotAllOblades[
      Pattern[Private`myweights, 
       Blank[]]] := Table[
      Private`plotSUNoblade[Private`myweights, Private`pos], {
      Private`pos, 1, 
       Apply[obladePackage`multiplicity, Private`myweights]}], 
    Private`componentsAlongFundPict[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}] := Part[
      Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}], 1], 
    Private`componentsAlongFundPict[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}, {
       Pattern[Private`nuc, 
        BlankSequence[]]}] := Part[
      Private`componentsEdgesAndnuc[{Private`lam}, {Private`mu}, {
       Private`nuc}], 1], obladePackage`edgesEWvalues[{
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
       Private`nuc}], 5], obladePackage`tensorproduct[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}] := Sort[
      Switch[
       ValueQ[obladePackage`currentgroup], False, 
       obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
       obladePackage`tensorproduct[{Private`lam}, {Private`mu}], True, 
       If[Length[{Private`lam}] == obladePackage`currentgroup - 1, 
        SortBy[
         Tally[
          Map[Reverse, 
           Private`tensorproductCC[{Private`lam}, {Private`mu}]]], Last], 
        obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
        obladePackage`tensorproduct[{Private`lam}, {Private`mu}]]]], 
    obladePackage`tensorproduct[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}, {
       Pattern[Private`nu, 
        BlankSequence[]]}] := Switch[
      ValueQ[obladePackage`currentgroup], False, 
      obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
      obladePackage`tensorproduct[{Private`lam}, {Private`mu}, {Private`nu}], 
      True, 
      If[Length[{Private`lam}] == obladePackage`currentgroup - 1, 
       SortBy[
        Tally[
         Map[Reverse, 
          Private`tensorproductCC[{Private`lam}, {Private`mu}, 
           Reverse[{Private`nu}]]]], Last], 
       obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
       obladePackage`tensorproduct[{Private`lam}, {Private`mu}, {
         Private`nu}]]], 
    TagSet[obladePackage`tensorproduct, 
     MessageName[obladePackage`tensorproduct, "usage"], 
     "tensorproduct[lambda,mu] returns the decomposition into irreducible \
components nu of a tensor product of two irreps lambda, mu, of the Lie group \
SU(n), given by the components of their highest weights along the basis of \
fundamental weights.  The last entry of each term is its multiplicity.\nOne \
can use this command with three arguments (tensorproduct[lambda,mu,nu]), and \
only some of the components of the last argument, nu, can be given, in which \
case all the possible solutions are listed.\nIt uses a hive-type algorithm \
(oblades).\nIf the group is SU(3) one can use the command \
SU3MultiplicityDynkin[lambda, mu] which is faster and uses the semi-magic \
algorithm.\nIn the case of SU(3) again, one can use the command \
tensorproductGenFun which uses a generating function.\n"], 
    obladePackage`pictographsCoordinates[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}, {
       Pattern[Private`nu, 
        BlankSequence[]]}] := Switch[
      ValueQ[obladePackage`currentgroup], False, 
      obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
      obladePackage`pictographsCoordinates[{Private`lam}, {Private`mu}, {
        Private`nu}], True, 
      If[Length[{Private`lam}] == obladePackage`currentgroup - 1, 
       Private`componentsAlongFundPict[{Private`lam}, {Private`mu}, 
        Reverse[{Private`nu}]], 
       obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
       obladePackage`pictographsCoordinates[{Private`lam}, {Private`mu}, {
         Private`nu}]]], 
    TagSet[obladePackage`pictographsCoordinates, 
     MessageName[obladePackage`pictographsCoordinates, "usage"], 
     "Assuming that the chosen triple has multiplicity m, the function \
pictographsCoordinates[lambda,mu,nu] gives the matrix\n of components of the \
m different pictographs along a basis of fundamental intertwiners. \nFor \
SU(n) there are 3(n-1)+ (n-1)(n-2) fundamental intertwiners. A basis has only \
3(n-1)+ (n-1)(n-2)/2 elements because of relations between fundamental \
intertwiners (syzygies). \nThe rank of the matrix, minus 1, gives the \
dimension of the hive polytope, a rational polytope (not always integral) \
whose integral points are precisely the different pictographs. \nThe \
dimension of the hive polytope is at most (n-1)(n-2)/2, with equality for the \
so-called generic triples."], obladePackage`plotOblades[{
       Pattern[Private`lam, 
        BlankSequence[]]}, {
       Pattern[Private`mu, 
        BlankSequence[]]}, {
       Pattern[Private`nu, 
        BlankSequence[]]}] := Switch[
      ValueQ[obladePackage`currentgroup], False, 
      obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
      obladePackage`plotOblades[{Private`lam}, {Private`mu}, {Private`nu}], 
      True, 
      If[Length[{Private`lam}] == obladePackage`currentgroup - 1, 
       Private`plotAllOblades[{{Private`lam}, {Private`mu}, {Private`nu}}], 
       obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
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
      obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
      obladePackage`plotOblades[{Private`lam}, {Private`mu}, {Private`nu}, 
        Private`pos], True, 
      If[Length[{Private`lam}] == obladePackage`currentgroup - 1, 
       Private`plotSUNoblade[{{Private`lam}, {Private`mu}, {Private`nu}}, 
        Private`pos], obladePackage`setGroupSU[Length[{Private`lam}] + 1]; 
       obladePackage`plotOblades[{Private`lam}, {Private`mu}, {Private`nu}, 
         Private`pos]]], 
    TagSet[obladePackage`plotOblades, 
     MessageName[obladePackage`plotOblades, "usage"], 
     "plotOblades[lambda,mu,nu] returns the list of drawings of all oblades \
with sides defined by the three highest weights lambda, mu, nu and describes \
the branching la \[CircleTimes] mu \[Rule] nu. \nTo display this list as a \
tableform (with no braces) one can do as follows:  li = \
plotOblades[lambda,mu,nu];  GraphicsRow[li,ImageSize\[Rule] Length[li]*300]. \
\nThe command admits and optional argument pos which is an integer chosen \
between 1 and multiplicityHive[lambda, mu, nu]; \nif specified, \
plotOblades[lambda,mu,nu, pos] displays only the particular oblade numbered \
pos."], obladePackage`pictographsCoordinatesToWeights[{
       Pattern[Private`li, 
        BlankSequence[]]}] := Module[{Private`locjjpol = Dot[{Private`li}, 
         ToExpression[obladePackage`fundamentalcomponentsLabels]], 
       Private`jj}, 
      Private`locjjpol = 
       ReplaceAll[Private`locjjpol, {Private`j -> Private`jj}]; Private`jj[
         Pattern[Private`u, 
          Blank[]], 
         Pattern[Private`v, 
          Blank[]], 
         Pattern[Private`w, 
          Blank[]]] := 
       Private`jj[Private`la, Private`u] + Private`jj[Private`mu, Private`v] + 
        Private`jj[Private`nu, Private`w]; 
      Private`locjjpol = 
       ReplaceAll[
        Private`locjjpol, {
         Private`jj[Private`la, 0] -> 0, Private`jj[Private`mu, 0] -> 0, 
          Private`jj[Private`nu, 0] -> 0}]; 
      With[{Private`pol = Private`locjjpol}, {
         Table[
          Coefficient[Private`pol, 
           Private`jj[Private`la, Private`p]], {
          Private`p, 1, obladePackage`currentgroup - 1}], 
         Table[
          Coefficient[Private`pol, 
           Private`jj[Private`mu, Private`p]], {
          Private`p, 1, obladePackage`currentgroup - 1}], 
         Table[
          Coefficient[Private`pol, 
           Private`jj[Private`nu, Private`p]], {
          Private`p, 1, obladePackage`currentgroup - 1}]}]], 
    TagSet[obladePackage`pictographsCoordinatesToWeights, 
     MessageName[obladePackage`pictographsCoordinatesToWeights, "usage"], 
     "pictographsCoordinatesToWeights[list_of_components] returns the Dynkin \
labels of the three highest weights determined by the components of the \
chosen pictograph (intertwiner)"], Private`pictographsCoordinatesToWeightsBis[{
       Pattern[Private`li, 
        BlankSequence[]]}] := 
    Module[{Private`check, Private`p, Private`n, Private`nbdegfree}, 
      Private`check = Reduce[
         And[
         Length[{Private`li}] == (1/2) (-1 + Private`p) (4 + Private`p), 
          Private`p > 0], Private`p, Integers]; 
      If[Private`check == False, 
        Print["The number of components should be equal to(-1+n) (4+n)/2 for \
some positive integer n"]; Return[{}], Private`n = ReplaceAll[Private`p, 
          ToRules[Private`check]]]; Private`nbdegfree = Length[{Private`li}]; 
      Apply[Plus, {Private`li} 
        Map[obladePackage`pictographsCoordinatesToWeights, 
          Table[
           UnitVector[Private`nbdegfree, Private`s], {
           Private`s, 1, Private`nbdegfree}]]]], 
    obladePackage`pictographsCoordinatesToDynkinAndLeaves[{
       Pattern[Private`li, 
        BlankSequence[]]}] := 
    Module[{Private`unitvecs, Private`edges, Private`leavesEW, 
       Private`leavesNESW, Private`leavesNWSE}, 
      Private`unitvecs = 
       Module[{Private`n = obladePackage`currentgroup, Private`nbdegfree}, 
         Private`nbdegfree = 
          3 (Private`n - 1) + (Private`n - 1) ((Private`n - 2)/2); Table[
           UnitVector[Private`nbdegfree, Private`s], {
           Private`s, 1, Private`nbdegfree}]]; 
      Private`edges = 
       Apply[Plus, {Private`li} 
         Map[obladePackage`pictographsCoordinatesToWeights, 
           Private`unitvecs]]; 
      Private`leavesEW = 
       Apply[Plus, {Private`li} Apply[obladePackage`edgesEWvalues, 
           Map[
           obladePackage`pictographsCoordinatesToWeights, Private`unitvecs], 
           1]]; Private`leavesNESW = 
       Apply[Plus, {Private`li} Apply[obladePackage`edgesNESWvalues, 
           Map[
           obladePackage`pictographsCoordinatesToWeights, Private`unitvecs], 
           1]]; Private`leavesNWSE = 
       Apply[Plus, {Private`li} Apply[obladePackage`edgesNWSEvalues, 
           Map[
           obladePackage`pictographsCoordinatesToWeights, Private`unitvecs], 
           1]]; {Private`edges, {
         Part[Private`leavesEW, 1], 
         Part[Private`leavesNESW, 1], 
         Part[Private`leavesNWSE, 1]}}], 
    TagSet[obladePackage`pictographsCoordinatesToDynkinAndLeaves, 
     MessageName[
     obladePackage`pictographsCoordinatesToDynkinAndLeaves, "usage"], 
     "pictographsCoordinatesToDynkinAndLeaves[list_of_components] returns a \
pair. \nThe first member of the pair give the Dynkin labels of the three \
highest weights determined by the components of the chosen pictograph \
(intertwiner).\nThe second member is a list of the values of the leaves of \
the pictograph, in the three directions.\n"], 
    obladePackage`pictographsCoordinatesToHoneycomb[{
       Pattern[Private`li, 
        BlankSequence[]]}] := 
    With[{Private`u = {Sqrt[3]/2, 1/2}, Private`v = {-(Sqrt[3]/2), 1/2}, 
       Private`w = {0, -1}}, 
      Module[{
       Private`weightsandleaves, Private`weights, Private`leaves, Private`la, 
        Private`mu, Private`nu, Private`nn, Private`ptg, Private`gra1, 
        Private`gra2, Private`tailsize}, 
       Private`weightsandleaves = 
        obladePackage`pictographsCoordinatesToDynkinAndLeaves[{Private`li}]; 
       Private`weights = First[Private`weightsandleaves]; 
       Private`la = Part[Private`weights, 1]; 
       Private`mu = Part[Private`weights, 2]; Private`nu = Reverse[
          Part[Private`weights, 3]]; 
       Private`leaves = Last[Private`weightsandleaves]; 
       Private`nn = obladePackage`currentgroup; Private`ptg[1, 1] = {0, 0}; 
       Private`ptg[1, 
          Pattern[Private`s, 
           Blank[]]] := 
        Condition[
         Private`ptg[1, Private`s - 1] + 
          Private`u Part[Private`leaves, 3, -Private`s/2, -1], 
          EvenQ[Private`s]]; Private`ptg[1, 
          Pattern[Private`s, 
           Blank[]]] := 
        Condition[
         Private`ptg[1, Private`s - 1] - Private`v 
          Part[Private`leaves, 2, (Private`s - 1)/2, 1], 
          OddQ[Private`s]]; Private`ptg[
          Pattern[Private`f, 
           Blank[]], 1] := 
        Private`ptg[Private`f - 1, 2] - Private`w 
         Part[Private`leaves, 1, Private`f - 1, Private`nn - (Private`f - 1)]; 
       Private`ptg[
          Pattern[Private`f, 
           Blank[]], 
          Pattern[Private`s, 
           Blank[]]] := 
        Condition[
         Private`ptg[Private`f, Private`s - 1] + 
          Private`u 
           Part[Private`leaves, 3, -(Private`s/2 + Private`f - 1), Private`s/
             2], 
          EvenQ[Private`s]]; Private`ptg[
          Pattern[Private`f, 
           Blank[]], 
          Pattern[Private`s, 
           Blank[]]] := 
        Condition[
         Private`ptg[Private`f, Private`s - 1] - Private`v 
          Part[Private`leaves, 2, (Private`s - 1)/2, Private`f], 
          OddQ[Private`s]]; Private`tailsize = Round[Max[{
             Total[Private`la], 
             Total[Private`mu], 
             Total[Private`nu]}]/20]; Private`gra1 = Graphics[
          Join[
           Table[{Black, 
             Point[
              Table[
               Private`ptg[Private`f, Private`s], {
               Private`s, 1, 2 Private`nn - 2 Private`f + 1}]]}, {
            Private`f, 1, Private`nn}], 
           Table[{Blue, 
             Line[
              Table[{
                Private`ptg[Private`f, Private`j], 
                Private`ptg[Private`f, Private`j + 1]}, {
               Private`j, 1, 2 (Private`nn - Private`f)}]]}, {
            Private`f, 1, Private`nn - 1}], 
           Table[{Blue, 
             Line[
              Table[{
                Private`ptg[Private`f, Private`j], 
                Private`ptg[Private`f + 1, Private`j - 1]}, {
               Private`j, 2, 2 (Private`nn - Private`f), 2}]]}, {
            Private`f, 1, Private`nn - 1}], 
           Table[{Red, 
             Table[
              Private`affineSegment[
               Private`ptg[Private`f, Private`j], Private`tailsize 
               Private`w], {Private`j, 1, 2 Private`nn - Private`f, 2}]}, {
            Private`f, 1, 1}], 
           Table[{Red, 
             Table[
              Private`affineSegment[
               Private`ptg[Private`f, Private`j], Private`tailsize 
               Private`v], {Private`j, 1, 1}]}, {Private`f, 1, Private`nn}], 
           Table[{Red, 
             Table[
              Private`affineSegment[
               Private`ptg[Private`f, Private`j], Private`tailsize 
               Private`u], {
              Private`j, 2 (Private`nn - Private`f) + 1, 
               2 (Private`nn - Private`f) + 1}]}, {
            Private`f, 1, Private`nn}]], AspectRatio -> Automatic]; 
       Private`gra2 = Graphics[{
           Table[
            Table[
             Private`segmentLabel[
              Part[Private`leaves, 1, Private`f, -Private`j], Black, 
              Private`ptg[Private`f, 2 Private`j], 
              Private`ptg[Private`f + 1, 2 Private`j - 1], {5, 0}], {
             Private`j, 1, Private`nn - Private`f}], {
            Private`f, 1, Private`nn - 1}], 
           Table[
            Table[
             Private`segmentLabel[
              Part[Private`leaves, 2, Private`f, Private`j], Black, 
              Private`ptg[Private`j, 2 Private`f], 
              Private`ptg[Private`j, 2 Private`f + 1], {-6, -6}], {
             Private`j, 1, Private`nn - Private`f}], {
            Private`f, 1, Private`nn - 1}], 
           Table[
            Table[
             Private`segmentLabel[
              Part[Private`leaves, 3, Private`f, -Private`j], Black, 
              Private`ptg[
              Private`j, 2 Private`nn - 2 Private`j - 2 Private`f + 1], 
              Private`ptg[
              Private`j, 2 Private`nn - 2 Private`j - 2 Private`f + 1 + 1], {
              0, -6}], {Private`j, 1, Private`nn - Private`f}], {
            Private`f, 1, Private`nn - 1}], 
           Table[
            Private`segmentLabel[
             Part[Private`la, Private`f], Blue, Bold, 
             Private`ptg[Private`f, 1] - Private`w, 
             Private`ptg[Private`f + 1, 1] - Private`w, {25, -10}], {
            Private`f, 1, Private`nn - 1}], 
           Table[
            Private`segmentLabel[
             Part[Private`mu, Private`nn - Private`f], Blue, Bold, 
             Private`ptg[Private`f, 2 Private`nn - 2 Private`f + 1] - 
             Private`w, 
             Private`ptg[Private`f + 1, 2 Private`nn - 2 Private`f - 1] - 
             Private`w, {-40, -10}], {Private`f, 1, Private`nn - 1}], 
           Table[
            Private`segmentLabel[
             Part[Private`nu, Private`nn - Private`f], Blue, Bold, 
             Private`ptg[1, 2 Private`nn - 2 Private`f - 1] - Private`w, 
             Private`ptg[1, 2 Private`nn - 2 Private`f + 1] - Private`w, {-10,
              30}], {Private`f, 1, Private`nn - 1}]}, AspectRatio -> 
          Automatic]; Show[Private`gra1, Private`gra2]]], 
    TagSet[obladePackage`pictographsCoordinatesToHoneycomb, 
     MessageName[obladePackage`pictographsCoordinatesToHoneycomb, "usage"], 
     "pictographsCoordinatesToHoneycomb[list_of_components] draws the \
honeycomb determined by the components of the chosen pictograph \
(intertwiner). \nThis is done without re-calculating the whole list of \
pictographs determined by the associated external three weights."], 
    obladePackage`pictographsCoordinatesToOblade[{
       Pattern[Private`li$, 
        BlankSequence[]]}] := 
    Module[{Private`weightsandleaves$, Private`weights$, Private`la$, 
       Private`mu$, Private`nu$, Private`leaves$, Private`adj$, Private`grid$,
        Private`grla$, Private`grmu$, Private`grnu$, Private`grEW$, 
       Private`grNESW$, Private`grNWSE$}, 
      Private`weightsandleaves$ = 
       obladePackage`pictographsCoordinatesToDynkinAndLeaves[{Private`li$}]; 
      Private`weights$ = First[Private`weightsandleaves$]; 
      Private`la$ = Part[Private`weights$, 1]; 
      Private`mu$ = Part[Private`weights$, 2]; Private`nu$ = Reverse[
         Part[Private`weights$, 3]]; 
      Private`leaves$ = Last[Private`weightsandleaves$]; 
      Private`adj$ = Private`AdjMatbis; 
      Private`grid$ = 
       AdjacencyGraph[
        Private`adj$, VertexCoordinates -> 
         adjmatPackage`vertexcoordtriangle[3], DirectedEdges -> False]; 
      Private`grla$ = 
       AdjacencyGraph[Private`adj$, VertexShapeFunction -> (Apply[Which, 
           Flatten[
            Table[{#2 == Private`lambdalabel[3, Private`s], {
               Text[
                Style[
                 Part[Private`la$, Private`s], Large, Blue], #, {
                Right, Bottom}], 
               Disk[#, 0.05], {Black}}}, {Private`s, 1, 3 - 1}], 1]]& ), 
         VertexCoordinates -> adjmatPackage`vertexcoordtriangle[3], 
         DirectedEdges -> False]; 
      Private`grmu$ = 
       AdjacencyGraph[Private`adj$, VertexShapeFunction -> (Apply[Which, 
           Flatten[
            Table[{#2 == Private`mulabel[3, Private`s], {
               Text[
                Style[
                 Part[Private`mu$, Private`s], Large, Blue], #, {
                Left, Bottom}], 
               Disk[#, 0.05], {Black}}}, {Private`s, 1, 3 - 1}], 1]]& ), 
         VertexCoordinates -> adjmatPackage`vertexcoordtriangle[3], 
         DirectedEdges -> False]; 
      Private`grnu$ = 
       AdjacencyGraph[Private`adj$, VertexShapeFunction -> (Apply[Which, 
           Flatten[
            Table[{#2 == Private`nulabel[3, Private`s], {
               Text[
                Style[
                 Part[Private`nu$, 3 - Private`s], Large, Blue], #, {
                Right, Top}], 
               Disk[#, 0.05], {Black}}}, {Private`s, 1, 3 - 1}], 1]]& ), 
         VertexCoordinates -> adjmatPackage`vertexcoordtriangle[3], 
         DirectedEdges -> False]; 
      Private`grEW$ = 
       AdjacencyGraph[Private`adj$, EdgeShapeFunction -> (Apply[Which, 
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
                    Part[Private`leaves$, 1, Private`f]], 
                    First[
                    Flatten[
                    Position[
                    Private`edgesEWlabels[Private`f], Private`u]]]], 20], (
                   Part[#, 1] + Part[#, 2])/2]}}, {Private`u, 
                Private`edgesEWlabels[Private`f]}], 1], {
             Private`f, 1, 3 - 1}], 1]]& ), VertexCoordinates -> 
         adjmatPackage`vertexcoordtriangle[3], DirectedEdges -> False]; 
      Private`grNESW$ = 
       AdjacencyGraph[Private`adj$, EdgeShapeFunction -> (Apply[Which, 
           Flatten[
            Table[
             Flatten[
              Table[{
                And[
                First[#2] == First[Private`u], Last[#2] == Last[Private`u]], {
                
                 Text[
                  Style[
                   Part[
                    Part[Private`leaves$, 2, Private`f], 
                    First[
                    Flatten[
                    Position[
                    Private`edgesNESWlabels[Private`f], Private`u]]]], 20], (
                   Part[#, 1] + Part[#, 2])/2]}}, {Private`u, 
                Private`edgesNESWlabels[Private`f]}], 1], {
             Private`f, 1, 3 - 1}], 1]]& ), VertexCoordinates -> 
         adjmatPackage`vertexcoordtriangle[3], DirectedEdges -> False]; 
      Private`grNWSE$ = 
       AdjacencyGraph[Private`adj$, EdgeShapeFunction -> (Apply[Which, 
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
                    Part[Private`leaves$, 3, Private`f]], 
                    First[
                    Flatten[
                    Position[
                    Private`edgesNWSElabels[Private`f], Private`u]]]], 20], (
                   Part[#, 1] + Part[#, 2])/2]}}, {Private`u, 
                Private`edgesNWSElabels[Private`f]}], 1], {
             Private`f, 1, 3 - 1}], 1]]& ), VertexCoordinates -> 
         adjmatPackage`vertexcoordtriangle[3], DirectedEdges -> False]; 
      Show[Private`grid$, Private`grla$, Private`grmu$, Private`grnu$, 
        Private`grEW$, Private`grNESW$, Private`grNWSE$]], 
    TagSet[obladePackage`pictographsCoordinatesToOblade, 
     MessageName[obladePackage`pictographsCoordinatesToOblade, "usage"], 
     "pictographsCoordinatesToOblade[list_of_components] draws the oblade \
determined by the components of the chosen pictograph (intertwiner).\nThis is \
done without re-calculating the whole list of pictographs determined by the \
associated external three weights."], Attributes[Private`li$] = {Temporary}, 
    Attributes[Private`weightsandleaves$] = {Temporary}, 
    Attributes[Private`weights$] = {Temporary}, 
    Attributes[Private`la$] = {Temporary}, 
    Attributes[Private`nu$] = {Temporary}, 
    Attributes[Private`leaves$] = {Temporary}, obladePackage`hivePolytope[
      Pattern[Private`la$, 
       Blank[]], 
      Pattern[Private`mu$, 
       Blank[]], 
      Pattern[Private`nu$, 
       Blank[]]] := 
    Module[{Private`externalConstraints$, Private`eliminatedLeaves$, 
       Private`remainingLeaves$}, 
      Private`externalConstraints$ = ReplaceAll[Private`lambdaequations, 
         Private`buildlambdainput[Private`la$, Private`mu$, 
          Reverse[Private`nu$]]]; 
      Private`eliminatedLeaves$ = Solve[Private`externalConstraints$]; 
      Private`remainingLeaves$ = Union[
         Flatten[
          Map[Variables, 
           Flatten[
            ReplaceAll[
            Private`fundamentalcomponents, Private`eliminatedLeaves$]]]]]; 
      Print["The hive polytope is defined by the following pair {vars, ineqs} \
where vars are ", 
        Length[Private`remainingLeaves$], 
        " \[LessEqual] ", (3 - 1) ((3 - 2)/2), 
        " independent parameters obeying the inequations ineqs:"]; {
       Private`remainingLeaves$, 
        Simplify[
         ReplaceAll[
         Private`positivityconstraints, Private`eliminatedLeaves$]]}], 
    TagSet[obladePackage`hivePolytope, 
     MessageName[obladePackage`hivePolytope, "usage"], 
     "hivePolytope[lambda, mu, nu] returns a pair (vars, ineqs) where vars \
are independent leaves, and ineqs are inequations in the variables vars \
defining the hive polytope associated with the three highest weights lambda, \
mu, nu."], Attributes[Private`externalConstraints$] = {Temporary}, 
    Attributes[Private`eliminatedLeaves$] = {Temporary}, 
    Attributes[Private`remainingLeaves$] = {Temporary}, 
    obladePackage`nondegeneratedOblades[
      Pattern[Private`\[Lambda], 
       Blank[]], 
      Pattern[Private`\[Mu], 
       Blank[]]] := Switch[
      ValueQ[obladePackage`currentgroup], False, 
      obladePackage`setGroupSU[Length[Private`\[Lambda]] + 1]; 
      obladePackage`nondegeneratedOblades[Private`\[Lambda], Private`\[Mu]], 
      True, 
      If[Length[Private`\[Lambda]] == obladePackage`currentgroup - 1, 
       Private`nondegeneratedObladesMain[Private`\[Lambda], Private`\[Mu]], 
       obladePackage`setGroupSU[Length[Private`\[Lambda]] + 1]; 
       obladePackage`nondegeneratedOblades[
        Private`\[Lambda], Private`\[Mu]]]], 
    obladePackage`nondegeneratedOblades[
      Pattern[Private`\[Lambda], 
       Blank[]], 
      Pattern[Private`\[Mu], 
       Blank[]], 
      Pattern[Private`\[Nu], 
       Blank[]]] := Switch[
      ValueQ[obladePackage`currentgroup], False, 
      obladePackage`setGroupSU[Length[Private`\[Lambda]] + 1]; 
      obladePackage`nondegeneratedOblades[
       Private`\[Lambda], Private`\[Mu], Private`\[Nu]], True, 
      If[Length[Private`\[Lambda]] == obladePackage`currentgroup - 1, 
       Private`nondegeneratedObladesMain[
       Private`\[Lambda], Private`\[Mu], Private`\[Nu]], 
       obladePackage`setGroupSU[Length[Private`\[Lambda]] + 1]; 
       obladePackage`nondegeneratedOblades[
        Private`\[Lambda], Private`\[Mu], Private`\[Nu]]]], 
    TagSet[obladePackage`nondegeneratedOblades, 
     MessageName[obladePackage`nondegeneratedOblades, "usage"], 
     "List of non degenerated pictographs for a given tensor product (the \
command accepts two or three arguments)"], Private`nondegeneratedObladesMain[
      Pattern[Private`\[Lambda], 
       Blank[]], 
      Pattern[Private`\[Mu], 
       Blank[]]] := 
    Module[{Private`tp = 
       obladePackage`tensorproduct[Private`\[Lambda], Private`\[Mu]], 
       Private`len}, Private`len = Length[Private`tp]; Position[
        Table[
         Map[FreeQ[#, 0]& , 
          Map[Flatten, 
           Transpose[{
             Map[Flatten, 
              obladePackage`edgesEWvalues[Private`\[Lambda], Private`\[Mu], 
               Reverse[
                Part[Private`tp, Private`j, 1]]]], 
             Map[Flatten, 
              obladePackage`edgesNESWvalues[
              Private`\[Lambda], Private`\[Mu], 
               Reverse[
                Part[Private`tp, Private`j, 1]]]], 
             Map[Flatten, 
              obladePackage`edgesNWSEvalues[
              Private`\[Lambda], Private`\[Mu], 
               Reverse[
                Part[Private`tp, Private`j, 1]]]]}]]], {
         Private`j, 1, Private`len}], True]], 
    Private`nondegeneratedObladesMain[
      Pattern[Private`\[Lambda], 
       Blank[]], 
      Pattern[Private`\[Mu], 
       Blank[]], 
      Pattern[Private`\[Nu], 
       Blank[]]] := Position[
      Map[FreeQ[#, 0]& , 
       Map[Flatten, 
        Transpose[{
          Map[Flatten, 
           obladePackage`edgesEWvalues[Private`\[Lambda], Private`\[Mu], 
            Reverse[Private`\[Nu]]]], 
          Map[Flatten, 
           obladePackage`edgesNESWvalues[Private`\[Lambda], Private`\[Mu], 
            Reverse[Private`\[Nu]]]], 
          Map[Flatten, 
           obladePackage`edgesNWSEvalues[Private`\[Lambda], Private`\[Mu], 
            Reverse[Private`\[Nu]]]]}]]], True], 
    TagSet[obladePackage`Magic, 
     MessageName[obladePackage`Magic, "usage"], "An option for multiplicity"], 
    TagSet[obladePackage`GenFun, 
     MessageName[obladePackage`GenFun, "usage"], 
     "An option for multiplicity"], 
    TagSet[obladePackage`LiE, 
     MessageName[obladePackage`LiE, "usage"], "An option for multiplicity"], 
    obladePackage`multiplicityMagic[
      Pattern[Private`lambda, 
       Blank[]], 
      Pattern[Private`mu, 
       Blank[]], 
      Pattern[Private`nu, 
       Blank[]]] := 
    If[obladePackage`currentgroup =!= 3, 
      Print["This algorithm works only for SU(3). I continue using the hive \
method"]; obladePackage`multiplicityHive[
       Private`lambda, Private`mu, Private`nu], 
      Private`magicmult[Private`lambda, Private`mu, 
       Reverse[Private`nu]]], 
    TagSet[obladePackage`multiplicityMagic, 
     MessageName[obladePackage`multiplicityMagic, "usage"], 
     "multiplicityMagic[lambda,mu,nu] gives multiplicity[lambda,mu,nu] by \
using the semi-magic method (this only works for SU(3).\nIt is equivalent to \
multiplicity[lambda,mu,nu, Magic\[Rule]True].\nIt only works for SU(3). See \
the documentation of the command multiplicity."], Private`magicmult[
      Pattern[Private`la, 
       Blank[]], 
      Pattern[Private`mu, 
       Blank[]], 
      Pattern[Private`nuc, 
       Blank[]]] := 
    Module[{Private`irr = {Private`la, Private`mu, Private`nuc}, 
       Private`irrtra, Private`redirrtra, Private`sig, Private`k, 
       Private`magic1, Private`magic2}, 
      Private`irrtra = Transpose[Private`irr]; 
      Private`sig = Map[Total, Private`irrtra]; 
      Private`k = Abs[Part[Private`sig, 1] - Part[Private`sig, 2]]/3; If[
        Not[
         IntegerQ[Private`k]], 
        Return[0]]; 
      Private`redirrtra = 
       Private`irrtra - If[Part[Private`sig, 1] >= Part[Private`sig, 2], {
          ConstantArray[Private`k, 3], 0}, {0, 
          ConstantArray[Private`k, 3]}]; {Private`magic1, Private`magic2} = 
       Map[Total, Private`redirrtra]; Min[
         Flatten[{
          Private`redirrtra, ConstantArray[Private`magic1, 3] - Part[
           Private`redirrtra, 1] - Part[Private`redirrtra, 2]}]] + 1], 
    Private`multiplicityVolume[{
       Pattern[Private`la1, 
        Blank[]], 
       Pattern[Private`la2, 
        Blank[]]}, {
       Pattern[Private`mu1, 
        Blank[]], 
       Pattern[Private`mu2, 
        Blank[]]}, {
       Pattern[Private`nu1, 
        Blank[]], 
       Pattern[Private`nu2, 
        Blank[]]}] := 
    If[obladePackage`currentgroup =!= 3, 
      Print["This algorithm works only for SU(3). I continue using the hive \
method"]; obladePackage`multiplicityHive[
       Private`lambda, Private`mu, Private`nu], 
      Private`volumeJ[{Private`la1, Private`la2}, {
         Private`mu1, Private`mu2}, {Private`nu1, Private`nu2}]/24 + 1], 
    Private`volumeJ[{
       Pattern[Private`la1, 
        Blank[]], 
       Pattern[Private`la2, 
        Blank[]]}, {
       Pattern[Private`mu1, 
        Blank[]], 
       Pattern[Private`mu2, 
        Blank[]]}, {
       Pattern[Private`nu1, 
        Blank[]], 
       Pattern[Private`nu2, 
        Blank[]]}] := 
    4 (Private`la1 + Private`la2 + Private`mu1 + Private`mu2 + Private`nu1 + 
      Private`nu2 - Abs[
      Private`la1 - Private`la2 + Private`mu1 - Private`mu2 - Private`nu1 + 
       Private`nu2] - 2 
      Piecewise[{{Private`la1 + Private`la2 - Private`mu1 - Private`nu1, 
          And[
          Private`la1 + 2 Private`la2 + Private`nu2 >= 
           2 Private`mu1 + Private`mu2 + Private`nu1, 
           2 Private`la1 + Private`la2 + Private`mu2 > 
           Private`mu1 + 2 Private`nu1 + Private`nu2]}, {-Private`la2 + 
          Private`mu1 + Private`mu2 - Private`nu2, 
          And[
          Private`la1 + 2 Private`la2 + Private`nu2 < 
           2 Private`mu1 + Private`mu2 + Private`nu1, 
           Private`la1 + Private`mu1 + 2 Private`mu2 >= 
           Private`la2 + Private`nu1 + 2 Private`nu2]}, {-Private`la1 - 
          Private`mu2 + Private`nu1 + Private`nu2, 
          And[
          2 Private`la1 + Private`la2 + Private`mu2 <= 
           Private`mu1 + 2 Private`nu1 + Private`nu2, 
           Private`la1 + Private`mu1 + 2 Private`mu2 < 
           Private`la2 + Private`nu1 + 2 Private`nu2]}}, 0] - 2 
      Piecewise[{{-Private`la1 + Private`mu1 + Private`mu2 - Private`nu1, 
          And[
          2 Private`la1 + Private`la2 + Private`nu1 <= 
           Private`mu1 + 2 Private`mu2 + Private`nu2, 
           Private`la1 + 2 Private`nu1 + Private`nu2 < 
           Private`la2 + 2 Private`mu1 + Private`mu2]}, {
         Private`la1 + Private`la2 - Private`mu2 - Private`nu2, 
          And[
          2 Private`la1 + Private`la2 + Private`nu1 > 
           Private`mu1 + 2 Private`mu2 + Private`nu2, 
           Private`la1 + 2 Private`la2 + Private`mu1 >= 
           Private`mu2 + Private`nu1 + 2 Private`nu2]}, {-Private`la2 - 
          Private`mu1 + Private`nu1 + Private`nu2, 
          And[
          Private`la1 + 2 Private`nu1 + Private`nu2 >= 
           Private`la2 + 2 Private`mu1 + Private`mu2, 
           Private`la1 + 2 Private`la2 + Private`mu1 < 
           Private`mu2 + Private`nu1 + 2 Private`nu2]}}, 0]), 
    obladePackage`multiplicityGenFun[
      Pattern[Private`lambda, 
       Blank[]], 
      Pattern[Private`mu, 
       Blank[]], 
      Pattern[Private`nu, 
       Blank[]]] := Coefficient[
      Private`tensorproductGenFunPol[Private`lambda, Private`mu], 
      Private`N1^Part[Private`nu, 1] Private`N2^Part[Private`nu, 2]], 
    TagSet[obladePackage`multiplicityGenFun, 
     MessageName[obladePackage`multiplicityGenFun, "usage"], 
     "multiplicityGenFun[lambda,mu,nu] returns the multiplicity of  lambda\
\[CircleTimes]mu -> nu.\nIt uses the generating function for multiplicities \
given by multiplicityGeneratingFunctionSU3. This is a SU3 specific command."],
     Private`tensorproductGenFunPol[{
       Pattern[Private`l1, 
        Blank[]], 
       Pattern[Private`l2, 
        Blank[]]}, {
       Pattern[Private`m1, 
        Blank[]], 
       Pattern[Private`m2, 
        Blank[]]}] := Coefficient[
      Expand[
       Normal[
        Series[
         obladePackage`multiplicityGeneratingFunctionSU3[
         Private`L1, Private`L2, Private`M1, Private`M2, Private`N2, 
          Private`N1], {Private`L1, 0, Private`l1}, {
         Private`L2, 0, Private`l2}, {Private`M1, 0, Private`m1}, {
         Private`M2, 0, Private`m2}, {
         Private`N1, 0, Private`l1 + Private`m1 + 
          Min[Private`l2, Private`m2]}, {
         Private`N2, 0, Private`l2 + Private`m2 + 
          Min[Private`l1, Private`m1]}]]], Private`L1^Private`l1 
      Private`L2^Private`l2 Private`M1^Private`m1 Private`M2^Private`m2], 
    obladePackage`multiplicityGeneratingFunctionSU3[
      Pattern[Private`L1, 
       Blank[]], 
      Pattern[Private`L2, 
       Blank[]], 
      Pattern[Private`M1, 
       Blank[]], 
      Pattern[Private`M2, 
       Blank[]], 
      Pattern[Private`N1, 
       Blank[]], 
      Pattern[Private`N2, 
       Blank[]]] := (1 - Private`L1 Private`L2 Private`M1 Private`M2 
      Private`N1 
      Private`N2)/(((1 - Private`L1 Private`N2) (1 - Private`L1 Private`M2) (
       1 - Private`L2 Private`M1) (1 - Private`L2 Private`N1)) ((1 - 
       Private`M2 Private`N1) (1 - Private`M1 Private`N2) (1 - Private`L1 
       Private`M1 Private`N1) (1 - Private`L2 Private`M2 Private`N2))), 
    TagSet[obladePackage`multiplicityGeneratingFunctionSU3, 
     MessageName[obladePackage`multiplicityGeneratingFunctionSU3, "usage"], 
     "multiplicityGeneratingFunctionSU3[L1,L2,M1,M2,N1,N2] is a generating \
function for the multiplicity of L\[CircleTimes]M\[CircleTimes]N --> 1. \nIt \
is only implemented for SU(3). It can be used to determine the tensor product \
of two irreps (see tensorproductGenFun) or the multiplicity of a triple (see \
multiplicityGenFun)"], obladePackage`multiplicityLiE[
      Pattern[Private`\[Lambda]1, 
       Blank[]], 
      Pattern[Private`\[Lambda]2, 
       Blank[]], 
      Pattern[Private`\[Lambda]3, 
       Blank[]], 
      Pattern[Private`diagram, 
       Blank[]]] := 
    Block[{Private`group, Private`V1, Private`V2, Private`V3, 
       Private`listofLieCommands, Private`res}, 
      Private`group = ToString[Private`diagram]; 
      Private`V1 = StringJoin["[", 
         StringRiffle[
          Map[ToString, Private`\[Lambda]1], ", "], "]"]; 
      Private`V2 = StringJoin["[", 
         StringRiffle[
          Map[ToString, Private`\[Lambda]2], ", "], "]"]; 
      Private`V3 = StringJoin["[", 
         StringRiffle[
          Map[ToString, Private`\[Lambda]3], ", "], "]"]; 
      Private`listofLieCommands = {
         StringJoin["maxobjects ", "1500000"], 
         StringJoin["setdefault ", Private`group], 
         StringJoin[
         "tensor(", Private`V1, ",", Private`V2, ",", Private`V3, ")"]}; 
      SetDirectory[$HomeDirectory]; 
      Export["filequestion.dat", Private`listofLieCommands]; 
      Private`res = 
       ReadList["!source LiEfromM < filequestion.dat", Expression]; Return[
        First[Private`res]]; ResetDirectory[]], 
    obladePackage`multiplicityLiE[
      Pattern[Private`lambda, 
       Blank[]], 
      Pattern[Private`mu, 
       Blank[]], 
      Pattern[Private`nu, 
       Blank[]]] := 
    obladePackage`multiplicityLiE[Private`lambda, Private`mu, Private`nu, 
      StringJoin["A", 
       ToString[obladePackage`currentgroup - 1]]], 
    TagSet[obladePackage`multiplicityLiE, 
     MessageName[obladePackage`multiplicityLiE, "usage"], 
     "multiplicityLiE[lambda,mu,nu] gives multiplicity[lambda,mu,nu] by \
calling the external program LiE.\nIt is equivalent to \
multiplicity[lambda,mu,nu, LiE\[Rule]True]. The group is assumed to be of \
type SU.\nSee the documentation of the command multiplicity."], 
    obladePackage`tensorproductGenFun[
      Pattern[Private`lambda, 
       Blank[]], 
      Pattern[Private`mu, 
       Blank[]]] := Sort[
      Which[obladePackage`currentgroup == 3, 
       Sort[
        ReplaceAll[
         CoefficientRules[
          Private`tensorproductGenFunPol[Private`lambda, Private`mu], {
          Private`N1, Private`N2}], {Rule -> List}]], 
       obladePackage`currentgroup > 3, 
       Print["Generating function not implemented, I continue using the hive \
method"]; obladePackage`tensorproduct[Private`lambda, Private`mu]]], 
    TagSet[obladePackage`tensorproductGenFun, 
     MessageName[obladePackage`tensorproductGenFun, "usage"], 
     "tensorproductGenFun[{l1,l2},{m1,m2}] returns the tensor product of the \
two irreps (with multiplicities).\nIt uses the generating function for \
multiplicities given by multiplicityGeneratingFunctionSU3. This is a SU3 \
specific command."], Private`HornFull[
      Pattern[Private`\[Alpha], 
       Blank[]], 
      Pattern[Private`\[Beta], 
       Blank[]]] := {{
       Max[
       Part[Private`\[Alpha], 1] + Part[Private`\[Beta], 3], 
        Part[Private`\[Alpha], 2] + Part[Private`\[Beta], 2], 
        Part[Private`\[Alpha], 3] + Part[Private`\[Beta], 1]], 
       Part[Private`\[Alpha], 1] + Part[Private`\[Beta], 1]}, {
       Max[
       Part[Private`\[Alpha], 2] + Part[Private`\[Beta], 3], 
        Part[Private`\[Alpha], 3] + Part[Private`\[Beta], 2]], 
       Min[
       Part[Private`\[Alpha], 1] + Part[Private`\[Beta], 2], 
        Part[Private`\[Alpha], 2] + Part[Private`\[Beta], 1]]}, {
      Part[Private`\[Alpha], 3] + Part[Private`\[Beta], 3], 
       Min[
       Part[Private`\[Alpha], 1] + Part[Private`\[Beta], 3], 
        Part[Private`\[Alpha], 2] + Part[Private`\[Beta], 2], 
        Part[Private`\[Alpha], 3] + Part[Private`\[Beta], 1]]}}, 
    Private`SchurProdPairMagicMethod[
      Pattern[Private`\[Alpha], 
       Blank[]], 
      Pattern[Private`\[Beta], 
       Blank[]]] := 
    Module[{Private`la, Private`mu, Private`horngam, Private`gamma1min, 
       Private`gamma1max, Private`gamma2min, Private`gamma2max, 
       Private`\[Gamma]3}, 
      Private`la = {
        Part[Private`\[Alpha], 1] - Part[Private`\[Alpha], 2], 
         Part[Private`\[Alpha], 2] - Part[Private`\[Alpha], 3]}; 
      Private`mu = {
        Part[Private`\[Beta], 1] - Part[Private`\[Beta], 2], 
         Part[Private`\[Beta], 2] - Part[Private`\[Beta], 3]}; 
      Private`horngam = Private`HornFull[Private`\[Alpha], Private`\[Beta]]; 
      Private`gamma1min = Part[Private`horngam, 1, 1]; 
      Private`gamma1max = Part[Private`horngam, 1, 2]; 
      Private`gamma2min = Part[Private`horngam, 2, 1]; 
      Private`gamma2max = Part[Private`horngam, 2, 2]; Map[{
         Take[#, 3], 
         Last[#]}& , 
        DeleteCases[
         Flatten[
          Table[
          Private`\[Gamma]3 = 
            Total[Private`\[Alpha]] + Total[Private`\[Beta]] - (
             Private`\[Gamma]1 + Private`\[Gamma]2); {
            Private`\[Gamma]1, Private`\[Gamma]2, Private`\[Gamma]3, 
             Ramp[
              Private`magicmult[Private`la, Private`mu, 
               
               Reverse[{
                Private`\[Gamma]1 - Private`\[Gamma]2, Private`\[Gamma]2 - 
                 Private`\[Gamma]3}]]]}, {
           Private`\[Gamma]1, Private`gamma1min, Private`gamma1max}, {
           Private`\[Gamma]2, Private`gamma2min, Private`gamma2max}], 1], {
          Blank[], 
          Blank[], 
          Blank[], 0}, 1]]], Private`SU3MultiplicityYoung[
      Pattern[Private`la, 
       Blank[]], 
      Pattern[Private`mu, 
       Blank[]]] := Transpose[
      With[{
       Private`li = 
        Private`SchurProdPairMagicMethod[{
          Part[Private`la, 1] + Part[Private`la, 2], 
           Part[Private`la, 2], 0}, {
          Part[Private`mu, 1] + Part[Private`mu, 2], 
           Part[Private`mu, 2], 0}]}, 
       With[{Private`n = 3}, {
         Map[PadRight[#, Private`n - 1]& , 
          Map[Private`SUreductionOnlists[#, Private`n]& , 
           Map[First, Private`li]]], 
         Map[Last, Private`li]}]]], Private`SUreductionOnlists[
      Pattern[Private`lis, 
       Blank[]], 
      Pattern[Private`n, 
       Blank[]]] := Which[Length[Private`lis] > Private`n, 
      Print["illegal input"], 
      And[
      Length[Private`lis] == Private`n, CountDistinct[Private`lis] == 1], {0},
       True, 
      Private`transposeYoungPartition[
       Private`SUreductionTr[
        Private`transposeYoungPartition[Private`lis], Private`n]]], 
    Private`transposeYoungPartition[
      Pattern[Private`li, 
       Blank[]]] := Apply[Plus, 
      Transpose[
       PadRight[
        Table[
         ConstantArray[1, 
          Part[Private`li, Private`s]], {Private`s, 1, 
          Length[Private`li]}]]], 1], Private`SUreductionTr[
      Pattern[Private`lisT, 
       Blank[]], 
      Pattern[Private`n, 
       Blank[]]] := 
    Which[First[Private`lisT] > Private`n, 0, First[Private`lisT] == 
      Private`n, 
      Private`SUreductionTr[
       Drop[Private`lisT, 1], Private`n], True, Private`lisT], 
    obladePackage`SU3MultiplicityDynkin[
      Pattern[Private`la, 
       Blank[]], 
      Pattern[Private`mu, 
       Blank[]]] := 
    With[{Private`finpar = 
       Private`SU3MultiplicityYoung[Private`la, Private`mu]}, 
      Transpose[{
        Map[Private`youngPartitionToHighestWeight[#, 3]& , 
         Part[
          Transpose[Private`finpar], 1]], 
        Part[
         Transpose[Private`finpar], 2]}]], 
    TagSet[obladePackage`SU3MultiplicityDynkin, 
     MessageName[obladePackage`SU3MultiplicityDynkin, "usage"], 
     "SU3MultiplicityDynkin[lambda, mu] returns the decomposition into \
irreducible components nu of a tensor product of two irreps lambda, mu, of \
the Lie group SU(3), given by the components of their highest weights along \
the basis of fundamental weights.\nIt uses the semi-magic algorithm (this \
only works for SU(3)). The general command is tensorproduct."], 
    Private`youngPartitionToHighestWeight[
      Pattern[Private`li, 
       Blank[]], 
      Pattern[Private`cox, 
       Blank[]]] := 
    Module[{Private`lifull = PadRight[Private`li, Private`cox]}, 
      Table[
      Part[Private`lifull, Private`i] - Part[Private`lifull, Private`i + 1], {
       Private`i, 1, Private`cox - 1}]], $CellContext`limittext = SequenceForm[
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
menu)."}}]],
 GeneratedCell->True,
 CellAutoOverwrite->True,
 CellChangeTimes->{3.7919152622218227`*^9},
 CellLabel->"",ExpressionUUID->"39521a54-fa33-46fa-bce9-3cc4f9db6b4f"]
},
WindowSize->{1431, 808},
WindowMargins->{{124, Automatic}, {Automatic, 64}},
FrontEndVersion->"12.0 for Mac OS X x86 (64-bit) (April 8, 2019)",
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
Cell[1488, 33, 353752, 6284, 1315, InheritFromParent,ExpressionUUID->"39521a54-fa33-46fa-bce9-3cc4f9db6b4f"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature yxTWcDfyxVOXmCKZ4@hn2bAw *)

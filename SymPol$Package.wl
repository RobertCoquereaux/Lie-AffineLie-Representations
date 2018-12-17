(* ::Package:: *)

(* ::Text:: *)
(*Sympol$Package: a Mathematica package for symmetric polynomials (general, Jack, Schur, zonal, etc.)*)
(*Version 1.0 (September 8, 2018)*)
(*Version 1.1 (September 13, 2018)*)
(*Version 1.2 (September 28, 2018)*)
(*Version 1.3 (December 18, 2018)*)
(*Robert Coquereaux*)
(**)
(*See the documentation (usage and examples)  in the companion file  SymPol$Examples.nb*)


(* ::Text:: *)
(*Disclaimer*)
(*This package should be considered as a private document made available on line by its author.*)
(*The code can be freely downloaded but it is provided "as is" without warranty of any kind about its reliability.*)


(* ::Text:: *)
(*Caveats*)
(*The functions defined in this package are usually not protected against the use of incorrect arguments.*)
(*If an input does not follow the syntax precisely described in the usage command, strange (and incorrect) results can appear.*)
(*Some commands may take a lot of time and large computations may easily exhaust the available memory.*)
(*The underlying philosophy was to perform calculations for Jack polynomials and recover the results for Schur, Zonal, etc, as particular cases.*)
(*Admittedly, for some specific problems (for instance the calculation of structure constants aka Littlewood-Richardson coefficients), and especially in the case of Schur polynomials,  other algorithms that run much faster (using honeycombs for instance) do exist.*)
(*Criticisms and suggestions are welcome : send a note to robert.coquereaux@gmail.com*)
(**)


BeginPackage["SymPol$Package`"];


(* ::Section::Closed:: *)
(*General symmetric polynomials*)


(* ::Subsection::Closed:: *)
(*Usage (shared symbols)*)


$x::usage="";
$e::usage="";
$p::usage="";
$\[Alpha]::usage="";
$m::usage="";
$s::usage="";
$y::usage="";
$u::usage="";
JJ::usage="";
JC::usage="";
JP::usage="";
ZJ::usage="";
ZC::usage="";
ZP::usage="";
QP::usage="";


(* ::Subsection::Closed:: *)
(*Modified TraditionalForm for declared indexed variables $x, $e, $p*)


Begin["`Private`"];
defineIndexed$Variable[$var_]:=Format[$var[i_],TraditionalForm]=Subscript[StringDrop[ToString[$var],1],i]
Unprotect[$x,$e,$p,$y,$u,$\[Alpha],$m,$s];
defineIndexed$Variable[$x];defineIndexed$Variable[$e];defineIndexed$Variable[$p];defineIndexed$Variable[$y];defineIndexed$Variable[$u];
Format[$\[Alpha],TraditionalForm]= "\[Alpha]";
Format[$m,TraditionalForm]= "m";
Format[$s,TraditionalForm]= "s";
Protect[$x,$e,$p,$y,$u,$\[Alpha],$m,$s];
End[];


(* ::Subsection::Closed:: *)
(*Young partitions and monomials - Variables are $x[j]*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


monomial::usage="monomial[list] is a monomial in $x[j] variable with powers specifies by list";
myCompositions::usage="myComposition[n,k]gives a list of all compositions of integer n into k parts";
ExtendedYoungPartitions::usage="ExtendedYoungPartitions[n,k]gives a list of all extended partitions (trailing zeros) of integer n into k parts.
The command ExtendedYoungPartitions[n] is equivalent to ExtendedYoungPartitions[n,n]";
restrictPartition::usage="restrictPartition[list] converts an extended partition (list) to an integer partition, dropping the trailing zeros";
extendPartition::usage="extendPartition[list] converts an integer partition (list) or an extended partition (list) to an extended partition with a number of trailing zeros such that the length of the new list is equal to the total of the partition.
extendPartition[list,len] converts an integer partition or an extended partition to an extended partition of length (len)";
myModPartition::usage="myModPartition[list] reduces the partition list mod {1,1,...1} keeping the length";
highestWeightToReverseColumns::usage="";
highestWeightToYoungPartition::usage="If list is the list (of length n-1) of components of a dominant weight of SU(n) in the Dynkin basis (basis of fundamental weights)
highestWeightToYoungPartition[list] returns the corresponding (Young) partition (possibly extended) of length n-1. The lengths of both lists are the same.";
highestWeightToExtendedYoungPartition::usage="If list is the list (of length n-1) of components of a dominant weight of SU(n) in the Dynkin basis (basis of fundamental weights)
highestWeightToExtendedYoungPartition[list] returns the corresponding extended (Young) partition of length n (last component is 0).";
youngPartitionToHighestWeight::usage="youngPartitionToHighestWeight[list,cox] converts a partition (extended or not) to Dynkin labels for the Lie group SU(cox). The result is a list of length cox-1.";
ConjugatePartition::usage="ConjugatePartition[list] gives the conjugate integer partition of the partition (extended or not) defined by list ";
horizontalStripSkewPartitions::usage="horizontalStripSkewPartitions[al] where al is a partition (list) gives the list all partitions be such that the skew partition al/be is a horizontal strip";
tableauCoordinates::usage="tableauCoordinates[list] gives the list of rectangular coordinates of all the boxes of the Young diagram defined by the partition list";
hook::usage="hook[list,i,j] gives the hook of the box of coordinates (i,j) in the Young diagram determined by the partition list";
lowerhook::usage="lowerhook[list,i,j,$\[Alpha]] gives the lower $\[Alpha]-hook of the box of coordinates (i,j) in the Young diagram determined by the partition list";
upperhook::usage="upperhook[list,i,j,$\[Alpha]] gives the upper $\[Alpha]-hook of the box of coordinates (i,j) in the Young diagram determined by the partition list";
jcoef::usage="jcoef[list,$\[Alpha]] is the product of all lower and upper alpha-hooks of the Young diagram determined by the partition list";
ptojcoef::usage="ptojcoef[list,$\[Alpha]] is the same as jcoef[list,$\[Alpha]]. It converts Jack polynomials from the normalization P to the normalization J (James)";
ptoccoef::usage="converts Jack polynomials from the normalization P to the normalization C (Constantine)";
jtoccoef::usage="converts Jack polynomials from the normalization J (James) to the normalization C (Constantine)";
cjames::usage="";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
makevariables[var_,n_]:=Table[var[i],{i,1,n}]
monomial[list_]:=Product[$x[i]^list[[i]], {i,Length[list]}]
monomial[\[Eta]_,var_]:=Product[var[i]^\[Eta][[i]],{i,Length[\[Eta]]}]
myCompositions[n_Integer,k_Integer]:=((#1[[2]]-#1[[1]]-1&)/@Partition[Join[{0},#1,{n+k}],2,1]&)/@Subsets[Range[n+k-1],{k-1}]
ExtendedYoungPartitions[nbox_,nrow_]:=Map[PadRight[#,nrow]&,IntegerPartitions[nbox,nrow]]
ExtendedYoungPartitions[nbox_]:=ExtendedYoungPartitions[nbox,nbox]
restrictPartition[{0}]={0};
restrictPartition[{Repeated[0]}]={0};
restrictPartition[lis_]:=Module[{strictpart=lis},While[Last@strictpart==0,strictpart=Most@strictpart];strictpart]
extendPartition[lis_]:= PadRight[#,Total[lis]]&[restrictPartition[lis]]
extendPartition[lis_, nvar_]:= PadRight[#,nvar]&[restrictPartition[lis]]
myModPartition[li_]:= Module[{val=li}, val-= Last[val]](* assumes that li is a partition, the smallest component is the last *)
highestWeightToReverseColumns[w_]:=Table[Table[i,{w[[i]]}],{i,1,Length[w]}](* Warning: column sizes are from the end to the beginning *)
highestWeightToYoungPartition[w_?IntegerQ]:=w 
(* w being usually a list of integers I do not remember why this particular definition where w is an integer should be useful ? *)
highestWeightToYoungPartition[w_,cox_]:=
If[Length[w]!= cox-1, Print["Incorrect number of weight components"]; Return[],
Table[Length[Flatten[Take[highestWeightToReverseColumns[w],-j]]],{j,cox-1,1,-1}]]
(* This command highestWeightToYoungPartition with two arguments seems useless because it is superseded by the next (which uses only one argument) 
but we have to keep it and initialize it because pieces of the code use this variant with two arguments. It is also used in older files. 
This should be fixed. *)
highestWeightToYoungPartition[w_?(ListQ[#]&)]:= With[{cox = Length[w]+1},
Table[Length[Flatten[Take[highestWeightToReverseColumns[w],-j]]],{j,cox-1,1,-1}]]
highestWeightToExtendedYoungPartition[w_?(ListQ[#]&)]:=extendPartition[highestWeightToYoungPartition[w],Length[w]+1]
youngPartitionToHighestWeight[li_,cox_]:=Module[{lifull=PadRight[li,cox]},
Table[lifull[[i]]-lifull[[i+1]],{i,1,cox-1}]]
ConjugatePartition[{0}]={0};
ConjugatePartition[l_List]:=Module[{i,r=Reverse[l],n=Length[l]},Table[n+1-Position[r,_?(#>=i&),Infinity,1][[1,1]],{i,l[[1]]}]]
(* The undocumented Internal`TransposeIntegerPartition does exist but its output is in tallied form. We shall not use it. *)
horizontalStripSkewPartitions[lis_]:= Map[restrictPartition,With[{lisext=Append[lis,0]},
Reverse/@Tuples[Apply[Range,Table[Take[Reverse[lisext],{i,i+1}],{i,1,Length[lisext]-1}],1]]]]
tableauCoordinates[list_]:=Module[{len=Length[list]}, Flatten[Table[Tuples[{{p},Range[list[[p]]]}],{p,len}],1]]
hook[nu_,i_,j_]:=With[{nuprime=ConjugatePartition[nu]},nuprime[[j]]-i+(nu[[i]]-j+1)]
upperhook[nu_,i_,j_,alpha_]:=With[{nuprime=ConjugatePartition[nu]},nuprime[[j]]-i+alpha(nu[[i]]-j+1)]
lowerhook[nu_,i_,j_,alpha_]:=With[{nuprime=ConjugatePartition[nu]},nuprime[[j]]-i+1+alpha(nu[[i]]-j)]
lowhookcoef[partition_,alpha_]:=With[{list=partition},Apply[Times,Table[lowerhook[list,I[[1]],I[[2]],alpha],{I,tableauCoordinates[list]}]]](* this coef is also the ptojcoef sometimes denoted c(p,a)  *)
upperhookcoef[partition_,alpha_]:=With[{list=partition},Apply[Times,Table[upperhook[list,I[[1]],I[[2]],alpha],{I,tableauCoordinates[list]}]]](*  this coef is sometimes denoted cprime(p,a) *)
jcoef[partition_,alpha_]:=lowhookcoef[partition,alpha]upperhookcoef[partition,alpha]
ptojcoef[partition_,alpha_]:=lowhookcoef[partition,alpha](* synonymous *)
ptoccoef[partition_,alpha_]:= With[{k=Total[partition]},alpha^k  k! /upperhookcoef[partition,alpha]]
jtoccoef[partition_,alpha_]:=With[{k=Total[partition]},alpha^k  k! /jcoef[partition,alpha]]
cjames[kap_] :=Module[{ell=Length[kap], k=Total[kap]}, (2k-1)!!* 2^k *  k! * Product[2 kap[[i]] - 2 kap[[j]]\[NonBreakingSpace]- i+j,{i,1,ell-1},{j,i+1,ell}]/Product[(2 kap[[i]] + ell -i)!,{i,1,ell}]]
cjames[partition_,alpha_]:= With[{k=Total[partition]},(2k-1)!! jtoccoef[partition,alpha]]
(* So   cjames[\[Lambda]] ==  cjames[\[Lambda], 2] *)
End[];


(* ::Subsection::Closed:: *)
(*Varia (SU(n) reduction)*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


SUreductionOnpol::usage="SUreductionOnpol[pol_, n_, symb_] where n is a positive integer, pol being a linear combination of terms of the kind
Xli], where X can be any symbol such as $s, JJ, JC, JP, ZJ, etc., li being an extended partition of length n+1,  and where symb is the chosen symbol X, converts the given expression pol
into a list of extended partitions of length n, each partition, with multiplicity,
being obtained from the corresponding argument li by substracting (1,1,...1) once or several times (for instance 7 ZP[{5,3,2}] gives {{3,1},7} ).
If the last argument X is omitted, it is assumed to be $s. ";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
transposeYoungPartition[li_] := 
 Apply[Plus, 
  Transpose[
   PadRight[Table[ConstantArray[1, li[[s]]], {s, 1, Length[li]}]]], 1]
   (* We have already defined ConjugatePartition! This should be the same! *)

SUreductionTr[lisT_, n_] := 
 Which[First[lisT] > n, 0, First[lisT] == n, 
  SUreductionTr[Drop[lisT, 1], n], True, lisT]
  (* assume that the lists have a length which is not bigger than n. todo *) 
  
SUreductionOnlists[lis_, n_] := 
 Which[Length[lis] > n, Print["illegal input"], 
  Length[lis] == n && CountDistinct[lis] == 1, {0}, True, 
  transposeYoungPartition[
   SUreductionTr[transposeYoungPartition[lis], n]]]
   
addgathered[gathli_] := {First[gathli[[1]]], Total@Map[Last, gathli]}
   
SUreductionOnpol[pol_,n_]:=Module[{var,coefs,varpart,reducedvarpart,riffled},
var=DeleteCases[Variables[pol],$\[Alpha]];
coefs=Coefficient[pol,var];
varpart=var/. $s-> Identity;
reducedvarpart=Map[PadRight[#,n-1]&,Map[SUreductionOnlists[#,n]&,varpart]];
riffled=Partition[Riffle[reducedvarpart,coefs],2];
Map[addgathered,Gather[riffled,First[#1]==First[#2]&]]
]

SUreductionOnpol[pol_,n_, symb_]:=Module[{var,coefs,varpart,reducedvarpart,riffled},
var=DeleteCases[Variables[pol],$\[Alpha]];
coefs=Coefficient[pol,var];
varpart=var/. symb-> Identity;
reducedvarpart=Map[PadRight[#,n-1]&,Map[SUreductionOnlists[#,n]&,varpart]];
riffled=Partition[Riffle[reducedvarpart,coefs],2];
Map[addgathered,Gather[riffled,First[#1]==First[#2]&]]
]
End[];


(* ::Subsection::Closed:: *)
(*Elementary symmetric polynomials $e[j] and elementarySum[partition]*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


elementarySum::usage="elementarySum[d,n] is the sum of all distinct products of d distinct variables chosen among n variables. The result is a polynomial of total degree d. Variables are called $x.
elementarySum[list] extends this definition to the partition list: elementarySum[{j,0,0..,0}] where {j,0,0..,0} is of length s is equivalent to elementarySum[j,s] ";
tableOfElementarySymPol::usage="tableOfElementarySymPol[nvar] gives the table of elementary symmetric polynomials with nvar variables";
toElementarySymPol::usage="toElementarySymPol[pol] converts an arbitrary symmetric polynomial pol to elementary symmetric polynomials called $e[j]";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
elementarySum[deg_,nvar_]:=SymmetricPolynomial[deg,Table[$x[i],{i,nvar}]]
elementarySum[extendedpartition_]:= With[{n=Length[extendedpartition]}, Product[elementarySum[p,n],{p,restrictPartition[extendedpartition]}]]
tableOfElementarySymPol[deg_]:=TableForm[Table[elementarySum[s,deg],{s,1,deg}],TableDirections->Column]
toElementarySymPol[pol_, len_]:=Module[{pairofpol=
SymmetricReduction[pol,Table[$x[j],{j,1,len}],Table[$e[j],{j,1,len}]]}, If[TrueQ[pairofpol[[2]]== 0],pairofpol[[1]],Print["Not a symmetric polynomial in ", len," variables."]]]
toElementarySymPol[pol_]:=Expand@toElementarySymPol[pol, Length[DeleteCases[Variables[pol],$\[Alpha]]]]
End[];


(* ::Subsection::Closed:: *)
(*Monomial symmetric polynomials $m[partition] and monomialSum[partition]*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


coefsympol::usage="";
monomialSum::usage="monomialSum[list] is the symmetric polynomial defined by the monomial associated with the (Young ie possibly extended) partition list.
monomialSum[{1,1,..1,1,0,...,0}] is the same as elementarySum[n1,n0+n1] where n1 is the number of 1's and n0 the number of 0's in {1,1,..1,,1,0,...,0}";
listOfMonomialSymPol::usage="listOfMonomialSymPol[deg,nbvar] gives the list of monomial symmetric polynomials of degree deg, with nbvar variables";
tableOfMonomialSymPol::usage="tableOfMonomialSymPol[deg,nbvar] gives the table of monomial symmetric polynomials of degree deg, with nbvar variables";
toMonomialSymPol::usage="toMonomialSymPol[pol] converts a symmetric polynomial in terms of a sum of monomial symmetric polynomials. Monomial symmetric polynomials are denoted m in output";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
coefsympol[partition_]:=Apply[Times,Factorial[Map[Last,Tally[partition]]]]
myMonomialSymmetricPolynomial[partition_,var_]:=AugmentedSymmetricPolynomial[partition,Table[var[j],{j,1,Length[partition]}]]/coefsympol[partition]
myMonomialSymmetricPolynomial[partition_]:=myMonomialSymmetricPolynomial[partition,$x] (* default is $x *)
(* We define monomialSum as a synonymous of Expand@myMonomialSymmetricPolynomial *)
monomialSum[part_,var_]:=Expand@myMonomialSymmetricPolynomial[part,var]
monomialSum[extendedpartition_]:=Expand[myMonomialSymmetricPolynomial[extendedpartition]]
listOfMonomialSymPol[deg_,nbvar_]:=Map[Factor,Map[myMonomialSymmetricPolynomial[#,$x]&,ExtendedYoungPartitions[deg,nbvar]]]
tableOfMonomialSymPol[deg_,nbvar_]:=TableForm[With[{partition=ExtendedYoungPartitions[deg,nbvar]},
Transpose[{partition,Map[Factor,Map[myMonomialSymmetricPolynomial[#,$x]&,partition]]}]],TableDirections->Column]
(* The monomial symmetric polynomials are denoted \[OpenCurlyDoubleQuote]m\[CloseCurlyDoubleQuote] in output*)
toMonomialSymPol[f_]:=Expand@Module[{var=Variables[f],nbvar,deg,li,partition,basis,len,a,sol},nbvar=Length[var];deg=Max[Cases[CoefficientRules[f],v_?VectorQ:>Total[v],2]];partition=ExtendedYoungPartitions[deg,nbvar];basis=listOfMonomialSymPol[deg,nbvar];len=Length[basis];sol=SolveAlways[f==\!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(len\)]\(a[i]\ basis[\([i]\)]\)\),var];(Table[a[i],{i,1,len}]/. Flatten[sol]).$m/@ExtendedYoungPartitions[deg,nbvar]]
End[];


(* ::Subsection::Closed:: *)
(*Complete symmetric polynomials  h[partition] and completeSum[partition]*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


completeSum::usage="completeSum[deg,nvar] returns the sum of the list of monomial symmetric polynomials listOfMonomialSymPol[deg,nbvar].
completeSum[list] where list denotes an extended partition is the product of the complete sums given by completeSum[deg, Length[list]] where deg runs over the elements of list";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
completeSum[deg_, nvar_]:= Total@listOfMonomialSymPol[deg,nvar]
completeSum[extendedpartition_]:=Product[completeSum[deg, Length[extendedpartition]],{deg,extendedpartition}]
End[];


(* ::Subsection::Closed:: *)
(*Power-sum symmetric polynomials $p[j] and powerSum[partition]*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


powerSum::usage="powerSums[deg,nvar] is the power sum symmetric polynomial (Newton) of degree deg and with nvar variables. When applied to an extended partition mu = {mu1,mu2,...} it returns the product p[mu1] p[mu2]... of the components, the number of variables is the length of mu. The result is a polynomial in $x[j]";
elemsymtopow::usage="elemsymtopow[s] converts the elementary symmetric polynomial $e[s] to power-sums symmetric polynomials called $p[j]";
toPowerSums::usage="toPowerSums[pol] expresses a symmetric polynomial pol, with variables $x[i] in terms of power sums. The latter are denoted $p[j] in output";
powsym::usage="powsym[list] returns the product of symbols $p[j]";
algebraicRelationsForPowSum::usage="algebraicRelationsForPowSum[s,nbvar] returns a rule expressing $p[s] in terms of the $p[j], j< nbvar, when the number of $x variables nbvar is smaller than s";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
powerSum[deg_,nvar_]:=PowerSymmetricPolynomial[deg,Table[$x[j],{j,nvar}]]
myPowerSums[deg_,nvar_]:=PowerSymmetricPolynomial[deg,Table[$x[j],{j,nvar}]](* for compatibility *)
myPowerSums[n_,p_,{x_}]:=Sum[x[k]^n,{k,p}](* for compatibility *)
powerSum[extendedpartition_]:= With[{n=Length[extendedpartition]}, Product[myPowerSums[p,n],{p,restrictPartition[extendedpartition]}]]
(* elemsymtopow converts an elementary symmetric polynomial $e[s] to power-sums symmetric polynomials called $p[j] :*)
(* We do it using the Bell complete exponential polynomials as an intermediate step *)
BellCompleteExpPol[n_,{y_}]:=Sum[BellY[n,k,Table[y[i],{i ,1,n-k+1}]],{k,1,n}]
BellCompleteExpPol[l_List]:= With[{n=Length[l]}, Sum[BellY[n,k,Table[l[[i]],{i ,1,n-k+1}]],{k,1,n}]]
elemsymtopow[s_]:=((-1)^s/s!)BellCompleteExpPol[Table[-(i-1)!$p[i],{i ,1,s}]]
(* toPowerSums converts an arbitrary symmetric polynomial pol to power sums symmetric polynomials $p[j] : we do it in two steps :*)
toPowerSums[pol_,len_]:= toElementarySymPol[pol,len]/. {$e[z_]:>elemsymtopow[z]}
toPowerSums[pol_]:= toElementarySymPol[pol]/. {$e[z_]:>elemsymtopow[z]}
powsym[list_]:= Product[$p[j],{j,list}]
algebraicRelationsForPowSum[s_,nbvar_]:=If[nbvar<s ,Print["If the number of variables is equal to ", nbvar , " we have the relation: "];
{Rule[$p[s], powerSum[s,nbvar]//toPowerSums//Simplify]}, {}]
End[];


(* ::Subsection::Closed:: *)
(*From named symmetric polynomials $e[j], $p[j], $m[part], etc. to explicit polynomials in $x[j]*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


toPolbasic::usage="toPolbasic[ex,nb] where ex is an expression involving $x[partition], $e[partition], $p[partition], $m[partition], $s[partition], JP[partition], ZP[partition], QP[partition], etc. converts this expression to an explicit polynomial in the nb variables $x[j].
In practice one should use toPol rather than toPolbasic: usually the former first simplifies the argument (a simplified shifted partition) before calling the latter. "; 

toPol::usage="toPolbasic[ex,nb] where ex is an expression involving $x[partition], $e[partition], $p[partition], $m[partition], $s[partition], JP[partition],ZP[partition], QP[partition], etc. converts this expression to an explicit polynomial in the nb variables $x[j]. 
toPol[ex,nb] applies toPolbasic to the expression ex after having simplified the given partition (it produces a simplified shifted partition) before calling  toPolbasic).";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
toPolbasic[0]=0;
toPolbasic[expr_,nbv_]:=expr /. {$e[n_]:>SymmetricPolynomial[n,Table[$x[j],{j,1,nbv}]], $p[n_]:>Sum[$x[k]^n,{k,nbv}], $m[li_]:>monomialSum[li,$x], $s[li_] :> SchurPol[li],
ZJ[li_] :> ZonalPolJ[li], ZC[li_] :> ZonalPolC[li], ZP[li_] :> ZonalPolP[li]}
End[];


(* ::Section::Closed:: *)
(*Jack polynomials*)


(* ::Subsection::Closed:: *)
(*Method using sum over sub partitions : JackPolJ[partition], JackPolC[partition] and JackPolP[partition]*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


JackPolJ::usage="JackPolJ[kap] where kap is an extended partition (trailing 0's) is the Jack polynomial with normalization J determined by the partition kap, with parameter $\[Alpha], the number of variables, called $x[j] is Length[kap]";
JackPolC::usage="JackPolC[kap] where kap is an extended partition (trailing 0's) is the Jack polynomial with normalization C determined by the partition kap, with parameter $\[Alpha], the number of variables, called $x[j] is Length[kap]"
JackPolP::usage="JackPolP[kap] where kap is an extended partition (trailing 0's) is the Jack polynomial with normalization P determined by the partition kap, with parameter $\[Alpha], the number of variables, called $x[j] is Length[kap]"


(* ::Subsubsection::Closed:: *)
(*Code*)


(* We use a variant of the Pieri's formula for Jack polynomial that is described by Macdonald *)
(* This is a recurrence algorithm : to get Jack of a partition we have to use Jack for all sub-partitions that are such that the corresponding skew partition is a horizontal strip.
For this reason one has to keep the intermediate values (otherwise the timing would increase a lot !).
The results are explicit polynomials in $x[j] that can be converted and expanded afterwards on various basis of symmetric polynomials.*)
Begin["`Private`"];
jackBcoef[kappa_,mu_,nu_,J_,$\[Alpha]]:=Module[{i=J[[1]],j=J[[2]],kapprime=ConjugatePartition[kappa],muprime=ConjugatePartition[mu],lmax},
lmax=Max[Length[muprime],Length[kapprime]];
kapprime=PadRight[kapprime,lmax];
muprime=PadRight[muprime,lmax];If[kapprime[[j]]==muprime[[j]],upperhook[nu,i,j,$\[Alpha]],lowerhook[nu,i,j,$\[Alpha]]]]
jackBprodnum[kap_,subkap_,$\[Alpha]]:=Module[{},Product[jackBcoef[kap,subkap,kap,J,$\[Alpha]],{J,tableauCoordinates[kap]}]]
jackBprodden[kap_,subkap_,$\[Alpha]]:=Module[{},Product[jackBcoef[kap,subkap,subkap,J,$\[Alpha]],{J,tableauCoordinates[subkap]}]]
betacoef[lambda_,mu_,$\[Alpha]]:=jackBprodnum[lambda,mu,$\[Alpha]]/jackBprodden[lambda,mu,$\[Alpha]]
skewweight[lis1_,lis2_]:=Total[lis1]-Total[lis2]
(* Start the  recurrence -- boundary values -- : *)
JackPolJ[kap_,{},$\[Alpha]]:=0
JackPolJ[{},{x__},$\[Alpha]]:=1
JackPolJ[{0},{x__},$\[Alpha]]:=1
JackPolJ[{1},{x__},$\[Alpha]]:=Total[{x}]
JackPolJ[{2},{x__},$\[Alpha]]:=(Total[{x}]^2-Total[{x}^2]) +(1+$\[Alpha])Total[{x}^2] //Expand (* is this used  ? *)
JackPolJ[{k_?IntegerQ},{x_},$\[Alpha]]:=x^k Product[(1+s $\[Alpha]),{s,1,k-1}]
(* JackPolJ[lambda_,{x__},$\[Alpha]]:= Once[Together[If[Length[lambda]> Length[{x}],0,
Sum[JackPolJ[mu,Most[{x}],$\[Alpha]]Last[{x}]^skewweight[lambda,mu] * betacoef[lambda,mu,$\[Alpha]],{mu,horizontalStripSkewPartitions[lambda]}]]]]
*)
JackPolJ[lambda_,{x__},$\[Alpha]]:= JackPolJ[lambda,{x},$\[Alpha]]= Together[If[Length[lambda]> Length[{x}],0,
Sum[JackPolJ[mu,Most[{x}],$\[Alpha]]Last[{x}]^skewweight[lambda,mu] * betacoef[lambda,mu,$\[Alpha]],{mu,horizontalStripSkewPartitions[lambda]}]]]
(* JackPolJ[\[Kappa]_]:=JackPolJ[\[Kappa]]=Once[JackPolJ[restrictPartition[\[Kappa]],makevariables[$x,Length[\[Kappa]]],$\[Alpha]]]*)
JackPolJ[\[Kappa]_]:=JackPolJ[\[Kappa]]=JackPolJ[restrictPartition[\[Kappa]],makevariables[$x,Length[\[Kappa]]],$\[Alpha]]
(* Other normalizations of Jack polynomials (one first determines JackPolJ which is the normalization J (for James))*)
JackPolP[lambda_,{x___},$\[Alpha]]:=JackPolP[lambda,{x},$\[Alpha]]=JackPolJ[lambda,{x},$\[Alpha]]/ptojcoef[lambda,$\[Alpha]]
JackPolP[\[Kappa]_] :=JackPolP[\[Kappa]] = JackPolJ[\[Kappa]] /ptojcoef[\[Kappa],$\[Alpha]]
JackPolC[lambda_,{x___},$\[Alpha]]:=JackPolC[lambda,{x},$\[Alpha]]=JackPolJ[lambda,{x},$\[Alpha]]*jtoccoef[lambda,$\[Alpha]]
JackPolC[\[Kappa]_] := JackPolC[\[Kappa]] =JackPolJ[\[Kappa]] * jtoccoef[\[Kappa],$\[Alpha]]
End[];


(* ::Subsection::Closed:: *)
(*Convert between normalizations JX for named Jack polynomials JJ, JC, JP*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


JXtoJJ::usage="JXtoJJ[expression] converts a sum of zonal polynomials written as JP[partition], for the normalization P,
or JC[partition], for the normalization C, to a sum of JJ[partition], written with the normalization J";
JXtoJC::usage="JXtoJC[expression] converts a sum of zonal polynomials written as JP[partition], for the normalization P,
or JJ[partition], for the normalization J, to a sum of JC[partition], written with the normalization C";
JXtoJP::usage="JXtoJP[expression] converts a sum of zonal polynomials written as JJ[partition], for the normalization J,
or JC[partition], for the normalization C, to a sum of JP[partition], written with the normalization P";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
ConsToJames[JC[list_]]:=With[{coef= jtoccoef[list,$\[Alpha]]}, coef*JJ[list]]
PToJames[JP[list_]]:=With[{coef= 1/ptojcoef[list,$\[Alpha]]}, coef*JJ[list]]
JamesToCons[JJ[list_]]:=With[{coef=1/jtoccoef[list,$\[Alpha]]}, coef * JC[list]]
PToCons[JP[list_]]:=With[{coef=1/ptoccoef[list,$\[Alpha]]}, coef * JC[list]]
JamesToP[JJ[list_]]:=With[{coef= ptojcoef[list,$\[Alpha]]}, coef*JP[list]]
ConsToP[JC[list_]]:=With[{coef= ptoccoef[list,$\[Alpha]]}, coef*JP[list]]
JXtoJJ[expression_]:= expression /. {JC[any_]:> ConsToJames[JC[any]], JP[any_]:> PToJames[JP[any]] }
JXtoJC[expression_]:= expression /. {JJ[any_]:> JamesToCons[JJ[any]], JP[any_]:> PToCons[JP[any]] }
JXtoJP[expression_]:= expression /. {JJ[any_]:> JamesToP[JJ[any]], JC[any_]:> ConsToP[JC[any]] }
End[];


(* ::Subsection::Closed:: *)
(*JackPolX in terms of monomial symmetric polynomials*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


JackJtoMonomialSymPol::usage="JackJtoMonomialSymPol[list] gives the Jack polynomial with normalization J and parameter $\[Alpha], associated with the partition list, in terms of monomial symmetric polynomials ";
JackCtoMonomialSymPol::usage="JackCtoMonomialSymPol[list] gives the Jack polynomial with normalization C and parameter $\[Alpha], associated with the partition list, in terms of monomial symmetric polynomials ";
JackPtoMonomialSymPol::usage="JackPtoMonomialSymPol[list] gives the Jack polynomial with normalization P and parameter $\[Alpha], associated with the partition list, in terms of monomial symmetric polynomials ";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
toMonomialSymPolSAjack[f_,$\[Alpha]]:=Module[{var=Variables[f],nbvar,deg,li,part,basis,len,a,sol},var=DeleteCases[var,$\[Alpha]];
nbvar=Length[var];
deg=Max[Cases[CoefficientRules[f,makevariables[$x,nbvar]],v_?VectorQ:>Total[v],2]];
part=ExtendedYoungPartitions[deg,nbvar];
basis=listOfMonomialSymPol[deg,nbvar];
len=Length[basis];
sol=Solve[!Eliminate[!f==\!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(len\)]\(a[i]\ basis[\([i]\)]\)\),var],Table[a[i],{i,1,len}]];
(Table[a[i],{i,1,len}]/. Flatten[sol]).$m/@ExtendedYoungPartitions[deg,nbvar]]
jackJDecompositionM[strictpartition_]:=toMonomialSymPolSAjack[ JackPolJ[strictpartition,makevariables[$x,Total[strictpartition]],$\[Alpha]],$\[Alpha]]
jackJDecompositionM[strictpartition_,$\[Alpha]]:=toMonomialSymPolSAjack[ JackPolJ[strictpartition,makevariables[$x,Total[strictpartition]],$\[Alpha]],$\[Alpha]]
jackCDecompositionM[strictpartition_]:=toMonomialSymPolSAjack[ JackPolC[strictpartition,makevariables[$x,Total[strictpartition]],$\[Alpha]],$\[Alpha]]
jackCDecompositionM[strictpartition_,$\[Alpha]]:=toMonomialSymPolSAjack[ JackPolC[strictpartition,makevariables[$x,Total[strictpartition]],$\[Alpha]],$\[Alpha]]
jackPDecompositionM[strictpartition_]:=toMonomialSymPolSAjack[ JackPolP[strictpartition,makevariables[$x,Total[strictpartition]],$\[Alpha]],$\[Alpha]]
jackPDecompositionM[strictpartition_,$\[Alpha]]:=toMonomialSymPolSAjack[ JackPolP[strictpartition,makevariables[$x,Total[strictpartition]],$\[Alpha]],$\[Alpha]]
JackJtoMonomialSymPol=jackJDecompositionM;(* renaming *)
JackCtoMonomialSymPol=jackCDecompositionM;(* renaming *)
JackPtoMonomialSymPol=jackPDecompositionM;(* renaming *)
End[];


(* ::Subsection::Closed:: *)
(*JackPolX in terms of elementary symmetric polynomials*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


JackJtoElementarySymPol::usage="JackJtoElementarySymPol[list] gives the Jack polynomial with normalization J and parameter $\[Alpha], associated with the partition list, in terms of elementary symmetric polynomials ";
JackCtoElementarySymPol::usage="JackCtoElementarySymPol[list] gives the Jack polynomial with normalization C and parameter $\[Alpha], associated with the partition list, in terms of elementary symmetric polynomials ";
JackPtoElementarySymPol::usage="JackPtoElementarySymPol[list] gives the Jack polynomial with normalization P and parameter $\[Alpha], associated with the partition list, in terms of elementary symmetric polynomials ";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
jackJDecompositionE[strictpartition_]:=Simplify[toElementarySymPol[JackPolJ[strictpartition]]]
jackCDecompositionE[strictpartition_]:=Simplify[toElementarySymPol[JackPolC[strictpartition]]]
jackPDecompositionE[strictpartition_]:=Simplify[toElementarySymPol[JackPolP[strictpartition]]]
JackJtoElementarySymPol=jackJDecompositionE;(* renaming *)
JackCtoElementarySymPol=jackCDecompositionE;(* renaming *)
JackPtoElementarySymPol=jackPDecompositionE;(* renaming *)
End[];


(* ::Subsection::Closed:: *)
(*JackPolX in terms of power-sums polynomials*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


JackJtoPowerSum::usage="JackJtoPowerSum[list] gives the Jack polynomial with normalization J and parameter $\[Alpha], associated with the partition list, in terms of power-sums symmetric polynomials ";
JackCtoPowerSum::usage="JackCtoPowerSum[list] gives the Jack polynomial with normalization C and parameter $\[Alpha], associated with the partition list, in terms of power-sums symmetric polynomials ";
JackPtoPowerSum::usage="JackPtoPowerSum[list] gives the Jack polynomial with normalization P and parameter $\[Alpha], associated with the partition list, in terms of power-sums symmetric polynomials ";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
jackJDecompositionP[partition_]:=jackJDecompositionP[partition]=Expand[jackJDecompositionE[ partition]/. {$e[z_]:>elemsymtopow[z]}]
jackCDecompositionP[partition_]:=jackCDecompositionP[partition]=Expand[jackCDecompositionE[ partition]/. {$e[z_]:>elemsymtopow[z]}]
jackPDecompositionP[partition_]:=jackPDecompositionP[partition]=Expand[jackPDecompositionE[ partition]/. {$e[z_]:>elemsymtopow[z]}]
JackJtoPowerSum=jackJDecompositionP;(* renaming *)
JackCtoPowerSum=jackCDecompositionP;(* renaming *)
JackPtoPowerSum=jackPDecompositionP;(* renaming *)
End[];


(* ::Subsection::Closed:: *)
(*From named symmetric polynomials to explicit polynomials in $x[j]*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


 


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
(* We have to update toPolbasic here because the symbols JackPolJ, JackPolC, JackPolP where not used when toPolbasic was first defined *)
toPolbasic[expr_, nbv_] := 
  expr /. {$e[n_] :> 
    SymmetricPolynomial[n, Table[$x[j], {j, 1, nbv}]], 
      $p[n_] :> Sum[$x[k]^n, {k, nbv}], $m[li_] :> monomialSum[li, $x], 
      JJ[li_] :> JackPolJ[li], JC[li_] :> JackPolC[li], 
   JP[li_] :> JackPolP[li]}
End[];


(* ::Subsection::Closed:: *)
(*Structure constants*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


toJackPProdPairUsingPowerSums::usage="toJackPProdPairUsingPowerSums[li1_,li2_] where li1 and li2 denote two partitions, decomposes the product of JackPolP[li1]*JackPolP[li2] on Jack polynomials (normalization P).
The arguments (explicit polynomials in the variables $x[j]) are first expressed in terms of power sums, the decomposition is then obtained in a second step. 
The obtained coefficients depend on the Jack parameter $\[Alpha].";
toJackJProdPairUsingPowerSums::usage="toJackJProdPairUsingPowerSums[li1_,li2_] where li1 and li2 denote two partitions, decomposes the product of JackPolJ[li1]*JackPolJ[li2] on Jack polynomials (normalization J).
The arguments (explicit polynomials in the variables $x[j]) are first expressed in terms of power sums, the decomposition is then obtained in a second step. 
The obtained coefficients depend on the Jack parameter $\[Alpha].";


(* ::Subsubsection::Closed:: *)
(*Code*)


(* ::Input::Initialization:: *)
Begin["`Private`"];
toJackPProdPairUsingPowerSums[li1_,li2_]:= 
Module[{li,deg1,deg2,deg,yp,pos,goodpart,sol,nbvar,listofZdecompOnPS,JP1,JP2,a,reso,nboft},
li=li1+li2;nbvar=Length[li1];(* write Warning if length li1 neq length li2 *)
deg1=Total[li1];deg2=Total[li2];deg=deg1+deg2;
yp=ExtendedYoungPartitions[deg,nbvar];
pos=Flatten@Position[Reverse[yp],li];
 goodpart=Apply[Take[yp,#]&,-pos];(* only those after pos will appear *)
JP1=Simplify@JackPtoPowerSum[li1];
JP2=Simplify@JackPtoPowerSum[li2];
listofZdecompOnPS={};
Do[AppendTo[listofZdecompOnPS,JackPtoPowerSum[goodpart[[i]]]],{i,1,pos[[1]]}];
(* reso=Resolve[ForAll[pvar=Table[$p[j],{j,1,nbvar}],JP1*JP2\[Equal]Sum[a[i] listofZdecompOnPS[[i]],{i,1,nboft}]]]; another code *)
nboft=pos[[1]];
sol=With[{alis=Table[a[j],{j,1,nboft}],pvar=Table[$p[j],{j,1,nbvar}]},
Solve[!Eliminate[!JP1*JP2==Sum[a[i] listofZdecompOnPS[[i]],{i,1,nboft}],pvar],alis]];
(* sol = Simplify@sol; *)
(Table[a[i],{i,1,pos[[1]]}]/. Flatten[sol]). JP/@goodpart
]
(* The result is a linear combination of JP[partitions] *)
toJackJProdPairUsingPowerSums[li1_,li2_]:=Module[{li,deg1,deg2,deg,yp,pos,goodpart,sol,nbvar,listofZdecompOnPS,JJ1,JJ2,a,reso,nboft},li=li1+li2;nbvar=Length[li1];deg1=Total[li1];deg2=Total[li2];deg=deg1+deg2;yp=ExtendedYoungPartitions[deg,nbvar];pos=Flatten[Position[Reverse[yp],li]];goodpart=(Take[yp,#1]&)@@(-pos);JJ1=Simplify[JackJtoPowerSum[li1]];JJ2=Simplify[JackJtoPowerSum[li2]];listofZdecompOnPS={};Do[AppendTo[listofZdecompOnPS,JackJtoPowerSum[goodpart[[i]]]],{i,1,pos[[1]]}];nboft=pos[[1]];sol=With[{alis=Table[a[j],{j,1,nboft}],pvar=Table[$p[j],{j,1,nbvar}]},Solve[!Eliminate[!JJ1 JJ2==\!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(nboft\)]\(a[i]\ listofZdecompOnPS[\([i]\)]\)\),pvar],alis]];(Table[a[i],{i,1,pos[[1]]}]/. Flatten[sol]).JJ/@goodpart]
(* The result is a linear combination of JJ[partitions] *)
End[];


(* ::Section::Closed:: *)
(*Schur polynomials*)


(* SchurPol are Jack polynomials in the normalization P, with $\[Alpha] = 1. Actually we use Jack polynomials in the normalization J with a prefactor.
Admitedly this is not the fastest method to get Schur polynomials, but it is coherent with the fact that we already defined Jack polynomials. *)


(* ::Subsection::Closed:: *)
(*Definition (using Jack polynomials)*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


SchurPol::usage="SchurPol[list] returns the Schur polynomial defined by the extended partition list (trailing 0's). Number of variables is Lenght[list].";
listOfSchurPol::usage="listOfSchurPol[deg,nbvar] returns the list of Schur polynomials of degree deg with nbvar variables";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
jtoscoef[partition_]:=With[{list=partition},Apply[Times,Table[hook[list,I[[1]],I[[2]]],{I,tableauCoordinates[list]}]]]
SchurPol[\[Kappa]_]:=SchurPol[\[Kappa]]=Cancel[( JackPolJ[\[Kappa]]/. $\[Alpha]-> 1)/jtoscoef[\[Kappa]] ]
listOfSchurPol[deg_,nbvar_]:=listOfSchurPol[deg,nbvar]=Map[SchurPol,ExtendedYoungPartitions[deg,nbvar]]
End[];


(* ::Subsection::Closed:: *)
(*Schur polynomials in terms of various kinds of symmetric polynomials*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


SchurtoElementarySymPol::usage="SchurtoElementarySymPol[list] expresses the Schur polynomial associated with the partition list, in terms of elementary symmetric polynomials ";
SchurtoMonomialSymPol::usage="SchurtoMonomialSymPol[list] expresses the Schur polynomial associated with the partition list, in terms of monomial symmetric polynomials ";
SchurtoPowerSum::usage="SchurtoPowerSum[list] expresses the Schur polynomial associated with the partition list, in terms of power-sums symmetric polynomials ";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
SchurDecompositionE[partition_]:=Simplify@toElementarySymPol[SchurPol[partition]]
SchurDecompositionM[partition_]:=toMonomialSymPolSAjack[SchurPol[partition],$\[Alpha]]/. {$\[Alpha]->1}
SchurDecompositionP[strictpartition_]:=SchurDecompositionP[strictpartition]=Expand[SchurDecompositionE[ strictpartition]/. {$e[z_]:>elemsymtopow[z]}]
SchurtoElementarySymPol=SchurDecompositionE;(* renaming *)
SchurtoMonomialSymPol=SchurDecompositionM;(* renaming *)
SchurtoPowerSum=SchurDecompositionP;(* renaming *)
End[];


(* ::Subsection::Closed:: *)
(*From explicit symmetric polynomials to Schur polynomials (called $s[partition])*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


toSchur::usage="toSchur[f], where f is a multivariate symmetric polynomial in $x[i], decomposes f on the basis of Schur polynomials called $s[{partition}]";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
toSchurSymPolSA[f_]:=
Module[{var=Variables[f],nbvar,deg,part,basis,len,a,sol},
nbvar=Length[var];
deg=Max[Cases[CoefficientRules[f],v_?VectorQ:>Total[v],2]];
part=ExtendedYoungPartitions[deg,nbvar];
basis=listOfSchurPol[deg,nbvar];
len=Length[basis];
sol=SolveAlways[f==Sum[a[i]basis[[i]],{i,1,len}],var];
If[sol =={}, toSchurSymPolGeneral[f],
(Table[a[i],{i,1,len}]/.Flatten[sol]).($s/@part)]]
(* if f is homogeneous, sol is not empty. 
If f is not homogeneous, sol will be empty and we call toSchurSymPolGeneral  *)

toSchurSymPolGeneral[f_]:=
Module[{var=Variables[f],nbvar,deg,li,li1,li2,zbli2,part,basis},
nbvar=Length[var];
deg=Max[Cases[CoefficientRules[f],v_?VectorQ:>Total[v],2]];
part=ExtendedYoungPartitions[deg,nbvar];
basis=listOfSchurPol[deg,nbvar];
li=PolynomialReduce[f,basis,var];
li1=li[[1]];
li2=li[[2]];
zbli2=toSchur[li2];
If[zbli2 === li2, Return[li1.ZJ/@part+li2], li1.$s/@part+zbli2]
](* this works even if f is not homogeneous. It is called, if needed, by toSchurSymPolSA *)
  
toSchur=toSchurSymPolSA (* renaming *)
End[];


(* ::Subsection::Closed:: *)
(*From named symmetric polynomials to explicit polynomials in $x[j]*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


 


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
(* We have to update toPolbasic here because the symbols JackPolJ, JackPolC, JackPolP where not used when toPolbasic was  defined last time *)
toPolbasic[expr_, nbv_] := 
  expr /. {$e[n_] :> 
    SymmetricPolynomial[n, Table[$x[j], {j, 1, nbv}]], 
      $p[n_] :> Sum[$x[k]^n, {k, nbv}], $m[li_] :> monomialSum[li, $x], 
      JJ[li_] :> JackPolJ[li], JC[li_] :> JackPolC[li], 
   JP[li_] :> JackPolP[li], 
   $s[li_]  :> SchurPol[li]}
End[];


(* ::Subsection::Closed:: *)
(*Structure constants*)


(* The fastest method to decompose a product of Schur polynomials on the basis of Schur polynomials is - by far - to use some variant of the honeycomb technique.
This is NOT what we do here (and we do not manipulate Young diagrams either) : here we decompose an explicit product on the basis, by using SolveAlways (we could use PolynomialReduce but SolveAlways seems faster).
Calculations are not fast. However the method can be adapted immediately to other situations (zonal polynomials, quaternionic polynomials, and more generally Jack polynomials) where the honeycomb technique cannot be used. *)
(* Another method using a variant of the Hall scalar product will be given in another section *)
(* A very fast method to get structure constants, aka Littlewood-Richarson coefficients, with a method using honeycombs or oblades, is available in another package *)


(* ::Subsubsection::Closed:: *)
(*Usage*)


toSchurProdPair::usage="toSchurProdPair[li1_,li2_] where li1 and li2 denote two partitions, decomposes the product of SchurPol[li1]*SchurPol[li2] on Schur polynomials.
 The method uses explicit polynomials in the variables $x[j]. 
toSchurProdPair[li1,li2] gives the same result as toSchur[SchurPol[li1]*SchurPol[li2]] but the first method is usually faster. toSchurProdPair is superseded by toSchurProductPair. See also toSchurProdPairUsingPowerSums. 
For a fast technique, one should use honeycombs (another package).";
toSchurProdPairUsingPowerSums::usage="toSchurProdPairUsingPowerSums[li1_,li2_] where li1 and li2 denote two partitions, decomposes the product of SchurPol[li1]*SchurPol[li2] on Schur polynomials. 
toSchurProdPairUsingPowerSums[li1,li2] gives the same result as toSchur[SchurPol[li1]*SchurPol[li2]] but the first method is usually faster
The method uses the expression of Schur polynomials in terms of power-sums $p[j]. See also toSchurProdPair. 
For a fast technique, one should use honeycombs (another package).";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
toSchurProdPair[li1_,li2_]:= Module[{li,deg1,deg2,deg,yp,pos,goodpart,sol,nbvar},
li=li1+li2;nbvar=Length[li];
deg1=Total[li1];deg2=Total[li2];deg=deg1+deg2;
yp=ExtendedYoungPartitions[deg,nbvar];
pos=Flatten@Position[Reverse[yp],li];
 goodpart=Apply[Take[yp,#]&,-pos];
sol=SolveAlways[SchurPol[li1]*SchurPol[li2]==\!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(pos[\([1]\)]\)]\(a[i]\ SchurPol[goodpart[\([i]\)]]\)\),Table[$x[j],{j,1,nbvar}]];(Table[a[i],{i,1,pos[[1]]}]/. Flatten[sol]).$s/@goodpart]
 toSchurProdPairUsingPowerSums[li1_,li2_]:= Module[{li,deg1,deg2,deg,yp,pos,goodpart,sol,nbvar},
li=li1+li2;nbvar=Length[li1];(* write Warning if length li1 neq length li2 *)
deg1=Total[li1];deg2=Total[li2];deg=deg1+deg2;
yp=ExtendedYoungPartitions[deg,nbvar];
pos=Flatten@Position[Reverse[yp],li];
 goodpart=Apply[Take[yp,#]&,-pos];
sol=SolveAlways[SchurtoPowerSum[li1]*SchurtoPowerSum[li2]==\!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(pos[\([1]\)]\)]\(a[i]\ SchurtoPowerSum[goodpart[\([i]\)]]\)\),Table[$p[j],{j,1,nbvar}]];(Table[a[i],{i,1,pos[[1]]}]/. Flatten[sol]).$s/@goodpart] 
End[];


(* ::Subsection::Closed:: *)
(*From Schur polynomials to the Weyl character polynomials of SU(n)*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


SchurToSUnCharPol::usage="SchurToSUnCharPol[highestweightDynklist], where highestweightDynklist is the list of components of a dominant weight of the Lie group SU(n)in the basis of fundamental weights (Dynkin labels), returns the Weyl character of the Lie group SU(n) (a Laurent polynomial in the variables y[j]) for the representation defined by highestweightDynklist, calculated from the Schur polynomial defined by the associated extended partition of length n. This is not a fast method to obtain a Lie group Weyl character (see another package) but it is done here from Schur polynomials for consistency reasons, and because the method can be generalized to other families of Jack polynomials.";
SchurToSUnCharTrigo::usage="SchurToSUnCharTrigo[highestweightDynklist] where highestweightDynklist is the list of components of a dominant weight of the Lie group SU(n)in the basis of fundamental weights (Dynkin labels), returns the Weyl character of the Lie algebra su(n) (a trigonometric polynomial in the variables u[j])for the representation defined by highestweightDynklist, calculated from the Schur polynomial defined by the associated extended partition of length n. This is not a fast method to obtain a Lie algebra Weyl character (see another package) but it is done here from Schur polynomials for consistency reasons, and because the method can be generalized to other families of Jack polynomials.";


(* ::Subsubsection::Closed:: *)
(*Code*)


(* ::Input::Initialization:: *)
Begin["`Private`"];
SchurToSUnCharPol[highestweightDynklist_]:=Module[{youngpart=Append[highestWeightToYoungPartition[highestweightDynklist,Length[highestweightDynklist]+1],0],glres, sures},
glres=Factor@SchurPol[youngpart];
sures=glres/. {$x[1] -> $y[1], $x[j_] -> $y[j]/$y[j-1]};
sures=sures/.{ $y[Length[highestweightDynklist]+1]->1}]

SchurToSUnCharTrigo[highestweightDynklist_]:=Module[{len=Length[highestweightDynklist]+1, youngpart=Append[highestWeightToYoungPartition[highestweightDynklist,Length[highestweightDynklist]+1],0],res},
res=Simplify[((Factor@SchurPol[youngpart]/. {$x[i_]->E^(I t[i])}) /. t[i_]-> (a[i] - (1/len)sig))/. {sig->Sum[a[j],{j,len}]}];
res= Simplify[ExpToTrig[ExpandAll[res/. {a[j_] -> a[1] - Sum[$u[i],{i,1,j-1}] }]]]]

End[];


(* ::Section::Closed:: *)
(*Zonal polynomials*)


(* ::Subsection::Closed:: *)
(*Definition (using Jack polynomials). The three normalizations J, C, P.*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


ZonalPolJ::usage="ZonalPolJ[list] returns the zonal polynomial (normalization J) defined by the extended partition list (trailing 0's). Number of variables is Lenght[list].";
ZonalPolC::usage="ZonalPolC[list] returns the zonal polynomial (normalization C) defined by the extended partition list (trailing 0's). Number of variables is Lenght[list].";
ZonalPolP::usage="ZonalPolP[list] returns the zonal polynomial (normalization P) defined by the extended partition list (trailing 0's). Number of variables is Lenght[list].";
listOfZonalPolJ::usage="listOfZonalPolJ[deg,nbvar] returns the list of zonal polynomials (normalization J) of degree deg with nbvar variables";
listOfZonalPolC::usage="listOfZonalPolC[deg,nbvar] returns the list of zonal polynomials (normalization C) of degree deg with nbvar variables";
listOfZonalPolP::usage="listOfZonalPolP[deg,nbvar] returns the list of zonal polynomials (normalization P) of degree deg with nbvar variables";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
ZonalPolJ[partition_]:= ZonalPolJ[partition]= JackPolJ[partition]/.{$\[Alpha]-> 2}(* normalization J *)
ZonalPolC[partition_]:=ZonalPolC[partition]= ZonalPolJ[partition]* jtoccoef[partition,$\[Alpha]]/.{$\[Alpha]-> 2}(* normalization C *)
ZonalPolP[partition_]:=ZonalPolP[partition]= ZonalPolJ[partition]/ptojcoef[partition,$\[Alpha]]/.{$\[Alpha]-> 2}(* normalization P *)
listOfZonalPolJ[deg_,nbvar_]:=listOfZonalPolJ[deg,nbvar]=Factor/@ZonalPolJ/@ExtendedYoungPartitions[deg,nbvar]
listOfZonalPolC[deg_,nbvar_]:=listOfZonalPolC[deg,nbvar]=Factor/@ZonalPolC/@ExtendedYoungPartitions[deg,nbvar]
listOfZonalPolP[deg_,nbvar_]:=listOfZonalPolP[deg,nbvar]=Factor/@ZonalPolP/@ExtendedYoungPartitions[deg,nbvar]
End[];


(* ::Subsection::Closed:: *)
(*Convert between normalizations ZX for named zonal polynomials ZJ, ZC, ZP*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


ZXtoZJ::usage="ZXtoZJ[expression] converts a sum of zonal polynomials written as ZP[partition], for the normalization P, or ZC[partition], for the normalization C, to a sum of ZJ[partition], written with the normalization J";
ZXtoZC::usage="ZXtoZC[expression] converts a sum of zonal polynomials written as ZP[partition], for the normalization P, or ZJ[partition], for the normalization J, to a sum of ZC[partition], written with the normalization C";
ZXtoZP::usage="ZXtoZP[expression] converts a sum of zonal polynomials written as ZJ[partition], for the normalization J, or ZC[partition], for the normalization C, to a sum of ZP[partition], written with the normalization P";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
ConsToJames[ZC[list_]]:=With[{coef= jtoccoef[list,$\[Alpha]]/.{$\[Alpha]-> 2}}, coef*ZJ[list]]
PToJames[ZP[list_]]:=With[{coef= 1/ptojcoef[list,$\[Alpha]]/.{$\[Alpha]-> 2}}, coef*ZJ[list]]
JamesToCons[ZJ[list_]]:=With[{coef=1/jtoccoef[list,$\[Alpha]]/.{$\[Alpha]-> 2}}, coef*ZC[list]]
PToCons[ZP[list_]]:=With[{coef=1/ptoccoef[list,$\[Alpha]]/.{$\[Alpha]-> 2}}, coef*ZC[list]]
JamesToP[ZJ[list_]]:=With[{coef= ptojcoef[list,$\[Alpha]]/.{$\[Alpha]-> 2}}, coef*ZP[list]]
ConsToP[ZC[list_]]:=With[{coef= ptoccoef[list,$\[Alpha]]/.{$\[Alpha]-> 2}}, coef*ZP[list]]
ZXtoZJ[expression_]:= expression /. {ZC[any_]:> ConsToJames[ZC[any]], ZP[any_]:> PToJames[ZP[any]] }
ZXtoZC[expression_]:= expression /. {ZJ[any_]:> JamesToCons[ZJ[any]], ZP[any_]:> PToCons[ZP[any]] }
ZXtoZP[expression_]:= expression /. {ZJ[any_]:> JamesToP[ZJ[any]], ZC[any_]:> ConsToP[ZC[any]] }
End[];


(* ::Subsection::Closed:: *)
(*Zonal polynomials in terms of various kinds of symmetric polynomials*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


ZonalJtoElementarySymPol::usage="ZonalJtoElementarySymPol[list] expresses the Zonal J polynomial associated with the partition list, in terms of elementary symmetric polynomials ";
ZonalJtoMonomialSymPol::usage="ZonalJtoMonomialSymPol[list] expresses the Zonal J polynomial associated with the partition list, in terms of monomial symmetric polynomials ";
ZonalJtoPowerSum::usage="ZonalJtoPowerSum[list] expresses the Zonal J polynomial associated with the partition list, in terms of power-sums symmetric polynomials ";
ZonalCtoElementarySymPol::usage="ZonalCtoElementarySymPol[list] expresses the Zonal C polynomial associated with the partition list, in terms of elementary symmetric polynomials ";
ZonalCtoMonomialSymPol::usage="ZonalCtoMonomialSymPol[list] expresses the Zonal C polynomial associated with the partition list, in terms of monomial symmetric polynomials ";
ZonalCtoPowerSum::usage="ZonalJtoPowerSum[list] expresses the Zonal C polynomial associated with the partition list, in terms of power-sums symmetric polynomials ";
ZonalPtoElementarySymPol::usage="ZonalPtoElementarySymPol[list] expresses the Zonal P polynomial associated with the partition list, in terms of elementary symmetric polynomials ";
ZonalPtoMonomialSymPol::usage="ZonalPtoMonomialSymPol[list] expresses the Zonal P polynomial associated with the partition list, in terms of monomial symmetric polynomials ";
ZonalPtoPowerSum::usage="ZonalJtoPowerSum[list] expresses the Zonal P polynomial associated with the partition list, in terms of power-sums symmetric polynomials ";
ZonalJtoSchur::usage="ZonalJtoSchur[list] expresses the Zonal J polynomial associated with the partition list, in terms of Schur polynomials ";
ZonalCtoSchur::usage="ZonalCtoSchur[list] expresses the Zonal C polynomial associated with the partition list, in terms of Schur polynomials ";
ZonalPtoSchur::usage="ZonalPtoSchur[list] expresses the Zonal P polynomial associated with the partition list, in terms of Schur polynomials ";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
ZonalJDecompositionE[partition_]:=Simplify@toElementarySymPol[ZonalPolJ[partition]]
ZonalJDecompositionM[partition_]:=toMonomialSymPolSAjack[ZonalPolJ[partition],$\[Alpha]]/. {$\[Alpha]->2}
ZonalJDecompositionP[strictpartition_]:=ZonalJDecompositionP[strictpartition]=Expand[ZonalJDecompositionE[strictpartition]/. {$e[z_]:>elemsymtopow[z]}]
ZonalJtoElementarySymPol=ZonalJDecompositionE;(* renaming *)
ZonalJtoMonomialSymPol=ZonalJDecompositionM;(* renaming *)
ZonalJtoPowerSum=ZonalJDecompositionP;(* renaming *)
ZonalJtoSchur[partition_]:=toSchur[ZonalPolJ[partition]]
End[];


Begin["`Private`"];
ZonalCDecompositionE[partition_]:=Simplify@toElementarySymPol[ZonalPolC[partition]]
ZonalCDecompositionM[partition_]:=toMonomialSymPolSAjack[ZonalPolC[partition],$\[Alpha]]/. {$\[Alpha]->2}
ZonalCDecompositionP[strictpartition_]:=ZonalCDecompositionP[strictpartition]=Expand[ZonalCDecompositionE[strictpartition]/. {$e[z_]:>elemsymtopow[z]}]
ZonalCtoElementarySymPol=ZonalCDecompositionE;(* renaming *)
ZonalCtoMonomialSymPol=ZonalCDecompositionM;(* renaming *)
ZonalCtoPowerSum=ZonalCDecompositionP;(* renaming *)
ZonalCtoSchur[partition_]:=toSchur[ZonalPolC[partition]]
End[];


Begin["`Private`"];
ZonalPDecompositionE[partition_]:=Simplify@toElementarySymPol[ZonalPolP[partition]]
ZonalPDecompositionM[partition_]:=toMonomialSymPolSAjack[ZonalPolP[partition],$\[Alpha]]/. {$\[Alpha]->2}
ZonalPDecompositionP[strictpartition_]:=ZonalPDecompositionP[strictpartition]=Expand[ZonalPDecompositionE[strictpartition]/. {$e[z_]:>elemsymtopow[z]}]
ZonalPtoElementarySymPol=ZonalPDecompositionE;(* renaming *)
ZonalPtoMonomialSymPol=ZonalPDecompositionM;(* renaming *)
ZonalPtoPowerSum=ZonalPDecompositionP;(* renaming *)
ZonalPtoSchur[partition_]:=toSchur[ZonalPolP[partition]]
End[];


(* ::Subsection::Closed:: *)
(*From explicit symmetric polynomials to zonal polynomials (called ZJ[partition], ZC[partition] or ZP[partition])*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


toZonalJ::usage="toZonalJ[f] where f is a multivariate symmetric polynomial in $x[i] decomposes f on the basis of zonal polynomials (normalization J) called ZJ[{partition}]";
toZonalC::usage="toZonalC[f] where f is a multivariate symmetric polynomial in $x[i] decomposes f on the basis of zonal polynomials (normalization C) called ZC[{partition}]";
toZonalP::usage="toZonalP[f] where f is a multivariate symmetric polynomial in $x[i] decomposes f on the basis of zonal polynomials (normalization P) called ZP[{partition}]";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
toZonalSymPolSA[f_]:=Module[{var=Variables[f],nbvar,deg,part,basis,len,a,sol},
nbvar=Length[var];
deg=Max[Cases[CoefficientRules[f],v_?VectorQ:>Total[v],2]];
part=ExtendedYoungPartitions[deg,nbvar];
basis=listOfZonalPolJ[deg,nbvar];
len=Length[basis];
sol=SolveAlways[f==Sum[a[i]basis[[i]],{i,1,len}],var];
If[sol =={}, toZonalSymPolGeneral[f],
(Table[a[i],{i,1,len}]/.Flatten[sol]).(ZJ/@part)]]
(* if f is homogeneous, sol is not empty. 
If f is not homogeneous, sol will be empty and we call toZonalSymPolGeneral  *)

toZonalSymPolGeneral[f_]:=
Module[{var=Variables[f],nbvar,deg,li,li1,li2,zbli2,part,basis},
nbvar=Length[var];
deg=Max[Cases[CoefficientRules[f],v_?VectorQ:>Total[v],2]];
part=ExtendedYoungPartitions[deg,nbvar];
basis=listOfZonalPolJ[deg,nbvar];
li=PolynomialReduce[f,basis,var];
li1=li[[1]];
li2=li[[2]];
zbli2=toZonalJ[li2];
If[zbli2 === li2, Return[li1.ZJ/@part+li2], li1.ZJ/@part+zbli2]
](* this works even if f is not homogeneous. It is called, if needed, by toZonalSymPolSA *)

toZonalJ=toZonalSymPolSA; (* renaming *)
toZonalC[f_]:= ZXtoZC[toZonalJ[f]]
toZonalP[f_]:= ZXtoZP[toZonalJ[f]]
End[];


(* ::Subsection::Closed:: *)
(*From named zonal polynomials to explicit polynomials in $x[j]*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


 


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
(* We have to update toPolbasic here because the symbols JackPolJ, JackPolC, JackPolP where not used when toPolbasic was  defined last time *)
toPolbasic[expr_, nbv_] := 
  expr /. {
$e[n_] :> SymmetricPolynomial[n, Table[$x[j], {j, 1, nbv}]], 
$p[n_] :> Sum[$x[k]^n, {k, nbv}], 
$m[li_] :> monomialSum[extendPartition[li,nbv], $x], 
JJ[li_] :> JackPolJ[extendPartition[li,nbv]], 
JC[li_] :> JackPolC[extendPartition[li,nbv]], 
JP[li_] :> JackPolP[extendPartition[li,nbv]], 
$s[li_]  :> SchurPol[extendPartition[li,nbv]], 
ZJ[li_] :> ZonalPolJ[extendPartition[li,nbv]], 
ZC[li_] :> ZonalPolC[extendPartition[li,nbv]], 
ZP[li_] :> ZonalPolP[extendPartition[li,nbv]]}
End[];


(* ::Subsection::Closed:: *)
(*James constant and evaluation of ZonalJ on the unit*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


cjames::usage="cjames[partition] returns the James constant for the given partition, it is calculated by an explicit formula.
This constant appears in the expansion of orbital integrals (symmetric case) on zonal polynomials (with normalization J).
cjames[partition,$\[Alpha]] returns its analog for Jack polynomials: cjames[partition]=cjames[partition,$\[Alpha]]/. {$\[Alpha]->2}.
cjames[partition,$\[Alpha]] differs from jtoccoef[partition,$\[Alpha]] by a pre-factor (2k-1)!! where k is the total of the partition";
ZonalJofOne::usage="ZonalJofOne[extendedpartition, dim] returns the evaluation of the zonal polynomial ZonalPolJ (normalization J), associated with the given partition,  on the unit of dimension dim.
It enters the expansion of orbital integrals (symmetric case) on zonal polynomials (with normalization J).
ZonalJofOne[partition] is the default: the number of variables is dim = Total[partition] ";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
cjames[kap_] := Module[{ell = Length[kap], k = Total[kap]}, (2 k - 1)!!* 2^k *  k! * 
   Product[2 kap[[i]] - 2 kap[[j]]\[NonBreakingSpace]- i + j, {i, 1, ell - 1}, {j, 
     i + 1, ell}]/Product[(2 kap[[i]] + ell - i)!, {i, 1, ell}]]
     (* It is equal to cjames[list,2] *)
ZonalJofOne[extendedpartition_, ndim_] := ZonalJtoPowerSum[extendedpartition] /. {$p[i_] -> ndim} // Factor
ZonalJofOne[lis_] := With[{dim=Total[lis]}, ZonalJofOne[extendPartition[lis,dim],dim]]
End[];


(* ::Subsection::Closed:: *)
(*Structure constants*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


toZonalJProdPair::usage="toZonalJProdPair[li1_,li2_] where li1 and li2 denote two partitions, decomposes the product of ZonalPolJ[li1]*ZonalPolJ[li2] on zonal polynomials (normalization J).
The method uses explicit polynomials in the variables $x[j]. toZonalJProdPair is superseded by toZonalJProductPair.
toZonalJProdPair[li1,li2] gives the same result as toZonalJ[ZonalPolJ[li1]*ZonalPolJ[li2]] but the first method is usually faster";
toZonalCProdPair::usage="toZonalCProdPair[li1_,li2_] where li1 and li2 denote two partitions, decomposes the product of ZonalPolC[li1]*ZonalPolC[li2] on zonal polynomials (normalization C).
The method uses explicit polynomials in the variables $x[j].  toZonalCProdPair is superseded by toZonalCProductPair.
toZonalCProdPair[li1,li2] gives the same result as toZonalC[ZonalPolC[li1]*ZonalPolC[li2]] but the first method is usually faster";
toZonalPProdPair::usage="toZonalPProdPair[li1_,li2_] where li1 and li2 denote two partitions, decomposes the product of ZonalPolP[li1]*ZonalPolP[li2] on zonal polynomials (normalization P).
The method uses explicit polynomials in the variables $x[j]. toZonalPProdPair is superseded by toZonalPProductPair.
Both give the same result as toZonalP[ZonalPolP[li1]*ZonalPolP[li2]] but toZonalPProductPair is usually faster";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
toZonalJProdPair[li1_, li2_] := 
 Module[{li, deg1, deg2, deg, yp, pos, goodpart, sol, nbvar},
  li = li1 + li2; nbvar = Length[li];
  deg1 = Total[li1]; deg2 = Total[li2]; deg = deg1 + deg2;
  yp = ExtendedYoungPartitions[deg, nbvar];
  pos = Flatten@Position[Reverse[yp], li];
   goodpart = Apply[Take[yp, #] &, -pos];
  sol = SolveAlways[ZonalPolJ[li1]*ZonalPolJ[li2] == \!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(pos[\([1]\)]\)]\(a[i]\ ZonalPolJ[goodpart[\([i]\)]]\)\), 
    Table[$x[j], {j, 1, nbvar}]]; (Table[a[i], {i, 1, pos[[1]]}] /. Flatten[sol]).ZJ /@ goodpart]
toZonalCProdPair[li1_, li2_] := 
 Module[{li, deg1, deg2, deg, yp, pos, goodpart, sol, nbvar},
  li = li1 + li2; nbvar = Length[li];
  deg1 = Total[li1]; deg2 = Total[li2]; deg = deg1 + deg2;
  yp = ExtendedYoungPartitions[deg, nbvar];
  pos = Flatten@Position[Reverse[yp], li];
   goodpart = Apply[Take[yp, #] &, -pos];
  sol = SolveAlways[ZonalPolC[li1]*ZonalPolC[li2] == \!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(pos[\([1]\)]\)]\(a[i]\ ZonalPolC[goodpart[\([i]\)]]\)\), 
    Table[$x[j], {j, 1, nbvar}]]; (Table[a[i], {i, 1, pos[[1]]}] /. Flatten[sol]).ZC /@ goodpart]
toZonalPProdPair[li1_,li2_]:= 
Module[{li,deg1,deg2,deg,yp,pos,goodpart,sol,nbvar},
li=li1+li2;nbvar=Length[li];
deg1=Total[li1];deg2=Total[li2];deg=deg1+deg2;
yp=ExtendedYoungPartitions[deg,nbvar];
pos=Flatten@Position[Reverse[yp],li];
 goodpart=Apply[Take[yp,#]&,-pos];
sol=SolveAlways[ZonalPolP[li1]*ZonalPolP[li2]==\!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(pos[\([1]\)]\)]\(a[i]\ ZonalPolP[goodpart[\([i]\)]]\)\),
Table[$x[j],{j,1,nbvar}]];(Table[a[i],{i,1,pos[[1]]}]/. Flatten[sol]).ZP/@goodpart]
End[];


(* ::Subsection::Closed:: *)
(*From zonal polynomials to the SU(n) zonal characters*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


ZonalPToSUnCharPol::usage="ZonalPToSUnCharPol[highestweightDynklist], where highestweightDynklist is the list of components of a dominant weight of the Lie group SU(n)in the basis of fundamental weights (Dynkin labels), defines and returns the SU(n) zonal character of the Lie group SU(n) (a Laurent polynomial in the variables y[j]) for the representation defined by highestweightDynklist";
ZonalPToSUnCharTrigo::usage="ZonalPToSUnCharTrigo[highestweightDynklist] where highestweightDynklist is the list of components of a dominant weight of the Lie group SU(n)in the basis of fundamental weights (Dynkin labels), defines and returns the zonal character of the Lie algebra su(n) (a trigonometric polynomial in the variables u[j])for the representation defined by highestweightDynklist";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
ZonalPToSUnCharPol[highestweightDynklist_]:=Module[{youngpart=Append[highestWeightToYoungPartition[highestweightDynklist,Length[highestweightDynklist]+1],0],glres, sures},
glres=Factor@ZonalPolP[youngpart];
sures=glres/. {$x[1] -> $y[1], $x[j_] -> $y[j]/$y[j-1]};
sures=sures/.{ $y[Length[highestweightDynklist]+1]->1}]
ZonalPToSUnCharTrigo[highestweightDynklist_]:=Module[{len=Length[highestweightDynklist]+1, youngpart=Append[highestWeightToYoungPartition[highestweightDynklist,Length[highestweightDynklist]+1],0],res,a},
res=Simplify[((Factor@ZonalPolP[youngpart]/. {$x[i_]->E^(I t[i])}) /. t[i_]-> (a[i] - (1/len)sig))/. {sig->Sum[a[j],{j,len}]}];
res= Simplify[ExpToTrig[ExpandAll[res/. {a[j_] -> a[1] - Sum[$u[i],{i,1,j-1}] }]]]]
End[];


(* ::Section::Closed:: *)
(*Quaternionic polynomials*)


(* This only implements a few commands. It could be extended like the section Zonal Polynomials *)


(* ::Subsection::Closed:: *)
(*Definition (using Jack polynomials)*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


QuaterPolJ::usage="QuaterPolJ[list] returns the zonal quaternionic polynomial (normalization J) defined by the extended partition list (trailing 0's). Number of variables is Lenght[list].";
QuaterPolC::usage="QuaterPolC[list] returns the zonal quaternionic polynomial (normalization C) defined by the extended partition list (trailing 0's). Number of variables is Lenght[list].";
QuaterPolP::usage="QuaterPolP[list] returns the zonal quaternionic polynomial (normalization P) defined by the extended partition list (trailing 0's). Number of variables is Lenght[list].";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
QuaterPolJ[\[Kappa]_]:=QuaterPolJ[\[Kappa]]=JackPolJ[\[Kappa]]/. {$\[Alpha]-> 1/2}(* normalization J *)
QuaterPolC[partition_]:=QuaterPolC[partition]= QuaterPolJ[partition]* jtoccoef[partition,$\[Alpha]]/.{$\[Alpha]-> 1/2}(* normalization C *)
QuaterPolP[partition_] := QuaterPolP[partition] = QuaterPolJ[partition]/ptojcoef[partition, $\[Alpha]]/.{$\[Alpha]-> 1/2}(* normalization P *)
End[];


(* ::Subsection::Closed:: *)
(*Convert between normalizations QX for named zonal polynomials QJ, QC, QP*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


QXtoQJ::usage="QXtoQJ[expression] converts a sum of zonal polynomials written as QP[partition], for the normalization P, or QC[partition], for the normalization C, to a sum of QJ[partition], written with the normalization J";
QXtoQC::usage="QXtoQC[expression] converts a sum of zonal polynomials written as QP[partition], for the normalization P, or QJ[partition], for the normalization J, to a sum of QC[partition], written with the normalization C";
QXtoQP::usage="QXtoQP[expression] converts a sum of zonal polynomials written as QJ[partition], for the normalization J, or QC[partition], for the normalization C, to a sum of QP[partition], written with the normalization P";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
ConsToJames[QC[list_]]:=With[{coef= jtoccoef[list,$\[Alpha]]/.{$\[Alpha]-> 1/2}}, coef*QJ[list]]
PToJames[QP[list_]]:=With[{coef= 1/ptojcoef[list,$\[Alpha]]/.{$\[Alpha]-> 1/2}}, coef*QJ[list]]
JamesToCons[QJ[list_]]:=With[{coef=1/jtoccoef[list,$\[Alpha]]/.{$\[Alpha]-> 1/2}}, coef*QC[list]]
PToCons[QP[list_]]:=With[{coef=1/ptoccoef[list,$\[Alpha]]/.{$\[Alpha]-> 1/2}}, coef*QC[list]]
JamesToP[QJ[list_]]:=With[{coef= ptojcoef[list,$\[Alpha]]/.{$\[Alpha]-> 1/2}}, coef*QP[list]]
ConsToP[QC[list_]]:=With[{coef= ptoccoef[list,$\[Alpha]]/.{$\[Alpha]-> 1/2}}, coef*QP[list]]
QXtoQJ[expression_]:= expression /. {QC[any_]:> ConsToJames[QC[any]], QP[any_]:> PToJames[QP[any]] }
QXtoQC[expression_]:= expression /. {QJ[any_]:> JamesToCons[QJ[any]], QP[any_]:> PToCons[QP[any]] }
QXtoQP[expression_]:= expression /. {QJ[any_]:> JamesToP[QJ[any]], QC[any_]:> ConsToP[QC[any]] }
End[];


(* ::Subsection::Closed:: *)
(*Quaternionic polynomials in terms of monomial symmetric polynomials*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


QuaterPtoMonomialSymPol::usage="QuaterPtoMonomialSymPol[list] expresses the zonal quaternionic polynomial (normalization P) associated with the partition list, in terms of monomial symmetric polynomials "


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
QuaterPDecompositionM[partition_]:=toMonomialSymPolSAjack[QuaterPolP[partition],$\[Alpha]]/. {$\[Alpha]-> 1/2}
QuaterPtoMonomialSymPol=QuaterPDecompositionM;(* renaming *)
End[];


(* ::Subsection::Closed:: *)
(*From named zonal polynomials to explicit polynomials in $x[j]*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


 


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
(* We have to update toPolbasic here because the symbols QJ, QC, QP where not used when toPolbasic was  defined last time *)
toPolbasic[expr_, nbv_] := 
  expr /. {
$e[n_] :> SymmetricPolynomial[n, Table[$x[j], {j, 1, nbv}]], 
$p[n_] :> Sum[$x[k]^n, {k, nbv}], 
$m[li_] :> monomialSum[extendPartition[li,nbv], $x], 
JJ[li_] :> JackPolJ[extendPartition[li,nbv]], 
JC[li_] :> JackPolC[extendPartition[li,nbv]], 
JP[li_] :> JackPolP[extendPartition[li,nbv]], 
$s[li_]  :> SchurPol[extendPartition[li,nbv]], 
ZJ[li_] :> ZonalPolJ[extendPartition[li,nbv]], 
ZC[li_] :> ZonalPolC[extendPartition[li,nbv]], 
ZP[li_] :> ZonalPolP[extendPartition[li,nbv]],
QJ[li_] :> QuaterPolJ[extendPartition[li,nbv]], 
QC[li_] :>QuaterPolC[extendPartition[li,nbv]], 
QP[li_] :> QuaterPolP[extendPartition[li,nbv]]}
End[];


(* ::Subsection::Closed:: *)
(*Structure constants*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


toQuaterPProdPair::usage="toQuaterPProdPair[li1, li2] where li1 and li2 denote two partitions, decomposes the product of QuaterPolP[li1]*QuaterPolP[li2] on quaternionic zonal polynomials (normalisation P).
The method uses explicit polynomials in the variables $x[j]. toQuaterPProdPair is superseded by toQuaterPProductPair.";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
toQuaterPProdPair[li1_, li2_] := 
 Module[{li, deg1, deg2, deg, yp, pos, goodpart, sol, nbvar},
  li = li1 + li2; nbvar = Length[li];
  deg1 = Total[li1]; deg2 = Total[li2]; deg = deg1 + deg2;
  yp = ExtendedYoungPartitions[deg, nbvar];
  pos = Flatten@Position[Reverse[yp], li];
   goodpart = Apply[Take[yp, #] &, -pos];
  sol = SolveAlways[QuaterPolP[li1]*QuaterPolP[li2] == \!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(pos[\([1]\)]\)]\(a[i]\ QuaterPolP[goodpart[\([i]\)]]\)\), 
    Table[$x[j], {j, 1, nbvar}]]; (Table[a[i], {i, 1, pos[[1]]}] /. Flatten[sol]). QP /@ goodpart]
End[];    


(* ::Section::Closed:: *)
(*Inner products*)


(* ::Subsection::Closed:: *)
(*The Jack inner products*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


HallScalarProduct::usage="The name of this command has been changed. See ?JackScalarProduct.";
stableNormSqOfJackJ::usage="stableNormSqOfJackJ[partition] returns JackScalarProduct[JackPolJ[partition], JackPolJ[partition],Infinity, $\[Alpha]]";
stableNormSqOfJackC::usage="stableNormSqOfJackC[partition] returns JackScalarProduct[JackPolC[partition], JackPolC[partition],Infinity, $\[Alpha]]";
stableNormSqOfJackP::usage="stableNormSqOfJackP[partition] returns JackScalarProduct[JackPolP[partition], JackPolP[partition],Infinity, $\[Alpha]]";
oldJackScalarProduct::usage="";
JackScalarProduct::usage="JackScalarProduct is used to return the Jack scalar product <pol1, pol2>_alpha, with parameter alpha, of two symmetric functions pol1 and pol2 (see the syntax below).
Distinct values of alpha define distinct scalar products.  When alpha=1 it coincides with the Hall scalar product. 
The Jack scalar product (for some chosen parameter alpha) is simply defined when its arguments are power sums labelled by partitions; 
its definition is then extended to the vector space of symmetric functions (symmetric polynomials with an infinite number of variables),
in particular there should be no algebraic relations between power sums indexed by distinct partitions.
It can be thought as a renormalized and stabilized version (infinitely many variables) of an n-variables inner product.
If pol1 and pol2 are explicit expressions written in terms of power sums, one should use the syntax JackScalarProduct[pol1,pol2,$p, alpha].
If pol1 and pol2 are explicit polynomials in the variables $x, one should use the syntax JackScalarProduct[pol1, pol2, $x, alpha]; in this case pol1 and pol2 are automatically converted to power sums by the function toPowerSums.
In order to obtain the Jack scalar product with parameter alpha of two zonal, Schur, or, more generally Jack polynomials (with a parameter $\[Alpha] that can be distinct from alpha),
one should use the syntax JackScalarProduct[Pol1[lambda], Pol2[mu], Infinity, alpha]. 
Warning : JackScalarProduct has the attribute HoldAll, the polynomials Pol1[lambda] and Pol2[mu] where lambda and mu are two partitions, are not evaluated in terms of the finite number of variables $x[j] usually dictated by the expressions of lambda and mu as extended partitions (this information is ignored);
rather, they are calculated for a number of variables equal to the weight (total) of the partitions, and then converted to power sums. 
Being computed with enough $x variables, the obtained power sums are stabilized expressions allowing for the final determination of JackScalarProduct.
The same considerations apply to the calculation of < pol1 * pol2, pol3 >_alpha where pol1, pol2, pol3 are zonal, Schur or Jack polynomials; one should then use the syntax: JackScalarProduct[Pol1[lambda1]* Pol2[lambda2], Pol3[mu],Infinity, alpha].
Jack polynomials with parameter $\[Alpha] (and normalisation J, P or C) are orthogonal for the Jack scalar product with the same parameter alpha = $\[Alpha], but they are not orthonormal in general. 
The $s[lambda], ie, the Schur case, or equivalently JackP with $\[Alpha]=1, are orthonormal for the Jack scalar product with parameter alpha=1 (Hall scalar product).
If pol1 and pol2 are Jack polynomials (Schur, Zonal, etc) and pol1==pol2, the result, a squared norm, is obtained (fast) by the commands stableNormSqOfJackJ, stableNormSqOfJackC, stableNormSqOfJackP";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];

stableNormSqOfJackJ[partition_,alpha_]:=jcoef[partition,alpha]
stableNormSqOfJackC[partition_,alpha_]:=jtoccoef[partition, alpha]^2 * stableNormSqOfJackJ[partition,alpha]
stableNormSqOfJackP[partition_,alpha_]:= stableNormSqOfJackJ[partition,alpha]/ptojcoef[partition, alpha]^2

monopartitionQ[any_] := (Head[any] === Power ||  Head[any] === Times ||  Head[any] ===  $p ) && ((Exponent[any, Variables[any]] /. 
      CoefficientRules[any, Variables[any]]) == 1)

formalKroneckerDelta[uu_, vv_] := If[uu === vv, 1, 0] /; And[monopartitionQ[uu], monopartitionQ[vv]]
 
scalElem[lital_] := 
 Apply[Times, {Apply[Times, Apply[Power, lital, 1]], 
   Apply[Times, Map[Factorial, Transpose[lital][[2]]]]}]

buildlital[ppol_, nvar_] := 
 With[{var = makevariables[$p, nvar]}, 
  DeleteCases[
   Transpose[{Range[Length[var]], Exponent[ppol, var]}], {any_, 0}]]

renormScalProdJackOnPSexp[u1_+u2_,v_, alpha_]:=renormScalProdJackOnPSexp[u1,v, alpha]+renormScalProdJackOnPSexp[u2,v, alpha];
renormScalProdJackOnPSexp[u1_-u2_,v_, alpha_]:=renormScalProdJackOnPSexp[u1,v, alpha]-renormScalProdJackOnPSexp[u2,v, alpha];
renormScalProdJackOnPSexp[uu_,v1_+v2_, alpha_]:=renormScalProdJackOnPSexp[uu,v1, alpha]+renormScalProdJackOnPSexp[uu,v2, alpha];
renormScalProdJackOnPSexp[uu_,v1_-v2_, alpha_]:=renormScalProdJackOnPSexp[uu,v1, alpha]-renormScalProdJackOnPSexp[uu,v2, alpha];
renormScalProdJackOnPSexp[s_ uu_,v_, alpha_]:= s renormScalProdJackOnPSexp[uu,v, alpha] /; FreeQ[s,$p];
renormScalProdJackOnPSexp[uu_,s_ v_, alpha_]:= s renormScalProdJackOnPSexp[uu,v, alpha] /; FreeQ[s,$p];
renormScalProdJackOnPSexp[lambdapolexp_,mupolexp_, alpha_]:=Module[{lambdapol=Expand[lambdapolexp],mupol=Expand[mupolexp]},
formalKroneckerDelta[lambdapol,mupol] scalElem[buildlital[lambdapol,Last[Variables[lambdapol]][[1]]]] alpha^Total[Exponent[lambdapol,Variables[lambdapol]]]]
renormScalProdJackOnPS[uu_,v_, alpha_]:=renormScalProdJackOnPSexp[Expand@uu,Expand@v, alpha]


SetAttributes[HallScalarProduct, HoldAll]
SetAttributes[oldJackScalarProduct, HoldAll]
SetAttributes[JackScalarProduct, HoldAll]

(* HallScalarProduct[aPol1_[lam_], aPol2_[mu_], alpha_] :=
 renormScalProdJackOnPS[toPowerSums[aPol1[extendPartition[lam]]], 
  toPowerSums[aPol2[extendPartition[mu]]], alpha]

HallScalarProduct[aPol1_[lam1_]*aPol2_[lam2_], aPol3_[mu_], alpha_] :=
 renormScalProdJackOnPS[
  toPowerSums[aPol1[extendPartition[lam1]]]*
   toPowerSums[aPol2[extendPartition[lam2]]], 
  toPowerSums[aPol3[extendPartition[mu]]], alpha]
  
HallScalarProduct[s_ uu_, v_, alpha_] := 
  s HallScalarProduct[uu, v, alpha] /; FreeQ[s, $p];
HallScalarProduct[uu_, s_ v_, alpha_] := 
  s HallScalarProduct[uu, v, alpha] /; FreeQ[s, $p];

HallScalarProduct[u1_ + u2_, v_, alpha_] := 
  HallScalarProduct[u1, v, alpha] + HallScalarProduct[u2, v, alpha];
HallScalarProduct[u1_ - u2_, v_, alpha_] := 
  HallScalarProduct[u1, v, alpha] - HallScalarProduct[u2, v, alpha];
HallScalarProduct[uu_, v1_ + v2_, alpha_] := 
  HallScalarProduct[uu, v1, alpha] + HallScalarProduct[uu, v2, alpha];
HallScalarProduct[uu_, v1_ - v2_, alpha_] := 
  HallScalarProduct[uu, v1, alpha] - HallScalarProduct[uu, v2, alpha];
  *)
 
oldJackScalarProduct[aPol1_[lam_], aPol2_[mu_], Infinity, beta_] :=
 renormScalProdJackOnPS[
toPowerSums[aPol1[extendPartition[lam]]], 
  toPowerSums[aPol2[extendPartition[mu]]], beta]
  
oldJackScalarProduct[aPol1_[lam1_]*aPol2_[lam2_], aPol3_[mu_],Infinity, beta_] :=
 renormScalProdJackOnPS[
  toPowerSums[aPol1[extendPartition[lam1]]]*
   toPowerSums[aPol2[extendPartition[lam2]]], 
  toPowerSums[aPol3[extendPartition[mu]]], beta] 

(* The main commands 
JackScalarProduct[aPol1_[lam_], aPol2_[mu_],Infinity, beta_] and 
JackScalarProduct[aPol1_[lam1_]*aPol2_[lam2_], aPol3_[mu_],Infinity, beta_]
are now defined in a following section *)

JackScalarProduct::jackscalproWarning = "This is maybe not what you want: you are enforcing a finite number of variables. 
In order to obtain the Jack inner product, use the syntax  JackScalarProduct[`1`[`2`], `3`[`4`], Infinity, `5`] instead.";

JackScalarProduct[aPol1_[la_], aPol2_[mu_], $x,beta_]:=
Module[{},
Message[JackScalarProduct::jackscalproWarning,aPol1,restrictPartition[la],aPol2,restrictPartition[mu],beta];
renormScalProdJackOnPS[toPowerSums[aPol1[la]], toPowerSums[aPol2[mu]], beta]]
      
JackScalarProduct[aPolx1_, aPolx2_, $x,beta_] :=
 renormScalProdJackOnPS[toPowerSums[aPolx1], toPowerSums[aPolx2], beta]
 
JackScalarProduct[aPolp1_, aPolp2_,$p, beta_] :=
 renormScalProdJackOnPS[aPolp1, aPolp2, beta]
 
 JackScalarProduct[u1_ + u2_, v_, any_ ,beta_] := 
  JackScalarProduct[u1, v, any,beta] + JackScalarProduct[u2, v, any, beta];
JackScalarProduct[u1_ - u2_, v_,any_, beta_] := 
  JackScalarProduct[u1, v,  any, beta] - JackScalarProduct[u2, v,  any, beta];
JackScalarProduct[uu_, v1_ + v2_, any_, beta_] := 
  JackScalarProduct[uu, v1, any,  beta] + JackScalarProduct[uu, v2, any,  beta];
JackScalarProduct[uu_, v1_ - v2_, any_,beta_] := 
  JackScalarProduct[uu, v1, any,  beta] - JackScalarProduct[uu, v2,  any, beta];
 
End[];


(* ::Subsection::Closed:: *)
(*A family of inner products defined by integration over polynomials with n variables (Macdonald)*)


(* ::Subsubsection::Closed:: *)
(*Usage*)


MacdonaldScalarProduct::usage="MacdonaldScalarProduct[xpol1,xpol2,$\[Alpha]]: a scalar product between symmetric polynomials defined (Macdonald book, formula 10.35) as the integral of (xpol1 * bar(xpol2) * Delta[x,n,$\[Alpha]]) over the appropriate n-torus.
The kernel Delta is the product of the (1- x[i]/x[j])^(1/$\[Alpha]). MacdonaldScalarProduct with $\[Alpha]=1 is orthogonal (not orthonormal) for Jack polynomials.
This command, acting on two polynomials xpol1, xpol2, defined, not as explicit polynomials in variables x[j], but as a linear combinations of Jack, Zonal, or Schur (symbols JX, ZX, $s, with X = J, C, or P) calculates the scalar product without actually performing any integral, and it is quite fast.
When xpol1 and xpol2 are explicitly given as multivariate polynomials in the n variables $x[j_], one has to use the syntax MacdonaldScalarProduct[xpol1,xpol2,$x,$\[Alpha]]; in that case a definite n-dimensional integral is calculated, and this is usually slow.
When $\[Alpha] = 1 the calculation can also be performed by selecting the constant term in the Laurent series of (xpol1 * bar(xpol2) * Delta[x,n,$\[Alpha]]); if xpol1 and xpol2 are explicitly given as polynomials in the variables $x[j] it is then better to use the command scalarProductForSchurViaSeries[xpol1, xpol2]. 
The scalar product between two Jack polynomials increases to infinity with the number of variables, but its renormalized version (rescaled by 1/Dyson coefficient) goes to a finite limit equal to the the Jack inner product JackScalarProduct[pol1, pol2,Infinity, $\[Alpha]]. See usage ?coefDyson."; 
coefDyson::usage="coefDyson[n,$\[Alpha]] is a coefficient that relates the Macdonald inner product MacdonaldScalarProduct, when the number of variables n goes to infinity, to the Hall inner product.  
JackScalarProduct[U,V,Infinity,$\[Alpha]] = Limit_{n -> Infinity} MacdonaldScalarProduct[U,V,$\[Alpha]] / coefDyson[n,$\[Alpha]].
The Dyson coefficient is equal to MacdonaldScalarProduct[1,1,$\[Alpha]], ie., to 1/n! * (Integral over n-torus of Delta[x,n,$\[Alpha]]) and therefore to Gamma[1 + n/$\[Alpha]]/(n!*Gamma[1 + $\[Alpha]^(-1)]^n).";
scalarProductForSchurViaSeries::usage="scalarProductForSchurViaSeries[xpol1, xpol2] where xpol1 and xpol2 are explicit multivariate polynomials in x[j], gives MacdonaldScalarProduct[xpol1, xpol2,$x,1], i.e. the inner product in the Schur case($\[Alpha]=1). 
It is not calculated as an integral but by selecting the constant term in the Laurent series of (xpol1 * bar(xpol2) * Delta[x,n,1]). See comments about speed in ?MacdonaldScalarProduct";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
(* algebraic version *)
coefDyson[n_, alpha_] := Gamma[1 + n/alpha]/(n!*Gamma[1 + alpha^(-1)]^n)
normcoef[lam_,alpha_,n_]:=  Apply[Times, Flatten@Table[(n+(J[[2]]-1)alpha - (J[[1]]-1))/(n + J[[2]] alpha - J[[1]]), {J, tableauCoordinates[lam]}]]

normSqOfJackJ[lam_,alpha_]:=Module[{n= Length[lam]}, jcoef[lam,alpha] * normcoef[lam,alpha,n] * coefDyson[n,alpha]]
normSqOfZonalJ[lam_]:=normSqOfJackJ[lam,2]
normSqOfZonalC[lam_]:=normSqOfJackC[lam,2]
normSqOfZonalP[lam_]:=normSqOfJackP[lam,2]
normSqOfSchur[lam_]:=normSqOfJackP[lam,1]

normSqOfJackP[extpartition_,alpha_]:=Module[{ksi,n,k},
n=Length[extpartition];
k=1/alpha;
ksi=Table[extpartition[[i]] + k(n-i),{i,1,n}];
Apply[Times,Flatten[Table[(Gamma[ksi[[i]]-ksi[[j]]+k]Gamma[ksi[[i]]-ksi[[j]]-k+1])/(Gamma[ksi[[i]]-ksi[[j]]]Gamma[ksi[[i]]-ksi[[j]]+1]), {i,1, n-1},{j,i+1,n}]]]]

normSqOfJackC[extpartition_,alpha_]:=normSqOfJackJ[extpartition,alpha]*jtoccoef[extpartition,alpha]^2

myFreeQ[expression_, list_] := Apply[And, Table[FreeQ[expression, symb], {symb, list}]]
nonscalar = {$e, $p, $s, $m, $h, ZJ, ZC, ZP, JJ, JC, JP};

biliJack[u1_+u2_,v_, alpha_,nonscalarlist_]:=biliJack[u1,v, alpha,nonscalarlist]+biliJack[u2,v, alpha,nonscalarlist];
biliJack[u1_-u2_,v_, alpha_,nonscalarlist_]:=biliJack[u1,v, alpha,nonscalarlist]-biliJack[u2,v, alpha,nonscalarlist];
biliJack[u_,v1_+v2_, alpha_,nonscalarlist_]:=biliJack[u,v1, alpha,nonscalarlist]+biliJack[u,v2, alpha,nonscalarlist];
biliJack[u_,v1_-v2_, alpha_,nonscalarlist_]:=biliJack[u,v1, alpha,nonscalarlist]-biliJack[u,v2, alpha,nonscalarlist];
biliJack[a_ u_,v_, alpha_,nonscalarlist_]:= a biliJack[u,v, alpha,nonscalarlist] /; myFreeQ[a,nonscalarlist];
biliJack[u_,a_ v_, alpha_,nonscalarlist_]:= a biliJack[u,v, alpha,nonscalarlist] /; myFreeQ[a,nonscalarlist];
biliJack[JJ[li1_],JJ[li2_], alpha_,nonscalarlist_]:=KroneckerDelta[li1,li2] * normSqOfJackJ[li1,alpha]
biliJack[JC[li1_],JC[li2_], alpha_,nonscalarlist_]:=KroneckerDelta[li1,li2] * normSqOfJackC[li1,alpha]
biliJack[JP[li1_],JP[li2_], alpha_,nonscalarlist_]:=KroneckerDelta[li1,li2] * normSqOfJackP[li1,alpha]
biliJack[ZJ[li1_],ZJ[li2_],2,nonscalarlist_]:=KroneckerDelta[li1,li2] * normSqOfZonalJ[li1]
biliJack[ZC[li1_],ZC[li2_],2,nonscalarlist_]:=KroneckerDelta[li1,li2] * normSqOfZonalC[li1]
biliJack[ZP[li1_],ZP[li2_],2,nonscalarlist_]:=KroneckerDelta[li1,li2] * normSqOfZonalP[li1]
biliJack[$s[li1_],$s[li2_],1,nonscalarlist_]:=KroneckerDelta[li1,li2] * normSqOfSchur[li1]

MacdonaldScalarProduct[any1_,any2_,alpha_]:=biliJack[any1,any2,alpha,nonscalar](* renaming *)

(* Definite integration version *)
(* Code for explicit multivariate polynomials in variables $x *)
bar[f_]:=f /. {$x[j_]-> 1/$x[j]}
Delta[v_,n_,alpha_]:= Module[{livar=makevariables[v,n]},Apply[Times,Flatten[Table[If [i!=j,(1- v[i]/v[j])^(1/alpha),Nothing], {i,1, n},{j,1,n}]]]]
scalarProductViaIntegral[xpol1_, xpol2_,alpha_]:= Module[{var1=Variables[xpol1],var2=Variables[xpol2],n},
n= Max[Length[var1],Length[var2]];
(1/n!)(1/(2 \[Pi])^n)* Integrate[xpol1*bar[xpol2]* Delta[$x,n,alpha]/. {$x[j_] -> Exp[-I t[j]]},##, PrincipalValue->True]&@@Sequence[Table[{t[j],0,2 Pi},{j,1,n}]]]

MacdonaldScalarProduct[any1_,any2_,$x,alpha_]:=scalarProductViaIntegral[any1,any2,alpha](* renaming *)

(* Code for Schur case : selecting the constant term in a Laurent series *)
scalarProductForSchurViaSeries[xpol1_, xpol2_]:= Module[{var1=Variables[xpol1],var2=Variables[xpol2],n},
n= Max[Length[var1],Length[var2]];
(1/n!) SeriesCoefficient[ExpandAll[xpol1*bar[xpol2]* Delta[$x,n,1]],##]&@@ Sequence[Table[{$x[j],0,0},{j,1,n}]] ]
End[];


(* ::Section::Closed:: *)
(*SUn case*)


(* ::Subsection:: *)
(*Schur magic SU3*)


(* ::Subsubsection:: *)
(*Usage*)


HornFull::usage="The command HornFull[\[Alpha],\[Beta]] defines the Horn polytope.
Arguments are extended partitions of length 3 (trailing 0's)
The output is the range of {\[Gamma]1,\[Gamma]2,\[Gamma]3} for given \[Alpha],\[Beta]";
magicmult::usage="The function magicmult[la, mu, nuc] gives the multiplicity for the SU(3) intertwiner la@mu@nuc - > 1
Warning: the last argument is nuc, the conjugate of nu (that would be used for la@mu--> nu).
Arguments are dominant SU(3) weights in the basis of fundamental weights (Dynkin labels)
The algorithm uses the semi-magic square property for SU(3) multiplicities.";
SchurProdPairMagicMethod::usage="The triples {{\[Gamma]1,\[Gamma]2,\[Gamma]3}, m} and their multiplicity m, for a given pair (\[Alpha],\[Beta]) of partitions of length 3.
This function uses both HornFull(on (\[Alpha],\[Beta]))and magicmult (on the Dynkin components associated with {\[Gamma]1,\[Gamma]2,\[Gamma]3}).";
SU3MultiplicityYoung::usage="SU3MultiplicityYoung[{la1,la2},{mu1,mu2}], where the arguments are Dynkin components of two SU(3) weights la and mu,  give the partitions (together with their multiplicities)
associated with the highest weights(hw)that appear in the decomposition of the product of the two irreps with hw la and mu.
See also SU3MultiplicityDynkin.";
SU3MultiplicityDynkin::usage="SU3MultiplicityDynkin[{la1,la2},{mu1,mu2}], where the arguments are Dynkin components of two SU(3) weights la and mu,  give the Dynkin components (together with their multiplicities)
  of the highest weights(hw)that appear in the decomposition of the product of the two irreps with hw la and mu. 
See also SU3MultiplicityYoung.";


(* ::Subsubsection:: *)
(*Code*)


Begin["`Private`"];

HornFull[\[Alpha]_,\[Beta]_]:=
{{ Max[\[Alpha][[1]]+\[Beta][[3]],\[Alpha][[2]]+\[Beta][[2]],\[Alpha][[3]]+\[Beta][[1]]],\[Alpha][[1]] +\[Beta][[1]] },
{ Max[\[Alpha][[2]]+\[Beta][[3]],\[Alpha][[3]]+\[Beta][[2]]],Min[\[Alpha][[1]]+\[Beta][[2]],\[Alpha][[2]]+\[Beta][[1]]]},
{\[Alpha][[3]]+\[Beta][[3]],Min[\[Alpha][[1]]+\[Beta][[3]],\[Alpha][[2]]+\[Beta][[2]],\[Alpha][[3]]+\[Beta][[1]]]}
}

magicmult[la_,mu_,nuc_]:=
Module[{irr={la,mu,nuc},irrtra,redirrtra,sig,k,magic1, magic2},
irrtra=Transpose[irr]; sig=Map[Total,irrtra];
 k=Abs[sig[[1]]-sig[[2]]]/3; If[Not[IntegerQ[k]],Return[0]];redirrtra=irrtra- If[sig[[1]]>=sig[[2]],{ ConstantArray[k,3],0},{0,  ConstantArray[k,3]}];
{magic1,magic2}=Map[Total,redirrtra]; 
Min[Flatten[{redirrtra,ConstantArray[magic1,3]-redirrtra[[1]]-redirrtra[[2]]}]]+1](* magic *)

SchurProdPairMagicMethod[\[Alpha]_,\[Beta]_]:=Module[{la,mu,horngam,gamma1min,gamma1max,gamma2min,gamma2max,\[Gamma]3},
la={\[Alpha][[1]]-\[Alpha][[2]],\[Alpha][[2]]-\[Alpha][[3]]};mu={\[Beta][[1]]-\[Beta][[2]],\[Beta][[2]]-\[Beta][[3]]};
horngam=HornFull[\[Alpha],\[Beta]];
gamma1min= horngam[[1,1]];gamma1max= horngam[[1,2]];gamma2min= horngam[[2,1]];gamma2max= horngam[[2,2]];
Map[{Take[#,3],Last[#]}& ,DeleteCases[Flatten[Table[
\[Gamma]3= Total[\[Alpha]]+Total[\[Beta]] - (\[Gamma]1+\[Gamma]2) ;
{\[Gamma]1,\[Gamma]2,\[Gamma]3,Ramp@magicmult[la,mu,Reverse@{\[Gamma]1-\[Gamma]2,\[Gamma]2- \[Gamma]3}]},
{\[Gamma]1,gamma1min, gamma1max},{\[Gamma]2,gamma2min,gamma2max}],1],{_,_,_,0},1]]]

SU3MultiplicityYoung[la_,mu_]:=
Transpose@With[{li=SchurProdPairMagicMethod[{la[[1]]+la[[2]],la[[2]],0},{mu[[1]]+mu[[2]],mu[[2]],0}]},
With[{n=3},{Map[PadRight[#,n-1]&,Map[SUreductionOnlists[#,n]&,Map[First,li]]],Map[Last,li]}]]

SU3MultiplicityDynkin[la_,mu_]:=With[{finpar=SU3MultiplicityYoung[la,mu]},
Transpose[{Map[youngPartitionToHighestWeight[#,3]&,Transpose[finpar][[1]]],Transpose[finpar][[2]]}]]
End[];


(* ::Subsection::Closed:: *)
(*Schur using honeycombs SUn To do*)


(* ::Subsubsection:: *)
(*Usage*)


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];

End[];


(* ::Section:: *)
(*Improvements December 2018*)


(* ::Subsection::Closed:: *)
(*Use shiftPartitionInPol for Jack polynomials of type P*)


(* ::Subsubsection::Closed:: *)
(*Usage*)





(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
shiftPartitionInPol[JP[list_]]:= Expand@With[{n=Length[list]},Product[$x[j],{j,1,n}]^Last[list]toPolbasic[JP[myModPartition[list]],n]]
shiftPartitionInPol[JJ[list_]]:=JXtoJP[JJ[list]]/. {JP[list]->shiftPartitionInPol[JP[list]]}
shiftPartitionInPol[JC[list_]]:=JXtoJP[JC[list]]/. {JP[list]->shiftPartitionInPol[JP[list]]}
shiftPartitionInPol[ZP[list_]]:= Expand@With[{n=Length[list]},Product[$x[j],{j,1,n}]^Last[list]toPolbasic[ZP[myModPartition[list]],n]]
shiftPartitionInPol[ZJ[list_]]:=ZXtoZP[ZJ[list]]/. {ZP[list]->shiftPartitionInPol[ZP[list]]}
shiftPartitionInPol[ZC[list_]]:=ZXtoZP[ZC[list]]/. {ZP[list]->shiftPartitionInPol[ZP[list]]}
shiftPartitionInPol[$s[list_]]:= Expand@With[{n=Length[list]},Product[$x[j],{j,1,n}]^Last[list]toPolbasic[$s[myModPartition[list]],n]]
shiftPartitionInPol[QP[list_]]:= Expand@With[{n=Length[list]},Product[$x[j],{j,1,n}]^Last[list]toPolbasic[QP[myModPartition[list]],n]]
shiftPartitionInPol[QJ[list_]]:=QXtoQP[QJ[list]]/. {QP[list]->shiftPartitionInPol[QP[list]]}
shiftPartitionInPol[QC[list_]]:=QXtoQP[QC[list]]/. {QP[list]->shiftPartitionInPol[QP[list]]}
End[];


(* ::Subsection::Closed:: *)
(*Improved toPol*)


(* ::Subsubsection::Closed:: *)
(*Usage*)





(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
SetAttributes[toPol, HoldAll]
polfamilymemberq[any_]:=MemberQ[{JackPolP,JackPolJ,JackPolC, SchurPol,ZonalPolC,ZonalPolJ,ZonalPolP,QuaterPolC,QuaterPolJ,QuaterPolP,monomialSum},#]&[any]
toPol[expr_, nbv_] := 
  Unevaluated@expr /. {
$e[n_] :> SymmetricPolynomial[n, Table[$x[j], {j, 1, nbv}]], 
$p[n_] :> Sum[$x[k]^n, {k, nbv}], 
$m[li_] :> monomialSum[extendPartition[li,nbv], $x],
JJ[li_] :> shiftPartitionInPol[JJ[extendPartition[li,nbv]]], 
JC[li_] :> shiftPartitionInPol[JC[extendPartition[li,nbv]]],
JP[li_] :> shiftPartitionInPol[JP[extendPartition[li,nbv]]], 
$s[li_]  :> shiftPartitionInPol[$s[extendPartition[li,nbv]]], 
ZJ[li_] :> shiftPartitionInPol[ZJ[extendPartition[li,nbv]]], 
ZC[li_] :> shiftPartitionInPol[ZC[extendPartition[li,nbv]]], 
ZP[li_] :> shiftPartitionInPol[ZP[extendPartition[li,nbv]]],
QJ[li_] :> shiftPartitionInPol[QJ[extendPartition[li,nbv]]], 
QC[li_] :>shiftPartitionInPol[QC[extendPartition[li,nbv]]], 
QP[li_] :> shiftPartitionInPol[QP[extendPartition[li,nbv]]],
 f_?polfamilymemberq[list_]:> f[extendPartition[list,nbv]]}

toPol[aPol_[list_]] := toPol[aPol[list],Length[list]]
End[];


(* ::Subsection:: *)
(*Improved toXXXProductPair*)


(* ::Subsubsection:: *)
(*Usage*)


toSchurProductPair::usage="toSchurProductPair[li1_,li2_] where li1 and li2 denote two partitions, decomposes the product of SchurPol[li1]*SchurPol[li2] on Schur polynomials.
 The method uses explicit polynomials in the variables $x[j]. toSchurProductPair uses toSchurProdPair on a simplified shifted partition.
toSchurProductPair[li1,li2] gives the same result as toSchur[SchurPol[li1]*SchurPol[li2]] but the first method is usually faster. See also toSchurProdPairUsingPowerSums. 
For a fast technique, one should use honeycombs (another package)."; 
 
toZonalJProductPair::usage="toZonalJProdPair[li1_,li2_] where li1 and li2 denote two partitions, decomposes the product of ZonalPolJ[li1]*ZonalPolJ[li2] on zonal polynomials (normalization J).
The method uses explicit polynomials in the variables $x[j]. toZonalJProductPair uses toZonalJProdPair on a simplified shifted partition.
toZonalJProdPair[li1,li2] gives the same result as toZonalJ[ZonalPolJ[li1]*ZonalPolJ[li2]] but the first method is usually faster";
toZonalCProductPair::usage="toZonalCProdPair[li1_,li2_] where li1 and li2 denote two partitions, decomposes the product of ZonalPolC[li1]*ZonalPolC[li2] on zonal polynomials (normalization C).
The method uses explicit polynomials in the variables $x[j]. toZonalCProductPair uses toZonalCProdPair on a simplified shifted partition.
toZonalCProdPair[li1,li2] gives the same result as toZonalC[ZonalPolC[li1]*ZonalPolC[li2]] but the first method is usually faster";
toZonalPProductPair::usage="toZonalPProdPair[li1_,li2_] where li1 and li2 denote two partitions, decomposes the product of ZonalPolP[li1]*ZonalPolP[li2] on zonal polynomials (normalization P).
The method uses explicit polynomials in the variables $x[j]. toZonalPProductPair uses toZonalPProdPair on a simplified shifted partition.
toZonalPProdPair[li1,li2] gives the same result as toZonalP[ZonalPolP[li1]*ZonalPolP[li2]] but the first method is usually faster";

toQuaterJProductPair::usage="toQuaterPProdPair[li1, li2] where li1 and li2 denote two partitions, decomposes the product of QuaterPolJ[li1]*QuaterPolJ[li2] on quaternionic zonal polynomials (normalisation J).
The method uses explicit polynomials in the variables $x[j]. toQuaterJProductPair uses toQuaterJProdPair on a simplified shifted partition.";  
toQuaterCProductPair::usage="toQuaterPProdPair[li1, li2] where li1 and li2 denote two partitions, decomposes the product of QuaterPolC[li1]*QuaterPolC[li2] on quaternionic zonal polynomials (normalisation C).
The method uses explicit polynomials in the variables $x[j]. toQuaterCProductPair uses toQuaterCProdPair on a simplified shifted partition.";
toQuaterPProductPair::usage="toQuaterPProdPair[li1, li2] where li1 and li2 denote two partitions, decomposes the product of QuaterPolP[li1]*QuaterPolP[li2] on quaternionic zonal polynomials (normalisation P).
The method uses explicit polynomials in the variables $x[j]. toQuaterPProductPair uses toQuaterPProdPair on a simplified shifted partition.";

toJackPProductPair::usage="toJackPProductPair[li1_,li2_] where li1 and li2 denote two partitions, decomposes the product of JackPolP[li1]*JackPolP[li2] on Jack polynomials (normalization P).
The obtained coefficients depend on the Jack parameter $\[Alpha].";
toJackCProductPair::usage="toJackCProductPair[li1_,li2_] where li1 and li2 denote two partitions, decomposes the product of JackPolC[li1]*JackPolC[li2] on Jack polynomials (normalization C).
The obtained coefficients depend on the Jack parameter $\[Alpha].";
toJackJProductPair::usage="toJackJProductPair[li1_,li2_] where li1 and li2 denote two partitions, decomposes the product of JackPolJ[li1]*JackPolJ[li2] on Jack polynomials (normalization J).
The obtained coefficients depend on the Jack parameter $\[Alpha].";


(* ::Subsubsection::Closed:: *)
(*Code*)


Begin["`Private`"];
toZonalPProductPair[li1_,li2_]:= 
Module[{li,deg1,deg2,deg,yp,pos,goodpart,sol,nbvar},
li=li1+li2;nbvar=Length[li];
deg1=Total[li1];deg2=Total[li2];deg=deg1+deg2;
yp=ExtendedYoungPartitions[deg,nbvar];
pos=Flatten@Position[Reverse[yp],li];
 goodpart=Apply[Take[yp,#]&,-pos];
sol=SolveAlways[shiftPartitionInPol[ZP[li1]]*shiftPartitionInPol[ZP[li2]]==\!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(pos[\([\)\(1\)\(]\)]\)]\(a[i]\ shiftPartitionInPol[ZP[goodpart[\([i]\)]]]\)\),
Table[$x[j],{j,1,nbvar}]];(Table[a[i],{i,1,pos[[1]]}]/. Flatten[sol]).ZP/@goodpart]

toQuaterPProductPair[li1_, li2_] := 
 Module[{li, deg1, deg2, deg, yp, pos, goodpart, sol, nbvar},
  li = li1 + li2; nbvar = Length[li];
  deg1 = Total[li1]; deg2 = Total[li2]; deg = deg1 + deg2;
  yp = ExtendedYoungPartitions[deg, nbvar];
  pos = Flatten@Position[Reverse[yp], li];
   goodpart = Apply[Take[yp, #] &, -pos];
  sol = SolveAlways[shiftPartitionInPol[QP[li1]]*shiftPartitionInPol[QP[li2]] == \!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(pos[\([\)\(1\)\(]\)]\)]\(a[i]\ shiftPartitionInPol[QP[goodpart[\([i]\)]]]\)\), 
    Table[$x[j], {j, 1, nbvar}]]; (Table[a[i], {i, 1, pos[[1]]}] /. Flatten[sol]). QP /@ goodpart]
    
toSchurProductPair[li1_,li2_]:= Module[{li,deg1,deg2,deg,yp,pos,goodpart,sol,nbvar},
li=li1+li2;nbvar=Length[li];
deg1=Total[li1];deg2=Total[li2];deg=deg1+deg2;
yp=ExtendedYoungPartitions[deg,nbvar];
pos=Flatten@Position[Reverse[yp],li];
 goodpart=Apply[Take[yp,#]&,-pos];
sol=SolveAlways[shiftPartitionInPol[$s[li1]]*shiftPartitionInPol[$s[li2]]==\!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(pos[\([\)\(1\)\(]\)]\)]\(a[i]\ shiftPartitionInPol[$s[goodpart[\([i]\)]]]\)\),
Table[$x[j],{j,1,nbvar}]];(Table[a[i],{i,1,pos[[1]]}]/. Flatten[sol]).$s/@goodpart]


toZonalCProductPair[li1_,li2_]:= 
Module[{li,deg1,deg2,deg,yp,pos,goodpart,sol,nbvar},
li=li1+li2;nbvar=Length[li];
deg1=Total[li1];deg2=Total[li2];deg=deg1+deg2;
yp=ExtendedYoungPartitions[deg,nbvar];
pos=Flatten@Position[Reverse[yp],li];
 goodpart=Apply[Take[yp,#]&,-pos];
sol=SolveAlways[shiftPartitionInPol[ZC[li1]]*shiftPartitionInPol[ZC[li2]]==\!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(pos[\([\)\(1\)\(]\)]\)]\(a[i]\ shiftPartitionInPol[ZC[goodpart[\([i]\)]]]\)\),
Table[$x[j],{j,1,nbvar}]];(Table[a[i],{i,1,pos[[1]]}]/. Flatten[sol]).ZC/@goodpart]

toZonalJProductPair[li1_,li2_]:= 
Module[{li,deg1,deg2,deg,yp,pos,goodpart,sol,nbvar},
li=li1+li2;nbvar=Length[li];
deg1=Total[li1];deg2=Total[li2];deg=deg1+deg2;
yp=ExtendedYoungPartitions[deg,nbvar];
pos=Flatten@Position[Reverse[yp],li];
 goodpart=Apply[Take[yp,#]&,-pos];
sol=SolveAlways[shiftPartitionInPol[ZJ[li1]]*shiftPartitionInPol[ZJ[li2]]==\!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(pos[\([\)\(1\)\(]\)]\)]\(a[i]\ shiftPartitionInPol[ZJ[goodpart[\([i]\)]]]\)\),
Table[$x[j],{j,1,nbvar}]];(Table[a[i],{i,1,pos[[1]]}]/. Flatten[sol]).ZJ/@goodpart]

toQuaterJProductPair[li1_, li2_] := 
 Module[{li, deg1, deg2, deg, yp, pos, goodpart, sol, nbvar},
  li = li1 + li2; nbvar = Length[li];
  deg1 = Total[li1]; deg2 = Total[li2]; deg = deg1 + deg2;
  yp = ExtendedYoungPartitions[deg, nbvar];
  pos = Flatten@Position[Reverse[yp], li];
   goodpart = Apply[Take[yp, #] &, -pos];
  sol = SolveAlways[shiftPartitionInPol[QJ[li1]]*shiftPartitionInPol[QJ[li2]] == \!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(pos[\([\)\(1\)\(]\)]\)]\(a[i]\ shiftPartitionInPol[QJ[goodpart[\([i]\)]]]\)\), 
    Table[$x[j], {j, 1, nbvar}]]; (Table[a[i], {i, 1, pos[[1]]}] /. Flatten[sol]). QJ /@ goodpart]
    
toQuaterCProductPair[li1_, li2_] := 
 Module[{li, deg1, deg2, deg, yp, pos, goodpart, sol, nbvar},
  li = li1 + li2; nbvar = Length[li];
  deg1 = Total[li1]; deg2 = Total[li2]; deg = deg1 + deg2;
  yp = ExtendedYoungPartitions[deg, nbvar];
  pos = Flatten@Position[Reverse[yp], li];
   goodpart = Apply[Take[yp, #] &, -pos];
  sol = SolveAlways[shiftPartitionInPol[QC[li1]]*shiftPartitionInPol[QC[li2]] == \!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(pos[\([\)\(1\)\(]\)]\)]\(a[i]\ shiftPartitionInPol[QC[goodpart[\([i]\)]]]\)\), 
    Table[$x[j], {j, 1, nbvar}]]; (Table[a[i], {i, 1, pos[[1]]}] /. Flatten[sol]). QC /@ goodpart]



toJackPProductPair[li1_, li2_] := 
 Module[{li, deg1, deg2, deg, yp, pos, goodpart, sol, nbvar},
  li = li1 + li2; nbvar = Length[li];
  deg1 = Total[li1]; deg2 = Total[li2]; deg = deg1 + deg2;
  yp = ExtendedYoungPartitions[deg, nbvar];
  pos = Flatten@Position[Reverse[yp], li];
   goodpart = Apply[Take[yp, #] &, -pos];
  sol = SolveAlways[(shiftPartitionInPol[JP[li1]]*shiftPartitionInPol[JP[li2]] == \!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(pos[\([\)\(1\)\(]\)]\)]\(a[i]\ shiftPartitionInPol[JP[goodpart[\([i]\)]]]\)\)), 
Table[$x[j], {j, 1, nbvar}]];
sol = Select[sol,FreeQ[#,HoldPattern[$\[Alpha]->_]]&]; (* I tell it to select solutions that do not give values for $\[Alpha] *)
 (Table[a[i], {i, 1, pos[[1]]}] /. Flatten[sol]). JP /@ goodpart]
 
toJackJProductPair[li1_, li2_] := 
 Module[{li, deg1, deg2, deg, yp, pos, goodpart, sol, nbvar},
  li = li1 + li2; nbvar = Length[li];
  deg1 = Total[li1]; deg2 = Total[li2]; deg = deg1 + deg2;
  yp = ExtendedYoungPartitions[deg, nbvar];
  pos = Flatten@Position[Reverse[yp], li];
   goodpart = Apply[Take[yp, #] &, -pos];
  sol = SolveAlways[(shiftPartitionInPol[JJ[li1]]*shiftPartitionInPol[JJ[li2]] == \!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(pos[\([\)\(1\)\(]\)]\)]\(a[i]\ shiftPartitionInPol[JJ[goodpart[\([i]\)]]]\)\)), 
  Table[$x[j], {j, 1, nbvar}]];
sol = Select[sol,FreeQ[#,HoldPattern[$\[Alpha]->_]]&]; (* I tell it to select solutions that do not give values for $\[Alpha] *)
 (Table[a[i], {i, 1, pos[[1]]}] /. Flatten[sol]). JJ /@ goodpart]
 
toJackCProductPair[li1_, li2_] := 
 Module[{li, deg1, deg2, deg, yp, pos, goodpart, sol, nbvar},
  li = li1 + li2; nbvar = Length[li];
  deg1 = Total[li1]; deg2 = Total[li2]; deg = deg1 + deg2;
  yp = ExtendedYoungPartitions[deg, nbvar];
  pos = Flatten@Position[Reverse[yp], li];
   goodpart = Apply[Take[yp, #] &, -pos];
  sol = SolveAlways[(shiftPartitionInPol[JC[li1]]*shiftPartitionInPol[JC[li2]] == \!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(pos[\([\)\(1\)\(]\)]\)]\(a[i]\ shiftPartitionInPol[JC[goodpart[\([i]\)]]]\)\)), 
  Table[$x[j], {j, 1, nbvar}]];
sol = Select[sol,FreeQ[#,HoldPattern[$\[Alpha]->_]]&]; (* I tell it to select solutions that do not give values for $\[Alpha] *)
 (Table[a[i], {i, 1, pos[[1]]}] /. Flatten[sol]). JC /@ goodpart]
 End[];


(* ::Subsection::Closed:: *)
(*Redefine Jack inner product*)


 Begin["`Private`"];
JackScalarProduct[aPol1_[lam_], aPol2_[mu_],Infinity, beta_] :=
 renormScalProdJackOnPS[
toPowerSums[toPol[aPol1[lam],Total[lam]]], 
toPowerSums[toPol[aPol2[mu],Total[mu]]], beta]

JackScalarProduct[aPol1_[lam1_]*aPol2_[lam2_], aPol3_[mu_],Infinity, beta_] :=
 renormScalProdJackOnPS[
  toPowerSums[toPol[aPol1[lam1],Total[lam1]]]*
   toPowerSums[toPol[aPol1[lam2],Total[lam2]]], 
  toPowerSums[toPol[aPol1[mu],Total[mu]]], beta]
  
JackScalarProduct[aPol1_[la_], aPol2_[mu_], $x,beta_]:=
Module[{},
Message[JackScalarProduct::jackscalproWarning,aPol1,restrictPartition[la],aPol2,restrictPartition[mu],beta];
renormScalProdJackOnPS[toPowerSums[toPol[aPol1[la]]], toPowerSums[toPol[aPol2[mu]]], beta]]
End[];


(* ::Section::Closed:: *)
(*End*)


(* ::Subsection::Closed:: *)
(*End of Package*)


Ishakuduruk::usage="";
Begin["`Private`"];
Ishakuduruk=\!\(\*
TagBox[
StyleBox[
RowBox[{"ByteArray", "[", "\"\<ODpmAXMPRW5jcnlwdGVkT2JqZWN0QQMtUwREYXRhQiDIf8myQp6Lh55ad7rltoeoQYXZXZSJMYx7uaHEx/ieCi1TFEluaXRpYWxpemF0aW9uVmVjdG9yQhAi8N7ole76M/XBSMg3FWmXLVMMT3JpZ2luYWxGb3JtcwZTdHJpbmc=\>\"", "]"}],
ShowSpecialCharacters->False,
ShowStringCharacters->True,
NumberMarks->True],
FullForm]\);
End[];
EndPackage[];


(* ::Subsection::Closed:: *)
(*Protect symbols*)


Protect[$x,$e,$p,$y,$u,$\[Alpha],$m,$s,ZJ,ZC,ZP,QP,JJ,JC,JP];

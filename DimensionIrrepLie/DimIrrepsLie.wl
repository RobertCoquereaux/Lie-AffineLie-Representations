(* ::Package:: *)

BeginPackage["DimIrrepsLie`"];

(*--------Public symbols& usage--------*)

DimensionIrrepLie::usage =
"DimensionIrrepLie[ruplet] returns the dimension of an irreducible representation of the Lie algebra A_r (su(r+1)).
The highest weight is given by its components ruplet[[j]] (j = 1..r) in the basis of fundamental weights.\n\n" <>
"DimensionIrrepLie[\"G\", ruplet] returns the dimension of an irreducible representation of the simple Lie algebra G,
where G is a string like \"A3\", \"D4\", \"E6\", \"G2\", etc. The length of ruplet must match the rank of G.
G may be simply laced (A_r, D_r, E6, E7, E8) or not (B_r, C_r, G2, F4).\n\n" <>
"In the special case G = A_r, the first argument may be omitted: DimensionIrrepLie[ruplet] == DimensionIrrepLie[\"Ar\", ruplet].
Note, however, that these two calls use different internal methods (see Details).\n\n" <>
"DimensionIrrepLie[\"G\", ruplet, q] returns the quantum (q-)dimension of an integrable irreducible representation,
with the same highest-weight specification. The result is expressed using q-numbers qnum[n, q], where q is a formal symbol.
You can display q-numbers as Subscript[(n), q] via a delayed rule, e.g. qres /. { qnum[n_, q] :> Subscript[Row[{\"(\", n, \")\"}], q] }.
To obtain an explicit expression in q, use qresval = qres /. { qnum[n_, q] :> (q^n - q^(-n)) / (q - q^(-1)) }.\n\n" <>
"When q is specialized to a root of unity, e.g. q -> Exp[I Pi/kappa], you may rewrite the above result qresval trigonometrically with
qresvaltrig=FullSimplify[ExpToTrig[Expand[Together[qresval]/.\[InvisibleSpace]{q\[Rule]Exp[\!\(\*FractionBox[\(\[ImaginaryI]\\\ \[Pi]\), \(\[Kappa]\)]\)]}]]].
Usually kappa = g + k, where g is the dual Coxeter number of G and k is a non-negative integer (the level).
For numerical use, choose k (or kappa) large enough so that the given highest weight is integrable at level k.";

qnum::usage =
"qnum[n,q] denotes the q-integer (q^n - q^-n)/(q - q^-1). It is used symbolically in the output of DimensionIrrepLie[\"G\", ruplet, q].";

q::usage =
"q is a formal (positional) parameter used in DimensionIrrepLie[\"G\", ruplet, q] for q-dimensions.
It is not an option.";

ClearAll[q, qnum, DimensionIrrepLie];

Begin["`Private`"];

(* -------- Utilities (public to private heads... ) -------- *)

ClearAll[normalizeWeightsHeads]; 
normalizeWeightsHeads[expr_] := expr /. {
  (* Subscript[whateverContext`\[Omega], i] -> Subscript[Private`\[Omega], i] *)
  Subscript[s_Symbol, i_] /; SymbolName[Unevaluated[s]] == "\[Omega]" :>
    Subscript[DimIrrepsLie`Private`\[Omega], i],

  (* anyContext`\[CurlyRho] -> Private`\[CurlyRho] *)
  s_Symbol /; SymbolName[Unevaluated[s]] == "\[CurlyRho]" :>
    DimIrrepsLie`Private`\[CurlyRho],

  (* alias tol\[EAcute]r\[EAcute]s *)
  DimIrrepsLie`\[Omega][i_] :> Subscript[DimIrrepsLie`Private`\[Omega], i],
  DimIrrepsLie`\[CurlyRho]  :> DimIrrepsLie`Private`\[CurlyRho]
};

(* -------- Utilities (display helpers) -------- *)

ClearAll[matrixtolist, tabletolist, evalpath, transposedisplay, formatAs];
matrixtolist[any_] := any //. {MatrixForm[a_, ___] :> a};
tabletolist[any_]  := any //. {TableForm[a_, ___]  :> a};
evalpath[any_]     := TableForm[tabletolist[any]];
transposedisplay[any_] := TableForm[Transpose[any //. {TableForm[a_, ___] :> a}]];

formatAs[res_, as_String:"Table"] := Switch[as,
  "Table",     res,
  "Array",     tabletolist[res],
  "FlatArray", Flatten @ tabletolist[res],
  _,           res
];

(* Invisible helpers for arithmetic *)
Unprotect[Invisible];
Invisible /: Times[_, Invisible[0]] := Invisible[0];
Invisible /: Power[Invisible[0], _] := Invisible[0];
Protect[Invisible];


(* -------- Environment builder (memoized by dd) -------- *)

ClearAll[LieEnv];

LieEnv[dd_String] := LieEnv[dd] = Module[
  {
    typeOfG = StringTake[dd, 1],
    r       = ToExpression @ StringDrop[dd, 1],
    rank, \[Gamma], g, \[Nu], SU2rank, isADE,
    G, shortscalingcoefs, oddvertices, evenvertices, Ds, 
    identitymatrixsparse, zeromatrixsparse, z2, Z2,
    F, EssPer, pathLabels, pathLabelspositive,
    scalingbandcoroottoroot, scalingbandpositivecoroottoroot,
    pathLabelsToRootsBand, pathLabelspositiveToRootsBand,
    quiverComponents, quiverPositiveComponents,
    coquiverComponents, coquiverPositiveComponents,
    WeylDenominator,quantumWeylDenominator
  },
  
  rank = r;
  g = dualCoxeterNumberFor[typeOfG, r];

  Switch[typeOfG,

    "A",
      \[Gamma] = r + 1; \[Nu] = \[Gamma] - 2; SU2rank = \[Nu] + 1; isADE = True;
      G = Normal @ SparseArray[{{i_, j_} /; j == i + 1 || j == i - 1 -> 1}, {r, r}];
      shortscalingcoefs = Table[1, {r}];
      oddvertices  = Table[n, {n, 1, r, 2}];
      evenvertices = Table[n, {n, 2, r, 2}],

    "D",
      \[Gamma] = 2 r - 2; \[Nu] = \[Gamma] - 2; SU2rank = \[Nu] + 1; isADE = True;
      G = Normal @ SparseArray[
            {{i_, j_} /; (i != r - 1 && j == i + 1) || (j != r - 1 && j == i - 1) -> 1,
             {r, r - 2} -> 1, {r - 2, r} -> 1, {r, r - 1} -> 0, {r - 1, r} -> 0},
            {r, r}];
      shortscalingcoefs = Table[1, {r}];
      oddvertices =
        If[EvenQ[r], Append[Table[n, {n, 1, r, 2}], r], Table[n, {n, 1, r - 2, 2}]];
      evenvertices =
        If[EvenQ[r], Table[n, {n, 2, r - 2, 2}], Join[Table[n, {n, 2, r - 2, 2}], {r - 1, r}]],

    "E",
      Switch[r,
        6,
          \[Gamma] = 12; \[Nu] = \[Gamma] - 2; SU2rank = \[Nu] + 1; isADE = True;
          G = {{0, 1, 0, 0, 0, 0}, {1, 0, 1, 0, 0, 0}, {0, 1, 0, 1, 0, 1},
               {0, 0, 1, 0, 1, 0}, {0, 0, 0, 1, 0, 0}, {0, 0, 1, 0, 0, 0}};
          shortscalingcoefs = Table[1, {r}];
          oddvertices  = Table[n, {n, 1, 6, 2}];
          evenvertices = Table[n, {n, 2, 6, 2}],
        7,
          \[Gamma] = 18; \[Nu] = \[Gamma] - 2; SU2rank = \[Nu] + 1; isADE = True;
          G = {{0, 1, 0, 0, 0, 0, 0}, {1, 0, 1, 0, 0, 0, 0}, {0, 1, 0, 1, 0, 0, 0},
               {0, 0, 1, 0, 1, 0, 1}, {0, 0, 0, 1, 0, 1, 0}, {0, 0, 0, 0, 1, 0, 0},
               {0, 0, 0, 1, 0, 0, 0}};
          shortscalingcoefs = Table[1, {r}];
          oddvertices  = Table[n, {n, 1, 7, 2}];
          evenvertices = Table[n, {n, 2, 7, 2}],
        8,
          \[Gamma] = 30; \[Nu] = \[Gamma] - 2; SU2rank = \[Nu] + 1; isADE = True;
          G = {{0, 1, 0, 0, 0, 0, 0, 0}, {1, 0, 1, 0, 0, 0, 0, 0},
               {0, 1, 0, 1, 0, 0, 0, 0}, {0, 0, 1, 0, 1, 0, 0, 0},
               {0, 0, 0, 1, 0, 1, 0, 1}, {0, 0, 0, 0, 1, 0, 1, 0},
               {0, 0, 0, 0, 0, 1, 0, 0}, {0, 0, 0, 0, 1, 0, 0, 0}};
          shortscalingcoefs = Table[1, {r}];
          oddvertices  = Table[n, {n, 1, 8, 2}];
          evenvertices = Table[n, {n, 2, 8, 2}],
        _, Return[$Failed]
      ],

    "G",
      \[Gamma] = 6; \[Nu] = \[Gamma] - 2; SU2rank = \[Nu] + 1; isADE = False;
      G = {{0, 3}, {1, 0}};
      shortscalingcoefs = {1, 1/3};
      oddvertices = {1}; evenvertices = {2},

    "F",
      \[Gamma] = 12; \[Nu] = \[Gamma] - 2; SU2rank = \[Nu] + 1; isADE = False;
      G = {{0, 1, 0, 0}, {1, 0, 2, 0}, {0, 1, 0, 1}, {0, 0, 1, 0}};
      shortscalingcoefs = {1, 1, 1/2, 1/2};
      oddvertices = {1, 3}; evenvertices = {2, 4},

    "B",
      \[Gamma] = 2 r; \[Nu] = 2 (r - 1); SU2rank = \[Nu] + 1; isADE = False;
      G = Normal @ SparseArray[{{i_, j_} /; j == i + 1 || j == i - 1 -> 1}, {r, r}];
      G[[r - 1, r]] = 2;
      shortscalingcoefs = Join[Table[1, {r - 1}], {1/2}];
      oddvertices  = Table[n, {n, 1, r, 2}];
      evenvertices = Table[n, {n, 2, r, 2}],

    "C",
      \[Gamma] = 2 r; \[Nu] = 2 (r - 1); SU2rank = \[Nu] + 1; isADE = False;
      G = Normal @ SparseArray[{{i_, j_} /; j == i + 1 || j == i - 1 -> 1}, {r, r}];
      G[[r, r - 1]] = 2;
      shortscalingcoefs = Join[{1/2}, Table[1, {r - 1}]];
      oddvertices  = Table[n, {n, 1, r, 2}];
      evenvertices = Table[n, {n, 2, r, 2}],

    _, Return[$Failed]
  ];

  Ds = DiagonalMatrix[shortscalingcoefs];
  identitymatrixsparse = SparseArray[Band[{1, 1}] -> 1, {r, r}];
  zeromatrixsparse     = SparseArray[{}, {r, r}];

  z2 = ConstantArray[0, r]; z2[[oddvertices]] = 1;
  Z2[n_Integer?Positive] := z2[[n]];

  Clear[F, EssPer];
  F[0] = identitymatrixsparse;
  F[1] = SparseArray[G];
  Do[F[s] = SparseArray[F[s - 1] . F[1] - F[s - 2]], {s, 2, \[Gamma] - 2}];
  F[\[Gamma] - 1] = zeromatrixsparse;
  Do[F[s] = -F[2 \[Gamma] - s - 2], {s, \[Gamma], 2 \[Gamma] - 2}];
  F[2 \[Gamma] - 1] = zeromatrixsparse;

  EssPer[a_Integer?Positive] :=
    EssPer[a] = Table[F[n][[a, b]], {n, 0, 2 \[Gamma] - 1}, {b, 1, r}];
  Do[EssPer[a], {a, 1, r}];

  Clear[pathLabels, pathLabelspositive];

  Which[
    MemberQ[{"A", "B", "C", "E", "F", "G"}, typeOfG],
      pathLabels[Subscript[\[Omega], a_]] :=
        pathLabels[Subscript[\[Omega], a]] =
          If[ OddQ[Z2[a]],
            TableForm @ ReplacePart[
              EssPer[a],
              Select[Position[EssPer[a], 0],
                Or[
                  Mod[#[[1]], 2] == Z2[a] && Mod[#[[2]], 2] == 0,
                  Mod[#[[1]], 2] == Mod[Z2[a] + 1, 2] && Mod[#[[2]], 2] == 1
                ] &
              ] -> Invisible[0]
            ],
            TableForm @ ReplacePart[
              RotateRight[EssPer[a]],
              Select[Position[RotateRight[EssPer[2]], 0],
                Or[
                  Mod[#[[1]], 2] == Z2[2] && Mod[#[[2]], 2] == 1,
                  Mod[#[[1]], 2] == Mod[Z2[2], 2] + 1 && Mod[#[[2]], 2] == 0
                ] &
              ] -> Invisible[0]
            ]
          ],

    typeOfG == "D" && EvenQ[r],
      pathLabels[Subscript[\[Omega], a_]] :=
        pathLabels[Subscript[\[Omega], a]] =
          If[ OddQ[Z2[a]],
            TableForm @ ReplacePart[
              EssPer[a],
              Select[Position[EssPer[a], 0],
                Or[
                  Mod[#[[1]], 2] == Z2[a] && Z2[#[[2]]] == 0,
                  Mod[#[[1]], 2] == Mod[Z2[a] + 1, 2] && Z2[#[[2]]] == 1
                ] &
              ] -> Invisible[0]
            ],
            TableForm @ ReplacePart[
              RotateRight[EssPer[a]],
              Select[Position[RotateRight[EssPer[2]], 0],
                Or[
                  Mod[#[[1]], 2] == Z2[2] && Z2[#[[2]]] == 1,
                  Mod[#[[1]], 2] == Mod[Z2[2], 2] + 1 && Z2[#[[2]]] == 0
                ] &
              ] -> Invisible[0]
            ]
          ],

    typeOfG == "D" && OddQ[r],
      pathLabels[Subscript[\[Omega], a_]] :=
        pathLabels[Subscript[\[Omega], a]] =
          If[ OddQ[Z2[a]],
            TableForm @ ReplacePart[
              EssPer[a],
              Select[Position[EssPer[a], 0],
                Or[
                  Mod[#[[1]], 2] == Z2[a] && Z2[#[[2]]] == 0,
                  Mod[#[[1]], 2] == Mod[Z2[a] + 1, 2] && Z2[#[[2]]] == 1
                ] &
              ] -> Invisible[0]
            ],
            TableForm @ ReplacePart[
              RotateRight[EssPer[a]],
              Select[Position[RotateRight[EssPer[2]], 0],
                Or[
                  Mod[#[[1]], 2] == Z2[2] && Z2[#[[2]]] == 1,
                  Mod[#[[1]], 2] == Mod[Z2[2], 2] + 1 && Z2[#[[2]]] == 0
                ] &
              ] -> Invisible[0]
            ]
          ]
  ];

  Do[pathLabels[Subscript[\[Omega], a]] = pathLabels[Subscript[\[Omega], a]], {a, 1, r}];

(* additivit\[EAcute] *)
pathLabels[u_ + v_] :=
  TableForm @ (tabletolist[pathLabels[u]] + tabletolist[pathLabels[v]]);

(* lin\[EAcute]arit\[EAcute] num\[EAcute]rique pour Subscript[\[Omega],p] \[LongDash] patron tol\[EAcute]rant de contexte *)
pathLabels[
  x_ Subscript[s_Symbol, p_] /; SymbolName[Unevaluated[s]] == "\[Omega]"
] /; NumericQ[x] :=
  TableForm @ (x tabletolist[pathLabels[Subscript[\[Omega], p]]]);

(* --- R\[CapitalEGrave]GLES EXPLICITES POUR \[Rho] --- *)
pathLabels[rho_Symbol /; SymbolName[Unevaluated[rho]] == "\[CurlyRho]"] :=
  evalpath @ Apply[Plus, Table[pathLabels[Subscript[\[Omega], j]], {j, 1, r}]];

(* POSITIVES *)
pathLabelspositive[
  Subscript[s_Symbol, a_] /; SymbolName[Unevaluated[s]] == "\[Omega]"
] :=
  TableForm @ Take[tabletolist[pathLabels[Subscript[\[Omega], a]]], \[Gamma]];

pathLabelspositive[u_ + v_] :=
  TableForm @ (tabletolist[pathLabelspositive[u]] + tabletolist[pathLabelspositive[v]]);

pathLabelspositive[
  x_ Subscript[s_Symbol, p_] /; SymbolName[Unevaluated[s]] == "\[Omega]"
] /; NumericQ[x] :=
  TableForm @ (x tabletolist[pathLabelspositive[Subscript[\[Omega], p]]]);

pathLabelspositive[rho_Symbol /; SymbolName[Unevaluated[rho]] == "\[CurlyRho]"] :=
  TableForm @ Take[tabletolist[pathLabels[\[CurlyRho]]], \[Gamma]];
  
  (* --- pont context-insensible pour les poids fondamentaux --- *)
pathLabels[Subscript[s_Symbol, a_Integer?Positive] /; SymbolName[Unevaluated[s]] == "\[Omega]"] := pathLabels[Subscript[\[Omega], a]];


  (* coroot -> root scaling band *)
  
  scalingbandcoroottoroot =
    TableForm @ Module[{tp = tabletolist[pathLabels[Subscript[\[Omega], 1]]], pos, rule},
      pos = Position[tp, _?NumericQ, 2];
      rule = Map[# -> shortscalingcoefs[[Last[#]]] &, pos];
      ReplacePart[tp, rule]
    ];

  scalingbandpositivecoroottoroot =
    TableForm @ Module[{tp = tabletolist[pathLabelspositive[Subscript[\[Omega], 1]]], pos, rule},
      pos = Position[tp, _?NumericQ, 2];
      rule = Map[# -> shortscalingcoefs[[Last[#]]] &, pos];
      ReplacePart[tp, rule]
    ];

(* --- (1) Toutes racines --- *)
Clear[pathLabelsToRootsBand];

pathLabelsToRootsBand[
  Subscript[s_Symbol, i_] /; SymbolName[Unevaluated[s]] == "\[Omega]"
] := TableForm @ (
  tabletolist[pathLabels[Subscript[\[Omega], i]]] *
  tabletolist[scalingbandcoroottoroot]
);

pathLabelsToRootsBand[rho_Symbol /; SymbolName[Unevaluated[rho]] == "\[CurlyRho]"] := TableForm @ (
  tabletolist[pathLabels[\[CurlyRho]]] *
  tabletolist[scalingbandcoroottoroot]
);

pathLabelsToRootsBand[x_ u_] /; NumericQ[x] :=
  TableForm @ (x tabletolist[pathLabelsToRootsBand[u]]);

pathLabelsToRootsBand[u_ + v_] :=
  TableForm @ (tabletolist[pathLabelsToRootsBand[u]] + tabletolist[pathLabelsToRootsBand[v]]);

(* --- (2) Racines positives --- *)
Clear[pathLabelspositiveToRootsBand];

pathLabelspositiveToRootsBand[
  Subscript[s_Symbol, i_] /; SymbolName[Unevaluated[s]] == "\[Omega]"
] := TableForm @ (
  tabletolist[pathLabelspositive[Subscript[\[Omega], i]]] *
  tabletolist[scalingbandpositivecoroottoroot]
);

pathLabelspositiveToRootsBand[rho_Symbol /; SymbolName[Unevaluated[rho]] == "\[CurlyRho]"] := TableForm @ (
  tabletolist[pathLabelspositive[\[CurlyRho]]] *
  tabletolist[scalingbandpositivecoroottoroot]
);

pathLabelspositiveToRootsBand[x_ u_] /; NumericQ[x] :=
  TableForm @ (x tabletolist[pathLabelspositiveToRootsBand[u]]);

pathLabelspositiveToRootsBand[u_ + v_] :=
  TableForm @ (tabletolist[pathLabelspositiveToRootsBand[u]] + tabletolist[pathLabelspositiveToRootsBand[v]]);

  (* rename but keep old names *)
 
 quiverComponents[u_] := pathLabelsToRootsBand[u];
 quiverPositiveComponents[u_] := pathLabelspositiveToRootsBand[u];

coquiverComponents[u_] := pathLabels[u];
coquiverPositiveComponents[u_] := pathLabelspositive[u];

 WeylDenominator = Times @@ Select[Flatten @ tabletolist[quiverComponents[\[CurlyRho]]], Positive];
 
 quantumWeylDenominator =  Apply[Times,MapThread[qnum,{Select[Flatten[tabletolist[quiverComponents[\[CurlyRho]]]],Positive], Table[q, {\[Gamma] r/2}]}]];

  <|
    "Type" -> typeOfG,
    "Rank" -> r,
    "Gamma" -> \[Gamma],
    "DualCoxeter" -> g,
    "SU2level" -> \[Nu],
    "SU2rank" -> SU2rank,
    "DynkinMatrix" -> G,
    "ShortScalingCoefficients" -> shortscalingcoefs,
    "OddVertices" -> oddvertices,
    "EvenVertices" -> evenvertices,
    "LieAlgebraDimension" -> (\[Gamma] r + r),
    "NumberOfRoots" -> (\[Gamma] r),
    "NumberOfPositiveRoots" -> (\[Gamma] r/2),
    "quiverComponents" -> Function[u, quiverComponents[u]],
    "quiverPositiveComponents" -> Function[u, quiverPositiveComponents[u]],
    "coquiverComponents"         -> Function[u, coquiverComponents[u]],
    "coquiverPositiveComponents" -> Function[u, coquiverPositiveComponents[u]],
    "WeylDenominator" -> WeylDenominator,
    "quantumWeylDenominator" -> quantumWeylDenominator
  |>
];
(* End of the module LieEnv *)

(* Public definitions *)

ClearAll[dimensionPolynomial];
dimensionPolynomial[dd_String] := dimensionPolynomial[dd] = Module[
  {env = LieEnv[dd], r, numList, expr},
  If[env === $Failed, Return[$Failed]];
  r = env["Rank"];
  numList = DeleteCases
    [Flatten @ tabletolist @ evalpath
      [Sum[Subscript[\[Lambda], s] env["quiverPositiveComponents"][Subscript[\[Omega], s]], {s, 1, r}] +
        env["quiverPositiveComponents"][\[CurlyRho]]], Invisible[0]];
  expr = (Times @@ numList)/env["WeylDenominator"];
  expr
];

ClearAll[qdimensionPolynomial];
qdimensionPolynomial[dd_String] := qdimensionPolynomial[dd] = Module[
  {env = LieEnv[dd], r, numList, expr, qn},
  If[env === $Failed, Return[$Failed]];
  r = env["Rank"];
  numList = DeleteCases
    [Flatten @ tabletolist @ evalpath
      [Sum[Subscript[\[Lambda], s] env["quiverPositiveComponents"][Subscript[\[Omega], s]], {s, 1, r}] +
        env["quiverPositiveComponents"][\[CurlyRho]]], Invisible[0]];
  numList = Map[qn,numList]/. {qn[s_]->qnum[s,q]};       
  expr = (Times @@ numList)/env["quantumWeylDenominator"];
  expr];
      
(* End[] of the Private context in the FR version  *)

 End[](* end of the Private context *)

(* Messages for the public symbols : check types, etc *)
DimensionIrrepLie::baddd   = "`1` is not a supported Lie algebra spec (use standard strings like \"A3\", \"D4\", \"E6\", \"G2\").";
DimensionIrrepLie::badrank = "Rank `1` (for `2`) does not match the length of the highest-weight list `3`.";
DimensionIrrepLie::badq    = "The third argument should be a formal symbol (e.g. q), not `1`.";
(* End of Messages check *)

(* Particular case SU : fast algorithm *)
DimensionIrrepLie[ruplet_] := With[{r = Length[ruplet]}, 
    Product[Product[p + Sum[ruplet[[j]], {j, s, -1 + p + s}], {s, 1, 1 - p + r}], 
      {p, 1, r}]/BarnesG[2 + r]];
(* General case : classical *)

DimensionIrrepLie[dd_String, ruplet_List] := Module[
{env = `Private`LieEnv[dd], r, expr},
If[env === $Failed, Message[DimensionIrrepLie::baddd, dd]; Return[$Failed]];
r = env["Rank"];
If[Length@ruplet =!= r, Message[DimensionIrrepLie::badrank, r, dd, ruplet]; Return[$Failed]];
  expr = `Private`dimensionPolynomial[dd];
expr/. Subscript[s_Symbol,i_Integer]/;
SymbolName[Unevaluated[s]]=="\[Lambda]"&&1<=i<=r:>ruplet[[i]]
];  

(* General case : quantum *)

DimensionIrrepLie[dd_String,ruplet_List,qi_]/; qi===q := Module[
{env = `Private`LieEnv[dd], r, expr},
If[env === $Failed, Message[DimensionIrrepLie::baddd, dd]; Return[$Failed]];
r = env["Rank"];
If[Length@ruplet =!= r, Message[DimensionIrrepLie::badrank, r, dd, ruplet]; Return[$Failed]];
  expr = `Private`qdimensionPolynomial[dd];
expr/. Subscript[s_Symbol,i_Integer]/;
SymbolName[Unevaluated[s]]=="\[Lambda]"&&1<=i<=r:>ruplet[[i]]
]


Protect[DimensionIrrepLie];
EndPackage[];

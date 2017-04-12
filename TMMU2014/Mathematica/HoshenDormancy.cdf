(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 9.0' *)

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
NotebookDataPosition[      1063,         20]
NotebookDataLength[     19402,        405]
NotebookOptionsPosition[     19878,        399]
NotebookOutlinePosition[     20405,        420]
CellTagsIndexPosition[     20362,        417]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`dorfrac$$ = 0.02, $CellContext`dortime$$ = 
    7, $CellContext`ec50$$ = 50., $CellContext`everyH$$ = 
    24, $CellContext`initN$$ = 10000., $CellContext`ke$$ = 
    0.5, $CellContext`mu$$ = 16, $CellContext`Ndrug$$ = 
    7, $CellContext`PMR$$ = 5, $CellContext`runMax$$ = 
    80, $CellContext`sigma$$ = 5, $CellContext`xm$$ = 2, $CellContext`ym$$ = 
    1000, Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Style["Mahidol-Oxford Tropical Medicine Research Unit", Bold]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold["M. B. Hoshen et al. Parasitology (2000) 121, 237-246"], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`xm$$], 2, "time at Max Concentration(hrs)"}, 1, 
      20}, {{
       Hold[$CellContext`ym$$], 1000, "Max Concentration(ng/ml)"}, 0.5, 
      2000.}, {{
       Hold[$CellContext`ke$$], 0.5, "Decay rate(/hrs)"}, 0.001, 10}, {{
       Hold[$CellContext`initN$$], 10000., 
       "initial parasitaemia (parasite/\[Mu]l)"}, 10., 1.*^6}, {{
       Hold[$CellContext`PMR$$], 5, "parasite multiplication rate"}, 1, 30, 
      1}, {{
       Hold[$CellContext`mu$$], 16, "mean age of parasites"}, 1, 48, 1}, {{
       Hold[$CellContext`sigma$$], 5, "SD of age of parasites"}, 1, 48, 1}, {{
       Hold[$CellContext`everyH$$], 24, "drug period (hrs)"}, 1, 48, 1}, {{
       Hold[$CellContext`Ndrug$$], 7, "number of drug"}, 1, 14, 1}, {{
       Hold[$CellContext`ec50$$], 50., "EC50(ng/ml)"}, 0.1, 1000}, {{
       Hold[$CellContext`runMax$$], 80, "max simulation time(hrs)"}, 10, 200, 
      1}, {{
       Hold[$CellContext`dorfrac$$], 0.02, "Dormancy Fraction"}, 0., 0.09, 
      0.0001}, {{
       Hold[$CellContext`dortime$$], 7, "Dormancy period(hrs)"}, 1, 200, 1}}, 
    Typeset`size$$ = {348., {214., 218.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`xm$10717$$ = 0, $CellContext`ym$10718$$ = 
    0, $CellContext`ke$10719$$ = 0, $CellContext`initN$10720$$ = 
    0, $CellContext`PMR$10721$$ = 0, $CellContext`mu$10722$$ = 
    0, $CellContext`sigma$10723$$ = 0, $CellContext`everyH$10724$$ = 
    0, $CellContext`Ndrug$10725$$ = 0, $CellContext`ec50$10726$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`dorfrac$$ = 0.02, $CellContext`dortime$$ = 
        7, $CellContext`ec50$$ = 50., $CellContext`everyH$$ = 
        24, $CellContext`initN$$ = 10000., $CellContext`ke$$ = 
        0.5, $CellContext`mu$$ = 16, $CellContext`Ndrug$$ = 
        7, $CellContext`PMR$$ = 5, $CellContext`runMax$$ = 
        80, $CellContext`sigma$$ = 5, $CellContext`xm$$ = 
        2, $CellContext`ym$$ = 1000}, "ControllerVariables" :> {
        Hold[$CellContext`xm$$, $CellContext`xm$10717$$, 0], 
        Hold[$CellContext`ym$$, $CellContext`ym$10718$$, 0], 
        Hold[$CellContext`ke$$, $CellContext`ke$10719$$, 0], 
        Hold[$CellContext`initN$$, $CellContext`initN$10720$$, 0], 
        Hold[$CellContext`PMR$$, $CellContext`PMR$10721$$, 0], 
        Hold[$CellContext`mu$$, $CellContext`mu$10722$$, 0], 
        Hold[$CellContext`sigma$$, $CellContext`sigma$10723$$, 0], 
        Hold[$CellContext`everyH$$, $CellContext`everyH$10724$$, 0], 
        Hold[$CellContext`Ndrug$$, $CellContext`Ndrug$10725$$, 0], 
        Hold[$CellContext`ec50$$, $CellContext`ec50$10726$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> ($CellContext`points = Table[{$CellContext`t, 
           $CellContext`genpoints[$CellContext`xm$$, $CellContext`ym$$, \
$CellContext`ke$$, $CellContext`t]}, {$CellContext`t, 0, 20, 0.1}]; 
       GraphicsColumn[{
          
          ListPlot[$CellContext`points, Joined -> True, PlotRange -> All, 
           Frame -> {True, True, False, False}, 
           FrameLabel -> {"time(hrs)", "DHA concentration(ng/ml)"}, 
           PlotStyle -> {Black, Thick}, GridLines -> Automatic, 
           GridLinesStyle -> Directive[LightGray, Dashed], LabelStyle -> 
           Directive[Medium, FontFamily -> "Helvetica"]], 
          ListPlot[
           $CellContext`Hoshen[$CellContext`initN$$, $CellContext`PMR$$, \
$CellContext`mu$$, $CellContext`sigma$$, 
            48, {$CellContext`xm$$, $CellContext`ym$$, $CellContext`ke$$}, \
$CellContext`everyH$$, $CellContext`Ndrug$$, $CellContext`ec50$$, \
$CellContext`runMax$$, $CellContext`dorfrac$$, $CellContext`dortime$$, 2], 
           Joined -> True, Frame -> {True, True, False, False}, 
           FrameLabel -> {"time(hrs)", "log10 parasitaemia(/\[Mu]l)"}, 
           PlotStyle -> {Black, Thick}, GridLines -> Automatic, 
           GridLinesStyle -> Directive[LightGray, Dashed], LabelStyle -> 
           Directive[Medium, FontFamily -> "Helvetica"]]}, Frame -> All]), 
      "Specifications" :> {
        Style["Mahidol-Oxford Tropical Medicine Research Unit", Bold], 
        Delimiter, "M. B. Hoshen et al. Parasitology (2000) 121, 237-246", 
        Delimiter, {{$CellContext`xm$$, 2, "time at Max Concentration(hrs)"}, 
         1, 20, Appearance -> 
         "Labeled"}, {{$CellContext`ym$$, 1000, "Max Concentration(ng/ml)"}, 
         0.5, 2000., Appearance -> 
         "Labeled"}, {{$CellContext`ke$$, 0.5, "Decay rate(/hrs)"}, 0.001, 10,
          Appearance -> "Labeled"}, 
        Delimiter, {{$CellContext`initN$$, 10000., 
          "initial parasitaemia (parasite/\[Mu]l)"}, 10., 1.*^6, Appearance -> 
         "Labeled"}, {{$CellContext`PMR$$, 5, "parasite multiplication rate"},
          1, 30, 1, Appearance -> 
         "Labeled"}, {{$CellContext`mu$$, 16, "mean age of parasites"}, 1, 48,
          1, Appearance -> 
         "Labeled"}, {{$CellContext`sigma$$, 5, "SD of age of parasites"}, 1, 
         48, 1, Appearance -> "Labeled"}, 
        Delimiter, {{$CellContext`everyH$$, 24, "drug period (hrs)"}, 1, 48, 
         1, Appearance -> 
         "Labeled"}, {{$CellContext`Ndrug$$, 7, "number of drug"}, 1, 14, 1, 
         Appearance -> "Labeled"}, {{$CellContext`ec50$$, 50., "EC50(ng/ml)"},
          0.1, 1000, Appearance -> 
         "Labeled"}, {{$CellContext`runMax$$, 80, "max simulation time(hrs)"},
          10, 200, 1, Appearance -> "Labeled"}, 
        Delimiter, {{$CellContext`dorfrac$$, 0.02, "Dormancy Fraction"}, 0., 
         0.09, 0.0001, Appearance -> 
         "Labeled"}, {{$CellContext`dortime$$, 7, "Dormancy period(hrs)"}, 1, 
         200, 1, Appearance -> "Labeled"}}, 
      "Options" :> {ContinuousAction -> False, ControlPlacement -> Right}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{830., {252., 257.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`Hoshen[
          Pattern[$CellContext`initN, 
           Blank[]], 
          Pattern[$CellContext`PMR, 
           Blank[Integer]], 
          Pattern[$CellContext`mu, 
           Blank[]], 
          Pattern[$CellContext`sigma, 
           Blank[]], 
          Pattern[$CellContext`hours, 
           Blank[Integer]], 
          Pattern[$CellContext`concdat, 
           Blank[List]], 
          Pattern[$CellContext`everyH, 
           Blank[Integer]], 
          Pattern[$CellContext`Ndrug, 
           Blank[Integer]], 
          Pattern[$CellContext`ec50, 
           Blank[]], 
          Pattern[$CellContext`runMax, 
           Blank[Integer]], 
          Pattern[$CellContext`dorfrac, 
           Blank[]], 
          Pattern[$CellContext`dortime, 
           Blank[]], 
          Pattern[$CellContext`outfile, 
           Blank[]]] := 
        Module[{$CellContext`runs, $CellContext`concls, $CellContext`i, \
$CellContext`j, $CellContext`lst, $CellContext`time, $CellContext`output, \
$CellContext`dorls, $CellContext`dorperd, $CellContext`xm, $CellContext`ym, \
$CellContext`ke}, $CellContext`runs = 
           True; $CellContext`time = $CellContext`runMax; \
$CellContext`dorperd = 
           0; $CellContext`dorls = {}; $CellContext`output = {}; \
$CellContext`xm = Part[$CellContext`concdat, 1]; $CellContext`ym = 
           Part[$CellContext`concdat, 2]; $CellContext`ke = 
           Part[$CellContext`concdat, 
             3]; $CellContext`concls = $CellContext`ConcMod2[$CellContext`xm, \
$CellContext`ym, $CellContext`ke, $CellContext`everyH, $CellContext`Ndrug, \
$CellContext`ec50]; $CellContext`lst = \
$CellContext`DistributeN[$CellContext`initN, $CellContext`hours, \
$CellContext`mu, $CellContext`sigma]; 
          AppendTo[$CellContext`output, $CellContext`lst]; $CellContext`i = 0; 
          While[
            
            And[$CellContext`runs == 
             True, $CellContext`i < $CellContext`time], $CellContext`i = \
$CellContext`i + 
              1; $CellContext`lst = \
$CellContext`Shiftonehour[$CellContext`lst, $CellContext`PMR]; \
$CellContext`dorls = $CellContext`DorCollect[$CellContext`dorls, \
$CellContext`dorfrac Join[$CellContext`lst, {0}]]; $CellContext`lst = (
               1. - $CellContext`dorfrac) $CellContext`lst; 
            If[Part[$CellContext`dorls, 1, 
                Length[
                 Part[$CellContext`dorls, 1]]] == Round[
                RandomReal[
                 
                 NormalDistribution[$CellContext`dortime, 
                  2]]], $CellContext`lst = $CellContext`lst + 
                Part[$CellContext`dorls, 1, 
                  Span[1, Length[
                    Part[$CellContext`dorls, 1]] - 1]]; $CellContext`dorls = 
               Drop[$CellContext`dorls, 1]; Null]; 
            For[$CellContext`j = 1, $CellContext`j <= 
              Length[$CellContext`lst], $CellContext`j = $CellContext`j + 
               1, $CellContext`lst = 
               ReplacePart[$CellContext`lst, $CellContext`j -> (
                   1. - $CellContext`HoshenDHAEff[$CellContext`j] 
                   Part[$CellContext`concls, $CellContext`i, 3]) 
                  Part[$CellContext`lst, $CellContext`j]]; Null]; 
            AppendTo[$CellContext`output, $CellContext`lst]; Null]; 
          If[$CellContext`outfile == 2, 
            Table[{$CellContext`i - 1, 
              Log10[
               $CellContext`CountRing[
                Part[$CellContext`output, $CellContext`i], {1, 24}, 
                0]]}, {$CellContext`i, 1, 
              Length[$CellContext`output]}]]]; $CellContext`genpoints[
          Pattern[$CellContext`xm, 
           Blank[]], 
          Pattern[$CellContext`ym, 
           Blank[]], 
          Pattern[$CellContext`ke, 
           Blank[]], 
          Pattern[$CellContext`x, 
           Blank[]]] := 
        Piecewise[{{$CellContext`ym - ($CellContext`ym/$CellContext`xm) \
($CellContext`xm - $CellContext`x), $CellContext`x <= $CellContext`xm}, \
{$CellContext`ym 
            Exp[(-$CellContext`ke) ($CellContext`x - $CellContext`xm)], \
$CellContext`x > $CellContext`xm}}]; $CellContext`ConcMod2[
          Pattern[$CellContext`xm, 
           Blank[]], 
          Pattern[$CellContext`ym, 
           Blank[]], 
          Pattern[$CellContext`ke, 
           Blank[]], 
          Pattern[$CellContext`everyH, 
           Blank[Integer]], 
          Pattern[$CellContext`Ndrug, 
           Blank[Integer]], 
          Pattern[$CellContext`ec50, 
           Blank[Real]]] := 
        Module[{$CellContext`i, $CellContext`j, $CellContext`nd, \
$CellContext`dat, $CellContext`maxpoint, $CellContext`part1, \
$CellContext`part2, $CellContext`fitke, $CellContext`modka, $CellContext`x, \
$CellContext`modke, $CellContext`fn, $CellContext`endtime, $CellContext`conc, \
$CellContext`concls, $CellContext`TIMEMAX}, $CellContext`TIMEMAX = 
           1000; $CellContext`j = 0; $CellContext`nd = 
           1; $CellContext`concls = {}; $CellContext`conc = 0; 
          For[$CellContext`i = 
            0, $CellContext`i < $CellContext`Ndrug $CellContext`everyH, \
$CellContext`i = $CellContext`i + 1, 
            If[$CellContext`j != $CellContext`everyH, $CellContext`conc = 
               ReplaceAll[
                 $CellContext`genpoints[$CellContext`xm, $CellContext`ym, \
$CellContext`ke, $CellContext`x], $CellContext`x -> $CellContext`j]; 
              AppendTo[$CellContext`concls, {$CellContext`i, \
$CellContext`conc, 
                 $CellContext`HoshenPDEff[$CellContext`conc, \
$CellContext`ec50]}]; Null]; If[
              
              And[$CellContext`j == $CellContext`everyH, $CellContext`nd < \
$CellContext`Ndrug], $CellContext`nd = $CellContext`nd + 1; $CellContext`conc = 
               ReplaceAll[$CellContext`conc + \
$CellContext`genpoints[$CellContext`xm, $CellContext`ym, $CellContext`ke, \
$CellContext`x], $CellContext`x -> $CellContext`j]; 
              AppendTo[$CellContext`concls, {$CellContext`i, \
$CellContext`conc, 
                 $CellContext`HoshenPDEff[$CellContext`conc, \
$CellContext`ec50]}]; $CellContext`j = 0; 
              Null]; $CellContext`j = $CellContext`j + 1; Null]; 
          For[$CellContext`i = $CellContext`Ndrug $CellContext`everyH; \
$CellContext`j = $CellContext`everyH, $CellContext`i <= $CellContext`TIMEMAX, \
$CellContext`i = $CellContext`i + 1, $CellContext`conc = ReplaceAll[
               $CellContext`genpoints[$CellContext`xm, $CellContext`ym, \
$CellContext`ke, $CellContext`x], $CellContext`x -> $CellContext`j]; 
            AppendTo[$CellContext`concls, {$CellContext`i, $CellContext`conc, 
               $CellContext`HoshenPDEff[$CellContext`conc, \
$CellContext`ec50]}]; $CellContext`j = $CellContext`j + 1; 
            Null]; $CellContext`concls]; $CellContext`DistributeN[
          Pattern[$CellContext`initN, 
           Blank[]], 
          Pattern[$CellContext`LC, 
           Blank[Integer]], 
          Pattern[$CellContext`mu, 
           Blank[]], 
          Pattern[$CellContext`sigma, 
           Blank[]]] := 
        Module[{$CellContext`distr, $CellContext`x}, $CellContext`distr = 
           Table[
             N[
              PDF[
               
               NormalDistribution[$CellContext`mu, $CellContext`sigma], \
$CellContext`x]], {$CellContext`x, 1, $CellContext`LC}]; ($CellContext`initN/
            
            Total[$CellContext`distr]) $CellContext`distr]; \
$CellContext`Shiftonehour[
          Pattern[$CellContext`ls, 
           Blank[List]], 
          Pattern[$CellContext`PMR, 
           Blank[Integer]]] := 
        Module[{$CellContext`tmp}, $CellContext`tmp = $CellContext`ls; \
$CellContext`tmp = RotateRight[$CellContext`tmp]; $CellContext`tmp = 
           ReplacePart[$CellContext`tmp, 1 -> 
             Part[$CellContext`tmp, 
                1] $CellContext`PMR]; $CellContext`tmp]; \
$CellContext`DorCollect[
          Pattern[$CellContext`dorls, 
           Blank[]], 
          Pattern[$CellContext`doraddls, 
           Blank[]]] := 
        Module[{$CellContext`newdorls, $CellContext`dorlslength}, \
$CellContext`newdorls = $CellContext`dorls; 
          AppendTo[$CellContext`newdorls, $CellContext`doraddls]; \
$CellContext`dorlslength = Length[$CellContext`newdorls]; 
          If[Length[$CellContext`newdorls] > 0, Part[$CellContext`newdorls, 
               Span[1, Length[$CellContext`newdorls] - 1], 
               Length[
                Part[$CellContext`newdorls, 1]]] = Part[$CellContext`newdorls, 
                Span[1, Length[$CellContext`newdorls] - 1], 
                Length[
                 Part[$CellContext`newdorls, 1]]] + 1; 
            Null]; $CellContext`newdorls]; $CellContext`HoshenDHAEff[
          Pattern[$CellContext`age, 
           Blank[Integer]]] := 
        Module[{$CellContext`fn}, $CellContext`fn = Piecewise[{{0., 
               Inequality[
               0, LessEqual, $CellContext`age, Less, 3]}, {($CellContext`age - 
                3.)/8., 3 <= $CellContext`age <= 11}, {1., 
               Inequality[
               11, Less, $CellContext`age, LessEqual, 
                32]}, {(-$CellContext`age)/8. + 5., 
               Inequality[32, Less, $CellContext`age, LessEqual, 40]}, {0., 
               Inequality[
               40, Less, $CellContext`age, LessEqual, 
                48]}}]; $CellContext`fn]; $CellContext`HoshenPDEff[
          Pattern[$CellContext`conc, 
           Blank[]], 
          Pattern[$CellContext`ec50, 
           Blank[]]] := 
        Module[{$CellContext`pd}, $CellContext`pd = \
$CellContext`conc/($CellContext`conc + $CellContext`ec50); $CellContext`pd]; \
$CellContext`CountRing[
          Pattern[$CellContext`ls, 
           Blank[List]], 
          Pattern[$CellContext`Age, 
           Blank[List]], 
          Pattern[$CellContext`fn, 
           Blank[Integer]]] := 
        Module[{$CellContext`AGEbegin, $CellContext`AGEend, $CellContext`tot, \
$CellContext`pls, $CellContext`i}, $CellContext`AGEbegin = 
           Part[$CellContext`Age, 1]; $CellContext`AGEend = 
           Part[$CellContext`Age, 2]; $CellContext`pls = Table[
             $CellContext`PRingFunc[$CellContext`i, $CellContext`AGEbegin, \
$CellContext`AGEend], {$CellContext`i, 1, 
              Length[$CellContext`ls]}]; 
          If[$CellContext`fn == 
            1, $CellContext`tot = Dot[$CellContext`ls, $CellContext`pls]; 
            Null, $CellContext`tot = Total[
               Part[$CellContext`ls, 
                Span[$CellContext`AGEbegin, $CellContext`AGEend]]]; 
            Null]; $CellContext`tot]; $CellContext`PRingFunc[
          Pattern[$CellContext`i, 
           Blank[Integer]], 
          Pattern[$CellContext`a1, 
           Blank[Integer]], 
          Pattern[$CellContext`a2, 
           Blank[Integer]]] := 
        Piecewise[{{1, $CellContext`i < $CellContext`a1}, {
            Exp[
            Log[0.5] (($CellContext`i - $CellContext`a1)/($CellContext`a2 - \
$CellContext`a1))], $CellContext`i >= $CellContext`a1}}]; Null}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
},
WindowSize->{1114, 670},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
PrivateNotebookOptions->{"VersionedStylesheet"->{"Default.nb"[8.] -> False}},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"9.0 for Microsoft Windows (64-bit) (January 25, 2013)",
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
Cell[1463, 33, 18411, 364, 526, "Output"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature BvDuFFGFSLcznC1U89n65uNn *)

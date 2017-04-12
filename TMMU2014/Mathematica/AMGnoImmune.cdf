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
NotebookDataLength[     19061,        357]
NotebookOptionsPosition[     19538,        351]
NotebookOutlinePosition[     20064,        372]
CellTagsIndexPosition[     20021,        369]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`d$$ = 72, $CellContext`inits$$ = 
    4, $CellContext`initx$$ = 120, $CellContext`inity$$ = 
    1, $CellContext`r$$ = 16, $CellContext`runT$$ = 
    200, $CellContext`\[Alpha]$$ = 0.2, $CellContext`\[Beta]$$ = 
    0.1, $CellContext`\[CapitalLambda]$$ = 1, $CellContext`\[Mu]$$ = 0.00833, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Style["Mahidol-Oxford Tropical Medicine Research Unit", Bold]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold["R. M. Anderson et al. Parasitology (1989) 99, S59-S79"], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`\[Alpha]$$], 0.2, "Dead rate of IBRCs \[Alpha]"}, 
      0.01, 5.}, {{
       Hold[$CellContext`\[Beta]$$], 0.1, 
       "prob. RBCs become infected \[Beta]"}, 0.01, 5.}, {{
       Hold[$CellContext`\[CapitalLambda]$$], 1, 
       "birth rate of new RBCs \[CapitalLambda]"}, 0.1, 10.}, {{
       Hold[$CellContext`\[Mu]$$], 0.00833, 
       "\[Mu] where \!\(\*FractionBox[\(1\), \(\[Mu]\)]\)=RBCs life \
expectancy "}, 0.001, 0.1}, {{
       Hold[$CellContext`r$$], 16, "merozoites/IRBC r"}, 0., 40}, {{
       Hold[$CellContext`d$$], 72, 
       "d where \!\(\*FractionBox[\(1\), \(d\)]\)=merozoite life expectancy \
"}, 0., 200}, {{
       Hold[$CellContext`runT$$], 200, "max time"}, 1., 700., 1.}, {
      Hold[
       Style[
       "threshold condition (r-1)\[Beta]\[CapitalLambda] > \[Mu]d/\
\[CapitalLambda] : True", Bold]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`initx$$], 120, "Uninfected RBC x(0)"}, 1, 1000.}, {{
       Hold[$CellContext`inity$$], 1, "Infected RBC y(0)"}, 0.1, 100.}, {{
       Hold[$CellContext`inits$$], 4, "merozoite s(0)"}, 0., 100.}}, 
    Typeset`size$$ = {540., {191., 195.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`\[Alpha]$602$$ = 0, $CellContext`\[Beta]$603$$ = 
    0, $CellContext`\[CapitalLambda]$604$$ = 0, $CellContext`\[Mu]$605$$ = 
    0, $CellContext`r$606$$ = 0, $CellContext`d$607$$ = 
    0, $CellContext`runT$608$$ = 0, $CellContext`initx$609$$ = 
    0, $CellContext`inity$610$$ = 0, $CellContext`inits$611$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`d$$ = 72, $CellContext`inits$$ = 
        4, $CellContext`initx$$ = 120, $CellContext`inity$$ = 
        1, $CellContext`r$$ = 16, $CellContext`runT$$ = 
        200, $CellContext`\[Alpha]$$ = 0.2, $CellContext`\[Beta]$$ = 
        0.1, $CellContext`\[CapitalLambda]$$ = 1, $CellContext`\[Mu]$$ = 
        0.00833}, "ControllerVariables" :> {
        Hold[$CellContext`\[Alpha]$$, $CellContext`\[Alpha]$602$$, 0], 
        Hold[$CellContext`\[Beta]$$, $CellContext`\[Beta]$603$$, 0], 
        Hold[$CellContext`\[CapitalLambda]$$, \
$CellContext`\[CapitalLambda]$604$$, 0], 
        Hold[$CellContext`\[Mu]$$, $CellContext`\[Mu]$605$$, 0], 
        Hold[$CellContext`r$$, $CellContext`r$606$$, 0], 
        Hold[$CellContext`d$$, $CellContext`d$607$$, 0], 
        Hold[$CellContext`runT$$, $CellContext`runT$608$$, 0], 
        Hold[$CellContext`initx$$, $CellContext`initx$609$$, 0], 
        Hold[$CellContext`inity$$, $CellContext`inity$610$$, 0], 
        Hold[$CellContext`inits$$, $CellContext`inits$611$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> ($CellContext`sol = 
        NDSolve[{
          Derivative[
            1][$CellContext`x][$CellContext`t] == $CellContext`\
\[CapitalLambda]$$ - $CellContext`\[Mu]$$ $CellContext`x[$CellContext`t] - \
$CellContext`\[Beta]$$ $CellContext`x[$CellContext`t] \
$CellContext`s[$CellContext`t], 
           Derivative[
            1][$CellContext`y][$CellContext`t] == $CellContext`\[Beta]$$ \
$CellContext`x[$CellContext`t] $CellContext`s[$CellContext`t] - $CellContext`\
\[Alpha]$$ $CellContext`y[$CellContext`t], 
           Derivative[
            1][$CellContext`s][$CellContext`t] == $CellContext`\[Alpha]$$ \
$CellContext`r$$ $CellContext`y[$CellContext`t] - $CellContext`d$$ \
$CellContext`s[$CellContext`t] - $CellContext`\[Beta]$$ \
$CellContext`s[$CellContext`t] $CellContext`x[$CellContext`t], $CellContext`x[
            0] == $CellContext`initx$$, $CellContext`y[
            0] == $CellContext`inity$$, $CellContext`s[
            0] == $CellContext`inits$$}, {$CellContext`x, $CellContext`y, \
$CellContext`s}, {$CellContext`t, 0, $CellContext`runT$$}, MaxSteps -> 
          Infinity, 
          Method -> {$CellContext`StiffnessSwitching, 
            Method -> {$CellContext`ExplicitRungeKutta, Automatic}}, 
          AccuracyGoal -> 5, PrecisionGoal -> 
          4]; $CellContext`cond = ($CellContext`r$$ - 
           1.) $CellContext`\[Beta]$$ $CellContext`\[CapitalLambda]$$ > \
$CellContext`\[Mu]$$ ($CellContext`d$$/$CellContext`\[CapitalLambda]$$); 
       GraphicsGrid[{{
           Image[CompressedData["
1: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
xq43dA==
            "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
           Plot[
            Evaluate[
             ReplaceAll[
              $CellContext`x[$CellContext`t], $CellContext`sol]], \
{$CellContext`t, 0, $CellContext`runT$$}, PlotStyle -> {Thick, Red}, 
            PlotRange -> All, Frame -> {True, True, False, False}, 
            FrameLabel -> {"Time in days", "Uninfected RBCs"}, LabelStyle -> 
            Directive[Black, Medium], GridLines -> Automatic, GridLinesStyle -> 
            Directive[LightGray, Dashed]]}, {
           Plot[
            Evaluate[
             ReplaceAll[
              $CellContext`y[$CellContext`t], $CellContext`sol]], \
{$CellContext`t, 0, $CellContext`runT$$}, PlotStyle -> {Brown, Thick}, 
            PlotRange -> All, Frame -> {True, True, False, False}, 
            FrameLabel -> {"Time in days", "Infected RBCs"}, LabelStyle -> 
            Directive[Black, Medium], GridLines -> Automatic, GridLinesStyle -> 
            Directive[LightGray, Dashed]], 
           Plot[
            Evaluate[
             ReplaceAll[
              $CellContext`s[$CellContext`t], $CellContext`sol]], \
{$CellContext`t, 0, $CellContext`runT$$}, PlotStyle -> {Blue, Thick}, 
            PlotRange -> All, Frame -> {True, True, False, False}, 
            FrameLabel -> {"Time in days", "Merozoites"}, LabelStyle -> 
            Directive[Black, Medium], GridLines -> Automatic, GridLinesStyle -> 
            Directive[LightGray, Dashed]]}}, ImageSize -> 540]), 
      "Specifications" :> {
        Style["Mahidol-Oxford Tropical Medicine Research Unit", Bold], 
        Delimiter, "R. M. Anderson et al. Parasitology (1989) 99, S59-S79", 
        Delimiter, {{$CellContext`\[Alpha]$$, 0.2, 
          "Dead rate of IBRCs \[Alpha]"}, 0.01, 5., Appearance -> 
         "Labeled"}, {{$CellContext`\[Beta]$$, 0.1, 
          "prob. RBCs become infected \[Beta]"}, 0.01, 5., Appearance -> 
         "Labeled"}, {{$CellContext`\[CapitalLambda]$$, 1, 
          "birth rate of new RBCs \[CapitalLambda]"}, 0.1, 10., Appearance -> 
         "Labeled"}, {{$CellContext`\[Mu]$$, 0.00833, 
          "\[Mu] where \!\(\*FractionBox[\(1\), \(\[Mu]\)]\)=RBCs life \
expectancy "}, 0.001, 0.1, Appearance -> 
         "Labeled"}, {{$CellContext`r$$, 16, "merozoites/IRBC r"}, 0., 40, 
         Appearance -> 
         "Labeled"}, {{$CellContext`d$$, 72, 
          "d where \!\(\*FractionBox[\(1\), \(d\)]\)=merozoite life \
expectancy "}, 0., 200, Appearance -> 
         "Labeled"}, {{$CellContext`runT$$, 200, "max time"}, 1., 700., 1., 
         Appearance -> "Labeled"}, Delimiter, 
        Style[
        "threshold condition (r-1)\[Beta]\[CapitalLambda] > \[Mu]d/\
\[CapitalLambda] : True", Bold], 
        Delimiter, {{$CellContext`initx$$, 120, "Uninfected RBC x(0)"}, 1, 
         1000., Appearance -> 
         "Labeled"}, {{$CellContext`inity$$, 1, "Infected RBC y(0)"}, 0.1, 
         100., Appearance -> 
         "Labeled"}, {{$CellContext`inits$$, 4, "merozoite s(0)"}, 0., 100., 
         Appearance -> "Labeled"}}, 
      "Options" :> {ContinuousAction -> False, ControlPlacement -> Top}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{591., {418., 423.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
},
WindowSize->{783, 852},
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
Cell[1463, 33, 18071, 316, 858, "Output"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Tu0i7z8VQB7hrBK5LR@kkcvK *)

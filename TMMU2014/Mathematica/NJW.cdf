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
NotebookDataLength[     18997,        385]
NotebookOptionsPosition[     19472,        379]
NotebookOutlinePosition[     19999,        400]
CellTagsIndexPosition[     19956,        397]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`endRing$$ = 48, $CellContext`initN$$ = 
    4., $CellContext`logscale$$ = False, $CellContext`mu$$ = 
    16, $CellContext`pmr$$ = 10, $CellContext`runT$$ = 
    120, $CellContext`sigma$$ = 5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Style["Mahidol-Oxford Tropical Medicine Research Unit", Bold]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold["N.J. White et al. T ROY SOC TROP MED H (1992) 86,590-597"], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`initN$$], 4., "log10 initial number of parasites"}, 
      3., 14., 0.01}, {{
       Hold[$CellContext`mu$$], 16, "Mean age (hours)"}, 1, 48, 1}, {{
       Hold[$CellContext`sigma$$], 5, "SD (hours)"}, 1, 48, 1}, {{
       Hold[$CellContext`pmr$$], 10, "mutiplication rate"}, 1, 30, 1}, {{
       Hold[$CellContext`endRing$$], 48, 
       "Max age that can be observed(hours)"}, 1, 48, 1}, {{
       Hold[$CellContext`runT$$], 120, "time (hours)"}, 1, 240, 1}, {{
       Hold[$CellContext`logscale$$], False, "log10 scale"}, {True, False}}}, 
    Typeset`size$$ = {516., {320., 325.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`initN$6016$$ = 0, $CellContext`mu$6017$$ = 
    0, $CellContext`sigma$6018$$ = 0, $CellContext`pmr$6019$$ = 
    0, $CellContext`endRing$6020$$ = 0, $CellContext`runT$6021$$ = 
    0, $CellContext`logscale$6022$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`endRing$$ = 48, $CellContext`initN$$ = 
        4., $CellContext`logscale$$ = False, $CellContext`mu$$ = 
        16, $CellContext`pmr$$ = 10, $CellContext`runT$$ = 
        120, $CellContext`sigma$$ = 5}, "ControllerVariables" :> {
        Hold[$CellContext`initN$$, $CellContext`initN$6016$$, 0], 
        Hold[$CellContext`mu$$, $CellContext`mu$6017$$, 0], 
        Hold[$CellContext`sigma$$, $CellContext`sigma$6018$$, 0], 
        Hold[$CellContext`pmr$$, $CellContext`pmr$6019$$, 0], 
        Hold[$CellContext`endRing$$, $CellContext`endRing$6020$$, 0], 
        Hold[$CellContext`runT$$, $CellContext`runT$6021$$, 0], 
        Hold[$CellContext`logscale$$, $CellContext`logscale$6022$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> ($CellContext`distr = Table[
          N[
           PDF[
            
            NormalDistribution[$CellContext`mu$$, $CellContext`sigma$$], \
$CellContext`x]], {$CellContext`x, 1, 
           48}]; $CellContext`dat = $CellContext`NJWhite[
         10.^$CellContext`initN$$, 
          48, $CellContext`mu$$, $CellContext`sigma$$, $CellContext`pmr$$, \
$CellContext`endRing$$, $CellContext`runT$$, 0]; GraphicsColumn[{
          Which[$CellContext`logscale$$ == False, 
           
           ListPlot[(10.^$CellContext`initN$$/
             Total[$CellContext`distr]) $CellContext`distr, ColorFunction -> 
            LightGray, Filling -> Axis, Frame -> {True, True, False, False}, 
            FrameLabel -> {"Age of parasites (hours)", "Number of parasites"},
             PlotLabel -> "Parasite Age Distribution", Joined -> True, 
            ImageSize -> 480, LabelStyle -> 
            Directive[Black, Medium]], $CellContext`logscale$$ == True, 
           ListPlot[
            
            Log10[(10.^$CellContext`initN$$/
              Total[$CellContext`distr]) $CellContext`distr], ColorFunction -> 
            LightGray, Filling -> Axis, Frame -> {True, True, False, False}, 
            FrameLabel -> {
             "Age of parasites (hours)", "log10 Number of parasites"}, 
            PlotLabel -> "Parasite Age Distribution", Joined -> True, 
            FillingStyle -> LightPurple, PlotRange -> {0, 13.5}, ImageSize -> 
            480, LabelStyle -> Directive[Black, Medium]]], 
          Which[$CellContext`logscale$$ == False, 
           ListPlot[
            Map[Total[
              Part[#, 
               Span[1, $CellContext`endRing$$]]]& , $CellContext`dat], Joined -> 
            True, Frame -> {True, True, False, False}, 
            PlotStyle -> {Thick, Black}, 
            FrameLabel -> {"time (hours)", "number of parasites"}, ImageSize -> 
            480, LabelStyle -> Directive[Black, Medium], ImageSize -> 480, 
            LabelStyle -> Directive[Black, Medium], GridLines -> Automatic, 
            GridLinesStyle -> Directive[LightGray, Dashed], PlotLabel -> 
            "Total Parasites", PlotRange -> {0, Automatic}, LabelStyle -> 
            Directive[Black, Medium], ImageSize -> 
            480], $CellContext`logscale$$ == True, 
           ListPlot[
            Log10[
             Map[Total[
               Part[#, 
                Span[1, $CellContext`endRing$$]]]& , $CellContext`dat]], 
            Joined -> True, PlotStyle -> {Thick, Black}, 
            Frame -> {True, True, False, False}, 
            FrameLabel -> {"time (hours)", "log10 number of parasites"}, 
            GridLines -> Automatic, GridLinesStyle -> 
            Directive[LightGray, Dashed], PlotLabel -> "Total Parasites", 
            PlotRange -> {0, 13.5}, LabelStyle -> Directive[Black, Medium], 
            ImageSize -> 480]]}, Frame -> All]), "Specifications" :> {
        Style["Mahidol-Oxford Tropical Medicine Research Unit", Bold], 
        Delimiter, "N.J. White et al. T ROY SOC TROP MED H (1992) 86,590-597",
         Delimiter, {{$CellContext`initN$$, 4., 
          "log10 initial number of parasites"}, 3., 14., 0.01, Appearance -> 
         "Labeled"}, {{$CellContext`mu$$, 16, "Mean age (hours)"}, 1, 48, 1, 
         Appearance -> "Labeled"}, {{$CellContext`sigma$$, 5, "SD (hours)"}, 
         1, 48, 1, Appearance -> "Labeled"}, 
        Delimiter, {{$CellContext`pmr$$, 10, "mutiplication rate"}, 1, 30, 1, 
         Appearance -> 
         "Labeled"}, {{$CellContext`endRing$$, 48, 
          "Max age that can be observed(hours)"}, 1, 48, 1, Appearance -> 
         "Labeled"}, {{$CellContext`runT$$, 120, "time (hours)"}, 1, 240, 1, 
         Appearance -> "Labeled"}, 
        Delimiter, {{$CellContext`logscale$$, False, "log10 scale"}, {
         True, False}, ControlType -> Checkbox}}, 
      "Options" :> {ContinuousAction -> False, ControlPlacement -> Top}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{567., {493., 498.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`distr = CompressedData["
1:eJxTTMoPSmVkYGAwAOILZ62Smmc1yjx4LOC7SuyP3O+ik14PaxIUvRt1Px6q
XqPsfW+itLzUI9WjO8/6nXrLoGF78dWRT97sWo1dApnTpn3XXpJqENoz6aLu
lXfbvxQ7T9ZPmvvvGo+wveEVW0Wz8wWXjBzW8DYVSwWYOL1S5IzbuMX0eUrs
5cwJzOZv32UbfTO3tmC1doiYeifa0mTXjsAbv1Osbl3d4pbhGG5tNasqruab
kY2pB6fV/QPfbLw3yn5OFlti+7f9wu8GCSs7+78nUjI/7rDbuuXAoxldivad
ZdftFdWL7K9ZvTDbsmS1vYW4cd/TH+fsA82uGLt23ITzYfIw9TD9MPNg5sPs
g9kPcw/MfTD3wtwP8w/MfzD/wvwPCw94+EDDCwACcbl2
          "], $CellContext`dat = CompressedData["
1:eJzt0f9XzXccB/Dma750dsq1SqLJlbRWqfTl3u6XjBapjIPRMdUkRb51cElf
bDJkaeeSktBqNTXfola+TI1mrdOMYqGJ8r1DWdh1ljO/vPYvPH95/vD54XM+
977fz+fz8X7Uik8W9zEzMzO8fdzfPk/NPSZsutRq31ASaWqrnetQZ0jyVt07
PWZQx8r1MTbmSkNRj230QY1TSpLve5MLI5zbXwwdOu5UtMv9Jod/g3tmuZpy
amb3Pe3qlrhpx+PK6V3uLpljW1ODcycad9qnW3i6ecWfzN1arin1Vjx993Bg
mqVP09rgbVcyFvn6bEizSRqQ7dfTdLbiXFalf2/Osf2Tz9eoTvd/GaQqK1fP
b3x6fd/gXQGxXd9lpGhnaYKtFdXj35hph93980XYsD1aZWHetiO2w3X9AwL3
Zv6wSedo+jt0cUWjrib7UpwhaqD+ls2MoZGeE/TtLRH5ITne/7/Ld/m9/F/O
k/PlPrlf8kg+ySv5pY/0k77SX/aQfWSvEsX16Mhobw86YBx6ekdnqXV3JtIB
4/Do875tqYZELzpgHGLSey8r73R70wHjsOGhV0qxaY4PHTAOL+PdZzf9WORL
B4xDbJdz22bfv/zogHFIdWoJm/bsjT8dMA4j61+dmxcyUE0HjMOWB6sbLa6Y
1HTAOFxLWLqj06I5gA4Yh6/s9sXOnZyjoQPGYddC/8TdM6Zq6YBxqCopez7P
dIsOIIdV2fsVp44v0NEB4zBk/RPVfcPPdAA5pNhd3njCSaGnA8bBNcgpQns8
VE8HjEP4XqtjlR6r6AByeN3akun1aRIdQA6yOx0wDrIzHTAOsisdMA6yIx0w
DrIbHTAOshMdMA6yCx0wDrIDHTAO0psOGAfpSQeMg/SiA8ZBetAB4yC56YBx
kJx0wDhILjpgHCQHHTAOci8dMA5yDx0wDnIuHTAOQywOuFVvXuNGB4xDgvWT
EYfcc13pgHGo7vPHs5rW713ogHEot9w9oOG3Amc6YByyM8wH6W2/dKIDxiHE
RZE84GCYkg4Yh8dHbW8mhPZxpAPGIcM1POgXtwMOdMA43HI95vjNDsdRdMA4
jJw++OoKqyQPOmAcwnsNyWGF4zzpgHFYndhvnOF2tRcdMA4x50MK0tb5TKID
xsFh1YtrpU75PnTAOJTvTDmyZ3OnLx0wDhe22LUPb3b0pwPGoTMt5oL5jI9U
dMA4TPEr2uBlDFXTAePwbMnGd1u6dQF0wDgYIl+vnVpgp6EDxsGyvijCw9im
oQPGwT4vY3zTlJ1aOmAcqkL1nxX0ddTRAeMQFb+1Of+DAh0dMA5fWxR9+CZz
kJ4OGAfrsWmBIxLn6+mAcaioMxhnjjXSAeTwaImNtT6rgg4ghzJTTPL23Fo6
gBxkdzpgHGRnOmAcZFc6YBxkRzpgHGQ3OmAcZCc6YBxkFzpgHGQHOmAcpDcd
MA7Skw4YB+lFB4yD9KADxkFy0wHjIDnpgHGQXHTAOEgOOmAc5F46YBzkHjpg
HORcOmAcRtWkLjTuq3KjA8ZhUdDhqkdud1zpgHGod46cstXU5UIHjIOq+NtL
G0sfOtMB45Due3OBMrLeiQ4Yhzj12cB+NUYlHTAO7RVZKd0DPnakA8ahY39D
3fx1HQ50wDh4qK83uhUvHUUHjMO0muQo22W1HnTAOBhGms0pqVzuSQeMQ3zn
89Tigne86YBxSD/TT3mjIXkSHTAOAVaWF83r233ogHHoPfnF3ROnJvrRAeOQ
NVpRXTYwzp8OGIf07XVpdkXbVXTAOOxenrQy0NKopgPGIe6fmR3LAtID6IBx
eBWm0CSPidLQAeMwKSfn19RapZYOGIc1U/P8r3pf1dIB4zCrsr/9xZ5YHR0w
Dt1n9Ot33XhAB5DDvfC8xuS6cD0dMA5HfypUeUQcogPI4fem21alK27QAeQQ
ZR6eUJTfSweQwwmnBxeb48wD6YBxkN3pgHGQnemAcZBd6YBxkB3pgHH4D7al
8Zk=
          "], $CellContext`NJWhite[
           Pattern[$CellContext`initN, 
            Blank[]], 
           Pattern[$CellContext`LC, 
            Blank[]], 
           Pattern[$CellContext`mu, 
            Blank[]], 
           Pattern[$CellContext`sigma, 
            Blank[]], 
           Pattern[$CellContext`pmr, 
            Blank[]], 
           Pattern[$CellContext`endRing, 
            Blank[]], 
           Pattern[$CellContext`runT, 
            Blank[]], 
           Pattern[$CellContext`outform, 
            Blank[]]] := 
         Module[{$CellContext`lst, $CellContext`temp, $CellContext`outls}, \
$CellContext`outls = {}; $CellContext`temp = \
$CellContext`DistributeN[$CellContext`initN, $CellContext`LC, \
$CellContext`mu, $CellContext`sigma]; $CellContext`lst = 
            NestList[$CellContext`Shiftonehour[#, $CellContext`pmr]& , \
$CellContext`temp, $CellContext`runT]; 
           Which[$CellContext`outform == 
             0, $CellContext`outls = $CellContext`lst; 
             Null, $CellContext`outform == 1, $CellContext`outls = Map[Total[
                 Part[#, 
                  Span[1, $CellContext`endRing]]]& , $CellContext`lst]; 
             Null, $CellContext`outform == 2, $CellContext`outls = Log10[
                Map[Total[
                  Part[#, 
                   Span[1, $CellContext`endRing]]]& , $CellContext`lst]]; 
             Null]; $CellContext`outls], $CellContext`NJWhite[
           Pattern[$CellContext`initN, 
            Blank[]], 
           Pattern[$CellContext`LC, 
            Blank[]], 
           Pattern[$CellContext`mu, 
            Blank[]], 
           Pattern[$CellContext`sigma, 
            Blank[]], 
           Pattern[$CellContext`pmr, 
            Blank[]], 
           Pattern[$CellContext`endRing, 
            Blank[]], 
           Pattern[$CellContext`runT, 
            Blank[]]] := 
         Module[{$CellContext`distr, $CellContext`x, $CellContext`temp, \
$CellContext`outls}, $CellContext`distr = Table[
              N[
               PDF[
                
                NormalDistribution[$CellContext`mu, $CellContext`sigma], \
$CellContext`x]], {$CellContext`x, 
               1, $CellContext`LC}]; $CellContext`temp = ($CellContext`initN/
              Total[$CellContext`distr]) $CellContext`distr; \
$CellContext`outls = {}; 
           NestList[$CellContext`Shiftonehour[#, $CellContext`pmr]& , \
$CellContext`temp, $CellContext`runT]; Null], $CellContext`temp = {{
           0, 36.501199820018}, {0.5, 36.50461277991538}, {1., 
           36.504769753607135`}, {1.5, 36.50477500095591}, {2., 
           36.50477471514578}, {2.5, 36.51582364893564}, {3., 
           36.518371931301076`}, {3.5, 36.51869324353128}, {4., 
           36.51871670498429}, {4.5, 36.553853367848625`}, {5., 
           36.566958808086106`}, {5.5, 36.56925887736309}, {6., 
           36.56945261541718}, {6.5, 36.67429298819685}, {7., 
           36.71416897834686}, {7.5, 36.7189648273848}, {8., 
           36.718742159606336`}, {8.5, 36.97866168637062}, {9., 
           37.00262650121776}, {9.5, 37.00151178361652}, {10., 
           36.999517937086466`}, {10.5, 37.45747235732475}, {11., 
           37.22719006496842}, {11.5, 37.34474459211497}, {12., 
           37.27632774818792}, {12.5, 37.89213539498237}, {13., 
           37.186602723392646`}, {13.5, 37.80496357669705}, {14., 
           37.27099569899344}, {14.5, 38.366158877900475`}, {15., 
           36.94378964558806}, {15.5, 38.57448630158342}, {16., 
           36.89636473260607}, {16.5, 39.23248842621209}, {17., 
           36.76248111435929}, {17.5, 39.394141088368826`}, {18., 
           36.767541176179414`}, {18.5, 39.89126121290445}, {19., 
           36.84236829790281}, {19.5, 39.69551797613313}, {20., 
           36.80248939301873}, {20.5, 40.20422891926857}, {21., 
           36.950652178772685`}, {21.5, 39.524596306544275`}, {22., 
           36.77991304982299}, {22.5, 40.411643170443426`}, {23., 
           37.11819789277934}, {23.5, 38.55549458699726}, {24., 
           36.78512721726981}, {24.5, 40.49495433558724}, {25., 
           37.437883676556694`}, {25.5, 36.95201334113638}, {26., 
           37.084126371321965`}, {26.5, 40.49976308326571}, {27., 
           37.68644065961531}, {27.5, 36.59679546368541}, {28., 
           37.3272093219474}, {28.5, 40.49986414092266}, {29., 
           37.72352774882629}, {29.5, 36.58446318331876}, {30., 
           37.585650318230144`}, {30.5, 40.49873226844252}, {31., 
           37.56023147683264}, {31.5, 36.59300685946499}, {32., 
           38.085369195002734`}, {32.5, 40.39771197041975}, {33., 
           37.09904614002467}, {33.5, 36.72748194194725}, {34., 
           39.029316003873525`}, {34.5, 37.870803114161845`}, {35., 
           37.54369068648697}, {35.5, 36.916620671597876`}, {36., 
           39.927826087526086`}, {36.5, 36.85761021784671}, {37., 
           37.90571322526459}, {37.5, 36.935768129761406`}, {38., 
           40.380176596373424`}, {38.5, 37.07794481229982}, {39., 
           37.46258366907138}, {39.5, 37.094884805270375`}, {40., 
           40.48190769224514}, {40.5, 37.30744798812752}, {41., 
           36.84045657187859}, {41.5, 37.496142697886846`}, {42., 
           40.48268306814274}, {42.5, 37.31222616748447}, {43., 
           36.67921666509178}, {43.5, 38.14129530423586}, {44., 
           40.17423324374041}, {44.5, 36.93736638379699}, {45., 
           36.86574383376759}, {45.5, 39.05589057504247}, {46., 
           37.529413694862576`}, {46.5, 37.577740098344506`}, {47., 
           37.01231206822059}, {47.5, 39.853990931571325`}, {48., 
           36.839547662347556`}, {48.5, 37.966869612113825`}, {49., 
           36.97751096410831}, {49.5, 40.33005684852897}, {50., 
           37.030109819660844`}, {50.5, 
           37.644339415625524`}}, $CellContext`DistributeN[
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
             Total[$CellContext`distr]) $CellContext`distr], \
$CellContext`Shiftonehour[
           Pattern[$CellContext`ls, 
            Blank[List]], 
           Pattern[$CellContext`PMR, 
            Blank[Integer]]] := 
         Module[{$CellContext`tmp}, $CellContext`tmp = $CellContext`ls; \
$CellContext`tmp = RotateRight[$CellContext`tmp]; 
           ReplacePart[$CellContext`tmp, 1 -> 
             Part[$CellContext`tmp, 
                1] $CellContext`PMR]]}; {$CellContext`Shiftonehour[
            Pattern[$CellContext`ls, 
             Blank[List]], 
            Pattern[$CellContext`PMR, 
             Blank[Integer]]] := 
          Module[{$CellContext`tmp}, $CellContext`tmp = $CellContext`ls; \
$CellContext`tmp = RotateRight[$CellContext`tmp]; 
            ReplacePart[$CellContext`tmp, 1 -> 
              Part[$CellContext`tmp, 
                 1] $CellContext`PMR]]; $CellContext`NJWhite[
            Pattern[$CellContext`initN, 
             Blank[]], 
            Pattern[$CellContext`LC, 
             Blank[]], 
            Pattern[$CellContext`mu, 
             Blank[]], 
            Pattern[$CellContext`sigma, 
             Blank[]], 
            Pattern[$CellContext`pmr, 
             Blank[]], 
            Pattern[$CellContext`endRing, 
             Blank[]], 
            Pattern[$CellContext`runT, 
             Blank[]]] := 
          Module[{$CellContext`distr, $CellContext`x, $CellContext`temp, \
$CellContext`outls}, $CellContext`distr = Table[
               N[
                PDF[
                 
                 NormalDistribution[$CellContext`mu, $CellContext`sigma], \
$CellContext`x]], {$CellContext`x, 
                1, $CellContext`LC}]; $CellContext`temp = ($CellContext`initN/
               Total[$CellContext`distr]) $CellContext`distr; \
$CellContext`outls = {}; 
            NestList[$CellContext`Shiftonehour[#, $CellContext`pmr]& , \
$CellContext`temp, $CellContext`runT]; Null]; Null}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
},
WindowSize->{998, 1021},
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
Cell[1463, 33, 18005, 344, 1008, "Output"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature sx0IGwNDT06q5D1#pRG5ccCX *)

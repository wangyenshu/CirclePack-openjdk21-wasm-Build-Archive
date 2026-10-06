<?xml version="1.0"?>
<CP_Scriptfile date="Feb 20, 2023">
<CPscript title="Sculpt Boundary Angles" level="min" >
<description>This script gives you (somewhat) free reign in controlling the boundary shape of this simple packing. See what you can build while investigating the restraints in hyperbolic and euclidean geometry.</description>
<cmd name="*" mnemonic="*" tooltip="Start over" iconname="list.png">act 0;Cleanse;Map -x;infile_read start.p;norm_scale -u 5;set_screen -a;color -c 100 a;disp -w -c -e b;set_disp_text -w -cf -e b; </cmd>
<text> We begin with a small "blob" of a circle packing. By positioning your mouse over boundary circles and pressing the keys 'f', 'c', 'b', 'x', 'u', and 'd', you control various boundary conditions --- setting a boundary angle sum or adjusting a boundary radius. 

The idea is simply to see how the packing responds to boundary conditions. Recall from the theory that given boundary radii and/or angle sums, there exists a unique collection of compatible interior radii to form a packing. Repacking and layout occur automatically, so as you press keys the global packing responds. </text>
<Section title="Euclidean Geometry">
<text> Things to note in the euclidean setting: (1) The script will scale and/or rotate the overall packing after you make adjustments so that it remains in the window. (2) If you prescribe inconsistent angle prescriptions, the packing may degenerate to a point, then just start over. (3) A teardrop on an icon indicates that you can also just drag and drop the icon onto a boundary circle. Have fun!. </text>
<text> EXERCIZES: After building up some experience you might consider a few issues. 

* Observe that the 'u' and 'd' actions (increasing/decreasing radii) only work on free boundary circles. For those that are not free, the angle sum condition takes precedence.

* How 'flat' can you make the boundary? Try for one extended flat segment, then for two. How 'long' can you make the packing? Can you explain any features you observe?

* What is the relationship among the flat, corner, and bend amounts? Can you determine a condition on the total of all boundary angle sums?

* Have you noticed that there is no option by the time you get to the last free boundary circle. Why is that?

* Can you force the packing to be non-univalent (i.e. to have circles that overlap one another)? </text>
</Section>
<Section title="Hyperbolic Geometry">
<text> Try your hand in hyperbolic geometry, as well. The same keyed commands apply. Things will be a little different here. You won't need to rescale the packing, though it might get so small you will need to zoom in. 

Consider some of the same exercises as in the euclidean case. With the given angle sum options, can you form a "rectangle" (flat except for four right angles)?

Good luck! </text>
<cmd name="h" mnemonic="h" tooltip="Convert packing to hyperbolic geometry" iconname="icq_dnd.png">act 1;cleanse;infile_read start.p;geom_to_h;set_screen -d;color -c 100 a;Disp -w -cf -e b; </cmd>
</Section>
<Section title="Tools">
<cmd inline="no" name="f" mnemonic="f" tooltip="Flatten edge at this boundary vertex" iconname="userconfig.png">set_vlist z #XY;mark -cw -c vlist;set_vlist {c:(m).and.(b)};set_aim 1.0 vlist;repack;layout;norm_scale -u 5;set_screen -a;color -c 209 vlist;disp -wr;copy 2; </cmd>
<cmd inline="no" name="c" mnemonic="c" tooltip="Make a corner at this boundary vertex" iconname="button_ok.png">set_vlist z #XY;mark -cw -c vlist;set_vlist {c:(m).and.(b)};set_aim .5 vlist;repack;layout;norm_scale -u 5;set_screen -a;color -c 80 vlist;disp -wr;copy 2; </cmd>
<cmd inline="no" name="b" mnemonic="b" tooltip="Make outword corner at this boundary vertex" iconname="mozilla.png">set_vlist z #XY;mark -cw -c vlist;set_vlist {c:(m).and.(b)};set_aim 1.5 vlist;repack;layout;norm_scale -u 5;set_screen -a;color -c 120 vlist;disp -wr;copy 2; </cmd>
<cmd inline="no" name="x" mnemonic="x" tooltip="Free this boundary vertex of angle sum restrictions" iconname="network.png">set_vlist z #XY;set_aim -.1 vlist;repack;layout;norm_scale -u 5;set_screen -a;color -c 100 vlist;disp -wr;copy 2 </cmd>
<cmd inline="no" name="u" mnemonic="u" tooltip="Increase this radius by 20%" iconname="debugger.png">set_vlist z #XY;mark -cw -c vlist;set_vlist {c:(m).and.(b)};adjust_rad 1.2 vlist;repack;layout;norm_scale -u 5;set_screen -a;disp -wr;copy 2; </cmd>
<cmd inline="no" name="d" mnemonic="d" tooltip="Decrease this radius by 20%" iconname="delete.png">set_vlist z #XY;mark -cw -c vlist;set_vlist {c:(m).and.(b)};adjust_rad .8 vlist;repack;layout;norm_scale -u 5;set_screen -a;disp -wr;copy 2; </cmd>
</Section>
  </CPscript>
<CPdata>
    <AboutImage name="AboutImage.jpg">
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
    </AboutImage>
    <circlepacking name="start.p">
NODECOUNT:  49
GEOMETRY: euclidean
ALPHA/BETA/GAMMA:  11 0 1
FLOWERS:

1 3   23 10 8 24
2 6   20 27 13 25 19 29 20
3 4   11 29 38 26 11
4 5   18 8 10 31 30 18
5 3   41 15 34 28
6 3   42 21 10 23
7 4   13 36 37 22 13
8 7   18 15 41 24 1 10 4 18
9 4   26 38 40 32 26
10 7   4 8 1 23 6 21 31 4
11 6   35 20 29 3 26 30 35
12 4   17 16 38 19 14
13 7   2 27 47 36 7 22 25 2
14 4   12 19 25 22 39
15 6   18 32 34 5 41 8 18
16 4   38 12 17 40 38
17 3   28 40 16 12
18 6   26 32 15 8 4 30 26
19 6   12 38 29 2 25 14 12
20 5   11 35 27 2 29 11
21 6   10 6 42 43 44 31 10
22 6   13 7 37 39 14 25 13
23 2   6 10 1
24 2   1 8 41
25 5   2 13 22 14 19 2
26 7   11 3 38 9 32 18 30 11
27 6   20 35 33 47 13 2 20
28 3   5 34 40 17
29 6   11 20 2 19 38 3 11
30 6   11 26 18 4 31 35 11
31 8   4 10 21 44 45 33 35 30 4
32 6   26 9 40 34 15 18 26
33 6   47 27 35 31 45 46 47
34 5   15 32 40 28 5 15
35 6   20 11 30 31 33 27 20
36 4   37 7 13 47 49
37 3   39 22 7 36
38 8   3 29 19 12 16 40 9 26 3
39 2   14 22 37
40 7   28 34 32 9 38 16 17 28
41 3   24 8 15 5
42 2   43 21 6
43 2   44 21 42
44 3   45 31 21 43
45 3   46 33 31 44
46 3   48 47 33 45
47 7   36 13 27 33 46 48 49 36
48 2   49 47 46
49 2   36 47 48

RADII:
1.087860769e-01   8.306285885e-02   3.517599014e-02   9.132763249e-02
1.215607962e-01   8.190581564e-02   3.839155609e-02   1.383582301e-01
3.980001786e-02   1.389135245e-01   7.201425967e-02   1.559451130e-01
1.106718986e-01   1.412130155e-01   1.039957312e-01   4.954180444e-02
1.142076274e-01   9.959982245e-02   1.001074775e-01   5.999121956e-02
1.025539095e-01   7.569744804e-02   7.049593568e-02   8.551738271e-02
6.912121691e-02   9.153424672e-02   1.041512069e-01   1.366801808e-01
7.141142688e-02   1.026845003e-01   2.000267050e-01   8.041820356e-02
1.424579990e-01   7.508363150e-02   1.043950161e-01   1.169728009e-01
7.779828006e-02   1.142262609e-01   6.789997078e-02   1.028225470e-01
1.258171856e-01   4.775771748e-02   6.864539403e-02   1.556531052e-01
1.784082994e-01   1.412545311e-01   1.561700234e-01   1.141394093e-01
1.138540607e-01

CENTERS:
0.0000000000e+00 7.4626614765e-01  -2.6054412909e-02 -2.5219882153e-01
1.0343609757e-01 -2.8119803934e-02  -5.6962954008e-02 3.6205756749e-01
5.2259979094e-01 4.1277949550e-01  -3.2109279950e-01 7.2275056238e-01
-1.1807215599e-01 -5.5233677934e-01  1.0661182418e-01 5.2329927248e-01
2.6283867837e-01 7.4829218699e-02  -1.6766554632e-01 5.6393853841e-01
-0.0000000000e+00 0.0000000000e+00  4.1137923196e-01 -2.9033732517e-01
-1.4436711565e-01 -4.0561088308e-01  2.0971356473e-01 -5.0858927132e-01
2.9988646666e-01 3.7707904426e-01  4.0786731259e-01 -8.4880420509e-02
5.7114744438e-01 -7.2491917931e-02  1.1799305572e-01 2.8561355066e-01
1.5589092692e-01 -2.7334747233e-01  -6.5404716344e-02 -1.1466328805e-01
-4.0911051540e-01 5.6064481947e-01  -6.0819542488e-03 -5.3055386011e-01
-1.7725820619e-01 7.7312817221e-01  1.9358648478e-01 7.2958959809e-01
3.4883144370e-02 -3.9164991341e-01  1.3307434887e-01 9.5075399645e-02
-2.0577167066e-01 -1.9975062148e-01  6.1997150835e-01 1.7359933154e-01
6.5352482725e-02 -1.2767137724e-01  -4.6807299160e-02 1.6831141820e-01
-3.3267558749e-01 2.6787745439e-01  2.7330371161e-01 1.9459108174e-01
-4.1243483417e-01 -6.5190459142e-02  4.2050584446e-01 2.4471445743e-01
-1.7628199484e-01 6.7000655235e-03  -2.6669919202e-01 -5.9759258093e-01
-8.3312324701e-02 -6.6320531477e-01  2.4424091048e-01 -7.8070152054e-02
6.2247356849e-02 -6.5685241091e-01  4.0527082791e-01 6.7461805546e-02
3.5971873776e-01 5.9896657451e-01  -4.4959064207e-01 7.0540304739e-01
-5.5341236176e-01 6.5276527683e-01  -6.4050252807e-01 4.4606472119e-01
-6.7848927520e-01 1.1417011578e-01  -6.5935307482e-01 -2.0491941870e-01
-4.0791054767e-01 -3.6378420752e-01  -6.6039762589e-01 -4.6031122292e-01
-4.9654545314e-01 -6.1884666955e-01

END
    </circlepacking>
    <circlepacking name="alternate.p">
NODECOUNT:  78
GEOMETRY: euclidean
ALPHA/BETA/GAMMA:  37 0 13
PACKNAME: newPolyPack.p
FLOWERS:

1 4   13 61 63 64 13
2 5   24 44 48 36 66 78
3 6   62 35 30 74 4 10 57
4 5   74 58 60 10 3 74
5 5   8 12 39 32 15 8
6 2   57 49 50
7 2   25 53 31
8 5   14 18 12 5 15 14
9 2   15 32 34
10 8   3 4 60 55 22 50 49 57 3
11 2   38 56 42
12 6   8 18 43 46 39 5 8
13 9   37 59 41 23 61 1 64 47 26 37
14 6   31 53 45 18 8 15 31
15 5   31 14 8 5 32 9
16 3   67 28 44 24
17 6   37 26 51 48 19 29 37
18 6   14 45 41 43 12 8 14
19 8   17 48 68 56 38 27 54 29 17
20 7   69 70 73 54 27 33 75 69
21 5   63 52 23 45 53 25
22 2   50 10 55
23 6   13 41 45 21 52 61 13
24 2   16 44 2
25 2   21 53 7
26 5   37 13 47 51 17 37
27 6   19 38 40 33 20 54 19
28 5   68 48 44 16 67 68
29 6   58 37 17 19 54 73 58
30 6   32 39 72 74 3 35 32
31 3   7 53 14 15
32 7   5 39 30 35 34 9 15 5
33 3   75 20 27 40
34 3   9 32 35 62
35 5   32 30 3 62 34 32
36 6   2 48 51 47 65 66 2
37 7   29 58 71 59 13 26 17 29
38 4   40 27 19 56 11
39 7   5 12 46 59 72 30 32 5
40 2   33 27 38
41 7   13 59 46 43 18 45 23 13
42 2   11 56 68
43 4   12 18 41 46 12
44 5   28 48 2 24 16 28
45 6   23 41 18 14 53 21 23
46 5   12 43 41 59 39 12
47 6   65 36 51 26 13 64 65
48 8   17 51 36 2 44 28 68 19 17
49 4   10 50 6 57 10
50 3   6 49 10 22
51 5   17 26 47 36 48 17
52 4   23 21 63 61 23
53 6   21 45 14 31 7 25 21
54 5   19 27 20 73 29 19
55 4   22 10 60 70 76
56 5   19 68 42 11 38 19
57 3   3 10 49 6
58 8   37 29 73 60 4 74 72 71 37
59 7   37 71 72 39 46 41 13 37
60 6   70 55 10 4 58 73 70
61 5   13 23 52 63 1 13
62 2   34 35 3
63 6   77 65 64 1 61 52 21
64 5   65 47 13 1 63 65
65 7   66 36 47 64 63 77 78 66
66 4   2 36 65 78 2
67 2   68 28 16
68 5   42 56 19 48 28 67
69 4   76 70 20 75 76
70 6   55 60 73 20 69 76 55
71 4   37 58 72 59 37
72 6   39 59 71 58 74 30 39
73 6   20 70 60 58 29 54 20
74 5   4 3 30 72 58 4
75 3   76 69 20 33
76 3   55 70 69 75
77 2   78 65 63
78 3   2 66 65 77

RADII:
3.113965791e-02   1.152057090e-01   1.302880949e-01   6.638189675e-02
5.101935625e-02   1.645498885e-02   4.255090580e-02   4.402035414e-02
7.131375520e-02   8.394156206e-02   4.965227672e-02   4.401173880e-02
1.318918107e-01   7.032658460e-02   1.392895730e-01   4.997159562e-02
1.076750314e-01   5.015844059e-02   1.767082860e-01   1.203305559e-01
1.435508987e-01   3.631943676e-02   7.244580745e-02   4.355543776e-02
4.932752691e-02   6.798336076e-02   1.121472250e-01   5.106418623e-02
1.169731861e-01   8.202524369e-02   8.097427802e-02   9.949009970e-02
1.118299417e-01   7.696224955e-02   5.970039772e-02   8.295844065e-02
1.206043785e-01   1.267461197e-01   8.601635823e-02   8.094903430e-02
7.980882267e-02   5.128347785e-02   2.081090267e-02   4.861078596e-02
7.591071570e-02   3.895636838e-02   7.990706080e-02   1.455650642e-01
1.382248874e-02   2.797582765e-02   6.482439728e-02   3.506547607e-02
7.003595245e-02   8.619273495e-02   8.541690713e-02   6.578923279e-02
4.302581162e-02   1.311912741e-01   9.782005201e-02   9.065028611e-02
4.315761661e-02   5.877524073e-02   1.414354804e-01   5.712592699e-02
1.039976380e-01   4.113839012e-02   4.779764445e-02   1.442507660e-01
4.621618784e-02   8.823029759e-02   4.294806990e-02   7.753727493e-02
1.036959365e-01   6.435245372e-02   1.283530333e-01   1.158265588e-01
9.953526343e-02   9.953526343e-02

CENTERS:
-6.4234088754e-02 4.0234024685e-01  -5.6964808609e-01 2.6930726537e-01
5.2464263872e-01 -2.3754010979e-01  3.3382961784e-01 -2.8517913450e-01
4.5624040566e-01 2.1462404250e-01  5.2343920313e-01 -4.6919278954e-01
4.3713771982e-01 6.3147155675e-01  4.2400755152e-01 3.0403091962e-01
7.1587950368e-01 1.5435268904e-01  4.0692972716e-01 -4.1653177545e-01
-6.7995962992e-01 -4.5329525146e-01  3.6444447911e-01 2.3920893419e-01
1.3877787808e-17 2.5249618925e-01  4.1311589703e-01 4.1785795627e-01
6.0495346480e-01 3.3337552505e-01  -7.3501898451e-01 9.7435317701e-02
-2.2471332310e-01 -4.0192181212e-02  3.3291526460e-01 3.2794410942e-01
-3.7735452637e-01 -2.8013912175e-01  -6.1532195571e-02 -5.9988263681e-01
1.6351630652e-01 6.2900989929e-01  4.3565107908e-01 -5.3331273187e-01
1.2084444022e-01 4.1727022683e-01  -7.0475283502e-01 1.8592975918e-01
3.5254844870e-01 6.6733660396e-01  -1.4745757812e-01 1.1756529279e-01
-2.8971015215e-01 -5.5537714579e-01  -6.6488957826e-01 2.4702274354e-02
-8.9916471700e-02 -2.1990481431e-01  4.4132132998e-01 -4.2259508425e-02
5.1147912951e-01 5.3282153975e-01  5.5391616040e-01 1.0011402863e-01
-2.2104264437e-01 -7.6856847904e-01  7.0354503519e-01 6.5906016322e-03
5.8232763874e-01 -5.6520585619e-02  -3.7409683954e-01 2.3723328561e-01
0.0000000000e+00 -0.0000000000e+00  -5.2830239980e-01 -5.4338675390e-01
3.6863472659e-01 1.0924837149e-01  -4.0483645990e-01 -7.1040004285e-01
2.0791209290e-01 2.9236747966e-01  -7.2095933614e-01 -3.6106157734e-01
3.0416831100e-01 2.6305759046e-01  -6.3930364189e-01 1.2103741823e-01
2.6801108213e-01 4.3602222593e-01  2.8871144904e-01 2.0532361339e-01
-2.1179150362e-01 2.5072956285e-01  -4.6830803147e-01 2.9033277012e-02
4.9717596938e-01 -4.5412732564e-01  4.8704504724e-01 -4.9467931289e-01
-2.8014754934e-01 1.2315744217e-01  4.6024545589e-02 4.9447553398e-01
3.6126340484e-01 5.4829169754e-01  -1.5090704647e-01 -4.1369991559e-01
3.1686638476e-01 -5.5995731516e-01  -6.0400654892e-01 -3.6635923128e-01
5.3375912000e-01 -4.1061408231e-01  1.5716308271e-01 -1.9672523005e-01
1.8493099293e-01 1.1623149195e-01  2.3269882294e-01 -4.0531101526e-01
5.6903665417e-03 4.2745310318e-01  6.7779420910e-01 -1.2668190579e-01
-1.1472297616e-01 5.6736464086e-01  -1.4691016267e-01 3.7142940273e-01
-3.0328469480e-01 4.1025991803e-01  -4.3351006097e-01 3.4618323984e-01
-7.6140564827e-01 3.2941031072e-03  -6.7886530581e-01 -1.7011202084e-01
8.3982518628e-02 -6.8089674545e-01  1.4321935457e-01 -5.6020351983e-01
1.6197614506e-01 -2.2652413196e-02  2.8225889887e-01 -2.9636499212e-02
3.8442485581e-02 -3.9940088601e-01  3.4825623257e-01 -1.5524321499e-01
8.7567746875e-03 -8.3842610908e-01  2.3358574110e-01 -7.4316011803e-01
-3.5227543728e-01 6.0780877055e-01  -4.9737895401e-01 4.7152214565e-01


END
    </circlepacking>
  </CPdata>
</CP_Scriptfile>

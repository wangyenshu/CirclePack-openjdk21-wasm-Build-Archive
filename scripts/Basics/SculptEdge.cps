<?xml version="1.0"?>
<CP_Scriptfile date="Jun 29, 2022">
<CPscript title="Sculpt Boundary Angles" level="min" >
<description>Use the cursor/keys to manipulate boundary radii and angle sums. Put the cursor on a boundary circle and press 'f', 'c', 'b' to have the boundary flatten, turn left, or turn right, respectively, at that circle. The 'x' key sets the boundary circle free from angle restrictions.   Boundary circles with no angle constraint can have their radii adjusted up or down, 'u' or 'd'. Learn what you can about such boundary manipulations.</description>
<cmd name="*" mnemonic="*" tooltip="Start over with this command" iconname="list.png">act 0;cleanse;infile_read start.p;norm_scale -u 5;set_screen -a;color -c 100 a;disp -w -c -e b;set_disp_text -w -cf -e b; </cmd>
<cmd name="f" mnemonic="f" tooltip="Flatten the edge for a boundary circle" iconname="debugger.png" dropable="yes">set_vlist z #XY;mark -cw -c vlist;set_vlist {c:(m).and.(b)};set_aim 1.0 vlist;repack;layout;norm_scale -u 5;set_screen -a;color -c 209 vlist;disp -wr; </cmd>
<cmd name="c" mnemonic="c" tooltip="Create a right angled corner at a boundary vertex" iconname="delete.png" dropable="yes">set_vlist z #XY;mark -cw -c vlist;set_vlist {c:(m).and.(b)};set_aim .5 vlist;repack;layout;norm_scale -u 5;set_screen -a;color -c 80 vlist;disp -wr; </cmd>
<cmd name="b" mnemonic="b" tooltip="Create inward right angled bend for a boundary circle" iconname="network.png" dropable="yes">set_vlist z #XY;mark -cw -c vlist;set_vlist {c:(m).and.(b)};set_aim 1.5 vlist;repack;layout;norm_scale -u 5;set_screen -a;color -c 120 vlist;disp -wr; </cmd>
<cmd name="x" mnemonic="x" tooltip="Free this boundary circle --- no angle sum restriction" iconname="network.png" dropable="yes">set_vlist z #XY;set_aim -.1 vlist;repack;layout;norm_scale -u 5;set_screen -a;color -c 100 vlist;disp -wr; </cmd>
<cmd name="u" mnemonic="u" tooltip="Increase this radius by 20%" iconname="debugger.png" dropable="yes">set_vlist z #XY;mark -cw -c vlist;set_vlist {c:(m).and.(b)};adjust_rad 1.2 vlist;repack;layout;norm_scale -u 5;set_screen -a;disp -wr; </cmd>
<cmd name="d" mnemonic="d" tooltip="Decrease this radius by 20%" iconname="delete.png" dropable="yes">set_vlist z #XY;mark -cw -c vlist;set_vlist {c:(m).and.(b)};adjust_rad .8 vlist;repack;layout;norm_scale -u 5;set_screen -a;disp -wr; </cmd>
  </CPscript>
<CPdata>
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
  </CPdata>
</CP_Scriptfile>

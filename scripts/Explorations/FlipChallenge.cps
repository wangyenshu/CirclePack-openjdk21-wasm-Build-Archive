<?xml version="1.0"?>
<CP_Scriptfile date="Jul 7, 2022">
<CPscript title="Flip Challenge with the Soccer42 combinatorics" >
<text> You goal is the circle packing pattern of p0, a dodecahedral pattern something like a soccer ball. Throughout this script the circles will be color-coded by degree; for example, degree 5 (5 neighbors) is blue and degree 6 is white. </text>
<cmd name="*" mnemonic="*" tooltip="start over" iconname="icq_dnd.png">act 0;Cleanse;set_screen -d;infile_read icos1.p;color -c d;Disp -w -cf -f; </cmd>
<text> This next command is the packing you are to start with. It has the same number of circles, 42, but as you can see, the combinatorics are somewhat mixed. </text>
<cmd tooltip="A random starting point --- now you do flips to get the target pattern" iconname="klines.png">act 1;random_triangulation -S 42; max_pack;NSpole;color -c d;Disp -w -cf -f ; </cmd>
<text> Your job is the "flip" edges by mousing over them and pressing the 'f' key to flip them. Your first goal is to get all circles to be either blue or white (5- or 6-degree). Your second task is the do further flips in order to move the blue vertices into the 12 dodecahedrally symmetric points. Good luck! </text>
<cmd inline="no" name="f" mnemonic="f" tooltip="pick an edge to 'flip'" iconname="button_ok.png">set_elist z #XY;flip elist[n];max_pack;NSpole;color -c d;disp -wr; </cmd>
<text> The key 'h' when pressed on an edge will establish a 'half-hex' path in the complex, and then pressing '1' will do a flip along that path. </text>
<cmd inline="no" name="h" mnemonic="h" tooltip="shoot a half-hex path" iconname="amarok.png">set_elist z #XY;hh_path elist;disp -w -cf -f -ec20t8 elist; </cmd>
<cmd inline="no" name="1" mnemonic="1" tooltip="flip along the half-hex path" iconname="apollon.png">flip -cw elist[n];max_pack;color -c d;disp -wr;disp -ec20t8 elist; </cmd>
  </CPscript>
<CPdata>
    <circlepacking name="icos1.p">
NODECOUNT:  42
GEOMETRY: spherical
ALPHA/BETA/GAMMA:  1 0 2
PACKNAME: Seed 5
FLOWERS:

1 5   13 14 15 16 17 13
2 5   18 13 19 20 21 18
3 5   22 14 18 23 24 22
4 5   25 15 22 26 27 25
5 5   28 16 25 29 30 28
6 5   31 19 17 28 32 31
7 5   33 20 31 34 35 33
8 5   36 23 21 33 37 36
9 5   38 26 24 36 39 38
10 5   40 29 27 38 41 40
11 5   34 32 30 40 42 34
12 5   42 41 39 37 35 42
13 6   2 18 14 1 17 19 2
14 6   3 22 15 1 13 18 3
15 6   4 25 16 1 14 22 4
16 6   5 28 17 1 15 25 5
17 6   6 19 13 1 16 28 6
18 6   3 14 13 2 21 23 3
19 6   6 31 20 2 13 17 6
20 6   7 33 21 2 19 31 7
21 6   8 23 18 2 20 33 8
22 6   4 15 14 3 24 26 4
23 6   8 36 24 3 18 21 8
24 6   9 26 22 3 23 36 9
25 6   5 16 15 4 27 29 5
26 6   9 38 27 4 22 24 9
27 6   10 29 25 4 26 38 10
28 6   6 17 16 5 30 32 6
29 6   10 40 30 5 25 27 10
30 6   11 32 28 5 29 40 11
31 6   7 20 19 6 32 34 7
32 6   11 34 31 6 28 30 11
33 6   8 21 20 7 35 37 8
34 6   11 42 35 7 31 32 11
35 6   37 33 7 34 42 12 37
36 6   9 24 23 8 37 39 9
37 6   39 36 8 33 35 12 39
38 6   10 27 26 9 39 41 10
39 6   41 38 9 36 37 12 41
40 6   11 30 29 10 41 42 11
41 6   42 40 10 38 39 12 42
42 6   35 34 11 40 41 12 35

RADII:
2.394150932e-01   2.394150934e-01   2.394150934e-01   2.394150934e-01
2.394150934e-01   2.394150934e-01   2.394150937e-01   2.394150937e-01
2.394150937e-01   2.394150937e-01   2.394150938e-01   2.394150932e-01
3.141592650e-01   3.141592650e-01   3.141592650e-01   3.141592650e-01
3.141592650e-01   3.141592651e-01   3.141592651e-01   3.141592654e-01
3.141592654e-01   3.141592651e-01   3.141592654e-01   3.141592654e-01
3.141592651e-01   3.141592654e-01   3.141592654e-01   3.141592651e-01
3.141592654e-01   3.141592654e-01   3.141592654e-01   3.141592654e-01
3.141592657e-01   3.141592657e-01   3.141592673e-01   3.141592657e-01
3.141592658e-01   3.141592657e-01   3.141592658e-01   3.141592657e-01
3.141592590e-01   3.141592580e-01

CENTERS:
0.0000000000e+00 0.0000000000e+00  1.5707963268e+00 1.1071487165e+00
2.8274333883e+00 1.1071487165e+00  -2.1991148575e+00 1.1071487165e+00
-9.4247779601e-01 1.1071487165e+00  3.1415926539e-01 1.1071487165e+00
9.4247779596e-01 2.0344439345e+00  2.1991148575e+00 2.0344439346e+00
-2.8274333881e+00 2.0344439346e+00  -1.5707963266e+00 2.0344439346e+00
-3.1415926536e-01 2.0344439345e+00  0.0000000000e+00 3.1415926536e+00
1.5707963268e+00 5.5357435812e-01  2.8274333883e+00 5.5357435812e-01
-2.1991148575e+00 5.5357435812e-01  -9.4247779598e-01 5.5357435812e-01
3.1415926541e-01 5.5357435812e-01  2.1991148575e+00 1.0172219667e+00
9.4247779610e-01 1.0172219667e+00  1.2566370614e+00 1.5707963254e+00
1.8849555921e+00 1.5707963254e+00  -2.8274333882e+00 1.0172219667e+00
2.5132741229e+00 1.5707963254e+00  -3.1415926535e+00 1.5707963254e+00
-1.5707963267e+00 1.0172219667e+00  -2.5132741228e+00 1.5707963254e+00
-1.8849555920e+00 1.5707963254e+00  -3.1415926531e-01 1.0172219667e+00
-1.2566370613e+00 1.5707963254e+00  -6.2831853060e-01 1.5707963254e+00
6.2831853072e-01 1.5707963254e+00  4.2745708171e-11 1.5707963254e+00
1.5707963267e+00 2.1243706846e+00  3.1415926519e-01 2.1243706846e+00
9.4247780325e-01 2.5880182925e+00  2.8274333883e+00 2.1243706846e+00
2.1991148575e+00 2.5880182941e+00  -2.1991148573e+00 2.1243706846e+00
-2.8274333880e+00 2.5880182941e+00  -9.4247779587e-01 2.1243706846e+00
-1.5707963161e+00 2.5880183008e+00  -3.1415925553e-01 2.5880183018e+00


END
    </circlepacking>
  </CPdata>
</CP_Scriptfile>

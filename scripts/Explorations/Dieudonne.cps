<?xml version="1.0"?>
<CP_Scriptfile date="Jun 30, 2022">
<CPscript title="Experiments with Dieudonne-Schwarz" level="min" screenmode="map" >
<description>In this script you can investigate Dieudonne's extension of the Schwarz Lemma.</description>
<text> This is a collection of experiments designed to test a discrete version of Dieudonne's extension of the Schwarz Lemma. As yet, there are no precise conjectures, statements, or proofs for the discrete setting: perhaps you can remedy that!

Recall that the Schwarz Lemma tells us that if F is an analytic map of the disc into itself with F(0) = 0, then |F'(z)| less than or equal to 1 when z = 0. Moreover, equality holds if and only if F is a rotation. Dieudonne's extension states that there is a positive universal constant C (independent of F) so that |F'(z)| is less than or equal to 1 for all z with |z| less than C, with equality at any such z if and only if F is a rotation. In other words, there is an "exclusion" zone of radius C about the origin --- if |F'(z)| > 1.0, then z is excluded from this zone.

We will first set up the experimental apparatus, then you will get a chance to speculate on the value of C. (The actual value is given at the end of the script.) </text>
<Section title="The Experimental Apparatus">
<text> As usual, a hyperbolic maximal packing Q will be loaded into p0 as our domain, while a hyperbolic packing P with the same combinatorics will be put in p1. Thus we have our discrete analytic self map of the disc, f: Q --> P. The same circle will be centered at the origin in each, so f(0) = 0. </text>
<cmd name="*" mnemonic="*" iconname="editdelete.png">act 0;Cleanse;infile_read proto.p;mark -cw;copy 1;max_pack;Disp -w -c -tfc195 A;Disp -p1 -w -c -tfc195 A;Map 0 1;C:=0.5;create -p2 hex 1;Disp -p2 -w;color -p2 -c 130 1;set_rad -p2 _C 1; </cmd>
<text> As explained in Chapter 6, the discrete version of |F'| is the ratio function f^# defined for vertices v by:

     f^#(v) = radius(f(C_v)) / radius(C_v).

Here "radius" would refer to euclidean radius, so although our packings are hypbolic, the command 'c' will compare euclidean radii in p1 in those of p0 and color blue those that are euclideanly smaller in p0. (If there are none, 'c' won't do anything.)

We know by the discrete Schwarz lemma that the circle at the origin can never be blue. Your task, however, is to see how close you can push the blue towards the origin. You have to manipulate the function, which means that you get to do whatever you like to the packing of p0 (subject to keeping p0 hyperbolic and keeping the 'alpha' circle at the origin.)

For your convenience, several tools are made available to manipulate p1: mouse over a boundary circle (in either p0 or p1):(1) press 'i' to increase that radius; (2) press 'd' to decrease it; (3) press 'b' to make it a branch point; (4) press 'h' to make it a horocycle; (5) Press 'a' to see all that were blue at some point in your trials (this gets reset if you start over with '*'); (6) Press 'B' to get rid of all branching in p1. (You can, of course, still use any other commands you like, just recall that you will need to repack and layout p1 and press 'c' to color code p0 for the radius comparison.)

As an additional aide, I've set up a way to speculate on the value of C. CirclePack allows you to set and use variable quantities and when you start this script a variable named "C" is initiated with 'C:=0.5'. (Note the 'colon equal' syntax; you can reset C at any time and display its current value in "Messages" with '?_C'.)

Whenever you press 'c' to compare p0 and p1, a red disc of euclidean radius C will be drawn on p0 --- this represents the presumed exclusion zone. If you can manipulate p1 to cause the center of some blue disc to enter the exclusion zone, then that value of C is too large. Set it smaller and try again. If you can't violate the current zone, your C may be too small. 

YOUR GOAL: Find C so that you CAN NOT violate the C-zone, but so that you CAN violate any larger exculsion zone.

See what you can do! You are welcome to bring in a new packing if you like, or save a packing from p1 for later recall. Just note that you have to put a hyperbolic image packing in p1, its maximal packing in p0, and keep the same vertex at the origin. 

Take your time. Try a variety of things to search for the right intuition --- it's a subtle business! Experimental setups are only good if you actually experiment with them, so give it a go. If you want some motivation, make this a competition with a friend: set a C-zone and let them try to violate it, then switch roles. </text>
</Section>
<Section title="Univalent Examples">
<text> I hope that you have gained some experience --- it is much more interesting to build things yourself than just pop up what others have found. Nonetheless, here are some adjustments with a more regular packing. If the packing's reaction seems counterintuitive, you may want to think about the normalization, which keeps 'alpha' at the origin. </text>
<cmd iconname="format_increaseindent.png">act 1;create hex 6;geom_to_h;set_rad 5.0 b;rld;copy 0;Disp -p0 -w -c -tfc195 A;Disp -p1 -w -c -tfc195 A; </cmd>
<text> Start decreasing the boundary circle at the top of p0 (using 'd'). Caution: since your are sort of decreasing from infinite radius, it takes a few tries to get beyond roundoff errors.

Alternately, restart with the previous command. The next command puts a little dent in the top right of p1. </text>
<cmd iconname="editdelete.png">act 1;infile_read dent.p;Disp -p1 -w -c -cf a(95 99) -e 95 96 96 97 97 98 98 99;C:=0.438;[c]; </cmd>
<text> Notice that if you keep decreasing in a small piece of the boundary, the neighbors on the two sides start overlapping. We have stopped while it is still a univalent packing. Based on this result I have set C to 0.438. Can you get it to violate this C-zone and remain univalent? </text>
</Section>
<Section title="Extremals?">
<text> In Dieudonne's result, the functions giving the sharp value for C are known to be 2-fold Blaschke products, suggesting that we try to introduce branching. (For discrete analogues of
Blaschke products see "Blaschke.xmd".) 

if you review the previous experiments, that dent was working so well for us you might want it to continue, and that is what the branch point allows --- the circles on the two sides not only overlap but actually reach all the way around. The next command puts a branch point next to the tip of the dent; along with infinite boundary radii, this gives a 2-fold discrete Blaschke product. </text>
<cmd iconname="bookmark_add.png">act 1;set_aim -d;set_aim 4.0 66;set_rad 5.0 b;repack;layout;Disp -w -c -cf 66;[c] </cmd>
<text> This is about the best I can do with this packing. Can you do better?

In circle packing, circles of larger degree can cause distortion. This final example this tendency and branching to move the blue significantly closer to the origin. I don't know if this is close to the discrete extreme. </text>
<cmd iconname="list.png">act 1;infile_read bigDegree.p;copy 0;set_rad 5.0 b;set_aim -d;set_aim 4.0 223;repack;layout;Disp -p0 -w -c -tfc195 A;Disp -p1 -w -c -tfc195 A;[c]; </cmd>
</Section>
<Section title="Answer -- and Questions">
<text> ANSWER: Dieudonne's constant C is precisely C = sqrt(2) - 1, or roughtly .4142135, and this is sharp since certain 2-fold Blaschke products have derivatives of modulus 1 at points precisely this distance from the origin.

Our last discrete example pushes a blue center to roughly 0.378 from the origin, violating the classical exclusion zone. Note, however, that the discrete derivative at this vertex is approximately 1.00001, so it is just barely larger than 1. 

So questions remain:

* Is there an exclusion zone in the discrete setting? The experiments certainly suggest yes, Can you prove one?

* What are the extremals?

* Is there a different exclusion zone for univalent functions? I don't know if this has been considered in the classical situation, but with our experiments it seems a natural question. </text>
</Section>
<Section title="Tools">
<cmd inline="no" name="c" mnemonic="c" tooltip="compare radii, color code" iconname="bookmark_add.png">set_vlist -p0 {c:e01.lt. 0.99999};mark -p0 -c vlist;disp -p0 -wr;disp -p0 -cfc60 vlist -tfc5 vlist;set_rad -p2 _C 1;geom_to_e -p0;disp -p2 -q0 -cf 1;geom_to_h -p0;?_C </cmd>
<cmd inline="no" name="i" mnemonic="i" tooltip="increase selected boundary circle" iconname="list.png">set_Vlist z #XY;adjust_rad -p1 1.1 Vlist;rld -p1;[c] </cmd>
<cmd inline="no" name="d" mnemonic="d" tooltip="decrease selected boundary circle" iconname="delete.png">set_Vlist z #XY;adjust_rad -p1 .9 Vlist;rld -p1;[c] </cmd>
<cmd inline="no" name="b" mnemonic="b" tooltip="choose a branch point" iconname="network.png">set_Vlist z #XY;set_aim -p1 4.0 Vlist;rld -p1;[c] </cmd>
<cmd inline="no" name="B" mnemonic="B" tooltip="undo all branch points" iconname="bookmark.png">set_aim -p1 -d;rld -p1;[c]; </cmd>
<cmd inline="no" name="h" mnemonic="h" tooltip="make selected circle into a horocycle" iconname="debugger.png">set_Vlist z #XY;set_rad -p1 5.0 Vlist;rld -p1;[c] </cmd>
<cmd inline="no" name="a" mnemonic="a" tooltip="show possible exclusion zone" iconname="icq_dnd.png">disp -p0 -wr;disp -p0 -cfc60 m -tfc5 m;set_rad -p2 _C 1;geom_to_e -p0;disp -p2 -q0 -cf 1;geom_to_h -p0;?_C </cmd>
</Section>
  </CPscript>
<CPdata>
    <AboutImage name="AboutImage.jpg">
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
    </AboutImage>
    <circlepacking name="proto.p">
NODECOUNT:  103
GEOMETRY: hyperbolic
ALPHA/BETA/GAMMA:  1 0 62
PACKNAME: proto.p
BOUQUET:

1 4   28 32 33 29 28
2 6   30 4 7 5 3 65 30
3 6   62 65 2 5 8 88 62
4 4   30 6 7 2 30
5 4   2 7 8 3 2
6 8   11 9 7 4 30 27 29 31 11
7 8   4 6 9 12 10 8 5 2 4
8 6   86 88 3 5 7 10 13
9 4   6 11 12 7 6
10 4   7 12 13 8 7
11 8   16 14 12 9 6 31 33 35 16
12 8   13 10 7 9 11 14 17 15 13
13 4   8 10 12 15 18
14 4   11 16 17 12 11
15 4   12 17 18 13 12
16 8   21 19 17 14 11 35 37 39 21
17 8   14 16 19 22 20 18 15 12 14
18 4   13 15 17 20 23
19 4   16 21 22 17 16
20 4   17 22 23 18 17
21 7   22 19 16 39 41 40 103 22
22 6   23 20 17 19 21 103 102
23 2   18 20 22
24 5   56 52 28 26 25 56
25 7   56 24 26 29 27 30 92 56
26 4   24 28 29 25 24
27 4   25 29 6 30 25
28 7   32 1 29 26 24 52 48 32
29 8   26 28 1 33 31 6 27 25 26
30 8   89 92 25 27 6 4 2 65 64
31 4   29 33 11 6 29
32 7   36 34 33 1 28 48 45 36
33 8   11 31 29 1 32 34 37 35 11
34 4   32 36 37 33 32
35 4   33 37 16 11 33
36 7   40 38 37 34 32 45 43 40
37 8   34 36 38 41 39 16 35 33 34
38 4   36 40 41 37 36
39 4   37 41 21 16 37
40 9   21 41 38 36 43 42 100 99 103 21
41 5   21 39 37 38 40 21
42 6   40 43 44 73 72 100 40
43 6   36 45 46 44 42 40 36
44 7   42 43 46 47 51 61 73 42
45 6   32 48 49 46 43 36 32
46 6   45 49 50 47 44 43 45
47 4   44 46 50 51 44
48 6   28 52 53 49 45 32 28
49 6   48 53 54 50 46 45 48
50 6   49 54 55 51 47 46 49
51 5   44 47 50 55 61 44
52 6   53 48 28 24 56 57 53
53 6   54 49 48 52 57 58 54
54 6   55 50 49 53 58 59 55
55 6   51 50 54 59 60 61 51
56 7   57 52 24 25 92 91 96 57
57 5   58 53 52 56 96 95
58 3   59 54 53 57
59 3   60 55 54 58
60 2   61 55 59
61 5   70 73 44 51 55 60
62 8   78 81 66 69 63 65 3 88 78
63 4   64 65 62 69 64
64 4   30 65 63 69 68
65 6   30 2 3 62 63 64 30
66 6   74 77 67 69 62 81 74
67 4   68 69 66 77 68
68 4   64 69 67 77 76
69 6   64 63 62 66 67 68 64
70 2   71 73 61
71 2   72 73 70
72 4   97 100 42 73 71
73 6   42 44 61 70 71 72 42
74 6   75 77 66 81 80 85 75
75 4   76 77 74 85 84
76 2   68 77 75
77 6   68 67 66 74 75 76 68
78 4   79 81 62 88 87
79 2   80 81 78
80 4   82 85 74 81 79
81 6   74 66 62 78 79 80 74
82 2   83 85 80
83 2   84 85 82
84 2   75 85 83
85 6   75 74 80 82 83 84 75
86 2   87 88 8
87 2   78 88 86
88 6   78 62 3 8 86 87 78
89 2   90 92 30
90 2   91 92 89
91 4   93 96 56 92 90
92 6   56 25 30 89 90 91 56
93 2   94 96 91
94 2   95 96 93
95 2   57 96 94
96 6   57 56 91 93 94 95 57
97 2   98 100 72
98 2   99 100 97
99 4   101 103 40 100 98
100 6   40 42 72 97 98 99 40
101 2   102 103 99
102 2   22 103 101
103 6   22 21 40 99 101 102 22

RADII:
6.173613612e-02   2.029715897e-01   2.401014222e-01   1.133139438e-01
1.259104139e-01   2.441543820e-01   3.130118746e-01   1.486904453e+00
1.104279223e-01   2.003466102e-01   2.274230543e-01   3.562582716e-01
1.706799484e+00   1.163455938e-01   2.141218514e-01   2.387680711e-01
4.161418152e-01   1.402039588e+00   1.496940001e-01   2.535255339e-01
2.878425972e-01   3.809152479e+00   8.375571404e-01   8.867452164e-02
1.913627185e-01   5.604446250e-02   9.697712021e-02   1.294087351e-01
1.732484520e-01   5.114467423e-01   8.081953961e-02   1.392504969e-01
1.686975369e-01   6.424755497e-02   7.897099120e-02   1.623419772e-01
1.614212036e-01   6.756894923e-02   7.062274807e-02   4.052727382e-01
9.660654480e-02   1.980013713e-01   1.538256904e-01   1.252848506e-01
1.210198902e-01   8.587914745e-02   3.048009792e-02   1.208034258e-01
9.638832359e-02   6.430288021e-02   4.836406002e-02   1.339482796e-01
1.212084914e-01   8.715561972e-02   6.993674478e-02   2.167851360e-01
1.881473086e-01   1.377074841e-01   6.518081312e-02   6.623903516e-02
1.103342136e-01   2.354075574e-01   9.192035939e-02   6.103308728e-01
2.339130952e-01   6.383708824e-02   3.389911924e-02   2.180464636e-01
1.211866721e-01   2.478572882e-01   1.567505752e-01   2.016135890e-01
1.606039775e-01   3.279751057e-02   2.220816529e-02   2.117286613e-02
3.959340704e-02   3.098870420e-01   2.924572871e-02   2.676258873e-02
6.607783460e-02   6.864691728e-03   4.809758237e-03   6.477593666e-03
1.264360681e-02   3.408842437e-01   2.327110373e-01   2.930318233e-01
2.276667115e-01   1.911887307e-01   2.906122674e-01   2.339157095e-01
1.190747642e-01   9.610867898e-02   1.376101030e-01   1.575158047e-01
4.094803175e-01   4.777754128e-01   1.185684914e+00   3.288321358e-01
7.061840027e-01   8.010367311e-01   4.767721450e-01

CENTERS:
-0.0000000000e+00 -0.0000000000e+00  4.6971850000e-02 5.5891910000e-01
8.0861140000e-02 6.8791390000e-01  4.8795720000e-02 4.4111870000e-01
1.4362230000e-01 6.0505050000e-01  7.1120930000e-02 2.8902500000e-01
2.1043880000e-01 4.7270810000e-01  3.5352220000e-01 8.2772350000e-01
2.2767990000e-01 3.0478570000e-01  3.7806060000e-01 5.0960670000e-01
2.4267330000e-01 1.5522180000e-01  4.1152930000e-01 3.2732130000e-01
6.8801370000e-01 6.1593320000e-01  3.9251320000e-01 1.4401580000e-01
5.9331660000e-01 3.1304760000e-01  3.7603640000e-01 -5.3169000000e-03
5.8717970000e-01 1.2306270000e-01  8.6061700000e-01 3.1396260000e-01
5.2012630000e-01 -6.0491710000e-02  7.6053020000e-01 9.7780250000e-02
4.4850220000e-01 -2.0728590000e-01  9.6394280000e-01 -2.1596390000e-01
9.0932550000e-01 9.7322030000e-02  -1.8769450000e-01 3.0570770000e-02
-1.9377140000e-01 1.6383160000e-01  -1.2677940000e-01 6.5806560000e-02
-7.7482400000e-02 2.3363290000e-01  -9.3299760000e-02 -1.9336760000e-02
-2.4780720000e-02 1.1429920000e-01  -1.9601040000e-01 4.6361140000e-01
9.7675010000e-02 1.3777030000e-01  1.3588000000e-02 -9.9230380000e-02
1.1354130000e-01 1.6330420000e-02  1.1384220000e-01 -9.8315340000e-02
2.3339020000e-01 1.2324420000e-02  1.1220010000e-01 -2.0738360000e-01
2.2222420000e-01 -1.0073390000e-01  2.1896040000e-01 -2.0679470000e-01
3.2386400000e-01 -1.2968720000e-01  2.6169750000e-01 -4.0184580000e-01
2.9148230000e-01 -1.9562490000e-01  3.8816890000e-02 -4.7858110000e-01
3.8032200000e-02 -3.3241690000e-01  -6.3486310000e-02 -3.9781490000e-01
-2.1835970000e-02 -2.2078440000e-01  -6.6175090000e-02 -3.0590290000e-01
-1.0177170000e-01 -3.4328930000e-01  -1.0690690000e-01 -1.4146450000e-01
-1.2148250000e-01 -2.4347330000e-01  -1.3258560000e-01 -3.1534860000e-01
-1.2865390000e-01 -3.6404580000e-01  -2.0923550000e-01 -7.4008730000e-02
-2.0878990000e-01 -1.9357960000e-01  -1.9270570000e-01 -2.8610170000e-01
-1.7740020000e-01 -3.5217290000e-01  -3.2965440000e-01 3.4589000000e-02
-3.3808910000e-01 -1.4408100000e-01  -2.8901930000e-01 -2.7474330000e-01
-2.3226810000e-01 -3.3801120000e-01  -2.1877250000e-01 -3.8993010000e-01
-1.5653710000e-01 -4.2319240000e-01  -0.0000000000e+00 7.6474100000e-01
-6.6260900000e-02 7.3927940000e-01  -2.0742300000e-01 7.7085420000e-01
-4.5466190000e-02 6.5968900000e-01  -4.1879540000e-02 8.0399300000e-01
-5.8001460000e-02 8.0923530000e-01  -8.6048020000e-02 8.3753320000e-01
-6.8858640000e-02 7.8339330000e-01  -2.3623650000e-01 -5.2733820000e-01
-1.3238580000e-01 -6.0615620000e-01  -2.0036070000e-02 -6.0595260000e-01
-9.3907720000e-02 -5.0617100000e-01  -3.8963150000e-02 8.2009930000e-01
-4.4576010000e-02 8.2688120000e-01  -5.1075610000e-02 8.2879730000e-01
-5.0732260000e-02 8.1912890000e-01  1.7715500000e-02 8.5516400000e-01
-2.5065580000e-02 8.3123320000e-01  -3.2936350000e-02 8.2748290000e-01
-2.3165560000e-02 8.1605980000e-01  -3.7553950000e-02 8.2997120000e-01
-3.9358030000e-02 8.3007560000e-01  -4.1051300000e-02 8.2964180000e-01
-3.9123620000e-02 8.2736580000e-01  1.4658750000e-01 8.7328850000e-01
8.2313880000e-02 8.7554060000e-01  9.4586130000e-02 8.0186960000e-01
-4.4639610000e-01 3.7617580000e-01  -5.2309850000e-01 2.6024300000e-01
-5.2561210000e-01 9.3339630000e-02  -3.7081310000e-01 2.2343590000e-01
-5.5651690000e-01 -4.7999420000e-02  -5.3059910000e-01 -1.1842790000e-01
-4.6645510000e-01 -1.7457210000e-01  -4.5512940000e-01 -6.1053060000e-02
1.4499290000e-02 -7.6195930000e-01  1.7857440000e-01 -8.0239260000e-01
4.3801000000e-01 -7.4677640000e-01  1.4266440000e-01 -6.2488900000e-01
6.4734340000e-01 -6.1017090000e-01  7.5608660000e-01 -4.8444750000e-01
5.4704880000e-01 -4.3092830000e-01

END
    </circlepacking>
    <circlepacking name="counter.p">
NODECOUNT:  337
GEOMETRY: hyperbolic
ALPHA/BETA/GAMMA:  1 254 2
PACKNAME: pp3.p
BOUQUET:

1 12   2 3 4 5 6 7 8 9 10 11 12 13 2
2 6   3 1 13 14 15 16 3
3 6   4 1 2 16 17 18 4
4 6   5 1 3 18 19 20 5
5 6   6 1 4 20 21 22 6
6 6   7 1 5 22 23 24 7
7 6   8 1 6 24 25 26 8
8 6   9 1 7 26 27 28 9
9 6   10 1 8 28 29 30 10
10 6   11 1 9 30 31 32 11
11 6   12 1 10 32 33 34 12
12 6   13 1 11 34 35 36 13
13 6   14 2 1 12 36 37 14
14 6   15 2 13 37 38 39 15
15 6   16 2 14 39 40 41 16
16 6   17 3 2 15 41 42 17
17 6   18 3 16 42 43 44 18
18 6   19 4 3 17 44 45 19
19 6   20 4 18 45 46 47 20
20 6   21 5 4 19 47 48 21
21 6   22 5 20 48 49 50 22
22 6   23 6 5 21 50 51 23
23 6   24 6 22 51 52 53 24
24 6   25 7 6 23 53 54 25
25 6   26 7 24 54 55 56 26
26 6   27 8 7 25 56 57 27
27 6   28 8 26 57 58 59 28
28 6   29 9 8 27 59 60 29
29 6   30 9 28 60 61 62 30
30 6   31 10 9 29 62 63 31
31 6   32 10 30 63 64 65 32
32 6   33 11 10 31 65 66 33
33 6   34 11 32 66 67 68 34
34 6   35 12 11 33 68 69 35
35 6   36 12 34 69 70 71 36
36 6   37 13 12 35 71 72 37
37 6   38 14 13 36 72 73 38
38 6   39 14 37 73 74 75 39
39 6   40 15 14 38 75 76 40
40 6   41 15 39 76 77 78 41
41 6   42 16 15 40 78 79 42
42 6   43 17 16 41 79 80 43
43 6   44 17 42 80 81 82 44
44 6   45 18 17 43 82 83 45
45 6   46 19 18 44 83 84 46
46 6   47 19 45 84 85 86 47
47 6   48 20 19 46 86 87 48
48 6   49 21 20 47 87 88 49
49 6   50 21 48 88 89 90 50
50 6   51 22 21 49 90 91 51
51 6   52 23 22 50 91 92 52
52 6   53 23 51 92 93 94 53
53 6   54 24 23 52 94 95 54
54 6   55 25 24 53 95 96 55
55 6   56 25 54 96 97 98 56
56 6   57 26 25 55 98 99 57
57 6   58 27 26 56 99 100 58
58 6   59 27 57 100 101 102 59
59 6   60 28 27 58 102 103 60
60 6   61 29 28 59 103 104 61
61 6   62 29 60 104 105 106 62
62 6   63 30 29 61 106 107 63
63 6   64 31 30 62 107 108 64
64 6   65 31 63 108 109 110 65
65 6   66 32 31 64 110 111 66
66 6   67 33 32 65 111 112 67
67 6   68 33 66 112 113 114 68
68 6   69 34 33 67 114 115 69
69 6   70 35 34 68 115 116 70
70 6   71 35 69 116 117 118 71
71 6   72 36 35 70 118 119 72
72 6   73 37 36 71 119 120 73
73 6   74 38 37 72 120 121 74
74 6   75 38 73 121 122 123 75
75 6   76 39 38 74 123 124 76
76 6   77 40 39 75 124 125 77
77 6   78 40 76 125 126 127 78
78 6   79 41 40 77 127 128 79
79 6   80 42 41 78 128 129 80
80 6   81 43 42 79 129 130 81
81 6   82 43 80 130 131 132 82
82 6   83 44 43 81 132 133 83
83 6   84 45 44 82 133 134 84
84 6   85 46 45 83 134 135 85
85 6   86 46 84 135 136 137 86
86 6   87 47 46 85 137 138 87
87 6   88 48 47 86 138 139 88
88 6   89 49 48 87 139 140 89
89 6   90 49 88 140 141 142 90
90 6   91 50 49 89 142 143 91
91 6   92 51 50 90 143 144 92
92 6   93 52 51 91 144 145 93
93 6   94 52 92 145 146 147 94
94 6   95 53 52 93 147 148 95
95 6   96 54 53 94 148 149 96
96 6   97 55 54 95 149 150 97
97 6   98 55 96 150 151 152 98
98 6   99 56 55 97 152 153 99
99 6   100 57 56 98 153 154 100
100 6   101 58 57 99 154 155 101
101 6   102 58 100 155 156 157 102
102 6   103 59 58 101 157 158 103
103 6   104 60 59 102 158 159 104
104 6   105 61 60 103 159 160 105
105 6   106 61 104 160 161 162 106
106 6   107 62 61 105 162 163 107
107 6   108 63 62 106 163 164 108
108 6   109 64 63 107 164 165 109
109 6   110 64 108 165 166 167 110
110 6   111 65 64 109 167 168 111
111 6   112 66 65 110 168 169 112
112 6   113 67 66 111 169 170 113
113 6   114 67 112 170 171 172 114
114 6   115 68 67 113 172 173 115
115 6   116 69 68 114 173 174 116
116 6   117 70 69 115 174 175 117
117 6   118 70 116 175 176 177 118
118 6   119 71 70 117 177 178 119
119 6   120 72 71 118 178 179 120
120 6   121 73 72 119 179 180 121
121 6   122 74 73 120 180 181 122
122 6   123 74 121 181 182 183 123
123 6   124 75 74 122 183 184 124
124 6   125 76 75 123 184 185 125
125 6   126 77 76 124 185 186 126
126 6   127 77 125 186 187 188 127
127 6   128 78 77 126 188 189 128
128 6   129 79 78 127 189 190 129
129 6   130 80 79 128 190 191 130
130 6   131 81 80 129 191 192 131
131 6   132 81 130 192 193 194 132
132 6   133 82 81 131 194 195 133
133 6   134 83 82 132 195 196 134
134 6   135 84 83 133 196 197 135
135 6   136 85 84 134 197 198 136
136 6   137 85 135 198 199 200 137
137 6   138 86 85 136 200 201 138
138 6   139 87 86 137 201 202 139
139 6   140 88 87 138 202 203 140
140 6   141 89 88 139 203 204 141
141 6   142 89 140 204 205 206 142
142 6   143 90 89 141 206 207 143
143 6   144 91 90 142 207 208 144
144 6   145 92 91 143 208 209 145
145 6   146 93 92 144 209 210 146
146 6   147 93 145 210 211 212 147
147 6   148 94 93 146 212 213 148
148 6   149 95 94 147 213 214 149
149 6   150 96 95 148 214 215 150
150 6   151 97 96 149 215 216 151
151 6   152 97 150 216 217 218 152
152 6   153 98 97 151 218 219 153
153 6   154 99 98 152 219 220 154
154 6   155 100 99 153 220 221 155
155 6   156 101 100 154 221 222 156
156 6   157 101 155 222 223 224 157
157 6   158 102 101 156 224 225 158
158 6   159 103 102 157 225 226 159
159 6   160 104 103 158 226 227 160
160 6   161 105 104 159 227 228 161
161 6   162 105 160 228 229 230 162
162 6   163 106 105 161 230 231 163
163 6   164 107 106 162 231 232 164
164 6   165 108 107 163 232 233 165
165 6   166 109 108 164 233 234 166
166 6   167 109 165 234 235 236 167
167 6   168 110 109 166 236 237 168
168 6   169 111 110 167 237 238 169
169 6   170 112 111 168 238 239 170
170 6   171 113 112 169 239 240 171
171 6   172 113 170 240 241 242 172
172 6   173 114 113 171 242 243 173
173 6   174 115 114 172 243 244 174
174 6   175 116 115 173 244 245 175
175 6   176 117 116 174 245 246 176
176 6   177 117 175 246 247 248 177
177 6   178 118 117 176 248 249 178
178 6   179 119 118 177 249 250 179
179 6   180 120 119 178 250 251 180
180 6   181 121 120 179 251 252 181
181 6   182 122 121 180 252 253 182
182 6   183 122 181 253 254 255 183
183 6   184 123 122 182 255 256 184
184 6   185 124 123 183 256 257 185
185 6   186 125 124 184 257 258 186
186 6   187 126 125 185 258 259 187
187 6   188 126 186 259 260 261 188
188 6   189 127 126 187 261 262 189
189 6   190 128 127 188 262 263 190
190 6   191 129 128 189 263 264 191
191 6   192 130 129 190 264 265 192
192 6   193 131 130 191 265 266 193
193 6   194 131 192 266 267 268 194
194 6   195 132 131 193 268 269 195
195 6   196 133 132 194 269 270 196
196 6   197 134 133 195 270 271 197
197 6   198 135 134 196 271 272 198
198 6   199 136 135 197 272 273 199
199 6   200 136 198 273 274 275 200
200 6   201 137 136 199 275 276 201
201 6   202 138 137 200 276 277 202
202 6   203 139 138 201 277 278 203
203 6   204 140 139 202 278 279 204
204 6   205 141 140 203 279 280 205
205 6   206 141 204 280 281 282 206
206 6   207 142 141 205 282 283 207
207 6   208 143 142 206 283 284 208
208 6   209 144 143 207 284 285 209
209 6   210 145 144 208 285 286 210
210 6   211 146 145 209 286 287 211
211 6   212 146 210 287 288 289 212
212 6   213 147 146 211 289 290 213
213 6   214 148 147 212 290 291 214
214 6   215 149 148 213 291 292 215
215 6   216 150 149 214 292 293 216
216 6   217 151 150 215 293 294 217
217 6   218 151 216 294 295 296 218
218 6   219 152 151 217 296 297 219
219 6   220 153 152 218 297 298 220
220 6   221 154 153 219 298 299 221
221 6   222 155 154 220 299 300 222
222 6   223 156 155 221 300 301 223
223 6   224 156 222 301 302 303 224
224 6   225 157 156 223 303 304 225
225 6   226 158 157 224 304 305 226
226 6   227 159 158 225 305 306 227
227 6   228 160 159 226 306 307 228
228 6   229 161 160 227 307 308 229
229 6   230 161 228 308 309 310 230
230 6   231 162 161 229 310 311 231
231 6   232 163 162 230 311 312 232
232 6   233 164 163 231 312 313 233
233 6   234 165 164 232 313 314 234
234 6   235 166 165 233 314 315 235
235 6   236 166 234 315 316 317 236
236 6   237 167 166 235 317 318 237
237 6   238 168 167 236 318 319 238
238 6   239 169 168 237 319 320 239
239 6   240 170 169 238 320 321 240
240 6   241 171 170 239 321 322 241
241 6   242 171 240 322 323 324 242
242 6   243 172 171 241 324 325 243
243 6   244 173 172 242 325 326 244
244 6   245 174 173 243 326 327 245
245 6   246 175 174 244 327 328 246
246 6   247 176 175 245 328 329 247
247 6   248 176 246 329 330 331 248
248 6   249 177 176 247 331 332 249
249 6   250 178 177 248 332 333 250
250 6   251 179 178 249 333 334 251
251 6   252 180 179 250 334 335 252
252 6   253 181 180 251 335 336 253
253 6   254 182 181 252 336 337 254
254 3   255 182 253 337
255 3   256 183 182 254
256 3   257 184 183 255
257 3   258 185 184 256
258 3   259 186 185 257
259 3   260 187 186 258
260 2   261 187 259
261 3   262 188 187 260
262 3   263 189 188 261
263 3   264 190 189 262
264 3   265 191 190 263
265 3   266 192 191 264
266 3   267 193 192 265
267 2   268 193 266
268 3   269 194 193 267
269 3   270 195 194 268
270 3   271 196 195 269
271 3   272 197 196 270
272 3   273 198 197 271
273 3   274 199 198 272
274 2   275 199 273
275 3   276 200 199 274
276 3   277 201 200 275
277 3   278 202 201 276
278 3   279 203 202 277
279 3   280 204 203 278
280 3   281 205 204 279
281 2   282 205 280
282 3   283 206 205 281
283 3   284 207 206 282
284 3   285 208 207 283
285 3   286 209 208 284
286 3   287 210 209 285
287 3   288 211 210 286
288 2   289 211 287
289 3   290 212 211 288
290 3   291 213 212 289
291 3   292 214 213 290
292 3   293 215 214 291
293 3   294 216 215 292
294 3   295 217 216 293
295 2   296 217 294
296 3   297 218 217 295
297 3   298 219 218 296
298 3   299 220 219 297
299 3   300 221 220 298
300 3   301 222 221 299
301 3   302 223 222 300
302 2   303 223 301
303 3   304 224 223 302
304 3   305 225 224 303
305 3   306 226 225 304
306 3   307 227 226 305
307 3   308 228 227 306
308 3   309 229 228 307
309 2   310 229 308
310 3   311 230 229 309
311 3   312 231 230 310
312 3   313 232 231 311
313 3   314 233 232 312
314 3   315 234 233 313
315 3   316 235 234 314
316 2   317 235 315
317 3   318 236 235 316
318 3   319 237 236 317
319 3   320 238 237 318
320 3   321 239 238 319
321 3   322 240 239 320
322 3   323 241 240 321
323 2   324 241 322
324 3   325 242 241 323
325 3   326 243 242 324
326 3   327 244 243 325
327 3   328 245 244 326
328 3   329 246 245 327
329 3   330 247 246 328
330 2   331 247 329
331 3   332 248 247 330
332 3   333 249 248 331
333 3   334 250 249 332
334 3   335 251 250 333
335 3   336 252 251 334
336 3   337 253 252 335
337 2   254 253 336

RADII:
5.673756800e-01   2.262741799e-01   2.262654381e-01   2.262233327e-01
2.260728242e-01   2.255683574e-01   2.241883315e-01   2.228034943e-01
2.241883305e-01   2.255683558e-01   2.260728229e-01   2.262233320e-01
2.262654378e-01   1.955373266e-01   1.925034697e-01   1.955373268e-01
1.924989255e-01   1.955240432e-01   1.924767114e-01   1.954723506e-01
1.923920656e-01   1.952760403e-01   1.920324381e-01   1.944346519e-01
1.901354647e-01   1.911783893e-01   1.855862879e-01   1.911783887e-01
1.901354636e-01   1.944346506e-01   1.920324366e-01   1.952760389e-01
1.923920645e-01   1.954723498e-01   1.924767108e-01   1.955240428e-01
1.924989253e-01   1.934457456e-01   1.934467754e-01   1.981557613e-01
1.934467755e-01   1.934457458e-01   1.981533410e-01   1.934412065e-01
1.934361536e-01   1.981414011e-01   1.934181800e-01   1.933986129e-01
1.980941188e-01   1.933255294e-01   1.932369959e-01   1.978626880e-01
1.928385004e-01   1.922284811e-01   1.958705202e-01   1.887772145e-01
1.844499554e-01   1.828617380e-01   1.844499551e-01   1.887772139e-01
1.958705193e-01   1.922284800e-01   1.928384991e-01   1.978626867e-01
1.932369946e-01   1.933255283e-01   1.980941179e-01   1.933986122e-01
1.934181795e-01   1.981414007e-01   1.934361533e-01   1.934412062e-01
1.981533409e-01   2.157697998e-01   2.122771765e-01   2.157706450e-01
2.304584760e-01   2.157706450e-01   2.122771766e-01   2.157697999e-01
2.304572082e-01   2.157680283e-01   2.122727430e-01   2.157638578e-01
2.304509212e-01   2.157567713e-01   2.122548821e-01   2.157402286e-01
2.304254792e-01   2.157102637e-01   2.121773628e-01   2.156285387e-01
2.302904879e-01   2.154407789e-01   2.116547555e-01   2.146684597e-01
2.286510764e-01   2.116884747e-01   2.030191591e-01   1.954257786e-01
1.905829743e-01   1.954257784e-01   2.030191587e-01   2.116884742e-01
2.286510759e-01   2.146684590e-01   2.116547545e-01   2.154407779e-01
2.302904869e-01   2.156285377e-01   2.121773618e-01   2.157102629e-01
2.304254785e-01   2.157402281e-01   2.122548817e-01   2.157567710e-01
2.304509210e-01   2.157638575e-01   2.122727428e-01   2.157680282e-01
2.304572082e-01   2.734975174e-01   2.642969390e-01   2.642971495e-01
2.734980397e-01   3.051018824e-01   2.734980397e-01   2.642971495e-01
2.642969391e-01   2.734975174e-01   3.051012827e-01   2.734968226e-01
2.642950717e-01   2.642940319e-01   2.734942360e-01   3.050983011e-01
2.734914415e-01   2.642864867e-01   2.642823391e-01   2.734810274e-01
3.050860992e-01   2.734689627e-01   2.642491872e-01   2.642282630e-01
2.734146142e-01   3.050185612e-01   2.733331420e-01   2.639914700e-01
2.637741145e-01   2.726902506e-01   3.040048262e-01   2.707668332e-01
2.572354398e-01   2.451955374e-01   2.212570956e-01   1.769930261e-01
2.212570955e-01   2.451955372e-01   2.572354395e-01   2.707668329e-01
3.040048259e-01   2.726902501e-01   2.637741139e-01   2.639914693e-01
2.733331412e-01   3.050185605e-01   2.734146135e-01   2.642282623e-01
2.642491865e-01   2.734689621e-01   3.050860988e-01   2.734810270e-01
2.642823388e-01   2.642864865e-01   2.734914414e-01   3.050983010e-01
2.734942358e-01   2.642940318e-01   2.642950717e-01   2.734968226e-01
3.051012826e-01   4.252812441e-01   4.092397447e-01   4.058545513e-01
4.092399173e-01   4.252814952e-01   4.960430116e-01   4.252814952e-01
4.092399173e-01   4.058545513e-01   4.092397447e-01   4.252812442e-01
4.960428003e-01   4.252810146e-01   4.092390419e-01   4.058532526e-01
4.092381874e-01   4.252797687e-01   4.960417486e-01   4.252788434e-01
4.092353443e-01   4.058479585e-01   4.092319062e-01   4.252737836e-01
4.960374235e-01   4.252697516e-01   4.092193531e-01   4.058239066e-01
4.092014443e-01   4.252424903e-01   4.960130418e-01   4.252143300e-01
4.091097459e-01   4.056296514e-01   4.088973963e-01   4.248419145e-01
4.956077273e-01   4.240262848e-01   4.056330603e-01   3.946025728e-01
3.694213927e-01   2.754070030e-01   6.446496578e-02   2.754070029e-01
3.694213926e-01   3.946025728e-01   4.056330602e-01   4.240262845e-01
4.956077271e-01   4.248419143e-01   4.088973959e-01   4.056296511e-01
4.091097453e-01   4.252143293e-01   4.960130414e-01   4.252424898e-01
4.092014437e-01   4.058239061e-01   4.092193526e-01   4.252697512e-01
4.960374234e-01   4.252737834e-01   4.092319059e-01   4.058479583e-01
4.092353441e-01   4.252788434e-01   4.960417485e-01   4.252797686e-01
4.092381874e-01   4.058532525e-01   4.092390419e-01   4.252810145e-01
4.960428003e-01   -3.223892599e-02   -4.025083017e-02   -4.441045402e-02
-4.441020490e-02   -4.025016126e-02   -3.223806293e-02   -2.054358039e-02
-3.223806304e-02   -4.025016132e-02   -4.441020504e-02   -4.441045429e-02
-4.025083046e-02   -3.223892618e-02   -2.054429617e-02   -3.223943209e-02
-4.025235898e-02   -4.441337718e-02   -4.441458854e-02   -4.025561253e-02
-3.224363229e-02   -2.054778150e-02   -3.224559619e-02   -4.026155069e-02
-4.442595880e-02   -4.443046959e-02   -4.027368590e-02   -3.226130508e-02
-2.056085207e-02   -3.226871703e-02   -4.029614635e-02   -4.447371909e-02
-4.449162721e-02   -4.034465269e-02   -3.233222446e-02   -2.061430793e-02
-3.236513442e-02   -4.044530347e-02   -4.469021551e-02   -4.478881862e-02
-4.072134632e-02   -3.274776428e-02   -2.095662714e-02   -3.304068021e-02
-4.167167437e-02   -4.699634600e-02   -4.956549922e-02   -5.253481477e-02
-7.685468417e-02   -9.230857324e-01   -7.685468884e-02   -5.253481607e-02
-4.956549997e-02   -4.699634636e-02   -4.167167467e-02   -3.304068075e-02
-2.095662731e-02   -3.274776436e-02   -4.072134685e-02   -4.478881924e-02
-4.469021604e-02   -4.044530400e-02   -3.236513498e-02   -2.061430819e-02
-3.233222486e-02   -4.034465334e-02   -4.449162792e-02   -4.447371975e-02
-4.029614685e-02   -3.226871727e-02   -2.056085225e-02   -3.226130542e-02
-4.027368620e-02   -4.443046989e-02   -4.442595913e-02   -4.026155096e-02
-3.224559624e-02   -2.054778159e-02   -3.224363257e-02   -4.025561269e-02
-4.441458869e-02   -4.441337739e-02   -4.025235917e-02   -3.223943209e-02
-2.054429622e-02

CENTERS:
0.0000000000e+00 0.0000000000e+00  -6.9295838884e-17 -3.7722897700e-01
1.8902912470e-01 -3.2644580363e-01  3.2714338306e-01 -1.8778300449e-01
3.7714019142e-01 1.3541508852e-03  3.2564355906e-01 1.8981482254e-01
1.8712762173e-01 3.2651281178e-01  -1.4052626705e-09 3.7573960293e-01
-1.8712762368e-01 3.2651281016e-01  -3.2564355935e-01 1.8981482072e-01
-3.7714019088e-01 1.3541500057e-03  -3.2714338266e-01 -1.8778300459e-01
-1.8902912460e-01 -3.2644580353e-01  -1.3059147354e-01 -4.8611467420e-01
1.6482075812e-10 -5.4145637404e-01  1.3059147366e-01 -4.8611467417e-01
2.7133341346e-01 -4.6855602974e-01  3.5660010012e-01 -3.5521907335e-01
4.6957841844e-01 -2.6948459778e-01  4.8653551169e-01 -1.2868927823e-01
5.4127045749e-01 2.1169331063e-03  4.8531040491e-01 1.3234895366e-01
4.6693128092e-01 2.7281695918e-01  3.5327489748e-01 3.5698640790e-01
2.6699407340e-01 4.6838450134e-01  1.2792858917e-01 4.8354163881e-01
-1.7650558988e-09 5.3654022194e-01  -1.2792859217e-01 4.8354163748e-01
-2.6699407557e-01 4.6838449884e-01  -3.5327489842e-01 3.5698640521e-01
-4.6693128062e-01 2.7281695647e-01  -4.8531040399e-01 1.3234895180e-01
-5.4127045621e-01 2.1169319999e-03  -4.8653551067e-01 -1.2868927876e-01
-4.6957841753e-01 -2.6948459797e-01  -3.5660009951e-01 -3.5521907331e-01
-2.7133341315e-01 -4.6855602958e-01  -2.1858535712e-01 -5.8467619769e-01
-1.0384257050e-01 -6.1550472838e-01  4.9392319278e-10 -6.6489871532e-01
1.0384257118e-01 -6.1550472823e-01  2.1858535748e-01 -5.8467619757e-01
3.3320053028e-01 -5.7537548853e-01  3.9830390518e-01 -4.8058777578e-01
4.8214167440e-01 -3.9639992315e-01  5.7665718202e-01 -3.3089859907e-01
5.8546911339e-01 -2.1624262160e-01  6.1579027150e-01 -1.0136412385e-01
6.6470135152e-01 2.7160620705e-03  6.1478149446e-01 1.0631435226e-01
5.8330411884e-01 2.2087205563e-01  5.7323091042e-01 3.3542976894e-01
4.7793906707e-01 3.9973194010e-01  3.9300958920e-01 4.8252629575e-01
3.2631045078e-01 5.7570904308e-01  2.1261661170e-01 5.8203353160e-01
9.9935570054e-02 6.0916099446e-01  -1.7248435239e-09 6.5471587922e-01
-9.9935573187e-02 6.0916099349e-01  -2.1261661420e-01 5.8203352958e-01
-3.2631045275e-01 5.7570904033e-01  -3.9300959032e-01 4.8252629273e-01
-4.7793906710e-01 3.9973193710e-01  -5.7323090976e-01 3.3542976599e-01
-5.8330411769e-01 2.2087205311e-01  -6.1478149291e-01 1.0631435057e-01
-6.6470134994e-01 2.7160608300e-03  -6.1579027005e-01 -1.0136412483e-01
-5.8546911208e-01 -2.1624262223e-01  -5.7665718077e-01 -3.3089859961e-01
-4.8214167324e-01 -3.9639992348e-01  -3.9830390428e-01 -4.8058777589e-01
-3.3320052973e-01 -5.7537548844e-01  -2.8669199557e-01 -6.7112064356e-01
-1.8568312415e-01 -6.9116401141e-01  -8.8230443401e-02 -7.2444194491e-01
8.7127751175e-10 -7.6817101040e-01  8.8230444884e-02 -7.2444194467e-01
1.8568312527e-01 -6.9116401104e-01  2.8669199619e-01 -6.7112064329e-01
3.8495912808e-01 -6.6474271688e-01  4.3939369022e-01 -5.8268088945e-01
5.0704564762e-01 -5.0503903951e-01  5.8440742296e-01 -4.3706405619e-01
6.6624702927e-01 -3.8228430367e-01  6.7221118721e-01 -2.8398083665e-01
6.9182070921e-01 -1.8287268844e-01  7.2466956546e-01 -8.5252203112e-02
7.6800393055e-01 3.2117836160e-03  7.2382360571e-01 9.1268070300e-02
6.9000967110e-01 1.8859196281e-01  6.6934947734e-01 2.8955239700e-01
6.6229979605e-01 3.8789777092e-01  5.7968480982e-01 4.4176781397e-01
5.0127389566e-01 5.0874189829e-01  4.3219256323e-01 5.8531507118e-01
3.7577902855e-01 6.6634766285e-01  2.7736437729e-01 6.6970511311e-01
1.7695066844e-01 6.8535724793e-01  8.1989234032e-02 7.1238873437e-01
-1.4519023264e-09 7.4880571341e-01  -8.1989236682e-02 7.1238873372e-01
-1.7695067049e-01 6.8535724653e-01  -2.7736437900e-01 6.6970511105e-01
-3.7577903019e-01 6.6634766037e-01  -4.3219256434e-01 5.8531506830e-01
-5.0127389578e-01 5.0874189543e-01  -5.7968480928e-01 4.4176781122e-01
-6.6229979541e-01 3.8789776810e-01  -6.6934947625e-01 2.8955239419e-01
-6.9000966957e-01 1.8859196065e-01  -7.2382360406e-01 9.1268068802e-02
-7.6800392907e-01 3.2117822215e-03  -7.2466956392e-01 -8.5252204547e-02
-6.9182070767e-01 -1.8287268967e-01  -6.7221118578e-01 -2.8398083764e-01
-6.6624702781e-01 -3.8228430474e-01  -5.8440742137e-01 -4.3706405710e-01
-5.0704564607e-01 -5.0503904022e-01  -4.3939368899e-01 -5.8268088980e-01
-3.8495912730e-01 -6.6474271697e-01  -3.4421274905e-01 -7.4784440364e-01
-2.5394479328e-01 -7.6381898400e-01  -1.6302511039e-01 -7.8824628399e-01
-7.6906480518e-02 -8.1966129621e-01  1.2478742274e-09 -8.5744924449e-01
7.6906482843e-02 -8.1966129594e-01  1.6302511252e-01 -7.8824628346e-01
2.5394479485e-01 -7.6381898334e-01  3.4421274995e-01 -7.4784440315e-01
4.2970374631e-01 -7.4200138343e-01  4.7731802942e-01 -6.7075617177e-01
5.3609785837e-01 -6.0040741543e-01  6.0253440549e-01 -5.3369709658e-01
6.7264405955e-01 -4.7462532489e-01  7.4369980487e-01 -4.2671277629e-01
7.4918858650e-01 -3.4118512659e-01  7.6478482085e-01 -2.5083238136e-01
7.8882581472e-01 -1.5978312598e-01  8.1987122038e-01 -7.3492540046e-02
8.5733151118e-01 3.6274930452e-03  8.1915667289e-01 8.0410097598e-02
7.8728604864e-01 1.6644237047e-01  7.6234214122e-01 2.5732607314e-01
7.4581226720e-01 3.4763326616e-01  7.3941224206e-01 4.3327104564e-01
6.6763540958e-01 4.8050722856e-01  5.9656406730e-01 5.3886769861e-01
5.2887652117e-01 6.0484968782e-01  4.6849307382e-01 6.7453556928e-01
4.1885229950e-01 7.4538284938e-01  3.3225107418e-01 7.4875943213e-01
2.4073281116e-01 7.6084811259e-01  1.4919372863e-01 7.7861249429e-01
6.5644405588e-02 7.9839421044e-01  -1.0677930678e-09 8.1908106661e-01
-6.5644407415e-02 7.9839421000e-01  -1.4919372962e-01 7.7861249340e-01
-2.4073281180e-01 7.6084811143e-01  -3.3225107511e-01 7.4875943050e-01
-4.1885230076e-01 7.4538284752e-01  -4.6849307482e-01 6.7453556696e-01
-5.2887652127e-01 6.0484968551e-01  -5.9656406676e-01 5.3886769651e-01
-6.6763540894e-01 4.8050722639e-01  -7.3941224173e-01 4.3327104323e-01
-7.4581226652e-01 3.4763326338e-01  -7.6234214004e-01 2.5732607071e-01
-7.8728604722e-01 1.6644236870e-01  -8.1915667153e-01 8.0410096196e-02
-8.5733151009e-01 3.6274914710e-03  -8.1987121907e-01 -7.3492541920e-02
-7.8882581325e-01 -1.5978312795e-01  -7.6478481931e-01 -2.5083238313e-01
-7.4918858501e-01 -3.4118512816e-01  -7.4369980328e-01 -4.2671277801e-01
-6.7264405767e-01 -4.7462532652e-01  -6.0253440339e-01 -5.3369709816e-01
-5.3609785633e-01 -6.0040741663e-01  -4.7731802787e-01 -6.7075617243e-01
-4.2970374525e-01 -7.4200138376e-01  -3.9600999962e-01 -8.1568295408e-01
-3.1550817901e-01 -8.3294728083e-01  -2.2966798776e-01 -8.5487790834e-01
-1.4439533587e-01 -8.7891915373e-01  -6.6081648121e-02 -9.0432283034e-01
1.6078168224e-09 -9.3340485539e-01  6.6081651244e-02 -9.0432283007e-01
1.4439533905e-01 -8.7891915315e-01  2.2966799059e-01 -8.5487790744e-01
3.1550818101e-01 -8.3294727988e-01  3.9601000085e-01 -8.1568295338e-01
4.6777080013e-01 -8.0773191889e-01  5.1038178816e-01 -7.4944609597e-01
5.6542172625e-01 -6.8821187497e-01  6.2716689312e-01 -6.2466721888e-01
6.9046148791e-01 -5.6266244438e-01  7.5147594353e-01 -5.0736933576e-01
8.0959545999e-01 -4.6451574261e-01  8.1725430355e-01 -3.9271012273e-01
8.3418934601e-01 -3.1211891623e-01  8.5576609100e-01 -2.2616120483e-01
8.7945278403e-01 -1.4075194300e-01  9.0452985051e-01 -6.2286352440e-02
9.3334151901e-01 3.9686915179e-03  9.0393859158e-01 6.9974745075e-02
8.7814298625e-01 1.4824656529e-01  8.5365088114e-01 2.3350543939e-01
8.3123435382e-01 3.1936797646e-01  8.1348453554e-01 3.9994421751e-01
8.0509366292e-01 4.7185811130e-01  7.4634400162e-01 5.1424861055e-01
6.8446655659e-01 5.6907184043e-01  6.2006717354e-01 6.3059668522e-01
5.5696926689e-01 6.9369619820e-01  5.0034589299e-01 7.5462470795e-01
4.5599626457e-01 8.1295862588e-01  3.8266469497e-01 8.1937929039e-01
2.9966843212e-01 8.3426055254e-01  2.1009294664e-01 8.5176766370e-01
1.2013644210e-01 8.6620556096e-01  4.1597167441e-02 8.6854958394e-01
-6.2421211316e-10 8.5507925425e-01  -4.1597168143e-02 8.6854958356e-01
-1.2013644158e-01 8.6620556040e-01  -2.1009294544e-01 8.5176766335e-01
-2.9966843141e-01 8.3426055212e-01  -3.8266469517e-01 8.1937928949e-01
-4.5599626530e-01 8.1295862486e-01  -5.0034589371e-01 7.5462470653e-01
-5.5696926679e-01 6.9369619682e-01  -6.2006717284e-01 6.3059668422e-01
-6.8446655587e-01 5.6907183939e-01  -7.4634400124e-01 5.1424860908e-01
-8.0509366309e-01 4.7185810944e-01  -8.1348453546e-01 3.9994421508e-01
-8.3123435331e-01 3.1936797406e-01  -8.5365088032e-01 2.3350543745e-01
-8.7814298532e-01 1.4824656375e-01  -9.0393859080e-01 6.9974743582e-02
-9.3334151845e-01 3.9686896364e-03  -9.0452984963e-01 -6.2286354738e-02
-8.7945278289e-01 -1.4075194572e-01  -8.5576608958e-01 -2.2616120765e-01
-8.3418934444e-01 -3.1211891876e-01  -8.1725430200e-01 -3.9271012504e-01
-8.0959545828e-01 -4.6451574506e-01  -7.5147594145e-01 -5.0736933817e-01
-6.9046148539e-01 -5.6266244694e-01  -6.2716689028e-01 -6.2466722125e-01
-5.6542172365e-01 -6.8821187670e-01  -5.1038178623e-01 -7.4944609700e-01
-4.6777079871e-01 -8.0773191954e-01  -4.5471214197e-01 -8.9063846085e-01
-3.8690773679e-01 -9.2211843231e-01  -3.0405869196e-01 -9.5265330097e-01
-2.1429319528e-01 -9.7676938243e-01  -1.2729724397e-01 -9.9186461358e-01
-5.2847434962e-02 -9.9860259794e-01  2.0339463129e-09 -1.0000000000e+00
5.2847439115e-02 -9.9860259772e-01  1.2729724844e-01 -9.9186461301e-01
2.1429319981e-01 -9.7676938144e-01  3.0405869586e-01 -9.5265329972e-01
3.8690773960e-01 -9.2211843114e-01  4.5471214388e-01 -8.9063845988e-01
5.0114613502e-01 -8.6536267042e-01  5.4617979141e-01 -8.3766797447e-01
6.0723206621e-01 -7.9452452307e-01  6.7495415785e-01 -7.3785966470e-01
7.4055279946e-01 -6.7199817798e-01  7.9694940485e-01 -6.0404606291e-01
8.3985251115e-01 -5.4281466405e-01  8.6737035982e-01 -4.9766319826e-01
8.9246389000e-01 -4.5111883693e-01  9.2367736967e-01 -3.8317113247e-01
9.5388508041e-01 -3.0017203962e-01  9.7764321902e-01 -2.1027062635e-01
9.9238612875e-01 -1.2316562612e-01  9.9881648087e-01 -4.8637820011e-02
9.9999093709e-01 4.2574338927e-03  9.9836577244e-01 5.7147042045e-02
9.9129656430e-01 1.3164771781e-01  9.7579383016e-01 2.1869248047e-01
9.5122457160e-01 3.0849929396e-01  9.2022848499e-01 3.9138157265e-01
8.8832651262e-01 4.5921237676e-01  8.6272961815e-01 5.0566550799e-01
8.3469041988e-01 5.5071944124e-01  7.9100967027e-01 6.1180364623e-01
7.3360935239e-01 6.7957142235e-01  6.6680558891e-01 7.4523171336e-01
5.9772139724e-01 8.0170389252e-01  5.3526098572e-01 8.4468673315e-01
4.8902313136e-01 8.7227081631e-01  4.4114465416e-01 8.9743601115e-01
3.7069930829e-01 9.2875293961e-01  2.8318595100e-01 9.5906502238e-01
1.8458173769e-01 9.8281716617e-01  7.7967582828e-02 9.9695589473e-01
-5.7910742296e-02 9.9832176473e-01  -5.6649431392e-07 -1.0000000000e+00
5.7910746654e-02 9.9832176447e-01  -7.7967579223e-02 9.9695589501e-01
-1.8458173341e-01 9.8281716697e-01  -2.8318594708e-01 9.5906502354e-01
-3.7069930584e-01 9.2875294059e-01  -4.4114465321e-01 8.9743601161e-01
-4.8902313103e-01 8.7227081650e-01  -5.3526098553e-01 8.4468673328e-01
-5.9772139653e-01 8.0170389305e-01  -6.6680558771e-01 7.4523171443e-01
-7.3360935135e-01 6.7957142348e-01  -7.9100966989e-01 6.1180364672e-01
-8.3469042014e-01 5.5071944084e-01  -8.6272961875e-01 5.0566550696e-01
-8.8832651339e-01 4.5921237527e-01  -9.2022848571e-01 3.9138157097e-01
-9.5122457215e-01 3.0849929229e-01  -9.7579383053e-01 2.1869247882e-01
-9.9129656453e-01 1.3164771606e-01  -9.9836577256e-01 5.7147040024e-02
-9.9999093710e-01 4.2574314700e-03  -9.9881648073e-01 -4.8637822939e-02
-9.9238612829e-01 -1.2316562982e-01  -9.7764321810e-01 -2.1027063064e-01
-9.5388507905e-01 -3.0017204394e-01  -9.2367736805e-01 -3.8317113637e-01
-8.9246388825e-01 -4.5111884042e-01  -8.6737035785e-01 -4.9766320170e-01
-8.3985250883e-01 -5.4281466765e-01  -7.9694940183e-01 -6.0404606689e-01
-7.4055279572e-01 -6.7199818211e-01  -6.7495415385e-01 -7.3785966836e-01
-6.0723206265e-01 -7.9452452579e-01  -5.4617978868e-01 -8.3766797625e-01
-5.0114613290e-01 -8.6536267164e-01

END
    </circlepacking>
    <circlepacking name="dent.p">
NODECOUNT:  127
GEOMETRY: hyperbolic
ALPHA/BETA/GAMMA:  1 0 43
PACKNAME: Seed 6
BOUQUET:

1 6   2 3 4 5 6 7 2
2 6   3 1 7 8 9 10 3
3 6   4 1 2 10 11 12 4
4 6   5 1 3 12 13 14 5
5 6   6 1 4 14 15 16 6
6 6   7 1 5 16 17 18 7
7 6   8 2 1 6 18 19 8
8 6   9 2 7 19 20 21 9
9 6   10 2 8 21 22 23 10
10 6   11 3 2 9 23 24 11
11 6   12 3 10 24 25 26 12
12 6   13 4 3 11 26 27 13
13 6   14 4 12 27 28 29 14
14 6   15 5 4 13 29 30 15
15 6   16 5 14 30 31 32 16
16 6   17 6 5 15 32 33 17
17 6   18 6 16 33 34 35 18
18 6   19 7 6 17 35 36 19
19 6   20 8 7 18 36 37 20
20 6   21 8 19 37 38 39 21
21 6   22 9 8 20 39 40 22
22 6   23 9 21 40 41 42 23
23 6   24 10 9 22 42 43 24
24 6   25 11 10 23 43 44 25
25 6   26 11 24 44 45 46 26
26 6   27 12 11 25 46 47 27
27 6   28 13 12 26 47 48 28
28 6   29 13 27 48 49 50 29
29 6   30 14 13 28 50 51 30
30 6   31 15 14 29 51 52 31
31 6   32 15 30 52 53 54 32
32 6   33 16 15 31 54 55 33
33 6   34 17 16 32 55 56 34
34 6   35 17 33 56 57 58 35
35 6   36 18 17 34 58 59 36
36 6   37 19 18 35 59 60 37
37 6   38 20 19 36 60 61 38
38 6   39 20 37 61 62 63 39
39 6   40 21 20 38 63 64 40
40 6   41 22 21 39 64 65 41
41 6   42 22 40 65 66 67 42
42 6   43 23 22 41 67 68 43
43 6   44 24 23 42 68 69 44
44 6   45 25 24 43 69 70 45
45 6   46 25 44 70 71 72 46
46 6   47 26 25 45 72 73 47
47 6   48 27 26 46 73 74 48
48 6   49 28 27 47 74 75 49
49 6   50 28 48 75 76 77 50
50 6   51 29 28 49 77 78 51
51 6   52 30 29 50 78 79 52
52 6   53 31 30 51 79 80 53
53 6   54 31 52 80 81 82 54
54 6   55 32 31 53 82 83 55
55 6   56 33 32 54 83 84 56
56 6   57 34 33 55 84 85 57
57 6   58 34 56 85 86 87 58
58 6   59 35 34 57 87 88 59
59 6   60 36 35 58 88 89 60
60 6   61 37 36 59 89 90 61
61 6   62 38 37 60 90 91 62
62 6   63 38 61 91 92 93 63
63 6   64 39 38 62 93 94 64
64 6   65 40 39 63 94 95 65
65 6   66 41 40 64 95 96 66
66 6   67 41 65 96 97 98 67
67 6   68 42 41 66 98 99 68
68 6   69 43 42 67 99 100 69
69 6   70 44 43 68 100 101 70
70 6   71 45 44 69 101 102 71
71 6   72 45 70 102 103 104 72
72 6   73 46 45 71 104 105 73
73 6   74 47 46 72 105 106 74
74 6   75 48 47 73 106 107 75
75 6   76 49 48 74 107 108 76
76 6   77 49 75 108 109 110 77
77 6   78 50 49 76 110 111 78
78 6   79 51 50 77 111 112 79
79 6   80 52 51 78 112 113 80
80 6   81 53 52 79 113 114 81
81 6   82 53 80 114 115 116 82
82 6   83 54 53 81 116 117 83
83 6   84 55 54 82 117 118 84
84 6   85 56 55 83 118 119 85
85 6   86 57 56 84 119 120 86
86 6   87 57 85 120 121 122 87
87 6   88 58 57 86 122 123 88
88 6   89 59 58 87 123 124 89
89 6   90 60 59 88 124 125 90
90 6   91 61 60 89 125 126 91
91 6   92 62 61 90 126 127 92
92 3   93 62 91 127
93 3   94 63 62 92
94 3   95 64 63 93
95 3   96 65 64 94
96 3   97 66 65 95
97 2   98 66 96
98 3   99 67 66 97
99 3   100 68 67 98
100 3   101 69 68 99
101 3   102 70 69 100
102 3   103 71 70 101
103 2   104 71 102
104 3   105 72 71 103
105 3   106 73 72 104
106 3   107 74 73 105
107 3   108 75 74 106
108 3   109 76 75 107
109 2   110 76 108
110 3   111 77 76 109
111 3   112 78 77 110
112 3   113 79 78 111
113 3   114 80 79 112
114 3   115 81 80 113
115 2   116 81 114
116 3   117 82 81 115
117 3   118 83 82 116
118 3   119 84 83 117
119 3   120 85 84 118
120 3   121 86 85 119
121 2   122 86 120
122 3   123 87 86 121
123 3   124 88 87 122
124 3   125 89 88 123
125 3   126 90 89 124
126 3   127 91 90 125
127 2   92 91 126

RADII:
1.657098286e-01   1.667486890e-01   1.695379428e-01   1.720557529e-01
1.726829523e-01   1.720557529e-01   1.695379428e-01   1.752331575e-01
1.743137293e-01   1.752331575e-01   1.860304393e-01   1.828265788e-01
1.902119700e-01   1.844902580e-01   1.907888332e-01   1.844902580e-01
1.902119700e-01   1.828265788e-01   1.860304393e-01   2.017804464e-01
1.891954521e-01   1.846105813e-01   1.891954521e-01   2.017804464e-01
2.230096142e-01   2.103256221e-01   2.116459533e-01   2.273721837e-01
2.124514620e-01   2.125967520e-01   2.277517700e-01   2.125967520e-01
2.124514620e-01   2.273721837e-01   2.116459534e-01   2.103256221e-01
2.230096142e-01   2.635723136e-01   2.409892494e-01   2.094233478e-01
1.793771604e-01   2.094233478e-01   2.409892494e-01   2.635723136e-01
3.008538114e-01   2.704291968e-01   2.641279501e-01   2.719723285e-01
3.039696662e-01   2.723210367e-01   2.651375093e-01   2.724490301e-01
3.041682737e-01   2.724490301e-01   2.651375093e-01   2.723210367e-01
3.039696662e-01   2.719723285e-01   2.641279501e-01   2.704291968e-01
3.008538114e-01   4.203376951e-01   3.942055368e-01   3.520635669e-01
2.150855481e-01   1.134387185e-01   2.150855481e-01   3.520635669e-01
3.942055368e-01   4.203376951e-01   4.943400888e-01   4.237000189e-01
4.088567227e-01   4.092341627e-01   4.247390262e-01   4.956849912e-01
4.248588237e-01   4.096195117e-01   4.096490676e-01   4.249300000e-01
4.957578101e-01   4.249300000e-01   4.096490676e-01   4.096195117e-01
4.248588237e-01   4.956849912e-01   4.247390262e-01   4.092341627e-01
4.088567227e-01   4.237000189e-01   4.943400888e-01   5.000000000e+00
5.000000000e+00   5.000000000e+00   5.000000000e+00   1.222068024e-01
1.929296133e-02   1.222068024e-01   5.000000000e+00   5.000000000e+00
5.000000000e+00   5.000000000e+00   5.000000000e+00   5.000000000e+00
5.000000000e+00   5.000000000e+00   5.000000000e+00   5.000000000e+00
5.000000000e+00   5.000000000e+00   5.000000000e+00   5.000000000e+00
5.000000000e+00   5.000000000e+00   5.000000000e+00   5.000000000e+00
5.000000000e+00   5.000000000e+00   5.000000000e+00   5.000000000e+00
5.000000000e+00   5.000000000e+00   5.000000000e+00   5.000000000e+00
5.000000000e+00   5.000000000e+00   5.000000000e+00

CENTERS:
0.0000000000e+00 0.0000000000e+00  7.6612633249e-02 1.4581324949e-01
-8.7634214609e-02 1.4106717420e-01  -1.6720155169e-01 -5.6001111221e-03
-7.7954610604e-02 -1.4836737242e-01  9.0245420154e-02 -1.4086690269e-01
1.6588508061e-01 7.8640472572e-03  2.3885781824e-01 1.5448591599e-01
1.5097054133e-01 2.8733518588e-01  -8.2906942934e-03 2.8434173093e-01
-1.7250991232e-01 2.8399151971e-01  -2.5475063937e-01 1.3815150279e-01
-3.3623929947e-01 -1.0005505143e-02  -2.4715509732e-01 -1.5451406166e-01
-1.5684032783e-01 -2.9850687668e-01  1.2974744077e-02 -2.9119047615e-01
1.8251639943e-01 -2.8256811672e-01  2.5829283223e-01 -1.3140981244e-01
3.3173456782e-01 1.9053336469e-02  4.0180814339e-01 1.6912658845e-01
3.0686059237e-01 2.9796248635e-01  2.2083063994e-01 4.2029665142e-01
7.1282253575e-02 4.2173914536e-01  -8.8679433195e-02 4.2683667265e-01
-2.5538513360e-01 4.3033101539e-01  -3.4109325875e-01 2.8420759033e-01
-4.2479355073e-01 1.3570012472e-01  -5.0689677419e-01 -1.3961509593e-02
-4.1797003225e-01 -1.5987056892e-01  -3.2763271004e-01 -3.0531333227e-01
-2.3634171798e-01 -4.4981816250e-01  -6.5551171127e-02 -4.4301520009e-01
1.0547072234e-01 -4.3489478429e-01  2.7607635578e-01 -4.2534822113e-01
3.5274318742e-01 -2.7283021888e-01  4.2755351370e-01 -1.1965182194e-01
4.9926150416e-01 3.3827499625e-02  5.6968385346e-01 1.8872837502e-01
4.6658757791e-01 3.2144086165e-01  3.6362899262e-01 4.3603643212e-01
2.8057803053e-01 5.3401107174e-01  1.5277966631e-01 5.4682006909e-01
0.0000000000e+00 5.6659350099e-01  -1.6777699204e-01 5.7620219830e-01
-3.3745600765e-01 5.7940901751e-01  -4.2655949804e-01 4.3410882154e-01
-5.1463619923e-01 2.8453129751e-01  -5.9759378429e-01 1.3212901260e-01
-6.7726123343e-01 -1.7857799944e-02  -5.9083580213e-01 -1.6395770915e-01
-5.0144025126e-01 -3.1246684965e-01  -4.0798388780e-01 -4.5840330582e-01
-3.1554391876e-01 -6.0056001519e-01  -1.4603520072e-01 -5.9603537113e-01
2.7162747081e-02 -5.9020339112e-01  2.0017550294e-01 -5.7956780751e-01
3.6951925240e-01 -5.6785315131e-01  4.4783573500e-01 -4.1715651916e-01
5.2627478390e-01 -2.6238012247e-01  5.9948346669e-01 -1.0499070184e-01
6.6858726632e-01 5.0817654125e-02  7.4558885161e-01 2.0601043449e-01
6.4397312031e-01 3.5443611049e-01  5.1982386072e-01 4.8709602174e-01
3.9276129606e-01 5.6097162492e-01  3.2012099644e-01 6.0927135344e-01
2.3913592732e-01 6.4168887158e-01  1.0621428439e-01 7.0441316451e-01
-7.3463229456e-02 7.3138874067e-01  -2.5334002767e-01 7.3086378012e-01
-4.1767264251e-01 7.2469226568e-01  -5.0935487063e-01 5.8955538560e-01
-6.0763155084e-01 4.4211433667e-01  -6.9735806002e-01 2.8294470561e-01
-7.7247966950e-01 1.2374657238e-01  -8.4063653514e-01 -2.1738339739e-02
-7.6563811991e-01 -1.6362328026e-01  -6.8350148969e-01 -3.1866393904e-01
-5.8764057297e-01 -4.7290089168e-01  -4.8511324010e-01 -6.1506410023e-01
-3.9137832211e-01 -7.4489209622e-01  -2.3128759951e-01 -7.4842818587e-01
-5.6050747693e-02 -7.5220676017e-01  1.2534678272e-01 -7.4364586768e-01
2.9962007471e-01 -7.2332711781e-01  4.5901001791e-01 -7.0459360137e-01
5.4014940804e-01 -5.6592991702e-01  6.2863033202e-01 -4.1375098308e-01
7.0880210609e-01 -2.4956114014e-01  7.7446473905e-01 -8.4984144869e-02
8.3373611278e-01 6.7181920775e-02  9.7489528994e-01 2.1733694515e-01
9.1321134521e-01 4.0380198530e-01  7.9156659327e-01 6.0826238556e-01
5.9304271306e-01 8.0263564033e-01  3.6861113601e-01 6.4057092151e-01
3.3563586425e-01 6.3880007734e-01  3.1838655614e-01 6.6695972590e-01
3.2452129831e-01 9.4372112278e-01  5.1828736592e-02 9.9693258716e-01
-1.8555534305e-01 9.8111172606e-01  -3.7410323774e-01 9.2612253055e-01
-4.9786762451e-01 8.6640903440e-01  -6.1060497752e-01 7.9048627085e-01
-7.4810114811e-01 6.6145954037e-01  -8.7240918415e-01 4.8570922171e-01
-9.5602237990e-01 2.8850152351e-01  -9.9317447963e-01 1.0657683256e-01
-9.9896027189e-01 -2.5702960226e-02  -9.8640590212e-01 -1.5736157432e-01
-9.4022851158e-01 -3.3644907611e-01  -8.4767215201e-01 -5.2772526564e-01
-7.1698605048e-01 -6.9509880801e-01  -5.7698585687e-01 -8.1538487696e-01
-4.6479405589e-01 -8.8462083635e-01  -3.4412965069e-01 -9.3773128353e-01
-1.6564936757e-01 -9.8477999396e-01  4.6323181764e-02 -9.9744483362e-01
2.5634763443e-01 -9.6514948330e-01  4.3002294784e-01 -9.0157613829e-01
5.4556568024e-01 -8.3722180784e-01  6.5121517667e-01 -7.5741201596e-01
7.7995226563e-01 -6.2360755551e-01  8.9491645845e-01 -4.4287217684e-01
9.6912351014e-01 -2.4079799302e-01  9.9737194934e-01 -5.4370742535e-02
9.9593569292e-01 8.1540676853e-02

END
    </circlepacking>
    <circlepacking name="bigDegree.p">
NODECOUNT:  337
GEOMETRY: hyperbolic
ALPHA/BETA/GAMMA:  1 0 156
PACKNAME: pp3-m.p
BOUQUET:

1 12   2 3 4 5 6 7 8 9 10 11 12 13 2
2 6   3 1 13 14 15 16 3
3 6   4 1 2 16 17 18 4
4 6   5 1 3 18 19 20 5
5 6   6 1 4 20 21 22 6
6 6   7 1 5 22 23 24 7
7 6   8 1 6 24 25 26 8
8 6   9 1 7 26 27 28 9
9 6   10 1 8 28 29 30 10
10 6   11 1 9 30 31 32 11
11 6   12 1 10 32 33 34 12
12 6   13 1 11 34 35 36 13
13 6   14 2 1 12 36 37 14
14 6   15 2 13 37 38 39 15
15 6   16 2 14 39 40 41 16
16 6   17 3 2 15 41 42 17
17 6   18 3 16 42 43 44 18
18 6   19 4 3 17 44 45 19
19 6   20 4 18 45 46 47 20
20 6   21 5 4 19 47 48 21
21 6   22 5 20 48 49 50 22
22 6   23 6 5 21 50 51 23
23 6   24 6 22 51 52 53 24
24 6   25 7 6 23 53 54 25
25 6   26 7 24 54 55 56 26
26 6   27 8 7 25 56 57 27
27 6   28 8 26 57 58 59 28
28 6   29 9 8 27 59 60 29
29 6   30 9 28 60 61 62 30
30 6   31 10 9 29 62 63 31
31 6   32 10 30 63 64 65 32
32 6   33 11 10 31 65 66 33
33 6   34 11 32 66 67 68 34
34 6   35 12 11 33 68 69 35
35 6   36 12 34 69 70 71 36
36 6   37 13 12 35 71 72 37
37 6   38 14 13 36 72 73 38
38 6   39 14 37 73 74 75 39
39 6   40 15 14 38 75 76 40
40 6   41 15 39 76 77 78 41
41 6   42 16 15 40 78 79 42
42 6   43 17 16 41 79 80 43
43 6   44 17 42 80 81 82 44
44 6   45 18 17 43 82 83 45
45 6   46 19 18 44 83 84 46
46 6   47 19 45 84 85 86 47
47 6   48 20 19 46 86 87 48
48 6   49 21 20 47 87 88 49
49 6   50 21 48 88 89 90 50
50 6   51 22 21 49 90 91 51
51 6   52 23 22 50 91 92 52
52 6   53 23 51 92 93 94 53
53 6   54 24 23 52 94 95 54
54 6   55 25 24 53 95 96 55
55 6   56 25 54 96 97 98 56
56 6   57 26 25 55 98 99 57
57 6   58 27 26 56 99 100 58
58 6   59 27 57 100 101 102 59
59 6   60 28 27 58 102 103 60
60 6   61 29 28 59 103 104 61
61 6   62 29 60 104 105 106 62
62 6   63 30 29 61 106 107 63
63 6   64 31 30 62 107 108 64
64 6   65 31 63 108 109 110 65
65 6   66 32 31 64 110 111 66
66 6   67 33 32 65 111 112 67
67 6   68 33 66 112 113 114 68
68 6   69 34 33 67 114 115 69
69 6   70 35 34 68 115 116 70
70 6   71 35 69 116 117 118 71
71 6   72 36 35 70 118 119 72
72 6   73 37 36 71 119 120 73
73 6   74 38 37 72 120 121 74
74 6   75 38 73 121 122 123 75
75 6   76 39 38 74 123 124 76
76 6   77 40 39 75 124 125 77
77 6   78 40 76 125 126 127 78
78 6   79 41 40 77 127 128 79
79 6   80 42 41 78 128 129 80
80 6   81 43 42 79 129 130 81
81 6   82 43 80 130 131 132 82
82 6   83 44 43 81 132 133 83
83 6   84 45 44 82 133 134 84
84 6   85 46 45 83 134 135 85
85 6   86 46 84 135 136 137 86
86 6   87 47 46 85 137 138 87
87 6   88 48 47 86 138 139 88
88 6   89 49 48 87 139 140 89
89 6   90 49 88 140 141 142 90
90 6   91 50 49 89 142 143 91
91 6   92 51 50 90 143 144 92
92 6   93 52 51 91 144 145 93
93 6   94 52 92 145 146 147 94
94 6   95 53 52 93 147 148 95
95 6   96 54 53 94 148 149 96
96 6   97 55 54 95 149 150 97
97 6   98 55 96 150 151 152 98
98 6   99 56 55 97 152 153 99
99 6   100 57 56 98 153 154 100
100 6   101 58 57 99 154 155 101
101 6   102 58 100 155 156 157 102
102 6   103 59 58 101 157 158 103
103 6   104 60 59 102 158 159 104
104 6   105 61 60 103 159 160 105
105 6   106 61 104 160 161 162 106
106 6   107 62 61 105 162 163 107
107 6   108 63 62 106 163 164 108
108 6   109 64 63 107 164 165 109
109 6   110 64 108 165 166 167 110
110 6   111 65 64 109 167 168 111
111 6   112 66 65 110 168 169 112
112 6   113 67 66 111 169 170 113
113 6   114 67 112 170 171 172 114
114 6   115 68 67 113 172 173 115
115 6   116 69 68 114 173 174 116
116 6   117 70 69 115 174 175 117
117 6   118 70 116 175 176 177 118
118 6   119 71 70 117 177 178 119
119 6   120 72 71 118 178 179 120
120 6   121 73 72 119 179 180 121
121 6   122 74 73 120 180 181 122
122 6   123 74 121 181 182 183 123
123 6   124 75 74 122 183 184 124
124 6   125 76 75 123 184 185 125
125 6   126 77 76 124 185 186 126
126 6   127 77 125 186 187 188 127
127 6   128 78 77 126 188 189 128
128 6   129 79 78 127 189 190 129
129 6   130 80 79 128 190 191 130
130 6   131 81 80 129 191 192 131
131 6   132 81 130 192 193 194 132
132 6   133 82 81 131 194 195 133
133 6   134 83 82 132 195 196 134
134 6   135 84 83 133 196 197 135
135 6   136 85 84 134 197 198 136
136 6   137 85 135 198 199 200 137
137 6   138 86 85 136 200 201 138
138 6   139 87 86 137 201 202 139
139 6   140 88 87 138 202 203 140
140 6   141 89 88 139 203 204 141
141 6   142 89 140 204 205 206 142
142 6   143 90 89 141 206 207 143
143 6   144 91 90 142 207 208 144
144 6   145 92 91 143 208 209 145
145 6   146 93 92 144 209 210 146
146 6   147 93 145 210 211 212 147
147 6   148 94 93 146 212 213 148
148 6   149 95 94 147 213 214 149
149 6   150 96 95 148 214 215 150
150 6   151 97 96 149 215 216 151
151 6   152 97 150 216 217 218 152
152 6   153 98 97 151 218 219 153
153 6   154 99 98 152 219 220 154
154 6   155 100 99 153 220 221 155
155 6   156 101 100 154 221 222 156
156 6   157 101 155 222 223 224 157
157 6   158 102 101 156 224 225 158
158 6   159 103 102 157 225 226 159
159 6   160 104 103 158 226 227 160
160 6   161 105 104 159 227 228 161
161 6   162 105 160 228 229 230 162
162 6   163 106 105 161 230 231 163
163 6   164 107 106 162 231 232 164
164 6   165 108 107 163 232 233 165
165 6   166 109 108 164 233 234 166
166 6   167 109 165 234 235 236 167
167 6   168 110 109 166 236 237 168
168 6   169 111 110 167 237 238 169
169 6   170 112 111 168 238 239 170
170 6   171 113 112 169 239 240 171
171 6   172 113 170 240 241 242 172
172 6   173 114 113 171 242 243 173
173 6   174 115 114 172 243 244 174
174 6   175 116 115 173 244 245 175
175 6   176 117 116 174 245 246 176
176 6   177 117 175 246 247 248 177
177 6   178 118 117 176 248 249 178
178 6   179 119 118 177 249 250 179
179 6   180 120 119 178 250 251 180
180 6   181 121 120 179 251 252 181
181 6   182 122 121 180 252 253 182
182 6   183 122 181 253 254 255 183
183 6   184 123 122 182 255 256 184
184 6   185 124 123 183 256 257 185
185 6   186 125 124 184 257 258 186
186 6   187 126 125 185 258 259 187
187 6   188 126 186 259 260 261 188
188 6   189 127 126 187 261 262 189
189 6   190 128 127 188 262 263 190
190 6   191 129 128 189 263 264 191
191 6   192 130 129 190 264 265 192
192 6   193 131 130 191 265 266 193
193 6   194 131 192 266 267 268 194
194 6   195 132 131 193 268 269 195
195 6   196 133 132 194 269 270 196
196 6   197 134 133 195 270 271 197
197 6   198 135 134 196 271 272 198
198 6   199 136 135 197 272 273 199
199 6   200 136 198 273 274 275 200
200 6   201 137 136 199 275 276 201
201 6   202 138 137 200 276 277 202
202 6   203 139 138 201 277 278 203
203 6   204 140 139 202 278 279 204
204 6   205 141 140 203 279 280 205
205 6   206 141 204 280 281 282 206
206 6   207 142 141 205 282 283 207
207 6   208 143 142 206 283 284 208
208 6   209 144 143 207 284 285 209
209 6   210 145 144 208 285 286 210
210 6   211 146 145 209 286 287 211
211 6   212 146 210 287 288 289 212
212 6   213 147 146 211 289 290 213
213 6   214 148 147 212 290 291 214
214 6   215 149 148 213 291 292 215
215 6   216 150 149 214 292 293 216
216 6   217 151 150 215 293 294 217
217 6   218 151 216 294 295 296 218
218 6   219 152 151 217 296 297 219
219 6   220 153 152 218 297 298 220
220 6   221 154 153 219 298 299 221
221 6   222 155 154 220 299 300 222
222 6   223 156 155 221 300 301 223
223 6   224 156 222 301 302 303 224
224 6   225 157 156 223 303 304 225
225 6   226 158 157 224 304 305 226
226 6   227 159 158 225 305 306 227
227 6   228 160 159 226 306 307 228
228 6   229 161 160 227 307 308 229
229 6   230 161 228 308 309 310 230
230 6   231 162 161 229 310 311 231
231 6   232 163 162 230 311 312 232
232 6   233 164 163 231 312 313 233
233 6   234 165 164 232 313 314 234
234 6   235 166 165 233 314 315 235
235 6   236 166 234 315 316 317 236
236 6   237 167 166 235 317 318 237
237 6   238 168 167 236 318 319 238
238 6   239 169 168 237 319 320 239
239 6   240 170 169 238 320 321 240
240 6   241 171 170 239 321 322 241
241 6   242 171 240 322 323 324 242
242 6   243 172 171 241 324 325 243
243 6   244 173 172 242 325 326 244
244 6   245 174 173 243 326 327 245
245 6   246 175 174 244 327 328 246
246 6   247 176 175 245 328 329 247
247 6   248 176 246 329 330 331 248
248 6   249 177 176 247 331 332 249
249 6   250 178 177 248 332 333 250
250 6   251 179 178 249 333 334 251
251 6   252 180 179 250 334 335 252
252 6   253 181 180 251 335 336 253
253 6   254 182 181 252 336 337 254
254 3   255 182 253 337
255 3   256 183 182 254
256 3   257 184 183 255
257 3   258 185 184 256
258 3   259 186 185 257
259 3   260 187 186 258
260 2   261 187 259
261 3   262 188 187 260
262 3   263 189 188 261
263 3   264 190 189 262
264 3   265 191 190 263
265 3   266 192 191 264
266 3   267 193 192 265
267 2   268 193 266
268 3   269 194 193 267
269 3   270 195 194 268
270 3   271 196 195 269
271 3   272 197 196 270
272 3   273 198 197 271
273 3   274 199 198 272
274 2   275 199 273
275 3   276 200 199 274
276 3   277 201 200 275
277 3   278 202 201 276
278 3   279 203 202 277
279 3   280 204 203 278
280 3   281 205 204 279
281 2   282 205 280
282 3   283 206 205 281
283 3   284 207 206 282
284 3   285 208 207 283
285 3   286 209 208 284
286 3   287 210 209 285
287 3   288 211 210 286
288 2   289 211 287
289 3   290 212 211 288
290 3   291 213 212 289
291 3   292 214 213 290
292 3   293 215 214 291
293 3   294 216 215 292
294 3   295 217 216 293
295 2   296 217 294
296 3   297 218 217 295
297 3   298 219 218 296
298 3   299 220 219 297
299 3   300 221 220 298
300 3   301 222 221 299
301 3   302 223 222 300
302 2   303 223 301
303 3   304 224 223 302
304 3   305 225 224 303
305 3   306 226 225 304
306 3   307 227 226 305
307 3   308 228 227 306
308 3   309 229 228 307
309 2   310 229 308
310 3   311 230 229 309
311 3   312 231 230 310
312 3   313 232 231 311
313 3   314 233 232 312
314 3   315 234 233 313
315 3   316 235 234 314
316 2   317 235 315
317 3   318 236 235 316
318 3   319 237 236 317
319 3   320 238 237 318
320 3   321 239 238 319
321 3   322 240 239 320
322 3   323 241 240 321
323 2   324 241 322
324 3   325 242 241 323
325 3   326 243 242 324
326 3   327 244 243 325
327 3   328 245 244 326
328 3   329 246 245 327
329 3   330 247 246 328
330 2   331 247 329
331 3   332 248 247 330
332 3   333 249 248 331
333 3   334 250 249 332
334 3   335 251 250 333
335 3   336 252 251 334
336 3   337 253 252 335
337 2   254 253 336

RADII:
5.693000347e-01   2.264490111e-01   2.264490112e-01   2.264490112e-01
2.264490112e-01   2.264490112e-01   2.264490112e-01   2.264490112e-01
2.264490112e-01   2.264490112e-01   2.264490113e-01   2.264490113e-01
2.264490113e-01   1.956161359e-01   1.925652821e-01   1.956161360e-01
1.925652821e-01   1.956161360e-01   1.925652821e-01   1.956161360e-01
1.925652821e-01   1.956161360e-01   1.925652821e-01   1.956161360e-01
1.925652821e-01   1.956161360e-01   1.925652821e-01   1.956161360e-01
1.925652821e-01   1.956161360e-01   1.925652821e-01   1.956161360e-01
1.925652822e-01   1.956161360e-01   1.925652822e-01   1.956161361e-01
1.925652822e-01   1.934831307e-01   1.934831307e-01   1.981829255e-01
1.934831307e-01   1.934831307e-01   1.981829255e-01   1.934831307e-01
1.934831307e-01   1.981829255e-01   1.934831307e-01   1.934831307e-01
1.981829255e-01   1.934831307e-01   1.934831307e-01   1.981829255e-01
1.934831307e-01   1.934831307e-01   1.981829255e-01   1.934831307e-01
1.934831307e-01   1.981829255e-01   1.934831307e-01   1.934831307e-01
1.981829255e-01   1.934831307e-01   1.934831307e-01   1.981829255e-01
1.934831307e-01   1.934831307e-01   1.981829255e-01   1.934831307e-01
1.934831307e-01   1.981829256e-01   1.934831307e-01   1.934831308e-01
1.981829256e-01   2.157866600e-01   2.122958447e-01   2.157866600e-01
2.304686727e-01   2.157866600e-01   2.122958447e-01   2.157866600e-01
2.304686727e-01   2.157866600e-01   2.122958447e-01   2.157866600e-01
2.304686727e-01   2.157866600e-01   2.122958447e-01   2.157866600e-01
2.304686727e-01   2.157866600e-01   2.122958447e-01   2.157866600e-01
2.304686727e-01   2.157866600e-01   2.122958447e-01   2.157866600e-01
2.304686727e-01   2.157866600e-01   2.122958447e-01   2.157866600e-01
2.304686727e-01   2.157866600e-01   2.122958447e-01   2.157866600e-01
2.304686727e-01   2.157866600e-01   2.122958447e-01   2.157866600e-01
2.304686727e-01   2.157866600e-01   2.122958447e-01   2.157866600e-01
2.304686727e-01   2.157866600e-01   2.122958447e-01   2.157866600e-01
2.304686727e-01   2.157866600e-01   2.122958447e-01   2.157866600e-01
2.304686728e-01   2.735004805e-01   2.643025879e-01   2.643025879e-01
2.735004804e-01   3.050984838e-01   2.735004805e-01   2.643025879e-01
2.643025879e-01   2.735004805e-01   3.050984837e-01   2.735004805e-01
2.643025879e-01   2.643025879e-01   2.735004805e-01   3.050984838e-01
2.735004805e-01   2.643025879e-01   2.643025879e-01   2.735004805e-01
3.050984837e-01   2.735004805e-01   2.643025879e-01   2.643025880e-01
2.735004805e-01   3.050984837e-01   2.735004805e-01   2.643025879e-01
2.643025880e-01   2.735004805e-01   3.050984837e-01   2.735004805e-01
2.643025879e-01   2.643025880e-01   2.735004805e-01   3.050984837e-01
2.735004805e-01   2.643025879e-01   2.643025880e-01   2.735004805e-01
3.050984837e-01   2.735004805e-01   2.643025879e-01   2.643025880e-01
2.735004805e-01   3.050984837e-01   2.735004805e-01   2.643025880e-01
2.643025879e-01   2.735004805e-01   3.050984838e-01   2.735004805e-01
2.643025879e-01   2.643025880e-01   2.735004805e-01   3.050984838e-01
2.735004804e-01   2.643025878e-01   2.643025879e-01   2.735004805e-01
3.050984838e-01   4.252630299e-01   4.092270894e-01   4.058434268e-01
4.092270895e-01   4.252630300e-01   4.960077411e-01   4.252630300e-01
4.092270894e-01   4.058434268e-01   4.092270895e-01   4.252630301e-01
4.960077412e-01   4.252630301e-01   4.092270894e-01   4.058434268e-01
4.092270895e-01   4.252630301e-01   4.960077412e-01   4.252630301e-01
4.092270895e-01   4.058434268e-01   4.092270895e-01   4.252630299e-01
4.960077411e-01   4.252630301e-01   4.092270894e-01   4.058434268e-01
4.092270895e-01   4.252630299e-01   4.960077412e-01   4.252630299e-01
4.092270894e-01   4.058434268e-01   4.092270895e-01   4.252630299e-01
4.960077411e-01   4.252630299e-01   4.092270894e-01   4.058434268e-01
4.092270895e-01   4.252630299e-01   4.960077411e-01   4.252630299e-01
4.092270894e-01   4.058434268e-01   4.092270895e-01   4.252630299e-01
4.960077411e-01   4.252630299e-01   4.092270894e-01   4.058434268e-01
4.092270895e-01   4.252630299e-01   4.960077412e-01   4.252630299e-01
4.092270894e-01   4.058434268e-01   4.092270895e-01   4.252630300e-01
4.960077411e-01   4.252630301e-01   4.092270895e-01   4.058434268e-01
4.092270895e-01   4.252630300e-01   4.960077411e-01   4.252630299e-01
4.092270894e-01   4.058434268e-01   4.092270895e-01   4.252630300e-01
4.960077412e-01   4.747472720e+00   4.862604521e+00   4.913949745e+00
4.913949746e+00   4.862604522e+00   4.747472725e+00   4.516189029e+00
4.747472727e+00   4.862604524e+00   4.913949749e+00   4.913949750e+00
4.862604527e+00   4.747472727e+00   4.516189029e+00   4.747472730e+00
4.862604526e+00   4.913949750e+00   4.913949751e+00   4.862604526e+00
4.747472727e+00   4.516189029e+00   4.747472730e+00   4.862604525e+00
4.913949749e+00   4.913949750e+00   4.862604526e+00   4.747472727e+00
4.516189029e+00   4.747472730e+00   4.862604525e+00   4.913949749e+00
4.913949750e+00   4.862604526e+00   4.747472727e+00   4.516189029e+00
4.747472729e+00   4.862604525e+00   4.913949749e+00   4.913949750e+00
4.862604526e+00   4.747472726e+00   4.516189029e+00   4.747472730e+00
4.862604525e+00   4.913949749e+00   4.913949750e+00   4.862604525e+00
4.747472726e+00   4.516189029e+00   4.747472729e+00   4.862604525e+00
4.913949749e+00   4.913949750e+00   4.862604525e+00   4.747472726e+00
4.516189029e+00   4.747472729e+00   4.862604525e+00   4.913949749e+00
4.913949750e+00   4.862604525e+00   4.747472726e+00   4.516189029e+00
4.747472729e+00   4.862604525e+00   4.913949749e+00   4.913949750e+00
4.862604525e+00   4.747472726e+00   4.516189029e+00   4.747472729e+00
4.862604525e+00   4.913949749e+00   4.913949750e+00   4.862604525e+00
4.747472726e+00   4.516189029e+00   4.747472729e+00   4.862604525e+00
4.913949749e+00   4.913949751e+00   4.862604530e+00   4.747472733e+00
4.516189031e+00

CENTERS:
0.0000000000e+00 0.0000000000e+00  -6.9461143693e-17 -3.7812885446e-01
1.8906442744e-01 -3.2746919378e-01  3.2746919413e-01 -1.8906442685e-01
3.7812885451e-01 7.2029780470e-10  3.2746919342e-01 1.8906442811e-01
1.8906442617e-01 3.2746919454e-01  -1.5311719826e-09 3.7812885452e-01
-1.8906442882e-01 3.2746919301e-01  -3.2746919496e-01 1.8906442546e-01
-3.7812885453e-01 -2.3692191461e-09  -3.2746919260e-01 -1.8906442958e-01
-1.8906442610e-01 -3.2746919462e-01  -1.3049887353e-01 -4.8702842754e-01
8.3660704341e-10 -5.4228136329e-01  1.3049887431e-01 -4.8702842671e-01
2.7114068243e-01 -4.6962943622e-01  3.5652955389e-01 -3.5652955269e-01
4.6962943726e-01 -2.7114068067e-01  4.8702842733e-01 -1.3049887260e-01
5.4228136338e-01 1.5110882388e-09  4.8702842666e-01 1.3049887516e-01
4.6962943575e-01 2.7114068333e-01  3.5652955204e-01 3.5652955464e-01
2.7114067974e-01 4.6962943784e-01  1.3049887159e-01 4.8702842764e-01
-2.6676637520e-09 5.4228136340e-01  -1.3049887621e-01 4.8702842640e-01
-2.7114068435e-01 4.6962943517e-01  -3.5652955542e-01 3.5652955127e-01
-4.6962943844e-01 2.7114067872e-01  -4.8702842794e-01 1.3049887053e-01
-5.4228136343e-01 -3.8472118544e-09  -4.8702842615e-01 -1.3049887729e-01
-4.6962943461e-01 -2.7114068542e-01  -3.5652955121e-01 -3.5652955573e-01
-2.7114068029e-01 -4.6962943736e-01  -2.1832145835e-01 -5.8556033062e-01
-1.0370823446e-01 -6.1627085092e-01  1.6916422988e-09 -6.6557458155e-01
1.0370823698e-01 -6.1627085004e-01  2.1832145997e-01 -5.8556032919e-01
3.3278729220e-01 -5.7640449498e-01  3.9794939291e-01 -4.8185209333e-01
4.8185209535e-01 -3.9794939047e-01  5.7640449678e-01 -3.3278728914e-01
5.8556033050e-01 -2.1832145693e-01  6.1627085077e-01 -1.0370823353e-01
6.6557458165e-01 2.3465246307e-09  6.1627085008e-01 1.0370823775e-01
5.8556032903e-01 2.1832146096e-01  5.7640449443e-01 3.3278729326e-01
4.8185209264e-01 3.9794939385e-01  3.9794938958e-01 4.8185209619e-01
3.3278728800e-01 5.7640449748e-01  2.1832145576e-01 5.8556033098e-01
1.0370823226e-01 6.1627085104e-01  -3.7612143054e-09 6.6557458167e-01
-1.0370823906e-01 6.1627084988e-01  -2.1832146223e-01 5.8556032858e-01
-3.3278729452e-01 5.7640449372e-01  -3.9794939490e-01 4.8185209179e-01
-4.8185209706e-01 3.9794938854e-01  -5.7640449821e-01 3.3278728676e-01
-5.8556033147e-01 2.1832145449e-01  -6.1627085128e-01 1.0370823092e-01
-6.6557458170e-01 -5.1920127153e-09  -6.1627084970e-01 -1.0370824040e-01
-5.8556032815e-01 -2.1832146352e-01  -5.7640449305e-01 -3.3278729579e-01
-4.8185209130e-01 -3.9794939575e-01  -3.9794938902e-01 -4.8185209666e-01
-3.3278728929e-01 -5.7640449647e-01  -2.8623914052e-01 -6.7194068571e-01
-1.8538422837e-01 -6.9186336446e-01  -8.8079972869e-02 -7.2503727383e-01
2.4785571895e-09 -7.6867517084e-01  8.8079977182e-02 -7.2503727298e-01
1.8538423178e-01 -6.9186336286e-01  2.8623914293e-01 -6.7194068383e-01
3.8433758747e-01 -6.6569222407e-01  4.3879813426e-01 -5.8386070862e-01
5.0647913573e-01 -5.0647913235e-01  5.8386071149e-01 -4.3879813046e-01
6.6569222661e-01 -3.8433758312e-01  6.7194068588e-01 -2.8623913850e-01
6.9186336435e-01 -1.8538422688e-01  7.2503727373e-01 -8.8079971940e-02
7.6867517092e-01 3.1661839893e-09  7.2503727303e-01 8.8079977890e-02
6.9186336281e-01 1.8538423268e-01  6.7194068354e-01 2.8623914406e-01
6.6569222344e-01 3.8433758866e-01  5.8386070790e-01 4.3879813533e-01
5.0647913147e-01 5.0647913672e-01  4.3879812936e-01 5.8386071240e-01
3.8433758181e-01 6.6569222741e-01  2.8623913718e-01 6.7194068649e-01
1.8538422549e-01 6.9186336476e-01  8.8079970430e-02 7.2503727396e-01
-4.7952100960e-09 7.6867517094e-01  -8.8079979426e-02 7.2503727286e-01
-1.8538423416e-01 6.9186336245e-01  -2.8623914552e-01 6.7194068295e-01
-3.8433759011e-01 6.6569222262e-01  -4.3879813661e-01 5.8386070696e-01
-5.0647913783e-01 5.0647913038e-01  -5.8386071336e-01 4.3879812810e-01
-6.6569222825e-01 3.8433758038e-01  -6.7194068713e-01 2.8623913573e-01
-6.9186336519e-01 1.8538422400e-01  -7.2503727417e-01 8.8079968871e-02
-7.6867517096e-01 -6.4303371191e-09  -7.2503727271e-01 -8.8079980975e-02
-6.9186336209e-01 -1.8538423565e-01  -6.7194068237e-01 -2.8623914698e-01
-6.6569222184e-01 -3.8433759156e-01  -5.8386070621e-01 -4.3879813779e-01
-5.0647913014e-01 -5.0647913824e-01  -4.3879812924e-01 -5.8386071220e-01
-3.8433758386e-01 -6.6569222590e-01  -3.4356905767e-01 -7.4858163085e-01
-2.5346680171e-01 -7.6443719011e-01  -1.6270990204e-01 -7.8875542768e-01
-7.6751279875e-02 -8.2007523788e-01  3.1759033217e-09 -8.5777576593e-01
7.6751285800e-02 -8.2007523712e-01  1.6270990743e-01 -7.8875542611e-01
2.5346680599e-01 -7.6443718794e-01  3.4356906087e-01 -7.4858162862e-01
4.2888788563e-01 -7.4285560254e-01  4.7650618174e-01 -6.7183034557e-01
5.3528862631e-01 -6.0172728277e-01  6.0172728710e-01 -5.3528862138e-01
6.7183034922e-01 -4.7650617660e-01  7.4285560581e-01 -4.2888788003e-01
7.4858163141e-01 -3.4356905511e-01  7.6443719029e-01 -2.5346679953e-01
7.8875542760e-01 -1.6270990051e-01  8.2007523783e-01 -7.6751278904e-02
8.5777576598e-01 3.9392666240e-09  8.2007523714e-01 7.6751286516e-02
7.8875542607e-01 1.6270990822e-01  7.6443718778e-01 2.5346680700e-01
7.4858162821e-01 3.4356906211e-01  7.4285560184e-01 4.2888788691e-01
6.7183034480e-01 4.7650618292e-01  6.0172728189e-01 5.3528862742e-01
5.3528862031e-01 6.0172728815e-01  4.7650617532e-01 6.7183035019e-01
4.2888787857e-01 7.4285560666e-01  3.4356905365e-01 7.4858163212e-01
2.5346679802e-01 7.6443719083e-01  1.6270989891e-01 7.8875542797e-01
7.6751277194e-02 8.2007523802e-01  -5.7491013067e-09 8.5777576600e-01
-7.6751288248e-02 8.2007523699e-01  -1.6270990989e-01 7.8875542574e-01
-2.5346680864e-01 7.6443718727e-01  -3.4356906374e-01 7.4858162749e-01
-4.2888788852e-01 7.4285560092e-01  -4.7650618438e-01 6.7183034378e-01
-5.3528862873e-01 6.0172728074e-01  -6.0172728932e-01 5.3528861902e-01
-6.7183035123e-01 4.7650617387e-01  -7.4285560760e-01 4.2888787697e-01
-7.4858163288e-01 3.4356905205e-01  -7.6443719139e-01 2.5346679638e-01
-7.8875542833e-01 1.6270989721e-01  -8.2007523819e-01 7.6751275438e-02
-8.5777576602e-01 -7.5741708154e-09  -8.2007523684e-01 -7.6751289986e-02
-7.8875542543e-01 -1.6270991157e-01  -7.6443718676e-01 -2.5346681028e-01
-7.4858162679e-01 -3.4356906535e-01  -7.4285560004e-01 -4.2888789011e-01
-6.7183034288e-01 -4.7650618577e-01  -6.0172728004e-01 -5.3528862966e-01
-5.3528861916e-01 -6.0172728915e-01  -4.7650617579e-01 -6.7183034937e-01
-4.2888788132e-01 -7.4285560476e-01  -3.9517746155e-01 -8.1633124899e-01
-3.1484004990e-01 -8.3347325930e-01  -2.2917347559e-01 -8.5528706415e-01
-1.4407714359e-01 -8.7922904146e-01  -6.5931899230e-02 -9.0455233031e-01
3.7711222122e-09 -9.3356113488e-01  6.5931906543e-02 -9.0455232968e-01
1.4407715080e-01 -8.7922904004e-01  2.2917348211e-01 -8.5528706194e-01
3.1484005509e-01 -8.3347325672e-01  3.9517746568e-01 -8.1633124644e-01
4.6678057076e-01 -8.0848765689e-01  5.0937487076e-01 -7.5039934326e-01
5.6438899263e-01 -6.8939610908e-01  6.2611358834e-01 -6.2611358218e-01
6.8939611433e-01 -5.6438898611e-01  7.5039934771e-01 -5.0937486429e-01
8.0848766090e-01 -4.6678056386e-01  8.1633124996e-01 -3.9517745858e-01
8.3347325995e-01 -3.1484004708e-01  8.5528706439e-01 -2.2917347326e-01
8.7922904144e-01 -1.4407714197e-01  9.0455233029e-01 -6.5931898139e-02
9.3356113490e-01 4.7121179437e-09  9.0455232961e-01 6.5931907377e-02
8.7922903995e-01 1.4407715159e-01  8.5528706180e-01 2.2917348300e-01
8.3347325643e-01 3.1484005621e-01  8.1633124591e-01 3.9517746698e-01
8.0848765616e-01 4.6678057208e-01  7.5039934247e-01 5.0937487201e-01
6.8939610819e-01 5.6438899382e-01  6.2611358113e-01 6.2611358948e-01
5.6438898488e-01 6.8939611541e-01  5.0937486285e-01 7.5039934872e-01
4.6678056228e-01 8.0848766181e-01  3.9517745700e-01 8.1633125073e-01
3.1484004548e-01 8.3347326058e-01  2.2917347157e-01 8.5528706487e-01
1.4407714018e-01 8.7922904177e-01  6.5931896257e-02 9.0455233045e-01
-6.6663993305e-09 9.3356113491e-01  -6.5931909264e-02 9.0455232948e-01
-1.4407715343e-01 8.7922903967e-01  -2.2917348481e-01 8.5528706133e-01
-3.1484005799e-01 8.3347325578e-01  -3.9517746874e-01 8.1633124507e-01
-4.6678057381e-01 8.0848765515e-01  -5.0937487363e-01 7.5039934139e-01
-5.6438899531e-01 6.8939610698e-01  -6.2611359084e-01 6.2611357978e-01
-6.8939611664e-01 5.6438898339e-01  -7.5039934983e-01 5.0937486123e-01
-8.0848766283e-01 4.6678056054e-01  -8.1633125158e-01 3.9517745524e-01
-8.3347326127e-01 3.1484004369e-01  -8.5528706538e-01 2.2917346973e-01
-8.7922904209e-01 1.4407713829e-01  -9.0455233060e-01 6.5931894324e-02
-9.3356113492e-01 -8.6404053846e-09  -9.0455232937e-01 -6.5931911188e-02
-8.7922903938e-01 -1.4407715530e-01  -8.5528706086e-01 -2.2917348662e-01
-8.3347325514e-01 -3.1484005977e-01  -8.1633124425e-01 -3.9517747049e-01
-8.0848765418e-01 -4.6678057553e-01  -7.5039934036e-01 -5.0937487520e-01
-6.8939610598e-01 -5.6438899660e-01  -6.2611357921e-01 -6.2611359145e-01
-5.6438898402e-01 -6.8939611592e-01  -5.0937486394e-01 -7.5039934749e-01
-4.6678056560e-01 -8.0848765968e-01  -4.5339098012e-01 -8.9066512279e-01
-3.8573587133e-01 -9.2190838495e-01  -3.0311204479e-01 -9.5224065040e-01
-2.1361758788e-01 -9.7622061755e-01  -1.2689712267e-01 -9.9126401777e-01
-5.2684448954e-02 -9.9803411297e-01  4.4104784148e-09 -9.9954267433e-01
5.2684457872e-02 -9.9803411250e-01  1.2689713194e-01 -9.9126401658e-01
2.1361759714e-01 -9.7622061552e-01  3.0311205316e-01 -9.5224064773e-01
3.8573587822e-01 -9.2190838206e-01  4.5339098584e-01 -8.9066511988e-01
4.9977134132e-01 -8.6562934574e-01  5.4464313540e-01 -8.3798066616e-01
6.0552814835e-01 -7.9501125415e-01  6.7310857361e-01 -7.3862305414e-01
7.3862306213e-01 -6.7310856484e-01  7.9501126082e-01 -6.0552813959e-01
8.3798067167e-01 -5.4464312693e-01  8.6562935069e-01 -4.9977133276e-01
8.9066512447e-01 -4.5339097682e-01  9.2190838637e-01 -3.8573586793e-01
9.5224065143e-01 -3.0311204156e-01  9.7622061814e-01 -2.1361758517e-01
9.9126401802e-01 -1.2689712068e-01  9.9803411304e-01 -5.2684447521e-02
9.9954267433e-01 5.6773154987e-09  9.9803411243e-01 5.2684459057e-02
9.9126401645e-01 1.2689713300e-01  9.7622061530e-01 2.1361759811e-01
9.5224064741e-01 3.0311205419e-01  9.2190838156e-01 3.8573587941e-01
8.9066511921e-01 4.5339098716e-01  8.6562934498e-01 4.9977134264e-01
8.3798066533e-01 5.4464313668e-01  7.9501125321e-01 6.0552814958e-01
7.3862305306e-01 6.7310857480e-01  6.7310856359e-01 7.3862306327e-01
6.0552813815e-01 7.9501126192e-01  5.4464312534e-01 8.3798067270e-01
4.9977133109e-01 8.6562935165e-01  4.5339097509e-01 8.9066512535e-01
3.8573586614e-01 9.2190838712e-01  3.0311203971e-01 9.5224065202e-01
2.1361758325e-01 9.7622061856e-01  1.2689711868e-01 9.9126401828e-01
5.2684445463e-02 9.9803411315e-01  -7.7450653006e-09 9.9954267433e-01
-5.2684461127e-02 9.9803411232e-01  -1.2689713506e-01 9.9126401618e-01
-2.1361760015e-01 9.7622061486e-01  -3.0311205619e-01 9.5224064677e-01
-3.8573588137e-01 9.2190838074e-01  -4.5339098907e-01 8.9066511823e-01
-4.9977134450e-01 8.6562934391e-01  -5.4464313849e-01 8.3798066416e-01
-6.0552815129e-01 7.9501125190e-01  -6.7310857639e-01 7.3862305161e-01
-7.3862306472e-01 6.7310856199e-01  -7.9501126322e-01 6.0552813644e-01
-8.3798067388e-01 5.4464312354e-01  -8.6562935272e-01 4.9977132924e-01
-8.9066512631e-01 4.5339097319e-01  -9.2190838794e-01 3.8573586417e-01
-9.5224065267e-01 3.0311203767e-01  -9.7622061902e-01 2.1361758116e-01
-9.9126401855e-01 1.2689711656e-01  -9.9803411326e-01 5.2684443343e-02
-9.9954267433e-01 -9.8573793251e-09  -9.9803411221e-01 -5.2684463222e-02
-9.9126401592e-01 -1.2689713713e-01  -9.7622061441e-01 -2.1361760219e-01
-9.5224064613e-01 -3.0311205819e-01  -9.2190837993e-01 -3.8573588331e-01
-8.9066511728e-01 -4.5339099094e-01  -8.6562934286e-01 -4.9977134632e-01
-8.3798066302e-01 -5.4464314023e-01  -7.9501125070e-01 -6.0552815288e-01
-7.3862305053e-01 -6.7310857757e-01  -6.7310856162e-01 -7.3862306506e-01
-6.0552813767e-01 -7.9501126228e-01  -5.4464312702e-01 -8.3798067161e-01
-4.9977133467e-01 -8.6562934958e-01

END
    </circlepacking>
  </CPdata>
</CP_Scriptfile>

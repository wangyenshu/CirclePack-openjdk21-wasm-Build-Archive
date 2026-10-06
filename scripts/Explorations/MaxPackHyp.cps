<?xml version="1.0"?>
<CP_Scriptfile date="Feb 18, 2023">
<CPscript title="Monotonicities and Hyperbolic Maximal Packings" >
<description>Basic monotonicities are demonstrated first in euclidean and then in hyperbolic geometry. With these one can anticipate the effects of increasing boundary radii in a hyperbolic packing, and this leads to hyperbolic maximal packings.</description>
<text> Maximal packings for complexes K that triangulate closed topological discs are at the core in the theory and practice of circle packing. It is pleasing, therefore, to find that the existence and key properties of these packings follow from simple monotonicity results --- results which are powerful, yet intuitively evident.

"Monotonicities" refers to the predictable effects on some quantity when another quantity is increased or decreased. These are most evident in the familiar euclidean setting, so we start there before moving to hyperbolic geometry. Once the fundamental monotonicities are in place, we can see how to compute hyperbolic maximal packings. </text>
<Section title="Basic Euclidean Monotonicities">
<text> We start with monotonicity in triangles. (Note: CirclePack requires at least one interior vertex, so there is a circle in the interstice of this triangle which is not being displayed.) </text>
<cmd name="*" mnemonic="*" iconname="klines.png">act 0;Cleanse;seed -q 3;Disp -w -c 2 3 4 -e b </cmd>
<text> Using the cursor and keys '1' and '2', you can send radii up and down. Determine the following: (1) What happens to the angle (in the face) at the circle you adjust? (2) what happens to the angles at the other circles? (3) What are the limits of the angles under arbitrary increases or decreases in one radius? (4) What happens to the area of the triangle?

In p1 we move on to consider monotonicities in a closed flower. </text>
<cmd iconname="amarok.png">act 1;seed -q 7;set_rand -r .1 .3 b;[f]; </cmd>
<text> Here you should use the 'u' and 'd' keys to once again adjust radii. Determine the following: (1) What is the effect on the angle sum of the central circle when that circle radius goes up or down? (2) What is the effect when a petal circle radius goes up or down? (3) How large and how small can the angle sum be? 

Convince yourself that you can adjust the central radius until you get the packing condition for this flower, i.e., angle sum 2pi. It may be difficult since the 'u' and 'd' adjustments are fixed. CirclePack will do the work for you if you execute 'rld' ('repack', 'layout', and 'disp'). </text>
</Section>
<Section title="Basic Hyperbolic Monotonicities and a Bound">
<text> The next commands converts packings p0 and p1 to hyperbolic geometry. Visit each packing and go through the same trials and questions you did in the euclidean case. </text>
<cmd iconname="apollon.png">act 0;geom_to_h;Disp -w -c b -e b; </cmd>
<cmd iconname="editdelete.png">act 1;geom_to_h;Disp -w -cf 1 -c -fn 2 3 4 5 6 7; </cmd>
<text> There is one additional observation about the hyperbolic case: in pack p1, the 'b' key will increment all the boundary radii, repack, and layout. It is easy to see that the central circle will have a maximum size. Can you compute it? On the other hand, if you go back to the euclidean setting and try 'b', you will see that the central circle will grow without bound. Having a bound is a big plus for the hyperbolic setting. </text>
</Section>
<Section title="Moving to the Maximal Packing">
<text> For more general packings, the route to the maximal packing is computationally straightforward. The next command reads in a packing. Simply press the 'b' key to move towards its maximal packing. </text>
<cmd iconname="format_increaseindent.png">act 2;infile_read rand.p;Disp -w -c -cfc80 b -f; </cmd>
<text> You might like to think about some of the issues behind the scene:

(1) Given K, how do we get the initial packing?

(2) How are interior radii being adjusted after you have pressed 'b' (which increases the boundary radii)?

(3) Can you say anything about monotonicity of the interior radii relative to the increasing boundary radii? (Any observations, for example, about the circle at the origin? "Schwarz.xmd" will say more about this.)

(4) The result is unique. Why?

(5) Assuming we have a packing with all boundary circles as horocycles, why is it univalent (i.e., why do the circles have mutually disjoint interiors)? </text>
</Section>
<Section title="Tools">
<cmd inline="no" name="1" mnemonic="1" tooltip="Triangle case: increase a radius" iconname="kghostview.png">set_vlist z #XY;adjust_rad 1.05 vlist;repack;layout;disp -wr </cmd>
<cmd inline="no" name="2" mnemonic="2" tooltip="Triangle case: decrease a radius" iconname="amarok.png">set_vlist z #XY;adjust_rad .95 vlist;repack;layout;disp -wr </cmd>
<cmd inline="no" name="u" mnemonic="u" tooltip="Flower case: increase a radius" iconname="userconfig.png">set_vlist z #XY;adjust_rad 1.05 vlist;[f] </cmd>
<cmd inline="no" name="d" mnemonic="d" tooltip="Flower case: decrease a radius" iconname="metacontact_online.png">set_vlist z #XY;adjust_rad .95 vlist;[f] </cmd>
<cmd inline="no" name="b" mnemonic="b" tooltip="increase all radii" iconname="icq_dnd.png">adjust_rad 1.25 b;repack;layout;disp -wr </cmd>
<cmd inline="no" name="f" mnemonic="f" iconname="debugger.png">layout;set_flist F;set_flist flist(0 5);Disp -w -F flist -cn -fn </cmd>
</Section>
  </CPscript>
<CPdata>
    <AboutImage name="AboutImage.jpg">
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
    </AboutImage>
    <circlepacking name="rand.p">
NODECOUNT:  24
GEOMETRY: hyperbolic
ALPHA/BETA/GAMMA:  13 0 1
PACKNAME: NoName
FLOWERS:

1 4   15 7 3 2 15
2 3   15 1 3 10
3 7   12 10 2 1 7 16 14 12
4 3   6 9 23 22
5 5   24 19 18 7 15 24
6 2   20 9 4
7 6   3 1 15 5 18 16 3
8 5   13 14 18 19 21 13
9 7   13 23 4 6 20 11 14 13
10 4   2 3 12 11 17
11 6   9 20 17 10 12 14 9
12 4   11 10 3 14 11
13 6   21 22 23 9 14 8 21
14 8   13 9 11 12 3 16 18 8 13
15 4   24 5 7 1 2
16 4   3 7 18 14 3
17 2   10 11 20
18 6   8 14 16 7 5 19 8
19 5   21 8 18 5 24 21
20 3   17 11 9 6
21 4   22 13 8 19 24
22 3   4 23 13 21
23 4   4 9 13 22 4
24 3   21 19 5 15

RADII:
6.574157875e-02   1.870810685e-01   1.651112964e-01   4.026681616e-01
9.145890021e-02   2.744417366e-01   1.000925498e-01   1.376447283e-01
3.285454017e-01   5.226327425e-01   2.418556004e-01   1.006062196e-01
2.530276665e-01   2.383023363e-01   2.429784644e-01   5.706612059e-02
1.739428409e-01   1.068822973e-01   1.084303251e-01   6.574048251e-01
8.662852829e-01   5.193224078e-01   1.376213523e-01   1.564410449e-01


CENTERS:
0.0000000000e+00 4.4222101603e-01  4.2418969820e-02 5.2875245475e-01
8.3887878433e-02 3.9810365086e-01  3.1464454874e-01 -2.9898400511e-01
-1.0516220922e-01 3.5289810487e-01  4.9943100153e-01 -1.0584542723e-01
-2.6825835464e-02 3.7878248958e-01  -7.4752772164e-02 1.7781516013e-01
2.8197292919e-01 2.2366096244e-02  2.8218149590e-01 5.5242574190e-01
3.0781527614e-01 2.7370349580e-01  1.8324069435e-01 3.4643272435e-01
0.0000000000e+00 0.0000000000e+00  1.0058462207e-01 2.1882949400e-01
-1.1129343292e-01 4.8798111549e-01  1.8848473864e-02 3.2740557846e-01
4.2754971646e-01 3.7515686081e-01  -4.4432018998e-02 2.8876583692e-01
-1.4117737834e-01 2.7194878342e-01  6.1914538200e-01 1.8735139079e-01
-5.0319480030e-01 6.7654540419e-02  -8.0792044400e-02 -3.5908132734e-01
1.3210117329e-01 -1.4053877413e-01  -2.0939696294e-01 3.6420077435e-01


END
    </circlepacking>
  </CPdata>
</CP_Scriptfile>

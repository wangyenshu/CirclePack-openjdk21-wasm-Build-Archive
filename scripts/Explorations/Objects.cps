<?xml version="1.0"?>
<CP_Scriptfile date="Feb 19, 2023">
<CPscript title="The Objects of Circle packing" level="min" screenmode="map" >
<description>This script illustrates the formal mathematical "objects" required in circle packing: the underlying "complexes"; associated "circle packings"; the "carriers" of packings: "labels" of putative radii; associated "angle sums"; and finally the all-important "packing" labels.</description>
<Section title="The Circle Packing 'Complex' K">
<text> We start with a small random triangulation K, referred to as a "complex" (after "simplicial complex"). There is NO connection, a priori, with any circles. We have embedded K in the plane here simply to highlight its vertices, edges, and faces, but we emphasize that K represents purely abstract combinatorial information. </text>
<cmd name="*" mnemonic="*" tooltip="Start over with an abstract complex" iconname="userconfig.png">act 0;Map 0 1;Cleanse;infile_read RandTri.p;color -f 90;Disp -w -ft2;color -c 1 i;color -c 199 b;set_rad .023 a;copy 1; </cmd>
<text> The vertices are of two types, the blue vertices are "interior", the red are "boundary". </text>
<cmd iconname="kghostview.png">act 0;disp  -w -cfcc1 {c:i} </cmd>
<cmd iconname="bookmark.png">act 0;disp -cfcc199 {c:b} </cmd>
<text> Likewise there are interior and boundary edges, </text>
<cmd iconname="amarok.png">act 0;set_vlist i;set_elist -Iv vlist;disp -et3c20 elist; </cmd>
<cmd iconname="list.png">act 0;disp -et3c190 b </cmd>
<text> and faces. </text>
<cmd iconname="apollon.png">act 0;mark -fw -f b;disp -fft3c40 mc; </cmd>
<cmd iconname="debugger.png">act 0;disp -fft3c140 b; </cmd>
<text> As you might expect, the vertices are numbered consecutively starting at 1, and likewise for the faces. </text>
</Section>
<Section title="A 'Circle Packing' P for K">
<text> A "circle packing" for complex K is now shown in p1, along with the index for each circle. P is a configuration of circles with the combinatorics of K, so there is one circle for each vertex of K. Circles for neighboring vertices are tangent to one another, and triples of circles are properly oriented. You can check this by clicking on a vertex in p0 and noting the corresponding Circle of P. </text>
<cmd iconname="button_ok.png">Map 0 1;act 1;infile_read RTrad.q;gamma 6;layout;color -c 90 i;color -c 150 b;disp -w -cn; </cmd>
<text> If you connect tangent circles with line segments in p1, you get a triangulation which is isomorphic to the original K in p0. Again, you can click on a vertex in p0 to see the corresponding circle in p1. </text>
<cmd iconname="metacontact_online.png">Disp -w -cc;disp -f; </cmd>
<text> If we look at the packing itself, we see that consists of interconnected "flowers" of circles. If you press 'f' on a circle, its flower will be highlighted. Note that for interior circles (blue) their flowers wrap entirely around them, while boundary circles (red) have flowers that do not close up.

We can project our packing stereographically to the sphere to get a second circle packing for K. Again, you can click on a circle in one packing and see the corresponding circle in the other or you can press 'f' on a circle to see its flower. </text>
<cmd iconname="userconfig.png">copy -p1 0;act 0;geom_to_s;color -c 90 i;color -c 150 b;Disp -w -cc;disp -f;color -f 90 a;color -f 150 b; </cmd>
</Section>
<Section title="Packing 'carriers'">
<text> A circle packing P gives us an immersion of K. Although K is an abstract complex, an immersion provides a concrete realization made of points (circle centers), geodesic segments (lines between centers of tangent circles), and triangles (faces). Here we display the carriers of these two packings for K; the interior faces are blue, boundary faces red. </text>
<cmd iconname="kuickshow.png">Disp -p0  -w -c -ff;color -p1 -f 90 a;color -p1 -f 150 b;Disp -p1 -w -c -ff; </cmd>
</Section>
<Section title="'Labels' for K and 'angle sums'">
<text> Recall that as a complex, K is abstract. A "label" R for K is the beginning of imposing geometry. R has a number associated with each vertex, a number that you hope can serve as the radius for that circle..Here we see the complex K with circles at its vertices with radii from a label R. It may not seem like it, but these labels are "almost" right. The next command calls for "layout", which tries to layout the circles as best it can using radii from R. </text>
<cmd iconname="apollon.png">act 0;Cleanse;infile_read RandTri.p;infile_read maxlabel.q;set_rad .3 10;color -f 90;disp -w -ft2;color -c 1 i;color -c 199 b;copy 1; </cmd>
<text> It may not seem like it, but these labels are "almost" right. The next command calls for "layout", which tries to lay out circles using the radii of R as best it can. You will notice, however, that there are required tangencies that are not realized, so this R is not a "packing" label. </text>
<cmd iconname="delete.png">act 0;layout;Disp -w -c -f </cmd>
<text> What is a "packing" label? This comes down to an amazingly simple question: Can the circles of the flower for every interior vertex be laid out to form a closed chain?  As an illustration, we consider the circles highlighted in the next command, the "flower" of vertex 10. Its 7 petal circles do not close up --- you see that the red and blue neighbors, verticesf 12 and 16, respectively, are not tangent. 

As it turns out, that is the only problem with this label, and I want to give you a chance to fix it. I've set up keys 'u' and 'd'. When you put your cursor in a circle and press one of these, the radius is increased or decreased by a small amount and the circles are again laid out. Work on vertex 10 at the center with these keys until its petals cloase up (i.e., until the blude and red petal circles are tangent). If you succeed adjusting this one label, you should get a circle packing for K. Try it. </text>
<cmd iconname="xeyes.png">color -c 60 12;color -c 150 16;Disp -p0 -w -ct0 -ft0 -cft6 12 -ct6 Iv 10 -cft6 16 -ft5 Iv 10; </cmd>
</Section>
<Section title="'Packing' labels">
<text> If you repeatedly visit the interior vertices and at each you adjust its label so it forms a flower with its neighbors, you will converge to a label R called a "packing" label, one having all interior angle sums of 2*Pi. This example was set up so that 10 was the only problem vertex, and once you have fixed the label there, the result is a packing label; the resulting packing is laid out in p1. In the final command, we highlight the flower you fixed to make it all fit. </text>
<cmd iconname="kivio.png">act 0;disp -p1 -w;Map 0 1;infile_read -p1 maxlabel.q;disp -p1 -w -f -c; </cmd>
<cmd iconname="metacontact_offline.png">act 1;layout;disp -w -c; </cmd>
<cmd iconname="delete.png">disp -w -c -ct6 Iv 10 -cfc20t6 12 -cfc150t5 16 -ct5 16 -ft3 Iv 10; </cmd>
</Section>
<Section title="Tools">
<cmd inline="no" name="u" mnemonic="u" tooltip="Increase the flower's central radius" iconname="network.png">set_vlist z #XY;adjust_rad -p0 1.02 vlist;layout;disp -wr; </cmd>
<cmd inline="no" name="d" mnemonic="d" tooltip="decrease the flower's central radius" iconname="run.png">set_vlist z #XY;adjust_rad -p0 .98 vlist;layout;disp -wr; </cmd>
<cmd inline="no" name="c" mnemonic="c" tooltip="Display a packing's carrier" iconname="kivio.png" dropable="yes">disp -ffc80 -ft3 -ec180t3 b; </cmd>
<cmd inline="no" name="f" mnemonic="f" tooltip="display a flower" iconname="userconfig.png">set_vlist z #XY;disp -cf vlist -cf Iv vlist -ft3 Iv vlist; </cmd>
</Section>
  </CPscript>
<CPdata>
    <AboutImage name="AboutImage.jpg">
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
    </AboutImage>
    <circlepacking name="RandTri.p">
NODECOUNT:  28
GEOMETRY: euclidean
ALPHA/BETA/GAMMA:  10 0 16
PACKNAME: randB.p
FLOWERS:

1 6   10 7 2 6 17 8 10
2 6   1 7 13 25 26 6 1
3 4   8 27 28 12 8
4 2   27 8 17
5 5   10 11 15 13 7 10
6 3   17 1 2 26
7 5   10 5 13 2 1 10
8 7   10 1 17 4 27 3 12 10
9 2   21 16 20
10 7   16 11 5 7 1 8 12 16
11 6   10 16 22 23 15 5 10
12 7   16 10 8 3 28 19 20 16
13 6   2 7 5 15 18 25 2
14 2   18 15 24
15 7   5 11 23 24 14 18 13 5
16 7   11 10 12 20 9 21 22 11
17 3   4 8 1 6
18 3   25 13 15 14
19 2   20 12 28
20 3   9 16 12 19
21 2   22 16 9
22 3   23 11 16 21
23 3   24 15 11 22
24 2   14 15 23
25 3   26 2 13 18
26 2   6 2 25
27 3   28 3 8 4
28 3   19 12 3 27

RADII:
2.500000000e-02   2.500000000e-02   2.500000000e-02   2.500000000e-02
2.500000000e-02   2.500000000e-02   2.500000000e-02   2.500000000e-02
2.500000000e-02   2.500000000e-02   2.500000000e-02   2.500000000e-02
2.500000000e-02   2.500000000e-02   2.500000000e-02   2.500000000e-02
2.500000000e-02   2.500000000e-02   2.500000000e-02   2.500000000e-02
2.500000000e-02   2.500000000e-02   2.500000000e-02   2.500000000e-02
2.500000000e-02   2.500000000e-02   2.500000000e-02   2.500000000e-02


CENTERS:
1.0139350392e-01 -2.5052339123e-01  -9.8338282636e-03 -4.7747418096e-01
3.8139741351e-01 4.9375982417e-01  8.4171148174e-01 7.3612089621e-02
-3.5944296190e-01 -1.6606261224e-01  2.6405687312e-01 -7.1431650010e-01
-5.9527646007e-02 -2.2797596758e-01  3.3040515379e-01 1.0828514586e-01
-3.4488616685e-01 7.0741609554e-01  -9.5080496809e-02 1.0500244222e-01
-5.9609982923e-01 7.7839844931e-02  -3.1352972760e-02 4.2447793585e-01
-9.7958770100e-02 -4.3190678458e-01  -8.0244545952e-01 -4.3477259474e-01
-4.7862829644e-01 -2.7273217956e-01  -3.5038479776e-01 4.5380020186e-01
7.0844997448e-01 -4.1790659644e-01  -5.4078835225e-01 -5.7326838437e-01
1.5346907284e-01 8.5259697556e-01  -2.7477875950e-01 7.1716616978e-01
-5.7134032228e-01 6.6353787797e-01  -6.2260477110e-01 3.7674335344e-01
-7.4085756597e-01 4.6949996763e-02  -8.6033555492e-01 -3.2440263046e-01
-8.1103999878e-02 -5.3406675577e-01  1.3953376145e-01 -7.1651196546e-01
4.7506661696e-01 5.2588409515e-01  3.6402797344e-01 6.5785879824e-01


END
    </circlepacking>
    <circlepacking name="RTrad.q">
CHECKCOUNT: 28
GEOMETRY: euclidean
RADII:
1.298597048e-01   1.249434371e-01   6.432286766e-02   1.500000000e-01
9.863079403e-02   1.500000000e-01   8.997050254e-02   1.709478778e-01
1.500000000e-01   1.876442400e-01   1.634209441e-01   1.858340357e-01
1.208360061e-01   8.981054089e-02   1.735337118e-01   2.048747316e-01
9.453741146e-02   1.500000000e-01   1.500000000e-01   1.653750000e-01
1.102637836e-01   1.500000000e-01   2.010143461e-01   1.425000000e-01
1.102637836e-01   1.653750000e-01   1.736437500e-01   1.102637836e-01


END
    </circlepacking>
    <circlepacking name="maxlabel.q">
CHECKCOUNT: 28
GEOMETRY: euclidean
RADII:
1.862072369e-01   1.515674017e-01   8.261266459e-02   1.553360996e-01
1.167828573e-01   2.006564492e-01   1.128737994e-01   2.287151919e-01
1.371267042e-01   2.372888294e-01   1.930848163e-01   2.337755719e-01
1.445643620e-01   9.549127573e-02   1.796017160e-01   2.500529157e-01
2.279026530e-01   1.567422467e-01   1.488421262e-01   2.077365970e-01
1.399221164e-01   2.212587839e-01   1.925021498e-01   1.014907281e-01
1.638221731e-01   1.251986459e-01   1.743168390e-01   1.727078517e-01


END
    </circlepacking>
    <circlepacking name="seed7.p">
NODECOUNT:  8
GEOMETRY: euclidean
ALPHA/BETA/GAMMA:  5 0 8
PACKNAME: maxlabel.q
FLOWERS:

1 2   4 5 3
2 2   3 5 6
3 2   1 5 2
4 2   7 5 1
5 7   8 6 2 3 1 4 7 8
6 2   2 5 8
7 2   8 5 4
8 2   6 5 7

RADII:
1.860583009e-01   1.167828573e-01   1.128737994e-01   2.287151919e-01
3.150000000e-01   1.930848163e-01   2.337755719e-01   2.500529157e-01


CENTERS:
-2.2527329190e-01 -4.4756157662e-01  -4.3063382639e-01 3.1479253973e-02
-3.8189975206e-01 -1.9294705903e-01  1.8455243966e-01 -5.1143582874e-01
0.0000000000e+00 0.0000000000e+00  -3.8006705990e-01 3.3719313536e-01
4.7236457898e-01 7.6774897048e-02  0.0000000000e+00 5.6505291570e-01


END
    </circlepacking>
  </CPdata>
</CP_Scriptfile>

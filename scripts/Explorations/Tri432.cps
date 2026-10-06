<?xml version="1.0"?>
<CP_Scriptfile date="Feb 20, 2023">
<CPscript title="Sam's {4 3 2} branched packing" level="min" screenmode="map" >
<description>This displays a 26 circle packing created by Sam Corvino. It is based on a {4 3 2} 'Schwarz Triangle'; 48 of these tile the sphere and carry arcs of circles along to form the branched packing.</description>
<text> A {4 3 2} Schwarz triangle is one having angles pi/4, pi/3, and pi/2. One of these triangles can propogate by repeated reflection across edges until 48 of them exactly tile the sphere. Packing p0 illustrates a maximal packing based on this tiling, coloring the circles to reflect their degrees, namely 8, 6, and 4. </text>
<cmd name="*" mnemonic="*" tooltip="Start over" iconname="xeyes.png">act 0;Cleanse;infile_read Sams432branched.p;copy 1;max_pack;NSpole;[c];Disp -w -cf;act 1;[c];set_disp_text -w -cf;Map 0 1 </cmd>
<text> The next command shows a branched packing with the same combinatorics. Simple branching occurs at each of the 8 circles of the white circles. Note the underlying 'cubical' symmetry: the white circles are centered at the vertices of a regular cube in both packings (though the center points are shuffled between the two packings).

NOTE: Although CirclePack can approximate the radii for the univalent packing, it cannot approximate those for the branched packing --- sadly, there is as yet no algorithm that works in spherical geometry. The radii in the branched packing can be computed using the triangle shapes and spherical trigonometry. </text>
<cmd tooltip="Show the branched packing" iconname="kivio.png">act 1;[c];Disp -w -c -cf; </cmd>
<text> In side-by-side windows we show one of the {4 3 2} Schwarz triangles in p0, and the correponding {4 3/2 2} Schwarz triangle in p1. The latter is made of 5 copies of the former (you might try working out the pattern), so the 48 of this larger Schwarz triangle in p1 must cover the sphere 5 times. Click the middle button on faces around the white circle in p0 to see the correponding faces wrap twice around in p1. NOTE: the yellow circles in the branched packing are each larger than a hemisphere. There seem to be 'holes' in the branched packing. Can you figure out why this is not the case? </text>
<cmd tooltip="Corresponding Schwarz triangles" iconname="delete.png">act 0;set_Vlist 26 18 5;set_Flist 40;set_disp_text -w -cf Vlist -fn Flist;disp -w -cf Vlist -f Flist;set_disp_text -p1 -w -cf Vlist -fn Flist;disp -p1 -w -cf Vlist -f Flist;Map 0 1 </cmd>
<Section title="Tools">
<cmd inline="no" name="4" mnemonic="4" tooltip="display 4 degree circles" iconname="centrejust.png">disp -cf {c:d.eq.4} </cmd>
<cmd inline="no" name="6" mnemonic="6" tooltip="display 6 degree circles" iconname="delete.png">disp -cf {c:d.eq.6} </cmd>
<cmd inline="no" name="8" mnemonic="8" tooltip="display 8 degree circles" iconname="bookmark.png">disp -cf {c:d.eq.8} </cmd>
<cmd inline="no" name="c" mnemonic="c" tooltip="Set circle colors based on degree" iconname="xeyes.png">color -c 100 {c:d.eq.6};color -c 206 {c:d.eq.8};color -c 5 {c:d.eq.4} </cmd>
</Section>
  </CPscript>
<CPdata>
    <AboutImage name="AboutImage.jpg">
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
    </AboutImage>
    <circlepacking name="Sams432branched.p">
NODECOUNT:  26
GEOMETRY: spherical
ALPHA/BETA/GAMMA:  1 0 7
PACKNAME: the432branched.p
FLOWERS:

1 8   7 19 8 21 10 22 9 20 7
2 8   10 21 11 23 13 24 12 22 10
3 8   26 15 24 13 23 14 25 16 26
4 8   16 25 17 19 7 20 18 26 16
5 8   20 9 22 12 24 15 26 18 20
6 8   19 17 25 14 23 11 21 8 19
7 4   4 19 1 20 4
8 4   19 6 21 1 19
9 4   20 1 22 5 20
10 4   1 21 2 22 1
11 4   21 6 23 2 21
12 4   22 2 24 5 22
13 4   24 2 23 3 24
14 4   23 6 25 3 23
15 4   26 5 24 3 26
16 4   25 4 26 3 25
17 4   25 6 19 4 25
18 4   26 4 20 5 26
19 6   6 8 1 7 4 17 6
20 6   5 18 4 7 1 9 5
21 6   6 11 2 10 1 8 6
22 6   5 9 1 10 2 12 5
23 6   13 2 11 6 14 3 13
24 6   15 5 12 2 13 3 15
25 6   14 6 17 4 16 3 14
26 6   16 4 18 5 15 3 16

RADII:
1.963495400e+00   1.963495400e+00   1.963495400e+00   1.963495400e+00
1.963495400e+00   1.963495400e+00   3.926990800e-01   3.926990800e-01
3.926990800e-01   3.926990800e-01   3.926990800e-01   3.926990800e-01
3.926990800e-01   3.926990800e-01   3.926990800e-01   3.926990800e-01
3.926990800e-01   3.926990800e-01   2.227806270e-01   2.227806270e-01
2.227806270e-01   2.227806270e-01   2.227806270e-01   2.227806270e-01
2.227806270e-01   2.227806270e-01

CENTERS:
0.0000000000e+00 0.0000000000e+00  -2.2019089797e-08 1.5707963378e+00
6.1666139761e-01 3.1415926214e+00  3.1415926477e+00 1.5707963472e+00
1.5707963096e+00 1.5707963261e+00  -1.5707963435e+00 1.5707963472e+00
0.0000000000e+00 2.3561944800e+00  1.5707963101e+00 2.3561944800e+00
-1.5707963465e+00 2.3561944815e+00  3.1415926202e+00 2.3561944800e+00
2.3561944807e+00 1.5707963200e+00  -2.3561945154e+00 1.5707963200e+00
3.1415926261e+00 7.8539814222e-01  1.5707963020e+00 7.8539813986e-01
-1.5707963459e+00 7.8539816689e-01  -1.9619808581e-08 7.8539815415e-01
7.8539815209e-01 1.5707963210e+00  -7.8539817951e-01 1.5707963263e+00
7.8539815505e-01 2.1862760270e+00  -7.8539815801e-01 2.1862760312e+00
2.3561944651e+00 2.1862760270e+00  -2.3561945319e+00 2.1862760270e+00
2.3561944741e+00 9.5531661300e-01  -2.3561945086e+00 9.5531660745e-01
7.8539814430e-01 9.5531661405e-01  -7.8539819150e-01 9.5531661881e-01


END
    </circlepacking>
  </CPdata>
</CP_Scriptfile>

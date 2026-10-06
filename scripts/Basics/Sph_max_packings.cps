<?xml version="1.0"?>
<CP_Scriptfile date="Feb 16, 2023">
<CPscript title="Creating Circle Packings of the Sphere" level="min" >
<description>Script to illustrate creation of circle packings of the sphere.</description>
<text> The Koebe-Andreev-Thurston theorem guarantees that for any complex K triangulating a sphere there exists a univalent circle packing for K on the Riemann sphere, unique up to Mobius transformations. Univlanet, means that the circles have mutually disjoint interiors. You can rotate the sphere with the rouse.

There is as yet no algorithm for computing the spherical radii in spherical geometry; instead the radii and layout are computed in hyperbolic geometry and then projected to the sphere. The initial packing here is the finished product for a relatively elementary case; the aim of this script is to illustrate the steps leading to this packing. </text>
<cmd name="*" mnemonic="*" iconname="list.png">act 2;Cleanse;infile_read sph_example.p;disp -w -c </cmd>
<Section title="Move to  the hyperbolic setting">
<text> If we puncture K at (i.e. remove the star of) a vertex, the result is a combinatorial closed disc. In the next command a vertex for the puncture has been chosen at random and the result is max_packed in the hyperbolic plane. (Puncturing results in vertex renumbering, making it hard to return to the original. Here we first swap the indices of our puncture (18) and the complex's maximal index (indicated by M), then puncture at M.) </text>
<cmd iconname="debugger.png">act 0;cleanse;copy -p2 0;swap M 18;puncture M;max_pack;Disp -w -c; </cmd>
</Section>
<Section title="Project the result to the sphere">
<text> The 'stereographic' projection in CirclePack identifies the origin with the north pole. (This is visually more intuitive than the usual mathematical practice which identifies the origin with the south pole.) This is accomplished by simply changing the geometry to spherical, as shown in p1 here. </text>
<cmd iconname="delete.png">act 1;copy -p0 1;geom_to_s;Disp -w -c; </cmd>
<text> Note that the boundary circles are tangent to the equator, so when we include the southern hemisphere as a circle, it is tangent to all the former neighbors of vertex M (aka 18). The command 'add_ideal' does all this: it adds an ideal vertex to the complex, resurrecting K, sets the new circle's radius to Pi/2, and centers it at the south pole. With no additional packing computations, we now have a spherical packing for K; it is automatically univalent. </text>
<cmd iconname="network.png">act 1;add_ideal;disp -w -c -cfc5 M; </cmd>
<text> You may note from the command that the new vertex has the maximal index, M. To reestablish the indices as they were in the original K, we again swap indices. Here is the result, with carrier shown and vertex 18 appearing in blue. </text>
<cmd iconname="network.png">act 1;swap 18 M;Disp -w -c -f -cfc5 18; </cmd>
</Section>
<Section title="Normalizations">
<text> You will notice that our new packing for K is not the same as the original, shown yet in p2. By the KAT-Theorem, one can be obtained from the other by applying some Mobius transformations. The Mobius machinery for the sphere is not yet very comprehensive (or reliable!), so we cannot recreate precisely the original packing. Instead we illustrate a handy method for doing at least some normalizations. The basic command is 'NSpole'. The next two commands put 11 (red) at the north pole and 18 (blue) at the south, but with a parameter adjusting their relative sizes. See 'Help' for further details about NSPole. </text>
<cmd iconname="debugger.png">NSpole 11 18 -t .5;Disp -w -c -cfc195 11 -cfc5 18 </cmd>
<cmd iconname="delete.png">NSpole 11 18 -t 2.0;Disp -w -c -cfc195 11  -cfc5 18; </cmd>
<text> This next command is especially convenient as it applies a Mobius transformation that puts the centroid of the circle centers at the origin in 3-apace. This is typically a visually pleasing and balanced normalization.. </text>
<cmd iconname="list.png">NSpole;set_sv -d;Disp -w -c -cfc5 18; </cmd>
</Section>
<Section title="The shortcut">
<text> There is a single command that carries out all these operations: namely, 'max_pack', which (in theory) works in any geometry for any (legal) complex. </text>
<cmd iconname="debugger.png">act 1;max_pack;set_screen -d;Disp -w -c;set_Vlist a; </cmd>
<text> For a sphere, the 'max_pack' command chooses a face to puncture, making its three vertices (temporarily) boundary vertices. The packing is then done in the hypbolic plane, is projected to the sphere, the missing face is restored, and NSPole is called for normalization.

To illustrate, suppose you wished to 'hex_refine' K and then pack. It would be difficult to keep track of indices and do this in steps. However, here we copy p1 into p0, then the final command hex refines and applies our shortcut; the 39 vertices associated with the original complex are highlighted. (You can repeat this final command, but be forewarned that the computational time rises rapidly.) </text>
<cmd iconname="delete.png">act 0;copy -p1 0;set_Vlist a;Disp -w -cf; </cmd>
<cmd iconname="network.png">act 0;hex_refine;max_pack;set_screen -d;Disp -w -c -cf Vlist; </cmd>
</Section>
<Section title="Cautionary notes">
<text> The sphere is a tough computational setting. Some difficulties are inherent to the geometry, some reflect the more primitive state of the code and sensitivity to roundoff error. 

(*) An inherent difficulty in spherical geometry is the overly rich family of Mobius transformations. For instance, note that although a Mobius tranform will map a circle packing to a circle packing, it does not preserve radii, centers, or geodesic edges between centers. 

(*) One has to avoid trying to identify neighboring circles as the north and south poles. 

(*) One should avoid calling 'layout' in spherical geometry; the fact that the sphere closes up (e.g., the last circle in place has some many constraints) and that neighboring circles can have arbitrarily large size differences seem to lead to breakups in the layout. 

(*) When K is large, say several tousand vertices, then the repacking and layout in hyperbolic geometry can be slow and easily affected by roundoff error due to the small number (hence large euclidean size) of the horocycles forming the boundary. This was a serious problem until Gerld Orick came up with a new algorithm for maximal packings of the disc which simultaneously adjusts radii and centers. It is very fast and can provide excellent packings of the sphere having millions of circles. The algorithm is only implmented in Matlab and is called 'GOPack'. It can be downloaded from Github. </text>
</Section>
  </CPscript>
<CPdata>
    <circlepacking name="sph_example.p">
NODECOUNT:   39

GEOMETRY:   spherical

ALPHA/BETA/GAMMA:   9  20  1

PACKNAME: /tmp/sph_example.p

FLOWERS:

1 4   25 2 23 24 25
2 7   22 23 1 25 6 8 10 22
3 5   17 16 7 5 4 17
4 7   17 3 5 8 6 25 18 17
5 4   3 7 8 4 3
6 4   4 8 2 25 4
7 6   9 8 5 3 16 15 9
8 8   5 7 9 12 10 2 6 4 5
9 5   7 15 11 12 8 7
10 4   8 12 22 2 8
11 6   31 13 12 9 15 30 31
12 8   22 10 8 9 11 13 20 14 22
13 4   11 31 20 12 11
14 4   12 20 21 22 12
15 6   30 11 9 7 16 29 30
16 6   29 15 7 3 17 28 29
17 7   28 16 3 4 18 19 27 28
18 5   17 4 25 26 19 17
19 4   17 18 26 27 17
20 8   35 21 14 12 13 31 34 39 35
21 6   23 22 14 20 35 36 23
22 6   23 2 10 12 14 21 23
23 7   26 24 1 2 22 21 36 26
24 4   26 25 1 23 26
25 7   26 18 4 6 2 1 24 26
26 8   37 27 19 18 25 24 23 36 37
27 6   28 17 19 26 37 38 28
28 6   32 29 16 17 27 38 32
29 5   32 30 15 16 28 32
30 7   31 11 15 29 32 33 34 31
31 5   20 13 11 30 34 20
32 5   33 30 29 28 38 33
33 5   34 30 32 38 39 34
34 5   20 31 30 33 39 20
35 4   36 21 20 39 36
36 6   37 26 23 21 35 39 37
37 5   38 27 26 36 39 38
38 6   33 32 28 27 37 39 33
39 7   20 34 33 38 37 36 35 20

RADII:
6.448208763255354e-02 2.375113988634785e-01 1.698607486579060e-01 2.384056570417397e-01
1.150568094809601e-01 1.090954651920645e-01 3.109991265766794e-01 4.306914622947212e-01
4.024139748071195e-01 1.597387559816361e-01 5.317659162027635e-01 6.438863587361786e-01
2.467154784605406e-01 1.787595692919709e-01 4.614867807103099e-01 3.104464683960209e-01
2.710094662676421e-01 1.385509732722929e-01 9.275052787331803e-02 5.584134402609990e-01
2.645342577546027e-01 2.662539085934886e-01 2.470382624643104e-01 6.626334930851668e-02
1.819741442404343e-01 2.774946655521737e-01 2.340846559058962e-01 2.902779916215877e-01
2.728197066044235e-01 5.337831775447988e-01 3.376487784478324e-01 2.398675436600406e-01
2.642844497976001e-01 3.240930743869373e-01 1.558493681840281e-01 2.641557111051669e-01
2.159895838330989e-01 2.894894324533902e-01 4.024139748071192e-01

CENTERS:
1.570796326794897e+00 1.738812396148174e+00	 1.406321460578913e+00 1.485159443993963e+00
2.485611942423428e+00 1.176529183068444e+00	 2.087357342214625e+00 1.331547149731530e+00
2.230005266646067e+00 1.002959014554218e+00	 1.731309287562681e+00 1.354440751848667e+00
2.649206204276986e+00 7.134131013837999e-01	 1.570400369434221e+00 8.331054371018666e-01
0.000000000000000e+00 0.000000000000000e+00	 1.078096933651071e+00 1.250583071871010e+00
-1.226313051450883e+00 9.341798910098817e-01	 2.188111179316612e-01 1.046300333543298e+00
-6.127672509146112e-01 1.473708927255493e+00	 5.117837112020015e-01 1.818988646625474e+00
-2.532569513716297e+00 8.639007555174305e-01	 2.987206109606985e+00 1.271224352645158e+00
2.513068155501724e+00 1.616584080249714e+00	 2.111937321725214e+00 1.707713184219418e+00
2.263585486815621e+00 1.885833445372182e+00	 -2.038152269375664e-01 2.180742250683842e+00
8.114348167693958e-01 2.170037052566043e+00	 9.300107694627707e-01 1.650780305317515e+00
1.348734651518706e+00 1.966427135014758e+00	 1.653333240735805e+00 1.841826230546479e+00
1.797366846357401e+00 1.638010418108702e+00	 1.919910970472721e+00 2.082542799174362e+00
2.513931295020597e+00 2.121677547201278e+00	 3.022676648446985e+00 1.870932327137405e+00
-2.782359947920465e+00 1.562266785799124e+00	 -1.989012411432683e+00 1.723701735879800e+00
-1.103509898576760e+00 1.795842281547858e+00	 -2.725398205397814e+00 2.072046934006322e+00
-2.318080514320183e+00 2.474879207017294e+00	 -1.384553696984228e+00 2.415068555794387e+00
6.967145596983740e-01 2.583318889990384e+00	 1.415612056498371e+00 2.475007950399201e+00
2.227958745279948e+00 2.523175948459926e+00	 3.065618191637380e+00 2.449673334695550e+00
0.000000000000000e+00 3.141592653589793e+00

ANGLESUMS:
6.283185e+00	 6.283185e+00	 6.283185e+00	 6.283185e+00	 6.283185e+00
6.283185e+00	 6.283185e+00	 6.283185e+00	 6.283185e+00	 6.283185e+00
6.283185e+00	 6.283185e+00	 6.283185e+00	 6.283185e+00	 6.283185e+00
6.283185e+00	 6.283185e+00	 6.283185e+00	 6.283185e+00	 3.048345e+00
6.283185e+00	 6.283185e+00	 6.283185e+00	 6.283185e+00	 6.283185e+00
6.283185e+00	 6.283185e+00	 6.283185e+00	 6.283185e+00	 6.283185e+00
6.283185e+00	 6.283185e+00	 2.671939e+00	 2.563929e+00	 2.338512e+00
3.075990e+00	 2.680443e+00	 2.889053e+00	 0.000000e+00

VERTEX_MAP:
1  3
2  5
3  19
4  20
5  21
6  22
7  23
8  24
9  25
10  26
11  27
12  28
13  29
14  30
15  43
16  46
17  49
18  58
19  59
20  32
21  15
22  10
23  6
24  2
25  1
26  52
27  54
28  50
29  47
30  40
31  31
(done)

END
    </circlepacking>
  </CPdata>
</CP_Scriptfile>

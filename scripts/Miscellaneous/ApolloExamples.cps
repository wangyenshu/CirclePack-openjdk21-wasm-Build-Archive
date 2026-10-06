<?xml version="1.0"?>
<CP_Scriptfile date="Feb 20, 2023">
<CPscript title="Apollonian Examples" >
<description>Adding circles to interstices for 'Apollonian' type packings</description>
<text> Type '*' or '1' to load a basic packing of the disc into p0 or p1. Typing 'a' will add a ball-bearing to every interstice. Typing 'g' will add a triple of circles to every interstice.  (Note that circles are not added to the boundary interstices.) </text>
<cmd name="*" mnemonic="*" iconname="psi.png">act 0;cleanse;infile_read start3.p;set_screen -d;disp -w -c;set_disp_text -w -cf;color -c fg a;disp -w -cf; </cmd>
<cmd name="1" mnemonic="1" iconname="xeyes.png">act 1;cleanse;infile_read start3.p;set_screen -d;disp -w -c;set_disp_text -w -cf;color -c fg a;disp -w -cf; </cmd>
<text> Typing '2' will create a sphere packing in p2, then 'a' and 'g' can add ball-bearings as before. (Note that roundoff in computations can become a problem in just a few generations.) </text>
<cmd name="2" mnemonic="2" iconname="kivio.png">act 2;cleanse;seed -q 5;add_gen 2 5;max_pack;NSpole;set_screen -d;set_disp_text -w -cf;disp -w -c; </cmd>
<cmd inline="no" name="g" mnemonic="g" iconname="kuickshow.png">mark -cw -c a;add_face_tri a;max_pack 10000;NSpole;[c];disp -wr; </cmd>
<cmd name="a" mnemonic="a" iconname="mozilla.png">mark -cw -c a;add_bary a;max_pack 10000;NSpole;[c];disp -wr; </cmd>
<cmd inline="no" name="c" mnemonic="c" iconname="netbeans.png">color -c S mc; </cmd>
  </CPscript>
<CPdata>
    <circlepacking name="start3.p">
NODECOUNT:  7
GEOMETRY: hyperbolic
ALPHA/BETA/GAMMA:  1 0 2
PACKNAME: Seed 3
FLOWERS:

1 3   2 3 4 2
2 4   5 3 1 4 6
3 4   7 4 1 2 5
4 4   6 2 1 3 7
5 1   3 2
6 1   2 4
7 1   4 3

RADII:
1.438296866e-01   5.000000000e+00   5.000000000e+00   5.000000000e+00
5.000000000e+00   5.000000000e+00   5.000000000e+00

CENTERS:
-0.0000000000e+00 0.0000000000e+00  -0.0000000000e+00 9.8839710736e-01
-8.5597700400e-01 -4.9419855368e-01  8.5597700400e-01 -4.9419855368e-01
-8.6266262767e-01 4.9805850030e-01  8.6266262767e-01 4.9805850030e-01
1.1717712396e-12 -9.9611700061e-01

END
    </circlepacking>
  </CPdata>
</CP_Scriptfile>

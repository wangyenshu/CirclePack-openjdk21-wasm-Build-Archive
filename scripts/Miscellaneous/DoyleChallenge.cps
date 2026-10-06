<?xml version="1.0"?>
<CP_Scriptfile date="Feb 21, 2023">
<CPscript title="Doyle Challenge" level="min" >
<description>Doyle Challenge: adjust parameters 'a' and 'b' to form a coherent Doyle spiral. Try to get the red and blue circles to align. Use keys 'A'and 'S' for increases in parameter 'a'; use 'B' and 'N' for increases in parameter 'b'. Corresponding lower case letters implement decreases. Good luck!</description>
<text> All the packings here are associated with this fragment of the hexagonal packing;in addition, the circles 12 and 19 will be color coded for visual reference. </text>
<cmd name="*" mnemonic="*" tooltip="Starting hex fragment" iconname="kuickshow.png">act 2;seed -q 6;infile_read base.p;set_Vlist 12 19;color -c 20 Vlist[0];color -c 180 Vlist[1];[x]; </cmd>
<text> We apply the 'spiral' command, which sets a packing label based on two real parameters. Here is an example, with parameters a=2 and b=1.2. </text>
<cmd name="e" mnemonic="e" tooltip="Example spiral" iconname="mozilla.png">act 0;copy -p2 0;spiral 2 1.2;[x]; </cmd>
<text> Your job: adjust the parameters to get the two colored circles to match. I've set up convenient keys to work on this. The 'a' key increases one parameter while 'A' decreases it. Likewise, the 'h' and 'H' keys increase and decrease the other parameter. In addition, the keys near 'a' ('s', 'd', and 'f') make finer adjustments and likewise for keys near 'h' ('j', 'k', and 'l'). If you want to start over, press 'r' for reset. Good luck. </text>
<cmd inline="no" name="A" mnemonic="A" tooltip="Large increase in 'a'" iconname="klines.png">spiral -f 1.05 1;[x]; </cmd>
<cmd inline="no" name="S" mnemonic="S" tooltip="Small increase in 'a'" iconname="kghostview.png">spiral -f 1.01 1;[x]; </cmd>
<cmd inline="no" name="B" mnemonic="B" tooltip="Large increase in 'b'" iconname="userconfig.png">spiral -f 1 1.05;[x]; </cmd>
<cmd inline="no" name="N" mnemonic="N" tooltip="Small increase in 'b'" iconname="metacontact_online.png">spiral -f 1 1.01;[x]; </cmd>
<cmd inline="no" name="a" mnemonic="a" tooltip="Large decrease in 'a'" iconname="editdelete.png">spiral -f .952380952 1;[x]; </cmd>
<cmd inline="no" name="s" mnemonic="s" tooltip="Small decrease in 'a'" iconname="bookmark_add.png">spiral -f .99009901 1;[x]; </cmd>
<cmd inline="no" name="b" mnemonic="b" tooltip="Large decrease in 'b'" iconname="commandIcon.png">spiral -f 1 .952380952;[x]; </cmd>
<cmd inline="no" name="n" mnemonic="n" tooltip="Small decrease in 'b'" iconname="commandIcon.png">spiral -f 1 .99009901;[x]; </cmd>
<cmd inline="no" name="x" mnemonic="x" iconname="debugger.png">fix;set_screen -h 14.0;disp -w -c -cf Vlist; </cmd>
  </CPscript>
<CPdata>
    <circlepacking name="base.p">
NODECOUNT:  61
GEOMETRY: euclidean
ALPHA/BETA/GAMMA:  1 0 2
PACKNAME: Seed 6
FLOWERS:

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
38 3   39 20 37 61
39 3   40 21 20 38
40 3   41 22 21 39
41 2   42 22 40
42 3   43 23 22 41
43 3   44 24 23 42
44 3   45 25 24 43
45 2   46 25 44
46 3   47 26 25 45
47 3   48 27 26 46
48 3   49 28 27 47
49 2   50 28 48
50 3   51 29 28 49
51 3   52 30 29 50
52 3   53 31 30 51
53 2   54 31 52
54 3   55 32 31 53
55 3   56 33 32 54
56 3   57 34 33 55
57 2   58 34 56
58 3   59 35 34 57
59 3   60 36 35 58
60 3   61 37 36 59
61 2   38 37 60

RADII:
1.000000000e+00   1.000000000e+00   1.000000000e+00   1.000000000e+00
1.000000000e+00   1.000000000e+00   1.000000000e+00   1.000000000e+00
1.000000000e+00   1.000000000e+00   1.000000000e+00   1.000000000e+00
1.000000000e+00   1.000000000e+00   1.000000000e+00   1.000000000e+00
1.000000000e+00   1.000000000e+00   1.000000000e+00   1.000000000e+00
1.000000000e+00   1.000000000e+00   1.000000000e+00   1.000000000e+00
1.000000000e+00   1.000000000e+00   1.000000000e+00   1.000000000e+00
1.000000000e+00   1.000000000e+00   1.000000000e+00   1.000000000e+00
1.000000000e+00   1.000000000e+00   1.000000000e+00   1.000000000e+00
1.000000000e+00   1.000000000e+00   1.000000000e+00   1.000000000e+00
1.000000000e+00   1.000000000e+00   1.000000000e+00   1.000000000e+00
1.000000000e+00   1.000000000e+00   1.000000000e+00   1.000000000e+00
1.000000000e+00   1.000000000e+00   1.000000000e+00   1.000000000e+00
1.000000000e+00   1.000000000e+00   1.000000000e+00   1.000000000e+00
1.000000000e+00   1.000000000e+00   1.000000000e+00   1.000000000e+00
1.000000000e+00

CENTERS:
0.0000000000e+00 0.0000000000e+00  0.0000000000e+00 2.0000000000e+00
-1.7320508076e+00 1.0000000000e+00  -1.7320508076e+00 -1.0000000000e+00
-2.2204460493e-16 -2.0000000000e+00  1.7320508076e+00 -1.0000000000e+00
1.7320508076e+00 1.0000000000e+00  1.7320508076e+00 3.0000000000e+00
0.0000000000e+00 4.0000000000e+00  -1.7320508076e+00 3.0000000000e+00
-3.4641016151e+00 2.0000000000e+00  -3.4641016151e+00 8.1273966176e-17
-3.4641016151e+00 -2.0000000000e+00  -1.7320508076e+00 -3.0000000000e+00
-0.0000000000e+00 -4.0000000000e+00  1.7320508076e+00 -3.0000000000e+00
3.4641016151e+00 -2.0000000000e+00  3.4641016151e+00 -2.4780741987e-16
3.4641016151e+00 2.0000000000e+00  3.4641016151e+00 4.0000000000e+00
1.7320508076e+00 5.0000000000e+00  1.1102230246e-16 6.0000000000e+00
-1.7320508076e+00 5.0000000000e+00  -3.4641016151e+00 4.0000000000e+00
-5.1961524227e+00 3.0000000000e+00  -5.1961524227e+00 1.0000000000e+00
-5.1961524227e+00 -1.0000000000e+00  -5.1961524227e+00 -3.0000000000e+00
-3.4641016151e+00 -4.0000000000e+00  -1.7320508076e+00 -5.0000000000e+00
4.4408920985e-16 -6.0000000000e+00  1.7320508076e+00 -5.0000000000e+00
3.4641016151e+00 -4.0000000000e+00  5.1961524227e+00 -3.0000000000e+00
5.1961524227e+00 -1.0000000000e+00  5.1961524227e+00 1.0000000000e+00
5.1961524227e+00 3.0000000000e+00  5.1961524227e+00 5.0000000000e+00
3.4641016151e+00 6.0000000000e+00  1.7320508076e+00 7.0000000000e+00
1.1102230246e-16 8.0000000000e+00  -1.7320508076e+00 7.0000000000e+00
-3.4641016151e+00 6.0000000000e+00  -5.1961524227e+00 5.0000000000e+00
-6.9282032303e+00 4.0000000000e+00  -6.9282032303e+00 2.0000000000e+00
-6.9282032303e+00 3.3306690739e-16  -6.9282032303e+00 -2.0000000000e+00
-6.9282032303e+00 -4.0000000000e+00  -5.1961524227e+00 -5.0000000000e+00
-3.4641016151e+00 -6.0000000000e+00  -1.7320508076e+00 -7.0000000000e+00
1.7763568394e-15 -8.0000000000e+00  1.7320508076e+00 -7.0000000000e+00
3.4641016151e+00 -6.0000000000e+00  5.1961524227e+00 -5.0000000000e+00
6.9282032303e+00 -4.0000000000e+00  6.9282032303e+00 -2.0000000000e+00
6.9282032303e+00 -4.4408920985e-16  6.9282032303e+00 2.0000000000e+00
6.9282032303e+00 4.0000000000e+00

END
    </circlepacking>
  </CPdata>
</CP_Scriptfile>

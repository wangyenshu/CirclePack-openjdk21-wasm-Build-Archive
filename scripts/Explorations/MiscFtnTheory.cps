<?xml version="1.0"?>
<CP_Scriptfile date="Feb 18, 2023">
<CPscript title="Discrete Function Theory Sampler" level="min" screenmode="map" >
<description>There are numerous results in analytic function theory which are open to investigation in the discrete theory. Harmonic measure, Schwarz Lemma, extremal length and others are discussed in Chapter 6 and other scripts. Here we sample a few additional results.</description>
<text> This script samples discrete versions of classical results in analytic function theory. First are some "monotonicity" type results. </text>
<Section title="Monotonicities">
<text> "Monotonicty" results concern the direction of change of one quantity with respect to another. You have seen this for triangles and flowers in "MaxPackHyp.xmd" and for packings in "Schwarz.xmd". Here are more situations. </text>
<Section title="The Maximum Principle">
<cmd name="*" mnemonic="*" iconname="kghostview.png">act 0;infile_read mp1.p;Disp -w -c;act 1;infile_read mp2.p;color -c q0;Disp -w -c -cf b(42 25);Map 0 1; </cmd>
<text> The red boundary circles of p1 are larger than they are in p0, while the others are the same. How do the radii compare inside? The next command color codes the interior as well. </text>
<cmd iconname="amarok.png">act 1;color -c q0;Disp -w -cf </cmd>
<text> Circle Packing Maximum Principle: Let R0 and R1 be euclidean packing labels for a complex K and consider the ratio R0 / R1. The maximum of this ratio must occur at a boundary circle.

So we could predict the outcome of coloring in p1: If some interior circle had been smaller in p1,  then necessarily, some boundary circle would have had to be smaller as well, which is not the case.

The classical Maximum Principle: If F is a non-constant analtyic function on a region G, then |F| cannot have a local maximum at an interior point of G. However, the discrete statement is related more to the ratio function f^#, so it is closer to the maximum principle for |F'|.

With the concluding command, some boundary radii are larger in p1 (the red ones) and others are larger in p0 (blue). The colors show what happens for sizes in the interior. </text>
<cmd iconname="apollon.png">act 1;infile_read mp3.p;color -c q0;Disp -w -cf </cmd>
</Section>
<Section title="Angular Derivatives">
<text> We move to the unit disc. The maximal packing is on the left, another packing on the right. It is the 'gamma' boundary circle we consider: this is a horocycle in both packings, so they have the same infinite radius and the same tangency point at z = i. </text>
<cmd iconname="userconfig.png">act 1;infile_read ad1.p;max_pack;Disp -w -c;copy 0;max_pack -p0;Disp -p0 -w -c; </cmd>
<text> Each time you press 'd' the boundary radii of p1 other than 'gamma' will decrease and the repacking displayed in red in p0 so that you can compare the circles for 'gamma'. Perhaps you should take a moment to consider how you think the comparison will come out. </text>
<cmd name="d" mnemonic="d" tooltip="decrease boundary radii outside 'gamma' in p1" iconname="metacontact_online.png">adjust_rad -p1 .8 b(9 14);rld -p1;disp -p0 -wr;disp -p1 -q0 -cc195 a; </cmd>
<text> Did this go the way you expected? It agrees with a classical theorem. If F is a selfmap of the unit disc with F(0) = 0 and boundary value F(i) = i, then the angular derivative F'(i) satisfies |F'(i)| is greater than or equal to 1. This derivative is essentially the usual type of limit of difference quotients, (F(i) - i)/(z - i) as z goes to i. I will leave it to the reader to look into this classical theory. </text>
</Section>
<Section title="Boundary Arc Monotonicity">
<text> Picking up where we just finished, we increase radius to infinity for the 3 circles to the right of 'gamma' in p1. We also mark the point of tangency of the circles on the two ends of the string of 4 horocycles. </text>
<cmd iconname="icq_dnd.png">act 1;set_rad -1.0 14 46 48;rld;Disp -w -c -tfc195t2 48 36;disp -p0 -wr </cmd>
<text> How do you think the arc length between the blue dots in p1 and the corresponding points in p0 compare? Each time you press 'D', you will decrease the other boundary radii of p1 (aside from the 4 horocycles) and draw p1 in red over p0 to make the comparison. </text>
<cmd name="D" mnemonic="D" tooltip="decrease other boundary radii in p1" iconname="format_increaseindent.png">adjust_rad -p1 .8 b(9 13);rld -p1;Disp -p0 -w -c -tfc5t3 48 36;disp -p1 -q0 -cc195 a -tfc195t2 48 36; </cmd>
<text> If the monotonicity in the length of this boundary arc seems counterintuitive, you might recall the normalization that keeps the same circle at the origin in both p0 and p1. You might also revisit the "extension of domain" principle illustrated in "HarmMeasure.xmd". </text>
</Section>
</Section>
<Section title="A Branched Schwarz Lemma">
<text> Recall from "Schwarz.xmd" that we observed the discrete version of the classical Schwarz Lemma. The situation is pictured here. </text>
<cmd iconname="editdelete.png">act 1;infile_read mp2.p;geom_to_h;copy 0;max_pack -p0;Disp -p0 -w -c -cf A;Disp -w -c -cf A; </cmd>
<text> We concentrated on the comparison of the radii of the circle at the origin. In fact, we could have watched any circle: the hyperbolic radii of all the interior circles goes up as the boundary radii are increased to infinity. 

Including branch points might upset this result. However, it is not hard to see that if p0 and p1 share the SAME branching, then the monotonicity happily remains. The next command illustrates with 2 common branch points. </text>
<cmd iconname="bookmark_add.png">set_Vlist 30 31;act 0;set_aim 4.0 Vlist;repack;layout;Disp -w -c -cfc5 Vlist;act 1;set_aim 4.0 Vlist;repack;layout;Disp -w -c -cffc5 Vlist. </cmd>
<text> The picture is harder to interpret here, but the last command color codes p1 based on a comparison of radii to p0: the smaller the ratio the bluer, so if nothing else, you can note that all the circles are blue. </text>
<cmd iconname="list.png">color -p1 -c q0;Disp -w -cf; </cmd>
</Section>
<Section title="Beurling's Lemma">
<text> Arne Beurling generalized the Riemann Mapping Theorem to show that if h(z) is a positive, continuous, bounded function on the plane, then there is a univalent function F on the unit disc with F(0) = 0 and F'(0) positive so that 
|F'(z)|-h(F(z)) --> 0 as z --> e^{it} on  unit circle. (There is a uniqueness statement as well involving some technical conditions on h.)

As usual, the domain will be the unit disc in p0 and the range will be the euclidean packing in p1 and we investigate the discrete analytic function f between them; the default normalizations are in place. It is p1 that we will watch. </text>
<cmd iconname="editdelete.png">act 0;Cleanse;create hex 6;max_pack;Disp -w -c;copy 1;act 1;geom_to_e; Disp -w -c -e b;Map -x; </cmd>
<text> This script next invokes "BeurlingFlow", an example of the "PackExtender" class mentioned in Chapter 6. </text>
<cmd name="b" mnemonic="b" iconname="bookmark_add.png">extender -p1 -x;extender -p1 BF; </cmd>
<text> The function h(z) is taken as the absolute value of the complex function specified in the "Function" window.

For this example we use an example which has 3-fold symmetry, slightly shifted. You are encouraged to try other functions. </text>
<cmd iconname="list.png">set_function 1.25+sin(3*arg(z)); </cmd>
<text> Pressing 'f' carries out an adjustment process. You should look at the Beurling statement and recall the discrete interpretation of functions and derivatives to understand the process. We adjust the boundary  radii in q to move the ratio function towards the target ratio h; of course, the target depends of location, so after repack/layout, the target is typically not achieved. The process is applied iteratively in the hope that the functions will converge to a solution. See the "Help --> Pack Extenders" tab for some of the flow options. </text>
<cmd name="f" mnemonic="f" tooltip="carry out an adjustment cycle" iconname="debugger.png">act 1;|bf| flow;repack;layout;set_screen -d -a;disp -wr; </cmd>
<text> Beurling's lemma is wonderful theory, but provides no method for finding solutions. Circle packing is the best bet both for experiments and approximations. This is mostly uncharted territory, however, so jump right in.

If you want to work on approximations, try hex refinements. Press 'r' for one stage of refinement. It also reinvokes the pack extender, so you can run the process by again pressing 'f'. </text>
<cmd inline="no" name="r" mnemonic="r" tooltip="hex refine" iconname="dnd_multi.png">act 0;hex_refine;set_cycles 2000;max_pack;layout;copy 1;act 1;geom_to_e;set_screen -d;Disp -w -c -e b;[b]; </cmd>
</Section>
<Section title="Hyperbolic Convexity">
<text> This is a classical result of Jorgensen: Suppose F is a conformal map from the unit disc one-to-one onto a plane region G and suppose D is a round disc in the interior of G. Then the preimage of D under F is hyperbolically convex in the unit disc.

Suppose H is the preimage of D, H = F^{-1}(D). To say it is hyperbolically convex means that if z and w are two points of H then the hyperbolic geodesic segment connecting themalso lies in H. (Recall that these segments in the unit disc are arcs of euclidean circles which are orthogonal to the unit circle.) 

Let's illustrate with the function created in the last section. The next command will create a circular path in the image region, and the following command will show its preimage in the maximal packing. </text>
<cmd iconname="mozilla.png">X:=-.365; Y:=.025;R:=.225;[g];Map 0 1; </cmd>
<cmd name="g" mnemonic="g" tooltip="set the path" iconname="netbeans.png">set_path _X + i*(_Y) + (_R)*(cos(2*pi*z)+i*sin(2*pi*z));set_grid -p1 -g;Disp -p1 -w -c -e b -gc5t2; </cmd>
<cmd iconname="network.png">Map 0 1;set_path -.365+.025*i+.22*(cos(2*pi*t)+i*sin(2*pi*t));set_grid -p1 -g;Disp -p1 -w -c -e b -bc5t2;Disp -p0 -w -c -bc5t2 </cmd>
<text> The result is visually quite clear here. You task is to create more challenging image regions and locations for D. No statement for a discrete version of the classical result has been conjectured. Any ideas? </text>
</Section>
  </CPscript>
<CPdata>
    <AboutImage name="AboutImage.jpg">
LzlqLzRBQVFTa1pKUmdBQkFnQUFBUUFCQUFELzJ3QkRBQWdHQmdjR0JRZ0hCd2NKQ1FnS0RCUU5EQXNMREJrU0V3OFVIUm9mSGgwYUhCd2dKQzRuSUNJc0l4d2NLRGNwTERBeE5EUTBIeWM1UFRneVBDNHpOREwvMndCREFRa0pDUXdMREJnTkRSZ3lJUndoTWpJeU1qSXlNakl5TWpJeU1qSXlNakl5TWpJeU1qSXlNakl5TWpJeU1qSXlNakl5TWpJeU1qSXlNakl5TWpJeU1qTC93QUFSQ0FESUFNZ0RBU0lBQWhFQkF4RUIvOFFBSHdBQUFRVUJBUUVCQVFFQUFBQUFBQUFBQUFFQ0F3UUZCZ2NJQ1FvTC84UUF0UkFBQWdFREF3SUVBd1VGQkFRQUFBRjlBUUlEQUFRUkJSSWhNVUVHRTFGaEJ5SnhGREtCa2FFSUkwS3h3UlZTMGZBa00ySnlnZ2tLRmhjWUdSb2xKaWNvS1NvME5UWTNPRGs2UTBSRlJrZElTVXBUVkZWV1YxaFpXbU5rWldabmFHbHFjM1IxZG5kNGVYcURoSVdHaDRpSmlwS1RsSldXbDVpWm1xS2pwS1dtcDZpcHFyS3p0TFcydDdpNXVzTER4TVhHeDhqSnl0TFQxTlhXMTlqWjJ1SGk0K1RsNXVmbzZlcng4dlAwOWZiMytQbjYvOFFBSHdFQUF3RUJBUUVCQVFFQkFRQUFBQUFBQUFFQ0F3UUZCZ2NJQ1FvTC84UUF0UkVBQWdFQ0JBUURCQWNGQkFRQUFRSjNBQUVDQXhFRUJTRXhCaEpCVVFkaGNSTWlNb0VJRkVLUm9iSEJDU016VXZBVlluTFJDaFlrTk9FbDhSY1lHUm9tSnlncEtqVTJOemc1T2tORVJVWkhTRWxLVTFSVlZsZFlXVnBqWkdWbVoyaHBhbk4wZFhaM2VIbDZnb09FaFlhSGlJbUtrcE9VbFphWG1KbWFvcU9rcGFhbnFLbXFzck8wdGJhM3VMbTZ3c1BFeGNiSHlNbkswdFBVMWRiWDJObmE0dVBrNWVibjZPbnE4dlAwOWZiMytQbjYvOW9BREFNQkFBSVJBeEVBUHdEMmFpaWlnQW9vb29BS0tLS0FDaWlpZ0FvcWcrcjJuMmxyVzNMM2R5dkRRMnk3eXA5R1BSZitCRVZNbHZyZDE5Mkcxc1U3Tk14bWY2RkZ3QitEbWdDelJXZnFOb05PdGpQZjZ6ZU9UMGh0MFJBM2JBQVV0M0ErOTFJSFVpcXRqNFV1TDloZGFsYzMxckdlVXM0cjJVbkgvVFJ5M0o5bEFIdWFWeWxIUzcwTXAvaVY0ZVRVamFGN2t4TEo1VFhnaHpBRzZmZTlNOFp4ajhLNjhISXlLOG9iNFcrSlVuT2tSZll6cHBjZ1h4WVpFZWM4eDQrOWo4TS9uWGVYZmcrZlQxRStsM2Q5Y29nK2F6bXZaVjNBZjNHRERhZlk1SDByZXRHTWZoN3ZyZlRvL0svYjhEV3BDaXVYMmNyNmEzVnJQc2JkRloybTJxNmxiaVd4MWU5aVlkWVoxU1RhYzR3Y3J1NmdqcURrRUhCQkZXWHRkYnR1c2RwZkoxSmlKZ2Y2QlczQS9pd3JFeGFhZG1XS0tvalZZRWxXRzdXV3ltWTRWTGxkbTQraXQ5MWovdWsxZW9FRkZGRkFCUlJSUUFVVVVVQUZGRkZBQlJSUlFBVVVVVUFGRklTRkJKSUFISkpyS2l2VTFtNEVNTjlIYTJoUCt0OHdDV2NmOU13ZWkvN2ZmK0hzMUFFMTlxMFZvSmxqUXp6UXB2a1ZEOHNReG5MdDBVZTNVOWdhTk8wTysxV0Q3VDRna0tySjh5YWZBU2lJdllTRUhMdDZqaGUyTzlYYnV4dHJadEowMjJoV0syZTY4eDBYK0xZclBrbnVkNFFrbms5NjNLQU14ZkRlaEpFSWswWFRsakhSQmFvQitXS3IzRmxMbzhMM1dtdTVnakJhU3prZktNbzY3Q2Z1RURvUHU5c0RPUnQxVDFNYnJRSjJlV05EN2d1QWYwb1pVVmVTUmk2ZnMxaldJcmxtRHBGQ3R5UjZPNVpVWDIyQlh5RC9BQk5ucUs2YXVmMFdLS3o4VDY5YW8zelNHRzcyZjNRNFpUajZzam42c2E2Q2hDazd1NFVVVVVDT2V1YmRyTHhBejJ5L05jeE5jS280QmRDb2NmOEFBMVpmeFROWFp0YWdWa2h0STVMeTVkQTRpaHg4cW5vV0p3RkgxT1R6Z0dxSGlDZTQvdHpSN095QSsxekNkbGNqSWlRQlF6bjZieGdkemdkNnRhV2x0cEdsbUpWSlBueUtNREx5dHVJeWZVNEhYMjlCUzJaYVRsSDBGbHR0WnZvbVNkOU1naWNiV2dhQnJnRWU3RmtCK20yc2QvRGV1V0RDVFN0UnNkZzYyY3NEcEUzME85aW50dEdQWTEwUWh1N241cHBUQWgvNVpSSG44Vy93eDlUVHY3TXREOTZMekQ2eU1YUDVrbWk0V2l0MlljR3BuN1N0bmYyNzJWNjMzWTVDQ3NtT3ZsdU9HK25CSGNDcjlPMUx3M3AycVdVbHBQSElJbjdKSXcya2RDT2NBZzhnOVJXRHA3YWpwTTExWTZqTWJ1RzJJSzNCSDd3Uk5uYXovd0I0Y0VFOVFWT2VPYUw5dzVVL2hadVVVZ0laUXlrRUVaQkhlbHBrQlJSUlFBVVVVVUFGRkZGQUJTRWhRU1NBQnlTYVdzS2ZVdE4xSFU1YkM1dklrc2JWZ0x2SjRkK29qWTlBbzRMWnhuZ2YzaFFCTlpXMGZqQkhubUpPaGhpaVJESSsyRUhCWnY4QXBua0VBZnhZSk9SZ0hwRTBqVFk3WTJ5YWZhckFSanl4Q29YOHNZcXI0WVpIOExhV3lFSE5ySHVJUFZ0bzNmcm10YWdEbDlWMDRhSEphYXJadTBkaFp6ZVpjMm81Ull5ckl6b1A0ZG9iY1FPQ0ZQR2V2VGdnZ0VISU5NdURFdHRLWjlvaENFdnU2YmNjNS9DdUswZlVwZEMwZXh0cll5YWtzZHRHSnJPTldlVzNiWU1xR0FLajJWeXVQWEdBQUR1YXFhaWpOWk95QWxveUpBQjFKVWhzZnBXTlA0eGd0WUZsdWRKMWFBSHFaTGNiVi8zbkIyajhUVkdRYXZyK29XMW5lU3BhYWRjd1NUUERidUhkMEJVQUZ4d0FTL1lrRUE5T2xKOWk0S3o1bVZocmRnZFJ1UEVOdGRSeXNzaGhLSjgyKzNVQUVaSEFPOEYxeWVSeHh1cnM3Ryt0ZFNzb3J5em5TZTNsWGNraUhJWVZRdEcvc2RvN0dkMSt6dXhGdEp0Q2dmN0JBNEh0MjdkdWMzVjlQaTB2VllkVXRiMlRUb3JobVM3TWJLSXlkcFlTTXJBcm41ZHBPQVNEMTRvVHVFNDhyMDJPcHFLNXVZTE8za3VMaVZZb294bG5ZNEFybjdPVHhSZnQ1a2R6WVc5bVIrN2tuc1g4MS9mWjVvMmo2OCtxaWdhTnEwRjBMMjZ1NE5YZU03bzRwb3pDSS9kY0VybjBKWFArMEtaQWFKTE5lYXZyR3JYaWVTSXlsdEJHL0JpaUNDVExlaGJ6QVNPMkFEMHJRMGUyZnlmdGR3RDVzcFoxVS84QUxOV1l0ajY4OC84QTFxd3JPLzhBN1V1OVN0WUZlTkpMK1B6MGt3SFVlV2dLRWY4QUFINTZZSEdjNXJzUjBxZDJhdThJVzdpMFVVVlJrRlpXcER5ZFgwdTZIVjNlMmY4QTNHUXQvd0NoUnIrWnJWckwxYzc3blNvUjFlOEIrZ1ZIYitnSDQwQVkxN0ZMNGZ2ekxHQytrelpab3dNbTNZY2tyL3M0NUk3WUpIVEZhYXNycUdVaGxJeUNEa0VWZDFNYmJOcHU4QkVvL3dDQW5KL01aSDQxalNRZjJKZUpDb3hwMXcrSWZTQ1Evd0FIc3AvaDlEeDNVVWwyTGs3cFNMdEZGRk1nS0tLS0FDaWlpZ0RKOFEzMDlucFV5MlFMWGtrYm1MQXlWQ3FTei84QUFSK1pJSGV1bDAyeXRkUDA2QzFzMUF0NDBBVEJ6bjNKN2s5U2U1T2E1clJMQzI4UXozT3N6eXpQRnZlMnRvNDVtUlJHallMRUtSa3N3SjU0d0VxRzcwMjkwM1dMUFE5SDFTOXRyUzdoWjQ0MUtPTFZZeW9jZ3VyTmdoMUNqUEI5dUtBSFE2M1orR2RXMUMwbGxnVFRQdEFNYUl3M3d1eXF6NFRxeUZtejhvT0NUeGpwc1QrS3RHRUFlMzFXd2tabTJqL1NWQVUvN1hQSCtSVmkzc3JIUWJNcFoyd1V5UHpqbDVuSjZzeDVZbnVTYXBhcnBWM2ZlVGRIeVV1WUNXUXdBcklveDBFaE9ENjRJd2NZUEZKczBoRk4zWm0zVjFkZUlwcDlKZ2VTYXk4a1BkeWVXWVJLakVnUnhrOC9NRmJMZE1kRHprYldsMk5wY1dVVTMyZU1XNUdZSU5nQ1JwMitYcGs5U2V2TlkvaC9WN3E0R3FNYk9TVFVHblhLaGRxWUVTQld5VDhvT0MyM0pJejNyVXNycVhTTFFRMzBNcXdSOEpPQUg0OUdDNUkrdU1WTjFmeU5lU2ZLOUxTL0g3aVRVN0tLMXR2dGR1bmxDRjFra2pqR0JJcXNDZUIzNDRQV3MyOWh0dER1NFBFTm9TTlBDT2wxREdNb3FPVkpsVUR1Q28zQWRpeDZqblR1YmlUVkdheXRROGFqYTBzc2taVUJjOUFEZ2tuSDB4VVdvYUxacnBkODAwMXh0ZUZ6S2ZOS3EzeW5KS2pDL3BRdDlCU1M1VXFqMUhYZHpGcWtscEZZeTI5d0RtWm55SFFJVks1NDY1SjRIc2E1KzhSdFIxYXgwdXp1R3ZiYUYydW5hYkJoTHg0MnhoZ01uRE1DZVNCZ0QycUxTL0Qxb1V0YjN4SGFXczV2b0UrK28yeHVSa293Nk1Ubjd4NmtIcHdLMDlVc1lQRGIyT3Eya3NrVmhhUDVjMXJrc2dqZjVjb0R5dTA3VGdjWVU4Wm9XdXJDVGNiUmhxdlRjMDQ5VXZwdktTR3pnZVJ4a2p6eVBMR2NIZDh2SElJeDdIMHFXYXkxSzVYRWw5RWk5NDQ0aUFmWW5kbjhzVWFFSTVOUCsxb0JtNWtlWW5PZUN4eCttSzFLRXJyVVU1cUVtb0xiNS9tY1hxc3k2SHIrbFhzOEMyOER0OW11R2pIN3NxRll4dVRqamFTd3dlems1T0s3TUhJeUs0N1g5UXQ5UjFXV3lnamx1VzAyTnBXRU1lNEpjRWZKbHZ1amF1NGtFajd3eG5tbjZmZTZ4Wktwc2RGbm4wN0pVMnhuaUVrQkhVSVMyQ3ZvcHhqc2NZRk5hT3hNL2VncEk2K2lzU0x4WnBEVHRienp5V2x5Z0RQRGRRdEV5ajF5UmdqM0JJOTZtUGlIVG1IK2p5UzNSN0MyaGVRZm1CZ2ZpUlZHUnExemlheHA4dXN0ZTNGM0NrY1ViUTJpYnN2TGtndklGSEpCS3FvSUg4Skk0YW9ZWHY4QXhoQS9tcExwMml2OG9DU0R6N3RlNTNMd2lIL1pKTGRRUU91L1lhWlphWGJpQ3h0WXJlUDBqVURQdWZVKzVvQXk5UzEyeWZUcmxBTHRTOGJLQzlsTXE1SXdPU21LdWlYVE5kc0o3ZU80Z3VvV0d5VHlwQVNwK28rNmYxRlNYUiswWGNOcXZLcVJOTDdBSDVSK0pHZitBbWk5MG16djJXU1dMYk9nd2s4WktTSjlHSEkrblE5NlhVdDZSU01ld2xtSG0yVjIyNjd0V0NPMk1lWXArN0pqM0g2aGgycTVXTHJFMTFvdDlaM04rNGxpVnZJTjRBRjN4c2Z1eUFjQmxPR0RkQ040d0NRRHRVeUFvb29vQUt5L0VGNzlpMHBnalNDYTRkYmFMeWhsOXpuR1ZIY2daUDRWcVZtSk1seDQ0c0xOeGtXOXBMZERQUVNNVlJQeDIrYlFCTlo2VHJWdEswOWhKWTZiQTZxUHNNa1RUZ2JRRkRibFpkcmJRQVFOdzRIWHFhMm4vYmJmeHRFZFlHYnU0dEpramxpLzFCVldRaFV6eUd4dUpCNU9PQ1FPT3ZyRThVMi9uNlhBWTVXaHVFdkxjd3pKamNqR1ZWSkdmOWxtQkhjRTBBYUdvSTNrcktoWGZDd2tBWTRCeGtFWjdjRTFVZlhyWXdLeVJ6RjM0UldpWlFUNmJpTnY2L1ROWXg4U3JQY3hXdDFiUzNLeE1TOHVueHRQRE13NkFiY2tIdVZQVEhVOWFkckhpT2VXem1ndGRPdXJYZkUzK2xYMXF3aVhnOFl3ZWY4QWUyanZrOURPdlExVGlrdVpYTS9ROVhzOUoxeTRXZSt0bGd2cEk0OXBsVUVUN0ZPN0djNFlzVXoyS0FkK084WlE2a01BUVJnZzF4dmh1ZlM3ZnczQmF5UndUV04wck1yckdHODVXSnlYUURrbnVjWU5abWxhdnEwTzJEU3JsWHMvdERySC9hR1pOMFJrSVF4a1liYnRLOHN4UEhDNDVwS1NTTG5ScVNtN0svbWRsb3FyR2wzR3I3aWx3eWRlZ0FBVWZndUJWRHhQcWRveWpRV2tjejN5RVRKQ2pPNlFIaDJ3b0o1R1ZCOVRuc2E1MjluOFIrSHZPYTV1WS84QVNXMnhQYlE1M3Vja2ZNMmRyRW5vVkl4MFBHQjBlaU5wdWsyU3dySmNTWFVvM3pTend2NTA3NDVZNUdUL0FDQXdCd0tFMGxaaFZweWsrZU9xWm5IWDRWMElXZW9lWmJYa0pTTkh2SUhpU2NxUmgxTEFBZ2daSTZqbnR5WWJpMnNkWWxUUzlEV0NTYU5vNTdpL2VNdEhHbTdJQ0VFYml4VWpDa0FBTnlPQWR5YUdmWDRsSlNPT3daVHRXWkN4bHlNYmlBUmdZUEhQdjZWaGFYZlhtaGFscW1sWEVpM2R6SDVja2R4TTVET2hRS2dJd2M4b3d6bms5ZVR5bTFlN0xqR2Fpb1FscjJ1VDJPbDZqcGQxZDJsanJjaXlnN29vcnVGWkxkc2pKQUEyc3B5ZVFHeDN4MW9lNDFyV1BJMDZUVXhhWEx1eTNTV2NIbHRDcWJkL3pNelp6dVFLUnRQemh1eEZiOGVpd1BHelhoZWVaMjN1MjlsRzcxVUE4WXdNZCtPdGN4YWVXdmpIV0xhMG51VE84Y01TeUZnUWNic2pPTW5iazg1eWRwQlBBcHB0SWlVWTFKZTY5ZjZ1L3dCVG9MaExMVGJHUFNMT0hZSlFWOHVKU3hDSDd6SEdUazg4bnFUejNwMHM4MXZNYnFDeHVTR3g1c2UwZlA3Z0E1M2Z6L0t0Q3pzb2JPSFpHQ1dQTHlNY3M1OVNlNXF6aW5admNubmpIUks2TXE0aXROYnR3OFVwanVZVHVpbVVZa2dmNkhrZTZuZ2pnMVFrdkpOWmd0ZEtsVVJ6eXU2MzZLZUFrZUE0SHN4WkFPKzE4OWExZFIwMk84VlpWR3k1ai8xY2lrcWZvU09jR3VlMHlKQjRoMWU3VzhtaFg3UGJzKzdheFZ2blZnY2c4L0lvNDY0NzhVWGZVWEpGcThXZGVvVkZDcUFGQXdBT3dyT3ZOWWdnbE50Q2ZOdXY3aWd0czkyeGtqNmRhaGlzTGk4YnpidTZ1dkovaGhMQlN3OVcyZ2ZsK2Rha01FVUVZamhpU05CMFZSZ0NqVmhhRUhycVVMVzRndG96bGJwM2M3cEpEYlNaWS9seDlLdHczMXRPK3lPVlRKakpROE1Qd1BOV0tpbnRvYmhOczBhdUJ5TWpvZlVlbE96SmJpM2RrZW9XRnRxdW5YRmplUkNXMnVFS1NJZTROYy9vMGtvc210TG1ReVhObEliYVYyNnVWNk1mZGxLdC93QUNyYVl6NmY4QU1XZWUxSFhQTHhqMXovRVAxK3RZTFRyRjQ0dkxWTUZMcXhodXdSMExCbVJqL3dCOGlQOEFLaE1UamJVMUtLS0taSVZ6OGJ5WDE5cVkwNko1ZFNndTBNVXd3STROc1lBRGs5UVMwZ0tqSncyZU9EWFFWVjhHVHd6YVplQkJpWmRRdWZPQkdEa3l0dFA0cnR3ZlQ2VUFTTDRpdWJhV0cxMUxSN3FLN2xCMmVReXl4U0VESkN2a2U1d3dVNEJQWTFSS254TmJwcW1wV3pKcFVPWkxXeVlndE9lUUpKTUVnZ2cvS3VTTUhKemtBWFBHQ1JYT2xXOWk4cGpsdTd5Q0dJcTJHNWNiOXAvNjU3L3dyYXVMWlpiSjdkY1JncnRYYVB1K21CN1VNYXRmVXBuVFpwNG96SmR2QzhaRElrQ3FGakk3RElKUEhIdjZWV0UycFQzaldEVHhJeWN5U1J4a0hZZWhHU1FDVGtmZ2ZTckM2dXNZZUtXM25hZUxoeEJHWkZKOWlQNUhCcE5IbU4xTmUzRGJkelNLb1VITzFRb3dENzVKejc1cU5HOURwU21vdHlXMnhoK0l2QjBjbWxYYjZQR3lYTFFPcHR2T2RZcmdsU1BuR2NGdlJqbjN5T25RMm4yRFZkSGdlR05IczVJeHNSazZESFRIWWpwanNSV2hYRlhFRXRqcitvV09sM1Z6QmUzanJjeFJ4c3BqVU9DSGRsWldBQVpHSkl3U1hBN2lxc2ptNW5lOTlSbmlleHVJbXQ0b1JMZVNtV09XeWprY245NGtxT1ZKNkQ1VmJCUFlrZlhkMU81dGRROE90Y3dreUxJdVlkb0liZDB4anFEMUJIMUJyT3ZmRFVVVVVGNWQzRnpxZXFCMGpXYWVVb3ZMRElWRXdxanZ3TThkVGlteitERGIyL202VmVPbDRwTWhXNUpsaWxZOWNoc2xTZW01VGtkODlLbTI2UjBxYTkycEo2bzZxRjBlRkhqSU1aVUZTT21PMWNMZnlMclZ4ZjM5dGFuWWt5UTIyb1BKNWFEYnhsT3BjYnkzYmFRb09lT0lwSWJpNXQ3YTFPcVRSV2JsbnZyZEk5Z2hWV0NsR080c0FXT0NBMkNBeEhIWHJOTzA3eklvcDdzQjl1REJDVUNwQ3ZiQ2pqT1B5NkQzTDMwSmpHTVdxbDlQeE1FVDZ0YzJJam44VVc5dTQ0a1pOUElEWTY0YmZnZytxNFAwTlFXMTROSjFuVHJ1NHNJNHJCb0d0aGRRc2RnRzdJa2NIbFJsaU1uUDN5U2E3dkhGWk9wYWNpLzZYQkdDVUphV0VENVpsSUlZRWRNNFA0OFpvYVlRbEJ0MlZtelhIU2l1UzBocit6dkpiVFRicUc4c0NpejJrTnl4WGJFZUNxeUFFNFVqb1ZPQXlqSXEydmlEVXA3MTdPMDBVVFN4NUVzcHVnSVkyOUM0Qk9mWUtTTzRGV1lOTk96TjI1dUlyVzJrdUo1RmppalVzN3NjQlFPcHJqZEFqTXZpdTh1YmlDU0ZiMzk2a2JkTjBlTVpIWnRzb0pIcUc5S3VhaFlheExORmRYdXBXYkZDREJZeDJyTW5tRGtFa3VDNUhYSkFBeG5BSXpVVXNHdUpvMXRkUlc5dGVUeHNMeU13a3h1SGJKWmRyRWhnUXpLVGtZQjRCSUZTOVdhUnZHRGwzME93eGlpcVdsYW5iNnZZSmRXKzlRZUhqa1hhOFRqcWpMMllkeFYycU1nb29vb0FEWEMzQ3BCNG9XNVJTc1gyb1dpTm41ZGdqY3NvOUI1a2dINEgwcnF0VjFCclZFdDdZTEpmM0dWdDR6MDQ2dTMreXVRU2ZvT3BGWjJxNlRIQm9OcENyTTdXdHpETDVqZFhiekFXWSs1eXhQMXBQdVhEVjh2Y3NVVVVVeUFyQTBIVG4xMjFqdUZtbXNvcmFXV0lUV3piSlp5SkczQXQvY0RaR01ja0U4ZDkrczd3anFDUVc4Mm0zUldLWDdiZEczTEhBbVF6T2ZsOVNNa0VkY1lQZWdDRFZ0RmZSNUl0WFM3bXVvNFo0bW5ONDNtUEZFSEc0bzM4SUF5U3ZRNHp4am5xcjE1STdHZDRobVJZMksvWEhGWTNpZThqdUxLYlFyWlZ1ZFF2NFdpRnVIQUt4c05yeU42S0FldmM0SGVqUnRTbnRuajBiV0FJYjBLZnN6dElHRnpHdmNOeGx3Q053d1BYb2VBYWRuYzJiV0tLSzFqU0hCajI1QnpuUHZudm5yV1hjM2tXbTY1dU8wSlBFRFBqcXBCd3JIMjZnbjJIcFQ3ZUc1a2VRMmR3SUxRTVZWV1FQa2c4bGVtQm5QSFB0Z1ZXTThtaFhEL2FsbHZHdkpBSTVJMUFZdGpBUWduOFJqanJ3S2h2UTZhY0Z6UFc3ZlRyL2xwdWI2TXJvR1VncVJrRUhyV0RZU3dYUGpiV0hBQmx0clcydHlUMnlaWE9QKytoK1ZVTDFwZEV0Z2tFOXhKcU54dU1GaFpnTU9XNmtNRGhWenkzQS9FZ1ZrVDI5OXBjc054ZFdPcHlXOGttMjZJV010S0dZc2ZsamNrNFlzY2M4TVFCbkZQbWR0aVBaUmNyS1g5ZjE1blQzMnB4eVhjTXFNNXRyV1FNN3JHeFZ5Y3FmbUF4aFFTZnI5SzNVZFhRTXJBcVJrRUhyVmV4dTdPK3MwbXNab3BiYzhLMFpCQXgyOXNlbmF1YTFTL3Q5RnU3bUpMeVczaitWMWhneEk3c1IvcTRveURrOStPQnU1OWxxZzkyb3JMU3hIZE5iUWVJL0VVU25kTGN3V2hrUUhPQis4REhIWUJWelhaQ3ZQRFBaNmFxYXBmM2QxRExPV1cvYWFLU05RamZkd1hVSzJ6QUh1Q3h4MEZkZFpYNndOSFozY3ltVGFERk1UOHN5OWpucHU5UitJNjAxdnFEaW5DME5iR3RTR2pOWmVvWDZ1eTJkdEppU1JpanlxZUloZ2trbjF3RGo4S2JkaktFSEoyUnpOd3N0eHFXbTIralA1VnpMYlRySk12Q3JHR2p5YzRJM1kyakk1QksrbUs2TzJzTlN0TEdPMnQ3bXhoUkZ3b1MxYkEvTit2dWFvZUgzUzcxKyt1SW9SSGFSV3NFVmtQV010SVM0SFlNUU1lb1ZUM3JwNlNqb2F6clhlaSsvVXlJaDltYy9iVVlTeURZTGt2dlU1N1p3TnYwd0I5VFYzVFczYVhhSDFoWGo4QlZpU05aVVpIVU1yREJCR1FSV2ZwZ0ZxODJuRmlUQ2Q4ZVRrbU5pU1B5T1IrRkZyTVRmUEZ2cVozaUcwbnNYL3QzVFoxdDVvc2ZiQXlia21oSFVzdVJ5bzVCQnpnRWQ4VlptMS8reklHbDFpemx0STBIelR4L3ZvZnpVYmgrS2l0aVJFbGphTjFESXdLc3A2RUd1YThLV2tsOXBPbjZscVg3MlpZVVczVnZtRWFnWURqL0FHbXh1ejFBT1BYTkdKWms4WjZCRkVzcjN6S2pFQlNZSk9TZW1QbDVwdDdydC9MTGJXMm1hYzZ5WFQ3RW52QnNWRkF5ejdQdm5BN0hia2tEUE5iN0lycVZaUXlrWUlQUTF6TFdpYUo0cTAxbGtDYWRjUnpXME1KNlJUTnNjQmZSU3NUY2RpT091S0FMY0hoYTBTYVM2dWJxK3VMMlVBU1hIMnVTTXNCMEFWQ0ZVREp3QU8vYzVOWlBpVFVCNGRzMWd2NzlaTE82Y0pESk82aVNKZ1EyQ2VOeTRCNTZqSEpPY2pzcStmdmpSWWFqL3dBSlo5cTJ5VFc4MXZIREFFeTJ3NU80WTdFbjg5MWRtQndzY1ZXVktVdVcvVWFmSytic2V6UnlKTkdza2JxOGJES3NweUNQVUdpdU8rRittNmxwZmd5S0hVMWVOMmxlU0tLVDcwY1p4Z0VkdWNuSHZSV09JcEtsVmxUaTdwTnEvY2xPNnVkbldOcHVsUTZwcStyMmVwUngzRmhCTWtzVnBJTW94ZFFTN3FlRytZSEFQQUlKNjlObXNxU3pjZUtyZTRndXBMV2E1dG1oOHhRR1ZpaDNLaktlRGtOSWV4RzNnakpyRVpWOFFSV1hnbTYwL1Y5SDB5Tlhtbk5wSlpXeTdCTUhYZGxWVUViOHhMemprY0gxRjZmVE5XOFFYRVYxZXdXbGpicEN5SmJUSjU4Z0xGU1dKVmdxc05neGd0ams1OUxPaVdrOTdmVDZyZjNQMnBvNUhodEFJd2lScUR0ZGd2UExNRHlTZmxBeGpKcm9hQU9TdExUVnRKamUxSGlGRktrK1V0L2JCMEs5dHJLeUUrK1NTS3BOcUdyWFdvV1Z0cWQ1QkFobklTNXNJZjNiTVZJQVYzTERKejBLajJKeFhjbFF3d1JrZTlWNzZHMm1zWm83dFZOdVZPOE4weDYrMVRaMnNhcWE1cjIxZjZtVDRUc0liZlNoZmplOXhxT0xtU1dWeTdsVzVSU3g1d3FrREhUcjYxZDFzci9aeFQ1eTd1aW9JL3ZGdHdQSHVNWi9Dc0h3MWQzOGF5Nkl0eEFKZFBBUkV1VVBtTkZnYkd3TURHMHFENkVHdFMyKzBOcmNhM3hKbVdGMlVML3ErcWpLKy9QZm5uMHBOM1Zpb1E1WmMxNzIxT2MxTFRMaXoxcUtRYWRaeVhlcW55d3d5cmIxR2Q3bGNjN04yY0hCMkRIUFhmOEFEV25XbW5pNmpTM0tYU3lZbGtsQTh4d1JrRXNPb3puSGJyVWEzcTZqNHp0UExHNjBndHJoVW16OHJ6Ym9nUXZydEdSbjFMRHNhdDZtd2oxYTFhSjVGdUdpa0NyR003OEZjQWpvUnlldU1aNmlocTJvNHk1N3d0YTVzRUFnZ2dFSHNhNHpWTEdYU05UZ2owbVJJN1NVR09hM2xUZEZCNWpBS1ZIOElaZ0JqQlVkZHZYUFFidGFlSGlPeFNUc1M3SDlNY2ZtYXc5WGMydWs2Nkpra1c1ZlQya1ZwQ0Q1anFHeHRJNDRKWEE0eDZVTjMwQ0VIQzhycHRFWmp1UmMvd0Jtd2FIYlhFb0daU21weUNPSUhwdVBsakJQOTBBbjJ4VGJqUjlha3ZyRzJ2TG14ZTEydnN0eEEzbGxoenNjaGdXR0I2WU9Ea0d1cTB1eC9zK3dqaFp2TW1QenpTNDVra1BMTitKL0xwMnFwck1pR1MwaiswUnd5SklaZzd0Z0RDa0RQc1NRUG9UUTBscWdwMUpUbHl5ZDkveUtFV296V25peUNQVUxUN00xOUI1Q3VyNzRuZU1zNmhXd09TR2s0SUIrVVl6WFRWa1NHejhSNlROYkNVSzNBSmpZRm9aQnlyQStvSUJCOXFvNk40Z25qMHExZlhsV0Yyakc2N1VZaFp1aERIL2xtUWNqbmowUFlXbmN3bEZ4ZG1kTFdSZFJsdFZsdUluV09XR0ZNTXh3cHlXeXA5ai9BSUdyZDNxVnRhMmYybHBBNkVaUVIvTVgvd0IzMXJLbG4welM5OXpxczBiM3NnTXBoLzFqS0FPaUlPY0FEbHNlNXhVdlhRMHArNm5KbG01MXlJYVJQY1d6Szl5dUkwaEpHZk5iaFZPUFVrYzlNYzBuaGNlUjRmdE5QZHN6NmZHdG5MeGc3b3dGemovYUFERDJZVmx4NkxMNGpraDFlNmFmVGw4cy9aYmVFaEpFREQ3OGpEbmZqb29PRnlSeVRVQ2FQYzJTUGYybW9OQmVqOTFKSk5QSTRjcVRoV1J5MjRjNUczYTNQQkdhTHRiaHlLV3NQdU8wcm12RXVkUXY5UDB1QzBTN2xSemN6SzhteFlrMk9pc3pESlU3bStYQXo4cHgwSkdiWjZ4NHMxVjdtMWlqc3JlYTJ3azcvWjJCRGtBamFHZnBnZzVJN2pqMFh3MExxMXU5U3RyKzVFTjg5d2pUU0VGMmZNYUJTR0pLcURnNFh0a2dkS09aQjdHWFczMy9BT1JabFR4VnA4U1c5dnF1bjM4NVB5eFRXYkJ3dnU0a3h4NmxlZnJWYjdOYlN6YWZjYjVwcjY0dTJOMFo4QjQvTFJpVTJqaFFIRWZUcjhweWVEWFgyOXJGYktmTFU1WTVabU9XWSs1UEpybGxqODd4enFreU1QSnQ0STR5Qi96MmNBdm4zMkpCK2RQMUliVnJJMTZLS0taSVZSMVVTSmFMZHdvWG10SEZ3aXIxYmI5NVI3c3BaZnhxOVJRQS93QUxTSk40VDBlV05neXZaUXZ1SGZLQTVyV3JtL0RseEZwOTFQNGZjaERGdW50QWY0NEdiSkEvM0dKWEhZRlBXdWtvQUtwNm54WmJqOTFIUjMvM1F3Si9RR3JsUlhNOE50YlNUM0Rxa01hbG5aandBT3RKNmppN05NNWJVaEZkK0tibXpodFZ1THByTzNramZjVUZ2ODB3TWhkZVZPTUFBRUZ1blRKRUdvZUc5eTI5bmRhbnFkL1BLV08wU2xRcTQ1QXdRZHVjRDVtSkk0elYzd3piU1hObmNhakc4MW8xMWNTZnVXVlNZMFJpaXJ5Q1J3dWNkQVNhMXROZ1dPNnZtWjNrbDgxVkx1Y25BUlNQYkdTZW5yU2V1aHJDMFc1SjN0L3d4emQ1cHV0Mk1Gbk5acXhGbklyckJKSUpFQ2dGV1VIQWNaVWtmeEFjY2Naclk4TmFoRHE4VTk4Sm8zdVMvbHlSZ2pkQUIwUWdFNDduM3pucGl0MGppdURhQ3dzL0VkK2oyVFNQY1lOcDVEZVhJOG1mbkN1cEJIVUE4NEFUSm8yYXVOTlNoTGxWbitoM3RjcHJnaThVUVRXRnBJalc4QVo1TGdZSU1pZzdVVDF3ZVdJNlkyOVNjV0xUd3JDNGFUVnJtNXZTL1cya3VwWHQwSDkzYXpIZjlXem4wSFNuYXJwR2lXOWlMZUxTZFBXV1lpS0Jmc3lZREhqT01kQm5OTjdHZE8vT3VYY2pnMVBVWnRDaTFLQ2UzbGlsQXdubG56Qms0d1RrRGNEd1J0R09mU3RleTA1TGNpYVVpYTdJK2VkaDh4OWg2RDJGYzdQNFd1Tk10dk4waTdjN1poY1Mya3pIeTVTTUhDLzNPbkhVZW83aXpCNHRsdVZ0bHR0RXU3aWE0UXVvaWxpMnFCd1N4TEFxTThjak9lM0ZURmE2bTFXUzVmYzJ2MFZ2UkduclVWcEZZVDMwN05BOEtGaFBGdzR4MkdPVG4rNzNybXRCMG5VdFUwNktQVUw2NGdoaUpFbHZDUXZ6L3dBU3N3SHpjNXoxSE9PY1pLM1Y1ZFhXdGFhbXZJMWlzY3pYQXRRd2FKbGpSaUdNZysrUTJ3NElYSG9lRFc3b2wvREo1bHUwc1ltZDJuVlF3T1ZZN3Z6R2NINmU5RHRjVUhMMmJkcjJNdTU4QjZQYldVb3NOT3R0M0xlVzBTamNlK0dBQlVuSHJpcXQvWnhhSDRadUpOTmlWOUd1SXg1eUJBSklVUDNtejFaY1p6dXlSeWM0R0s3Qzl2YmV5dG1ubmtWRUhxZXA3QWU5YzNBQW1sd3lXZDJyejNiN1h0bUt0R3hiN3k0eDI1eWZidlJkUmVoVVl5cXd1KytqT3NMQURQYXN2VElVdVpwdFFKM3JMSVdnSFpWd0YzRDNPTTU5Q0s1T0c5djlIMGFCZFFtTjNZUk85dkdxNDN5ZVc3SnRaYzdtUHk4YmR4T2NGVGpKMUxmeFNzT2sya2R0cHQrNytVcUdTUzFrU0dNZ1lKWjl2UWV3TlBka1c1SU54ZDc2Q1hhYWpMNDJ1MDBlZnlYK3lXLzJpU1ZOOEsvTkwxWGdsOGJjWUk0NjlnWlI0U3VZYm1XOWgxcWFTOG16NTMyaUNOb3BnUUJ0WlZDbmFBQmo1dVB4T2JIaE1vWXRTYjdZbDVLOTRYa3VFSTJ1U2lZMjRKK1VMZ0FaT01ZeWE2R3FNRGtyRFV0YWRiMnh1a3M3QjdMbVM0ZVZwc1JuSlZsQlZRUmdIa25qSElPRFRmRHRtTFhTL01ZU2ViZHlOZFNHVTVjbHprYnZjTHRCK2xOMTI1Ri80bWcwcTFaWGprdG4rM0ZTRHRRT3BDbjNiNWx4Nk0zcFd4U1JjOTc5d29vb3BrQlJSUlFCbGE1cG4yMktDNmlWdnRsbS9td05HMjErbUdVTjJKSDRaeG5JeUswckhVZFNObkZPa0NhbmJTTGxKb0dFVXBIb3lQaFFSMytZYy93anBUNnBSM0g5aFhyek1jYWJjdm1iMHQ1RC9IN0szOFhvZWU3R2dDeGMrSXJtRzRodFk5Q3ZtdXA4K1dqeVFxQUIxWmlISkNqSXljSHFCeVNCVU0ybGE5ZlhVZDFlWG1uN0lpSGpzUkE3eHE0NUJMN2dXSTdFcmdkZHVSbXIrbEtKdFIxUzdibHpPSUZKL2hSRkdCLzMwem4vQUlGV3JRQnoyZzNjMEYvZWFUZjIzMldjeXZjd0FQdlNWSE81eWpZR2NPeHlDQVFDdkhOYTA5dEo1MzJpMmRWbHh0WlcrNjQ3WjlDT2VmZnZXZDRxc29iblRJWm5McEpiWFVVa2NrYkZXUWx3cllJOVZaaCtOVTdmVU5lbWtDNldMWFVyUUhIMnE2QnR3UjdNdTd6UHFFVmZlZ2FiUnFYVnhxQmFHQllvSVdtZmI1Z2tMbFJna2tEYU93L1BGWW1qYWZwMnE2enFGNUVydkRaa1drTXBkdHhmRytTUld6MzNxTWorNmNjR24zOWo0a3ZKbzJ2WTdLU3pSc3RCWnpPa2pBOEVFc09lT3dLKzlUNkhxbW54WFdxd2h4QmlkSFNCbDJNcW1KRnh0NjlVWVlIdDZpcHNyNm0zTkxsWHM5UFFuQTFBWHpXQ1gwdVZ4SjVqUnFkc1o0SGJsc2dqOE0rMVdwTkRoZmMvMmk1ODlzWmxNbVR3Y2pnOGRlMktqaWxraTFGN3VkZkxodVZXSk53d1UyazdkM3B1M04rZzZtdFlzQXVTY0FkNlNTZTQ1MUpSYTVkUFQrdTVpQ2UvdnBwdE5rRWNKUVltbmpKeVZQVGFDT0NlZTV4ZzFrWFVVZmgveEhPNGx2SVlMdTBFcHVJbDh3UnRHU0czcmcvTGlST2d3T2VtYTNMYTVIOXFTM0Q0RnZjaFk0WC9BTHhYUDg4bkhyajNGVU5VUzIxRHhyWVcxdzQ4cXpzWnJpV0p2dXZ1a2pDYnZVQW94eDZoYUVrOXduT1VYYU9pL3EvNDlEbTdyWGhjYWhhYWpKSmNUV1duT0pwWnBJR01MZ2dxZGhDZ1oydHZHZWZrQTUzVjZCSkJhYXBaTHUyVFFTS0dSMU9RUVJ3eWtmb1JWT0JweGNUMzBjYlNRVHNNUmpoc0FBQmhuMTU0OU1WejBsN0xvZXMzTU9uU01scktzY2tkak5BMkE3Rjl3akErWVoyNXdBdys5d09UUXJXQ3B6T1NhNmZoL1RON1JyR0xNdHpLcXZPc2pSQnp6Z0tkdkhwbkdUOWZhby9FUmcwMjNYVjFpQnVZSFhhcThHYkoyN1BjblBIdldmcDcrSjRvekpEb3R0RnZ5MGlYRjk5OS93QytOcUhHZTRQNlZsM3kzRWx4YVhYaU4zaXVvcnlCb0lTb0VBL2Vya3F3SkJPM0p3eDNZejJvdHBZYm4rODU3NmYxb2JlZzJZMHl5UnBJcHJyVjVGSmxrZUpsQVpqdVpWWWpDcHVKNmRldkpyUnRvMjBkQXNoTDI3Zk16Z2Y2dHo5NDQvdWs4KzNQNGExRlZZeVUwbFpMUTVuV0xjNlo1dmlIUnZJV1hDdGVvZjhBVjNFUTZzU09qS0NTR0dlTWpCNHd1cmE5ZjJOaE1aYkNHR1FSazdoZGJ2eFVCZHgvRUQ2aXREVnJPd2kweTl1Wm9FQ0xDN3lGUmpJQ2tuT090WVZoRXQvSGFnSWkybHNxWlpRUDlKblVjdWZWVk9jZXA1N0FrMUY3aU1Ud240WjFIVHI5TDY5YU9QOEFkWU1hTVN4TEFaRGZUNm5rZmpYYVVVVW9RVUZaR21JeEU4UlBucWJoUlJSVkdBVVVVVUFGSXlxNmxXQVpTTUVFY0VVdEZBR1BwMHErRkx1NVc1bFk2UGN1SFNaei93QWVqaFF1MXovY0lWY01lbU1IcURYWHBJa2lCMFlNakRJWUhJSXJIWlZkU3JBTXBHQ0NNZ2lzR0xRdE8wZHlVMGExdTlQSnkwUDJkV2toOTE0K2RmOEFaUEk3WjRXZ0RRMU82dHZFbW8yMmh3ano3RmkwOTFNdk1iaUpsL2RnOXlYWk00NHdDRHlhNmRWQ3FGVUFBREFBN1ZocGRXc21zYVhkV3NrYldrc0Uxc3JKMEQ1Umd1T3h3ajhkc1lyZG9BSzUvd0FRSyttVDIrdVdrQmxtUjB0N2lKTUF6Uk80VURuaktzd1laLzJoeHVKcm9LeFBGTThrZWtwQkJGNTExY1hNVWNNTzdidk84TWVld0NxeEo3QUhyUUJvMnQxYWFuYUdTQjFsaWJLc0NPUWU2c0R5Q080UE5OL3N1ejZHSWxSL0F6c1Uvd0MrU2NmcFdYL3dqVDNOMEwrNzFHNGp2U01NYkxFSyt3UEdYQS8yaVI3Q3E5NWE2cnBzNlNUNjdmVGFheENPd2pnV1NBbmdNVDVmSytwNEs5ZVJuQmE0MUpyWm10ckdvMmVuV1IrMUkwelNaV0syalRmSk8yUHVxdmYrUTZuQXJsbzlPMUpWaDFGZEJtZS9FaGtramxuajJzaHgrN0dXT0FvQzRKd2NxRGdaeFcxNFgwdTNTRnRZeEpKY1h3RHJMTkkwanJEMVJjc1NSeGhpUFVuc0Jqb2FMQXBOYk13VjhUd3RPYk1hZnFJMUFKdit5dEJ0T09tUTVPd2ozREVVM3c1Ym04VStJYnlKQmUzMFk4dkIzZVRCMVJBZmZPNCtwYjBBeHBhcnB5NmxabU1PWXJoUG1nblVmTkUrT0dIOGlPNEpIZW9QRFV3bThOYWNjQlhTQllwRkg4RG9OckwrREFqOEtCR3JWZStzYmJVcktXenZJVm10NVZLdWpEZ2lyRkZBSE42WnJyV1AybXcxbG1qTmxMNUF2bi8xY3E3UXlsMjZJMjFsem5BSjZlZzJKTlYwNktBVHlYOXFrSjZTTk1vVS9qbXFOcmQyOXRjYXpmM0V5Uld3dUZUekdPQWRxS3AvSGRsZnFNVmx5VzBlclRHUVdNZGxabnJpTUpQY0QvYVBWRjl1cDc0NUJBRzN0N0Y0eGcreTJwZit4ZDM3K2ZCWDdWZy9jVHZzeU9XNzlCbkpJMWtSWTBWRVVLaWpDcW93QVBRVUlpeG9xSW9WRkdGVlJnQWVncGFBQ2lpaWdBb29vb0FLS0tLQUNpaWlnQW9vb29BeXRUME9PK1dSN2VlU3l1bnczbnc0NVplVkxLZUdJSUdEMTR4a1ZZZzhTWEdtV3dYeEJic3BRZk5lMnNiU1F2N2xSbGs5OGdnZjNqVjJpZ0JZL0V0aGRRckpZTGMzdThaVHlMZHlyZjhBQXlBby9FaXFVY040M2l5d3ZkU1pVMzIwNlFXNk5sSW16R1J6L0U1VVBrOUFCZ2R5VWJTN2NUTlBiTkpaenNjdEpiUHMzSDFZZmRZLzd3TlEzME9zelc2eHJkVzl3OGJoNFpaRk1Va2JqbzI1UVZQVWdqWU1na2Q2QU9zcWxyQmdHaVg1dWY4QVVmWjVQTXovQUhkcHorbFkwSGlUVTRMWWYybG9GeTB5ajVtc1pJNUVmM0FabFlmVEhIcWFxblhVMWVXUDdmYjN0bFpJd2MyNzJjclNTa0hJRGtLVkNnak9BVG5qSkF5Q0FiZmhtVnB2RE9tNzAyU3BicEZMR2Y0SkVHMTEvQmdSK0ZhdGNwTnJWcFpYY2w1cDB4bFdZN3A3UjRwRjN0MDNvZHZEWUFCQjRPQnlPU1o0UEd1bnpvZjlCMWRKQjFSdE5tUC9BSThGS244RFFCMFR1c2FNN3NGVlJra25BQXJtTkZ0N3pUckVhaGFRTk5CZlNQZFRXbVFycVpITGhrenhuQkFLbkhUSXdjaHExenErbzYwNWdiUXJ5SFQ4L01zenhvMC9zM3pFcW5xQUNXNkhBeURvdmRhM2NqQmV6c1U2RVJBenY5UXpCUVB4VTBBV244VDZQQkUwbDNlQ3pDRExDN1JvU0I5R0EvT3M2OThSM09wMnhpOE53bVJwQmdYMXdoU0dNZjNsQkdaRDZZRzMxTktOS2dlVlpydDViMlpUbFh1bTNoVDZxdjNWUHVBS3ZVQVptbjZOSGFKQzF4TTkxTkNQa1ovdW9UMUtyMkp5Y3Njc2NuSk5hZEZGQUJSUlJRQVVVVVVBRkZGRkFCUlJSUUFVVVVVQUZGRkZBQlJSUlFBVVVVVUFGRkZGQUJSUlJRQVVVVVVBRkZGRkFCUlJSUUFVVVVVQUZGRkZBQlJSUlFCLy85az0=
    </AboutImage>
    <circlepacking name="mp1.p">
NODECOUNT:  48
GEOMETRY: euclidean
ALPHA/BETA/GAMMA:  18 0 36
PACKNAME: mp1.p
FLOWERS:

1 2   29 32 22
2 5   18 30 47 16 27 18
3 6   5 45 4 23 33 20 21
4 5   11 23 3 45 43 11
5 2   15 45 3
6 8   16 8 9 22 32 39 31 27 16
7 3   37 44 19 25
8 5   16 47 36 9 6 16
9 3   22 6 8 36
10 8   45 15 24 26 34 28 38 43 45
11 6   18 27 31 23 4 43 18
12 3   40 23 32 29
13 3   48 41 17 37
14 3   36 47 30 46
15 3   24 10 45 5
16 5   2 47 8 6 27 2
17 4   44 37 13 41 44
18 7   30 2 27 11 43 38 35 30
19 7   34 25 7 44 35 38 28 34
20 3   3 33 21 3
21 3   3 20 33 42
22 3   1 32 6 9
23 10   11 31 39 32 12 40 42 33 3 4 11
24 2   26 10 15
25 3   7 19 34 26
26 3   25 34 10 24
27 6   2 16 6 31 11 18 2
28 4   10 34 19 38 10
29 2   12 32 1
30 6   2 18 35 46 14 47 2
31 5   6 39 23 11 27 6
32 7   6 22 1 29 12 23 39 6
33 5   3 23 42 21 20 3
34 5   10 26 25 19 28 10
35 7   18 38 19 44 41 46 30 18
36 3   9 8 47 14
37 3   13 17 44 7
38 6   18 43 10 28 19 35 18
39 4   6 32 23 31 6
40 2   42 23 12
41 6   35 44 17 13 48 46 35
42 3   21 33 23 40
43 6   18 11 4 45 10 38 18
44 6   19 7 37 17 41 35 19
45 6   4 3 5 15 10 43 4
46 4   14 30 35 41 48
47 6   2 30 14 36 8 16 2
48 2   46 41 13

RADII:
2.476353123e-02   6.239813169e-02   8.845405454e-02   6.904725606e-02
5.946989113e-02   1.040975167e-01   1.212336897e-01   6.649363554e-02
1.131333995e-01   1.333499676e-01   8.792560104e-02   7.211745123e-02
4.900159538e-02   1.415517260e-01   8.924309885e-02   5.457370664e-02
2.676956059e-02   1.253790262e-01   1.168987762e-01   7.964996683e-03
4.880758792e-02   6.556599369e-02   1.474627419e-01   8.360431366e-02
1.173181632e-01   1.242358584e-01   7.615841309e-02   4.120097065e-02
4.441305418e-02   1.235360861e-01   5.469715141e-02   7.651018208e-02
3.653787530e-02   6.726782637e-02   1.482152832e-01   1.393148238e-01
6.232540321e-02   1.009665525e-01   3.552650831e-02   6.958438639e-02
7.384288730e-02   1.088150114e-01   9.761953873e-02   7.967153603e-02
8.614999065e-02   2.455596319e-01   9.042538584e-02   4.959807452e-02


CENTERS:
-4.6453757086e-01 3.5056462174e-01  -7.0854558551e-03 1.8764343140e-01
-4.4251361236e-01 -2.0271595588e-01  -3.0316305996e-01 -1.2931237021e-01
-4.1822209826e-01 -3.4863173997e-01  -2.4962118343e-01 2.8822402812e-01
4.3697188258e-01 -4.6058069814e-01  -1.1084956595e-01 3.8743985057e-01
-2.4629082488e-01 5.0542941409e-01  -1.0119499078e-01 -3.9924587619e-01
-2.1330377147e-01 -6.0422695160e-04  -5.7002221477e-01 2.1454774126e-01
5.7553666355e-01 -2.0257635174e-01  2.4819833098e-01 4.2937829810e-01
-3.1620833881e-01 -4.5683870034e-01  -9.2269049330e-02 2.6780680436e-01
5.0330791976e-01 -2.2547343996e-01  0.0000000000e+00 0.0000000000e+00
2.2680851210e-01 -3.4860557134e-01  -5.3276828867e-01 -1.6879359093e-01
-5.7975972998e-01 -2.0065156962e-01  -3.8410173993e-01 3.9166815168e-01
-4.4625633293e-01 3.3171150382e-02  -2.0542979897e-01 -5.8952005970e-01
2.3208543271e-01 -5.8276305854e-01  -3.1942149411e-03 -6.3746070714e-01
-1.3916491537e-01 1.4577539496e-01  6.9241111691e-02 -3.6156876095e-01
-5.2810529589e-01 3.2327828254e-01  1.7832262468e-01 1.7366569808e-01
-2.6914148446e-01 1.3063372231e-01  -4.2739374486e-01 2.5634837474e-01
-5.4036260270e-01 -1.2494348250e-01  8.7067256153e-02 -4.6856272574e-01
2.5987134911e-01 -8.5561253217e-02  5.5511151231e-17 5.6084543200e-01
5.3819506141e-01 -3.0745392498e-01  5.0481439291e-02 -2.2064438647e-01
-3.4214208688e-01 1.8365466933e-01  -6.5288768254e-01 9.9601123057e-02
4.7780795516e-01 -1.2814607239e-01  -6.7760795601e-01 -7.7077266145e-02
-1.4203329093e-01 -1.7191539850e-01  4.0350778040e-01 -2.6248207726e-01
-2.8785392620e-01 -2.8375270111e-01  5.4728439398e-01 1.8360862882e-01
3.6710135054e-02 3.3405713884e-01  5.9940855303e-01 -1.0691012049e-01


END
    </circlepacking>
    <circlepacking name="mp2.p">
NODECOUNT:  48
GEOMETRY: euclidean
ALPHA/BETA/GAMMA:  18 0 36
PACKNAME: mp2.p
FLOWERS:

1 2   29 32 22
2 5   18 30 47 16 27 18
3 6   5 45 4 23 33 20 21
4 5   11 23 3 45 43 11
5 2   15 45 3
6 8   16 8 9 22 32 39 31 27 16
7 3   37 44 19 25
8 5   16 47 36 9 6 16
9 3   22 6 8 36
10 8   45 15 24 26 34 28 38 43 45
11 6   18 27 31 23 4 43 18
12 3   40 23 32 29
13 3   48 41 17 37
14 3   36 47 30 46
15 3   24 10 45 5
16 5   2 47 8 6 27 2
17 4   44 37 13 41 44
18 7   30 2 27 11 43 38 35 30
19 7   34 25 7 44 35 38 28 34
20 3   3 33 21 3
21 3   3 20 33 42
22 3   1 32 6 9
23 10   11 31 39 32 12 40 42 33 3 4 11
24 2   26 10 15
25 3   7 19 34 26
26 3   25 34 10 24
27 6   2 16 6 31 11 18 2
28 4   10 34 19 38 10
29 2   12 32 1
30 6   2 18 35 46 14 47 2
31 5   6 39 23 11 27 6
32 7   6 22 1 29 12 23 39 6
33 5   3 23 42 21 20 3
34 5   10 26 25 19 28 10
35 7   18 38 19 44 41 46 30 18
36 3   9 8 47 14
37 3   13 17 44 7
38 6   18 43 10 28 19 35 18
39 4   6 32 23 31 6
40 2   42 23 12
41 6   35 44 17 13 48 46 35
42 3   21 33 23 40
43 6   18 11 4 45 10 38 18
44 6   19 7 37 17 41 35 19
45 6   4 3 5 15 10 43 4
46 4   14 30 35 41 48
47 6   2 30 14 36 8 16 2
48 2   46 41 13

RADII:
2.476353123e-02   6.364371925e-02   9.729945999e-02   7.368913569e-02
6.541688024e-02   1.055416486e-01   1.212336897e-01   6.702623531e-02
1.131333995e-01   1.440053446e-01   9.180544354e-02   7.211745123e-02
4.900159538e-02   1.415517260e-01   9.816740874e-02   5.542823745e-02
2.690600937e-02   1.296925943e-01   1.222347352e-01   8.721867083e-03
5.368834672e-02   6.556599369e-02   1.541330951e-01   9.196474503e-02
1.290499795e-01   1.366594443e-01   7.816998485e-02   4.382940338e-02
4.441305418e-02   1.253552290e-01   5.634566446e-02   7.735541259e-02
3.976785965e-02   7.252001191e-02   1.517807695e-01   1.393148238e-01
6.232540321e-02   1.060734097e-01   3.636656668e-02   6.958438639e-02
7.440779931e-02   1.196965126e-01   1.034574984e-01   8.081491057e-02
9.339357901e-02   2.455596319e-01   9.130114509e-02   4.959807452e-02


CENTERS:
-4.6854654084e-01 3.6660531175e-01  -7.8461970580e-03 1.9317703625e-01
-4.7130834603e-01 -2.1063283337e-01  -3.1825799357e-01 -1.3439183742e-01
-4.4558422821e-01 -3.7130292125e-01  -2.5370378244e-01 2.9743782794e-01
4.6953116607e-01 -4.5326913764e-01  -1.1218963982e-01 3.9619724261e-01
-2.4674188944e-01 5.1600202605e-01  -1.0015290400e-01 -4.2367357966e-01
-2.2149799908e-01 -1.3104931809e-04  -5.7983495748e-01 2.3505784426e-01
5.9386754830e-01 -1.8792313708e-01  2.4834757864e-01 4.3818881238e-01
-3.3305600343e-01 -4.9003462817e-01  -9.4297378725e-02 2.7505697312e-01
5.2265085318e-01 -2.1419378224e-01  0.0000000000e+00 0.0000000000e+00
2.4644506693e-01 -3.5575264523e-01  -5.6816559777e-01 -1.6751445470e-01
-6.2187079378e-01 -1.9930732668e-01  -3.8678043477e-01 4.0499446348e-01
-4.6402441909e-01 4.0694193006e-02  -2.0821968165e-01 -6.3344358417e-01
2.7111470712e-01 -6.0582346858e-01  1.5761811595e-02 -6.7928363905e-01
-1.4315273284e-01 1.5071213254e-01  8.1701495004e-02 -3.7665368891e-01
-5.3313027673e-01 3.4181940797e-01  1.8069274658e-01 1.7999867639e-01
-2.7699146652e-01 1.3723425153e-01  -4.3457661943e-01 2.7030202454e-01
-5.7353316821e-01 -1.1932272527e-01  1.0580918138e-01 -4.9047814100e-01
2.6905876456e-01 -8.2671855902e-02  5.5511151231e-17 5.6937379238e-01
5.6160579279e-01 -2.9447303031e-01  5.6648694710e-02 -2.2885920132e-01
-3.5052941944e-01 1.9369421330e-01  -6.7070391368e-01 1.2632770315e-01
4.9255724497e-01 -1.1745256778e-01  -7.2006040237e-01 -5.6404876716e-02
-1.4728204895e-01 -1.8074004476e-01  4.2359072293e-01 -2.5651265731e-01
-3.0328044411e-01 -3.0080189290e-01  5.5121350878e-01 1.9709250014e-01
3.6446906790e-02 3.4165609853e-01  6.1378613614e-01 -9.1356347953e-02


END
    </circlepacking>
    <circlepacking name="mp3.p">
NODECOUNT:  48
GEOMETRY: euclidean
ALPHA/BETA/GAMMA:  18 0 36
PACKNAME: mp3.p
FLOWERS:

1 2   29 32 22
2 5   18 30 47 16 27 18
3 6   5 45 4 23 33 20 21
4 5   11 23 3 45 43 11
5 2   15 45 3
6 8   16 8 9 22 32 39 31 27 16
7 3   37 44 19 25
8 5   16 47 36 9 6 16
9 3   22 6 8 36
10 8   45 15 24 26 34 28 38 43 45
11 6   18 27 31 23 4 43 18
12 3   40 23 32 29
13 3   48 41 17 37
14 3   36 47 30 46
15 3   24 10 45 5
16 5   2 47 8 6 27 2
17 4   44 37 13 41 44
18 7   30 2 27 11 43 38 35 30
19 7   34 25 7 44 35 38 28 34
20 3   3 33 21 3
21 3   3 20 33 42
22 3   1 32 6 9
23 10   11 31 39 32 12 40 42 33 3 4 11
24 2   26 10 15
25 3   7 19 34 26
26 3   25 34 10 24
27 6   2 16 6 31 11 18 2
28 4   10 34 19 38 10
29 2   12 32 1
30 6   2 18 35 46 14 47 2
31 5   6 39 23 11 27 6
32 7   6 22 1 29 12 23 39 6
33 5   3 23 42 21 20 3
34 5   10 26 25 19 28 10
35 7   18 38 19 44 41 46 30 18
36 3   9 8 47 14
37 3   13 17 44 7
38 6   18 43 10 28 19 35 18
39 4   6 32 23 31 6
40 2   42 23 12
41 6   35 44 17 13 48 46 35
42 3   21 33 23 40
43 6   18 11 4 45 10 38 18
44 6   19 7 37 17 41 35 19
45 6   4 3 5 15 10 43 4
46 4   14 30 35 41 48
47 6   2 30 14 36 8 16 2
48 2   46 41 13

RADII:
2.476353123e-02   5.950106369e-02   9.729945999e-02   7.248256669e-02
6.541688024e-02   9.843813738e-02   1.212336897e-01   6.140473703e-02
1.018200596e-01   1.426024709e-01   8.874078926e-02   7.211745123e-02
4.900159538e-02   1.273965534e-01   9.816740874e-02   5.151720916e-02
2.665216952e-02   1.238740701e-01   1.204142655e-01   8.708841583e-03
5.368834672e-02   5.900939432e-02   1.516074306e-01   9.196474503e-02
1.290499795e-01   1.366594443e-01   7.394732109e-02   4.319057062e-02
4.441305418e-02   1.163073579e-01   5.391499010e-02   7.482964816e-02
3.962949240e-02   7.195163405e-02   1.453846735e-01   1.253833414e-01
6.232540321e-02   1.033660012e-01   3.488242343e-02   6.958438639e-02
7.255105241e-02   1.196965126e-01   1.010673999e-01   7.958741613e-02
9.260892083e-02   2.210036687e-01   8.380597407e-02   4.959807452e-02


CENTERS:
-4.3339735994e-01 3.6435808566e-01  -8.5011338609e-03 1.8317797471e-01
-4.6084666804e-01 -2.0388499616e-01  -3.0812673991e-01 -1.2970575287e-01
-4.3524979895e-01 -3.6457540555e-01  -2.3681953130e-01 2.8349238828e-01
4.7450355214e-01 -4.2427566740e-01  -1.0361822782e-01 3.7185050760e-01
-2.2290286307e-01 4.8326644015e-01  -9.1445648122e-02 -4.1412136255e-01
-2.1261478276e-01 1.8049177444e-04  -5.5407233577e-01 2.4213876655e-01
5.8173990039e-01 -1.5181324774e-01  2.2374337203e-01 4.0963403285e-01
-3.2220734040e-01 -4.8281762376e-01  -8.8729406347e-02 2.5991441456e-01
5.1291839433e-01 -1.8323127518e-01  0.0000000000e+00 0.0000000000e+00
2.4886089149e-01 -3.3779373905e-01  -5.5662129947e-01 -1.5844294541e-01
-6.1108770079e-01 -1.8888666784e-01  -3.5342136111e-01 3.8929285388e-01
-4.4879818133e-01 4.4730116350e-02  -1.9533445614e-01 -6.2442802993e-01
2.8261499358e-01 -5.8496386287e-01  2.9509792675e-02 -6.6582952413e-01
-1.3597147790e-01 1.4368388919e-01  8.7250329740e-02 -3.6326075147e-01
-4.9990040327e-01 3.4531221479e-01  1.6699060347e-01 1.7263040494e-01
-2.6342602368e-01 1.3348048870e-01  -4.0936680913e-01 2.6770750879e-01
-5.6078920088e-01 -1.1028463221e-01  1.1423184110e-01 -4.7519700717e-01
2.5939717629e-01 -7.2203711595e-02  5.5511151231e-17 5.2726302030e-01
5.5720683362e-01 -2.6040343722e-01  5.8922414335e-02 -2.1946799105e-01
-3.3189109983e-01 1.9002705357e-01  -6.4960399299e-01 1.3748164423e-01
4.7652562403e-01 -9.0944518218e-02  -7.0539219498e-01 -4.3391060293e-02
-1.4072385183e-01 -1.7548635975e-01  4.1827103782e-01 -2.3148816552e-01
-2.9377354371e-01 -2.9417211724e-01  5.0307185927e-01 2.0140744719e-01
3.2237312808e-02 3.2057261083e-01  5.9290536153e-01 -5.3847808006e-02


END
    </circlepacking>
    <circlepacking name="ad1.p">
NODECOUNT:  48
GEOMETRY: hyperbolic
ALPHA/BETA/GAMMA:  18 0 36
PACKNAME: mp1.p
FLOWERS:

1 2   29 32 22
2 5   18 30 47 16 27 18
3 6   5 45 4 23 33 20 21
4 5   11 23 3 45 43 11
5 2   15 45 3
6 8   16 8 9 22 32 39 31 27 16
7 3   37 44 19 25
8 5   16 47 36 9 6 16
9 3   22 6 8 36
10 8   45 15 24 26 34 28 38 43 45
11 6   18 27 31 23 4 43 18
12 3   40 23 32 29
13 3   48 41 17 37
14 3   36 47 30 46
15 3   24 10 45 5
16 5   2 47 8 6 27 2
17 4   44 37 13 41 44
18 7   30 2 27 11 43 38 35 30
19 7   34 25 7 44 35 38 28 34
20 3   3 33 21 3
21 3   3 20 33 42
22 3   1 32 6 9
23 10   11 31 39 32 12 40 42 33 3 4 11
24 2   26 10 15
25 3   7 19 34 26
26 3   25 34 10 24
27 6   2 16 6 31 11 18 2
28 4   10 34 19 38 10
29 2   12 32 1
30 6   2 18 35 46 14 47 2
31 5   6 39 23 11 27 6
32 7   6 22 1 29 12 23 39 6
33 5   3 23 42 21 20 3
34 5   10 26 25 19 28 10
35 7   18 38 19 44 41 46 30 18
36 3   9 8 47 14
37 3   13 17 44 7
38 6   18 43 10 28 19 35 18
39 4   6 32 23 31 6
40 2   42 23 12
41 6   35 44 17 13 48 46 35
42 3   21 33 23 40
43 6   18 11 4 45 10 38 18
44 6   19 7 37 17 41 35 19
45 6   4 3 5 15 10 43 4
46 4   14 30 35 41 48
47 6   2 30 14 36 8 16 2
48 2   46 41 13

RADII:
2.000000000e+00   1.987414906e-01   2.000000000e+00   3.051090219e-01
2.000000000e+00   5.071655141e-01   2.000000000e+00   3.064840362e-01
2.000000000e+00   6.135240628e-01   2.962305873e-01   2.000000000e+00
2.000000000e+00   2.000000000e+00   2.000000000e+00   1.982276512e-01
2.373537980e-01   3.681133305e-01   4.810965548e-01   8.830740043e-02
2.000000000e+00   2.000000000e+00   7.937018962e-01   2.000000000e+00
2.000000000e+00   2.000000000e+00   2.515181269e-01   1.524748010e-01
2.000000000e+00   4.068620865e-01   2.056297183e-01   6.440922836e-01
3.125651934e-01   3.111501473e-01   4.956581448e-01   -1.911343837e-01
2.000000000e+00   3.200009377e-01   1.645405908e-01   2.000000000e+00
4.818908029e-01   2.000000000e+00   3.351763675e-01   4.404301133e-01
4.948978330e-01   2.000000000e+00   3.594930279e-01   2.000000000e+00


CENTERS:
-8.1737829838e-01 5.4265491578e-01  -1.3364476533e-02 2.7575058035e-01
-8.3996959386e-01 -4.1528079307e-01  -4.5829466092e-01 -2.2018205821e-01
-6.6342033751e-01 -6.9996161981e-01  -3.9746480335e-01 4.4512359768e-01
6.7868765350e-01 -6.7247221787e-01  -1.6520006433e-01 5.7873598638e-01
-3.9938853246e-01 8.5891314512e-01  -9.6763949398e-02 -6.1883003049e-01
-3.2020620448e-01 -1.3025565103e-02  -9.3066993684e-01 2.7256833903e-01
9.3196462355e-01 -2.7541623048e-01  4.8086158493e-01 7.8016920464e-01
-4.2068391235e-01 -8.5588426654e-01  -1.3993409436e-01 3.9559020260e-01
7.3757190515e-01 -2.9653668864e-01  0.0000000000e+00 0.0000000000e+00
3.5617715070e-01 -4.8271970681e-01  -8.4406996079e-01 -1.9885255974e-01
-9.5950903068e-01 -2.1046842175e-01  -6.7552207179e-01 6.8107291153e-01
-7.0252188327e-01 3.5303773266e-02  -1.5987463840e-01 -9.5356024949e-01
4.1652080833e-01 -8.5818652795e-01  1.1123599185e-01 -9.4966284322e-01
-2.1178032802e-01 2.1286341834e-01  1.3754382082e-01 -5.0432110023e-01
-8.8339673806e-01 4.3017647950e-01  2.6087722614e-01 2.6123952553e-01
-4.0646549197e-01 1.8387948737e-01  -6.9064847613e-01 3.7798855334e-01
-8.3033631766e-01 -1.4660223719e-01  1.7884222142e-01 -6.4634609218e-01
3.9087428047e-01 -1.1305611731e-01  1.1102230246e-16 1.0000000000e+00
8.4786307100e-01 -4.6916608602e-01  9.3079566599e-02 -3.1774177439e-01
-5.1999937510e-01 2.5810870994e-01  -9.7388036903e-01 9.5367501234e-02
7.0950510518e-01 -1.4541943278e-01  -9.7443849313e-01 -6.5284243065e-02
-1.9962157200e-01 -2.7254849764e-01  5.9861707923e-01 -3.5443561143e-01
-4.1919495380e-01 -4.8810959512e-01  8.5688564756e-01 2.9358037643e-01
5.5320652375e-02 5.0030870183e-01  9.6689445291e-01 -6.8031525629e-02


END
    </circlepacking>
  </CPdata>
</CP_Scriptfile>

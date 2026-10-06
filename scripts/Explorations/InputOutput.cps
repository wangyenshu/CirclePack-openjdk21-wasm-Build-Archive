<?xml version="1.0"?>
<CP_Scriptfile date="Jul 8, 2022">
<CPscript title="CirclePack Input/Output Examples" >
<description>This script discusses input/output functionality for CirclePack: packings; screen shots; postscript; scripts and editing; included data; "AboutImage"; tailored 'output'; "Help"; sockets; etc. Some actions can be demonstrated, but most are for user trial and error.</description>
<cmd name="*" mnemonic="*" iconname="apollon.png">act 0;Cleanse;Map -x;infile_read ball.p;color -c d;Disp -w -cf;act 1;infile_read twpent5.p;color -c d;Disp -w -cf;act 2;infile_read Owl.p;layout;set_screen -a;disp -wr </cmd>
<Section title="Quick and Dirty">
<text> CirclePack should start from the Desktop on most computers with a double click. Press the "www" icon to open its rudimentary browser; navigate to a site with prepared CirclePack scripts ("*.xmd" files); click on a script file to load it; watch the action while clicking the "NEXT" button; modify the script and/or enter commands on one of the "Commands:" lines; save results, print images --- share with your friends! </text>
</Section>
<Section title="Levels of Usage --- Your Choice!">
<text> Familiarity with "CirclePack" is needed if you want to get the full flavor of the material in Chapter 6 in "Explorations of Complex Analysis". However, the level of usage is variable:

(1) Simply load a prepared script and observe as you click through with the "NEXT" button. (It is helpful to read the text commentary as you go.) A few scripts are interactive, but most display some action for those simply observing.

(2) Open the "Script" window, follow the text and open command icons (with their little "+" signs) to see what's entailed. Optional commands, suggested changes (drag/drop the green "e" icon for editing), or required intervention may be involved to see the action. In addition to "Commands:" lines, you can add commands to the script or even start whole new scripts. 

(3) Open the "CirclePack" Advanced frame. CirclePack maintains up to three packings; there are some predefined command icons to drop on the canvasses (icons just below the three small packing images). Try some of them out!! The worst that can happen is that you have to restart CirclePack.

(4) Ambitious? Learn some Java and dig into CirclePack code ---- CirclePack is open source. In particular, there's a "PackExtender" class where you can build your own code with access to CirclePack functionality.

How deeply you dig is totally up to you. I've tried to make things accessible, but there are always hurdles --- you have to decide how far to go.

Enjoy! </text>
</Section>
<Section title="Commands and the 'Help' Frame">
<text> There is no manual for CirclePack (humble apologies). Essential information, however, is available in the various tabs of the "Help" Window. 

Of first importance is the "Command Details" tab, an alphabetic listing of the commands, their flags and options, descriptions and examples. The commands are unix-style: a command word, such as 'set_rad' (for setting radii), followed by one or more strings of flags and/or data: 'set_rad 1.0 b' sets the radii of boundary circles to 1.0. 'set_aim .5 2 13 24 3' sets the aim to 0.5 (meaning, 0.5*pi) for vertices 2  13  24  3. 

Open the following command icon (use the '+' box) BEFORE you execute it. Read the semi-colon separated string of commands and guess what's about to happen. </text>
<cmd iconname="kuickshow.png">act 2;geom_to_e;set_aim 1.0 b;set_aim .5 31 67 53 34;repack;layout;scale .5;Disp -w -c -e b; </cmd>
<text> Some commands are admittedly complicated and their use takes planning: the next command sets us up for the command 'adjoin 0 1 32 23 5'. Let me explain the meaning and then you can watch it in action. This command will attach packings p0 and p1 by first identifying the boundary vertex 32 in p0 with boundary vertex 23 in p1 and then identifying 5 successive circles, clockwise around p0 and counterclockwise around p1; the resulting new packing replaces p0. Of course, you always have various other commands, repacking, displaying, etc.Try it out. </text>
<cmd iconname="format_increaseindent.png">act 0;cleanse;cleanse -p1;infile_read small.p;Disp -w -c -cfc190 32 37 36 30 35 34 ;act 1;create hex 3;scale .4;Disp -w -c -cfc190 b(23 28);Map 0 1 </cmd>
<cmd iconname="mozilla.png">act 0;adjoin 0 1 32 23 5;repack;layout;disp -wr </cmd>
<text> Among the more difficult, but essential commands are those that deal with lists. For example, 'set_vlist 12 32 b(14 22)' establishes a list of vertices that is attached to the active packing: the list contains 12, 32, and the boundary vertices starting at 14 and going counterclockwise through 22. If you now execute 'disp -w -c -cf vlist', the screen will be cleared, all circles will be redrawn and the circles of 'vlist' will be drawn as filled discs ('-cf'). The tab "List Specs" explains the syntax for creating such lists of face, edges, vertices, and dual edges and gives some examples.

There is a "MyNotes" tab. You are free to write any notes to yourself --- perhaps details of some command you want to remember. This file should be saved automatically to the subdirectory 'myCirclePack' in your home directory. (This is a rather new feature, so I hope it works for you.) </text>
</Section>
<Section title="Creating, Reading, and Writing Packings">
<cmd iconname="amarok.png">act 0;infile_read color-wheel.p; </cmd>
<text> The "CirclePack" advanced frame shows that CirclePack can manage up to three circle packings at once. It shows one in the "Active Packing" window, or two side-by-side in the "Mapping Window". Commands typically apply to the "active" pack; in the "Mapping Window" this will have the green border.

Where do circle packings come from? (1) Drag the 'seed' or 'random_packing' icon (below the first of three small packing windows) and drop it on a canvas; (2) Use the 'create' command (for command details, see "Help"). </text>
<cmd iconname="editdelete.png">act 0;cleanse;seed;Disp -w -c;act 1;create sq_grid 3;Disp -w -c;Map 0 1; </cmd>
<text> (3) Menu button 'File --> Load Packing' brings up a dialog box; (4) 'read {filename}' for file in the current packing directory; (5) 'infile_read {filename}' for a file stored in the data section of the current script (see the "Script" frame); (6) Click 'filename.p' link in the CirclePack browser (see 'www' icon).

How do you write (i.e., save) a packing to a file? (1) By default, saves capture the combinatorics, radii, and centers; other options can be added (see 'write' in "Help"); (2) Menu button 'Save --> Save Packing' brings up option checkboxes, then a dialog box; (3) 'write -s {name.p}' saves to the current packing directory (see "Configure" information later). If you want to try out these methods you might run through "Menagerie.xmd" and save the files for later use as examples. </text>
</Section>
<Section title="Images, Screen Shots, 'AboutImage'">
<text> CirclePack lets you capture packing images in two main ways: Easiest is the "Screendump" icon on the canvasses --- the small green camera. This captures exactly what is visible on the canvas. (In the "Mapping Window" menu bar is a "Screendump" button, which captures both canvasses, side-by-side.) (The resolution of the jpg is taken from the screen resolution, so for high quality images, increase this with 'chgS' and/or 'chgP' commands.) You can issue a 'screendump' 
command as well.

Screendumps are also convenient because you can peruse the thumbnails via 'Screen --> Screen Shots'. You can also see/change the directory and base-name (e.g., for gathering sequential images for a movie). 

The following command captures a sequence of images of 'Owl' as it becomes maximal; wait for it to finish, then look at the thumbnails. </text>
<cmd iconname="bookmark_add.png">act 0;cleanse;infile_read Owl.p;Disp -w -c -cfc5 21 22;FOR (1,20,1) -d .35 adjust_rad 1.15 b;repack;layout;disp -wr;screendump; </cmd>
<text> An alternative is the 'post' command, which creates/saves PostScript images. See "Help" for details; aside from the commands for opening the output file, the 'post' options largely parallel those of 'disp'.

With PostScript you don't need to display an image to save it and you can manipulate the resulting file in a text editor (PostScript isn't that hard to use). Also, the format is scalable and higher quality. On the down side, PostScript does not
handle transparency. 

Using the 'post' command and its options can be a bit difficult. The next command is an example; look up the resulting file and see how it came out. </text>
<cmd iconname="netbeans.png">post -o examplePS.ps -c -cfc5 21 22 -f -x </cmd>
<text> While you have the Owl on the screen, let's try one other operation: click the green camera icon to get a screen shot, open the "Screen --> Screen Shot" window, click the right button on one of the thumbnails, choose the "Set as 'About'" option, then confirm. Your chosen image will now appear in the "About" window which you open with "File --> About current script" and will be saved with the script. (You can in fact put any jpg you would like here by editing the top title area of the script.) </text>
</Section>
<Section title="CirclePack Browser">
<text> CirclePack has a rudimentary browser that can be opened by clicking the
"www" icon, which is in the "Advanced" window or the "Script" if it is
open. The browser will navigate to web sites using the usual url specifications or to local files or directories using the syntax appropriate to your system, for example, "file:/C/users/daha/myFile.html" on the PC. Clicking links to files with extension ".xmd" will load them into the script window. Thus the browser can be a handy alternative to the file chooser method in the "Script" window toolbar. Likewise, clicking links to files with extension ".p" will give you the option to load them as packings into the active pack. </text>
</Section>
<Section title="Loading, Saving, Editing Scripts">
<text> You wouldn't be reading this if you didn't already know about scripts. They are the best route  --- perhaps the only route --- to truly independent experiments. When you start a project, immediately start a script. Put your trial commands there, rerun, adjust, save frequently, include packings and other data, refine, add some text to remind yourself of what is going on, share it with a colleague.

Open the "Script" window. At the top is a box with icons for editing and adding command, text, or section items. It's not your usual editor, but once you get the hang of it, it is fairly convenient. You can equally well use you favorite editor; scripts are ascii files with straightforward XML encoding. Just keep loading the latest version into CirclePack to try it out. </text>
</Section>
<Section title="Tailored 'output'">
<text> In addition to the data normally stored in packing files, you may wish to save selected data or data formated for some particular use. The "Save --> Output" window has four data lines: "Prefix (text)", "Data codes" (selected from a pulldown list), "Object list" for which objects to use, and "Suffix (text)". You can use "\n" ('\n' without the quotes in the text areas) for line feeds. See the 'output' command for more details. The next command loads Owl and saves its euclidean outer boundary as a matrix X of (x y) entries to a file formated for Matlab reading. </text>
<cmd iconname="icq_dnd.png">act 2;infile_read Owl.p;set_screen -d;geom_to_e;disp -wr;disp -ec195t4 b;output X=[ \n:: VZ "\n"::b:: ] -f testOutput.m </cmd>
<text> Neither the 'output' command syntax nor the "Output" window are easy to use, but they can be very valuable and worth the effort to learn. </text>
</Section>
<Section title="Configure">
<text> Configuration settings are minimal and self-explanatory: pop open the "Configuration" window. Settings are saved in a subdirectory "myCirclePack" under your home directory. Print commands can be specified so, for example, screendumps can be printed from "Screen --> Screen Shots". </text>
</Section>
<Section title="Sockets">
<text> CirclePack can act as a socketserver for multiple external clients. See the command 'socketServer' in "Help". The query '?socket' will show (in "Messages") whether a socket already exists. CirclePack monitors the socket for incoming commands from clients, returning "cmd result: ...". Clients can also exchange packing files. </text>
</Section>
  </CPscript>
<CPdata>
    <AboutImage name="AboutImage.jpg">
/9j/4AAQSkZJRgABAgAAAQABAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCADIAMgDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD3+iiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKTIJIyMjqKAFooooAKKKKACiikLAEAkZPQUALRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFZj+IdHR2VtSthtOGbzBtU+hboD9TQBXSNtemlkmd102N2jjhRivnlThmcjkrkEBehwSc5AE58N6JtAGk2SY6MkCqy+4IGQfcVU0jUraw8Jaa80mWWBItifMzyKNrKAOp3A1IkuvsPtP2e02N0tHYq6j/fGRn2xj3qXJLQ0jSlJc2y8yS3afS9RisZpnmtLjItpJDudHAJMbH+LgEgnn5SCemdeuS17XittaxtZyW999riMa3J2R53cnzBkY25z3x2rWSwv5YxKdeuPMYZxFDEIvwBUtj/AIET70009hTpyh8SNeiufOs3wuf7I8uH+1j8wfB8ryv+e2M5xnjbnO7Azg7qsvY6hFGZRr0/mAZ/fQxGL8QFDY/4Fn3pkCXDT6pqEtjDM8Npb4FxJGdru5AIjU9VAUgkjn5gARzUg8N6JtIOk2Lk9WeBWLH1JIyT7msXQNdLWl1GtnJc3xu5jItsd8fLEqfMOBjbtx3x2rTeXX1H2n7Pa7F62iMS7D2c4GfbGPep510NvYT+1p66f1+QPE2gzxSQyO2myyLFJE7FvIZjhWUnnbkgFegyCMYIO3WBq2pWt94U1GSJ/vQtFsb5WSRhtVSD0O4irieIdHkdVXUbY7iArbxtYnsG6E/Q1Sd9jKUXF2e5p0UUUCCiiigAooooAKKKKACiiigAooooAKKKKAMnVwbu5stMLFYrgu8+DjdGgGVz7llB9s0+9vUsBDZWdsJbh1xDAg2qqjjJPRVHH9Kqa9deXcW/2GN7nU7Y+alvGudyEFSrt0QEZwSeqjrgisux8S2R1TULy7iu4phGFSE27MUjTO4llBT75YE7sDA5qZPojWlFaylsiO002fw1riyJbW91DNbyTtHHiL7Owcb/ACgTtCnzBkEjoTnsZJPiZ4fETtbrfXbrxsgtWYE+gfhD+DYri9X1STxVqA1C5jkiswmy3tHPRM53SDoWJAOOgwO4zUdexhsqcoqVR2MalZyd2dA3i3SbrU7HVdTuvJ8qUxm2mhkSOGJ1KklmUKzbihJ7AHHct2Q0DTz+8tjNbo/OLWdo0PvhTivLSMjB6VVMn9l206gzvpsibJrZZ3VIlPWREBxkDORjB6jnqsTlXJHmg72CnXnHSLsde11pP/CXL/xMrj7GqmyNx9rfInJzt35+7wF6/eOO1dadA09f3l0ZrhE+bF1O0iLjvhjiraw6cNHESpbf2b5O0LgeV5WPy24/DFeMb/7TtrdSZ106KMJDbNO7JKB0kdCcZPUDHHU89ODD4R158sUbSxNVL4mdWni7SbXUb3VNMuvP82XYLaKGRo5okVVBDKpVWyGIPcEZ7FdeP4meHzEjXAvrV242T2rLg+hf7g/FsVw+MDAor1/7Ihb4nc5faM7O602fxJrzu9tb2scFvFcJHJiX7QxdthlAO0geWcAE4yDnsOksr1dQWayvLYRXCLiaBxuVlORkHoynB/rXlmj6pJ4Vv21C3jklsymy5tEPVASd0Y6BgSTjocnuc12t74msl1WwvLWK7lnMZV4BbspeN/uEMwCffAAO7BycGvHxWGnhp2kddKftVyPfp/kbmkK1pPeaduLQ27q0GTkrGwyFz7EMB7YrVrB0C78ye4+2xvb6nct5z28i42oAFCo3RwBjJB6semQK3qyMQooooAKKKKACiiigAooooAKKKKACiiigDC0+RotL1aZADeLc3DSZ67gT5ef+2Yjx7YrlvGCW8PgrRII5tsk8scanPMiMjNKp9Qyg5/Cuj1azlvdZ8jTZ3srryle6uUAYeWSQqlCCrMcNgn7oB9cHjdX0S7TwjBqwuTdi1ZTItwBut4kba3lkYAUDJIIycZLcAVVK3to823/BNf8Aly/VfkzKooor7M4QoooJAGScAUAZ+Lb/AIQj7B9n1PzTqH2PeHb7J5W7G3ZnZnyx/dzu5zWh0rPL2g8E/ajqV59pGofa/s2/9wI927rjbny+cZzu4xmtAEEZHSvLyzk/ecvf8Ohc+gUUUV6hAV0nhBIJvA+tQyS7pLeWRCc8xqiBogPQKu3H41zdauk6LeS+EZNUa7NqLpmMSwAbp4nbaokJyCpBBAAyM5DckV4+c29ku/8AwDpwl3Wil3X5nc6g/m6fpUzjF21zbmPb1ySPMx/2z8zPtmtyud0m0ls9ZMGpTve3flM9rdOAo8sEBlCD5VIyuSPvAj0wOirwkNu70CiiigQUUUUAFFFFABRRVHVL2Szt41gRZLqdxDAjHALEE5PsACx9ge9AF6islPD9nKA+pKNRnP3nuhvUH/ZQ/Ko+gz6k9aZPpTaahudFUxMnJsw2IZR3UL0Q+hGOeuRQBs0VBa3cN3Zw3UTZimRXQnjIIyKnoAyLsyadq7X/AJMk1tPCsU3lIXaIoWKttHLA7yDjkYHGCSOX1fUUjW70rTgZbTUI280XMUkUduGYK53FCMHceOcH2zXf1kalazJfC8htftcTwmC4twVDMucgruIBxlgQSMg+2CmrmlOfLo9U9/67nl2qaddeGLlLfUEjS0lJ+yzpIZECj+B2IGGHYkcjuTmm11k9lf3OpJZpa3iadbJ9oFrNdKsrghkKqykkLgngsD24HXN13wt4fg0Sx1nTWn02zeWJJgkzqqxOwBcLkgMvXPTGSc8Y9bDZs4R5KqvYiph7Lmi7oxSQBk8CqqQy6xE8kdvO+jQSL9uu41BUx7l3qvOT8hJLAHA9zx0Wi+H/AAjf+L7my+3LqtutuklvFPcGVJGJIcYztcKAh6cbz1xxtx6Zc3GqapomkXaQ6IyAXT7fMeKVgQ0cTE4B27TyCF3cdcB4nNHUjy01a5koW3OuEVmNOESpB9i8raECjy/Lx0x024/DFeKyQyaPGkklvOmjzu32G7kUBQmWKK3OR8oBDHGR7jn1A+CNGa2aAi8KM24r9slCFuufL3bOvONuPasyTTbqDVtL0XVrtJtEWNhavgxySyqAFilYHDfIXPAG7acjjngw+InQnzRLaucWCCMjpRWxrOgeEbHxfbWX25dKtmtnluIoLkxJG4ICDGdqBgXPT/lmOmeXaF4X8PzaHe6zqTXGpWayypCHmdlaJHKhyuQCzYznpjGAOc+t/bEOW/K7kKk5OyMfS9Nu/E9w9vp8cb2cRH2qd5DGhU/wIwByT3IHA7g4rqdI1FJFtNL1EGK106NfLFvHJLHcBWKo24IOBsHHGT7Ypbawv7bUZrR7W8fT7lRcG1hulaVAAsYVmYglcKOAx9OR06jTbedrx7ua1FpEsKwQW5KllUEkltpIGeAACcAdecDx8TiJ4mfNLbsdUVGgtHeX5f8AB/ISzaXUNWW/8mSG1hheGLzUKNKXKlm2nlQNgAzgnJ4xjOvRRWRiFFQXV5DZ2c91K37qFGdyOeAMn8azYdJbUVFxrS+a78i0LZhiH90r0c+pOeemBQBs0Vkv4fs4hv01Rp04+61sNqk/7SD5WH1GfQjrVnTL17y3cTosd1BIYp0U5AcAHI9iCGHsRQBdooooAKytRIj1rSZZP9WWliHoHZcqfyVh+PvWrVXUobWfT5kvGCwBdzOW27Mc7g3YjGc9sZoAh1u6ms9Kllt2CzEqkZIzhmYKOPxqAprsC5FzYXCj/npE0R/MEj9KwLrUNalhtIpNPNzbNdRmCZ2WGacL84BjPA4XqSv+6Knhurvxdc3Om3KfYbGGJftcEcpMzsxYeWxwNgwpJ25yGXDYPMWu2dHNyU46LW/T0/4JQ8PxR3ml/b7jQl1KOeWV0kLJJ5aGRvkVHxtA6YHXGTV2y8QWmmarPp1tbXbQtGksVqVCNC2WDqodhxwpCrnqcUuu6bc+HdNmvtCvp7cNIvnRTP5yEsQu/MmSpBIJwcEA8Z5qp4j8MQ6do19qcWpXa3bBGu55SJPPUEfwkYVgCduwDBNOzWzJ56cvijb0/wCDf9DtoLmG4t0nikDRugdWHdSMg/lWbL4l0sQu0F1HcSADy4omBaUkhQE7HJIGenPJrkdY0KHT/DE/2YaatssWLW6hiPnzbhhYxsxuLcL33A9KZfwa1dwWFzLpWsMLeZZ5WaWI4A4PlIpDA4JIJUHtjng5n2D2UFvNfibGvWOrXCWs76hFb3sr/ZooreLICyffVmY5YADOQF+6OBTNGtLrU9Xey1tYGTSY4jFbRQlYTIdwWQbiS2FUYz0LHjIzWtp9vpUiR6rFqEtzHEGKyz3JZY+xyD90joc8ishNR1C41+41nSNNu7y1aOO22/JGk6KWbzEZ2HQuwBAIIB55BAk73Yqko8qhE6jU9KstYsXs7+2jngfqrjOD2I9COxFZfg2BLbQWtw0bSRXdzHI0aBQSsrKOBwOAOKqah4tuoyLODSbi1vpZEijN+UWPLsFyNrHzMZyQvp1FQpZ3Pgzy7iO7e/t7qTF2k3lxHzNrMZVPAydvIY88HIxzRkdjXP8AjKBLrQkt2aNXlu7eONnQOAWlVScHg/KW4NN/4TXSPsv2jbf+X/eFhMV/77Cbce+ce9Z7W1x42R7k3b2Fray/6IkXlyMZAARKx+YcZ+UKfU5ORgA6bTNLstHsUs7C2jggT+FBjJ7k+pPcnmuY1izu9O1dbHRBAkerRSmS2lhLQh12hpPlIK5VjnHUqOMtmrOn+LLqQm0n0m4ur2N3jkNgUePKMVydzDZnGQG7HqaqnUdQtvENvrOsabd2dqI5LXb8kkdujFW8x2RjjJQAkgAAjngkgJ21RJoNjq1vHczpqEVzexv9nliuIsArH91VZTlQQd2SG+8eDWzF4l0toUee6jt5CD5kUrANEQSpD9hggjPTjg1DqFtpUaSarLqEttHKFLSQ3JVZOMLgD7xPAGOTxXKWEGtWltfXEWlawouJmniZZYhkNwPNRiWJwBkhSe2OOYXMlax0TVKcubmtfyPQri6htbaS4mkVIo0MjMeygZJ/KuUvNftdT1eHTrm1u1hWJ5ZLbaHaZsqFVghbjBYlWx2zWVo+hQah4XtzdDTWtWhH2q6mi/fxbRhoyXztK8rnjaB0q34b8Lxahothqkup3Zu1RmtZ4ysfkKx/ugYZiMbt4OSKd29hctOGsnf0/wCG/AZ4gijs9M/tC30JdMjgmhd5AyR+YgkX5HRM7genPTqK6fZrs4ybmwt1PP7uJpT+ZIH6VjaHptz4j0yC/wBdvp7gByYYoX8lFKkrvzHgsSQSMnABHGeaWa6vPCdzbaZbR/b7GWJvskDykToVKjy1ODvGGBG7GAGy2BRy92L2qXwxS/H87m/ol3LeaTDNcMDN8yOQMZZWKn+VRacRJrGqyxj92JI4iexdUyT+TKPwx2rnbW/1mKC6hSwa1tUupDPOjCaaAMd+BGODw3UFv9011unQWtvp8KWZDW5Xcjht2/PO7PcnOc985ojsKukqkrbFqiiiqMgrK8RYGjs7/wCpSaF5vTy1kUvn22g59s1q0hAIIIyDQBlavFcM9le20YnFq5kaEHBcFSvyn1GTx3rBGsyv4puLvRbKW/RrWCO5hRRH8waT+NsKHUEZUnJDDpit4aDFEvl2t7e21v8A88IpRsA9FyCVHspAHasnQ9IeDQNPvtLfZevAr3CSOSs7nlg5OTu3E/N1HvUu6d0bRcZxUJaNbP8AR/5/0oNSvp/EOpW/h690+50y1nJkkM5UvOEw2xCu5ME9fmzhTwM5qnqkGlaH4m0211fUpJNHkt5CkGoXBeKKVWQIWLHkEFsbs4K8Hpi94rvZpvD863ejzxyxskkDiQFBKGGwblO5cnC5AzzVjQ5NB0tAGvAdQdcTXF6WWaQ+mZOdvoucCjnQewqbpX9NfyKGjWeg3fjiS90qK2a2htd0UkCL5TTFirtGRwSF2g44+b1zXcVzevaclojeItLSKLULVC7sBhZ4uC6vjrwuQeoKjtkETxJqFz50VloE9zNFlTKtxGLcuOCBITk4PBwvHQ81RiUrnw9YX/jiZJbG0e3EMN7PuiUu0u51XJIztITOPVB6nPY1x+k3E1j4oZtThuIrrVIQjSSqPL3xliqIVZgAVdsAnPyE967CgCnqem2urWMlpdx7o3wQQcMjDkMp7MDyCOhFcz4esLjVrmSbWrma9GmzG3hjuFTb5ycNMAqjOcgLnOOfWuunnitoJJ55FjijUu7ucBQOSSfSuU8I6zHNdXltMZI5LyV762WWFo90bH7o3AZK4BOM/eFAHX4rj/Edjc6ZcRzaNdT2X9pTC3mSBU2+c/CzEMp6AHOME8c8V2Fcj4u1iO3u7GCLzHks5lvrlYoWk2xLxtO0HBbJIz/dNAHR6bptrpNjHaWkeyNOSScszHksx6lickk9Sat1HBNFcwRzwyLJFIodHQ5DA8gg9xUlAHHWvh6w0/xxCkVjaJb+TLeQFYlDCXcqsAQM4G8n6yewrsa4/Vria/8AE4fS4bia60uEoskSjy98hBdHLMoI2omQDkbge1XJPEmoWxhivNAntppSFWVriM24c9AZASRnoMryeBzQBmaxZ6BZ+OEvdVitVtprXdLJOi+UswYKjOTxkqCBnj5fXFV9Lt9K1zxLqdrpGpSR6NHbxl4LC4KRSyszhypU8AALnbjJbnvna0DT0u408RamsMt/dosiPjKwRclFTPThsk9SWPbAEeuSaDqinbeAagi4huLIs0sZ9Mx87T3XODSbS3LhTnP4Vcq6bfT+HtQuPD9lYXGp21uQ8fkFQ8AfLbHLbUwD0+bOCOOM03+2Zk8VQXetWUtgq2s0dtC6iT5i0f8AGuVLsBwo5AU+tSeFL2aHw7brZ6PPJLIWkncyKqGUsd/zMdzYORkjPFS61pDXGh319qshe8WEvAsTELAw5UJjB3bgOep9qXNfY0VJR1qfd1/4HzNfSIbhWvL25jEH2qQSiEnJQBQvzH1OM+1L4e2nRkeMYheWZ4fTy2kYpj22lce2KadBilXy7q9vbq3/AOeE0o2EejYALD2YkHvmtYAAYHSmlZGc588rhRRRTICiiigArJOn3tnPLLpk8IilcyPbTqSoY8kqw5XJySMEZ54yc61FAGBfaHeazbumpXcQwpMMUCHZHJ/C7EnLlTyOgz2JAIsW2qWl4n2TUBFb3gH721mI/Ern7y+hH6HIrXqKe2guk2XEMcyZztkUMPyNAbHE69DYyWz6fok8qi5lS1uvs0mYIkkYI24dA2G4C4PfpzW/DcX+kwpBPpyyW0ShVexHCqOB+7PI/AmtC+0+O60ySzjIgBAMbIo/dsCCrAexAP4VTi16C3URawyafcrwxmbbE59Uc8Ee3UdwKnl7G3tm/jV/z+/cfK+meJNNntFnEiOuGCnbJG3Y46qwOCD1BArB0XUPEN9p9mdOuba8jMKGae8iIAcgblV0I3kHj7vsWyDTvE15aX+lXU+kwpc3cMLOt9HkJAACd3mD7xH90E++BzWpbafqOiWsVvpzxXVnCoRLeUCNkUdArgYP4j8aLtbhyU5fA7eT/wA/87GTqmneIpTDPqBg1C3huI5WtrMmEbVYE/I2fMPfBcDgfLmnavqNl4ojsrHS42ubkzLcLJIkkKwKhwzlsAg87cDnJ7ckdNp18uo2YnWN4zuZGR8ZVlJUjjjqDWLpSw2vjjW7dSQ00EE6KenV94X/AIEQx93HrTTvqZSi4txe6HDw/rH2Ty/+EqvvM/64Q7Ppyu/H/A8+9UdI1C08LQ3thq26G5EzXDSpHJKJ1dsKwbBJPAXBJOV7jBPY1zWqrBdeONEt2JLQ29xO6jp1jCbvxBYe6H0piKWl6d4ih8ybT/s+n28s8kotrwtMNrMSPkXHlnB6ByOemaZreo+IbHTrw6lc21onlP5M9lESC+PlVncnYSf9n2DZIrqtQvl0+0M5jeQ7lRUTGWZiFA546kVmXOnajrdtLb6jJFa2cylHt4QHZlPUM5GPyH41LdtDSNO65m7L+vmWY5NM8OabBaNMI0RcKGO6SQ9zjqzE5JPUkmoJ7i/1aB4INOSK2lUq73w+8p4P7scn8SKy/DV5Z6fpVpPq0UdtdzQJI19JkpPuUHPmH7p5+6SOemRzWxLrsFwpi0gpqFy3CmFt0SH1dxwAPTOT2Bos3uVzU4/Cr+v+X/BZzuhQWMVtHp+tzyMLaR7a1FzJiCVI3KLtHQtheQ2W79Oa6O41S0s0+yacIZ70j91awkcHsWx91fUn8MnAq3ZafHa6bHZviYAHzGdf9YxOWYj3JJ/Gp4LaC1TZbwxxJ12xqFH5CmopbETqTn8T/r0Max0O80a2jj027iYbQZop0Ox5MfM6kHKFjyeoz2BJJsjT7y8nil1OeExROJEtoFIXcOQWY8tg8gYAzzzgY1aKZAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQBHPBFc28sEyB4pUKOp6EEYIrIt9U/sqIWesy+UYxtS8l4jmXsS3RX9Qcc9MitusnX8Nb2sEjFbae5SKdgcfIc4GfRm2r/wKgDIsfE2labp96TcrcSJdTOkFt+8kcM5IwB2JOATge9Pi8N6ldlr681R7S+ef7Qq2kaERHaFCFmBLjaADjaD1xnmsnW7fTdItb/zYYbW6guI7qwbIiWQB0xGG4G0sACDwMg9s11dh4j0jUbL7VBfwbFGZA8gVo/ZhniphsbV/jb76mP8A2t4jGqjRSmnG9P7wXG19vk/89NmfX5du7qR25p83hzUrV11C01R7u+Sf7Qy3UaAS/KVKBlAKDaSBncB1xnJqqfEUDeKF1MRznSlgNr9qFrJ5eSQ5l37dvl8Bd2epz0Ga37/xJpGnWQup7+AowzGqSBmlPYKM81RiY974l0vUtPsWFytu73ULvBcny5EAcEkqewI6jI960bjU/wC1o2s9Gl83zBte8i5jhXuQ3Rn9AM4PXArm9Et9P1i20/y4YLq6nne61BsiRUyz5jLcggMSABxwT711eg4W0uIY3L28FzJFCxOflB+7n0Vty/8AAalbs2qK0Ir1ZowQR21vHBCgSKNQiKOgAGAKkooqjEKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAqOaCK5heGeNJInBVkcZDA9iKkooA5K80Cz/ALft4xJcQsbZjZu1w7hJQwJwGJGQAuAOo3elZ+rtp+qXuiLqUMIvkvTb3ShQcxgHg5/gaTyf++gO5rtruztr6Aw3UEc0eQdrrkZHQ/X3riLTw9aPaG8FhZXrMJI7+K9f/VuGJ4Yhiu3kD22n3qXo7o2g1OPJL5f5fP8AM73jFcJpDafpd5ra6bDCdQkvfs9spQDCEZ4x/Ar+d/3yR2Fc8NW1pdH8v+27wL54XyDJH5n2fd6lfNzs+bzM9OcV0F14etFtlvHsbOyYGOOxisn5dywPLAKW3dD7bj70m76IqNPkfNO1l5p3+5mjZaBY/wBvXMZkuJnFuhu3Wd0DyFmI3BSASQTkHttrqIYYraFIYI0jiQBURBgKB2A7Uy0tLexgENrBHDGCTtRcDJ6n61PVJWMZScnd7hRRRTJCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACqVxo+mXdx9oudPtZpuP3kkKs3HTkjtV2igBNi5ztGcYziqdvo+mWlx9ottPtYZuf3kcKq3PXkDvV2igAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA//Z
    </AboutImage>
    <circlepacking name="color-wheel.p">
NODECOUNT:  257
GEOMETRY: euclidean
ALPHA/BETA/GAMMA:  257 226 2
PACKNAME: color-wheel.p
FLOWERS:

1 3   226 225 224 256
2 5   3 257 33 34 35 3
3 5   4 257 2 35 36 4
4 5   5 257 3 36 37 5
5 5   6 257 4 37 38 6
6 5   7 257 5 38 39 7
7 5   8 257 6 39 40 8
8 5   9 257 7 40 41 9
9 5   10 257 8 41 42 10
10 5   11 257 9 42 43 11
11 5   12 257 10 43 44 12
12 5   13 257 11 44 45 13
13 5   14 257 12 45 46 14
14 5   15 257 13 46 47 15
15 5   16 257 14 47 48 16
16 5   17 257 15 48 49 17
17 5   18 257 16 49 50 18
18 5   19 257 17 50 51 19
19 5   20 257 18 51 52 20
20 5   21 257 19 52 53 21
21 5   22 257 20 53 54 22
22 5   23 257 21 54 55 23
23 5   24 257 22 55 56 24
24 5   25 257 23 56 57 25
25 5   26 257 24 57 58 26
26 5   27 257 25 58 59 27
27 5   28 257 26 59 60 28
28 5   29 257 27 60 61 29
29 5   30 257 28 61 62 30
30 5   31 257 29 62 63 31
31 5   32 257 30 63 64 32
32 5   33 257 31 64 65 33
33 5   34 2 257 32 65 34
34 6   35 2 33 65 66 67 35
35 6   36 3 2 34 67 68 36
36 6   37 4 3 35 68 69 37
37 6   38 5 4 36 69 70 38
38 6   39 6 5 37 70 71 39
39 6   40 7 6 38 71 72 40
40 6   41 8 7 39 72 73 41
41 6   42 9 8 40 73 74 42
42 6   43 10 9 41 74 75 43
43 6   44 11 10 42 75 76 44
44 6   45 12 11 43 76 77 45
45 6   46 13 12 44 77 78 46
46 6   47 14 13 45 78 79 47
47 6   48 15 14 46 79 80 48
48 6   49 16 15 47 80 81 49
49 6   50 17 16 48 81 82 50
50 6   51 18 17 49 82 83 51
51 6   52 19 18 50 83 84 52
52 6   53 20 19 51 84 85 53
53 6   54 21 20 52 85 86 54
54 6   55 22 21 53 86 87 55
55 6   56 23 22 54 87 88 56
56 6   57 24 23 55 88 89 57
57 6   58 25 24 56 89 90 58
58 6   59 26 25 57 90 91 59
59 6   60 27 26 58 91 92 60
60 6   61 28 27 59 92 93 61
61 6   62 29 28 60 93 94 62
62 6   63 30 29 61 94 95 63
63 6   64 31 30 62 95 96 64
64 6   65 32 31 63 96 97 65
65 6   66 34 33 32 64 97 66
66 6   67 34 65 97 98 99 67
67 6   68 35 34 66 99 100 68
68 6   69 36 35 67 100 101 69
69 6   70 37 36 68 101 102 70
70 6   71 38 37 69 102 103 71
71 6   72 39 38 70 103 104 72
72 6   73 40 39 71 104 105 73
73 6   74 41 40 72 105 106 74
74 6   75 42 41 73 106 107 75
75 6   76 43 42 74 107 108 76
76 6   77 44 43 75 108 109 77
77 6   78 45 44 76 109 110 78
78 6   79 46 45 77 110 111 79
79 6   80 47 46 78 111 112 80
80 6   81 48 47 79 112 113 81
81 6   82 49 48 80 113 114 82
82 6   83 50 49 81 114 115 83
83 6   84 51 50 82 115 116 84
84 6   85 52 51 83 116 117 85
85 6   86 53 52 84 117 118 86
86 6   87 54 53 85 118 119 87
87 6   88 55 54 86 119 120 88
88 6   89 56 55 87 120 121 89
89 6   90 57 56 88 121 122 90
90 6   91 58 57 89 122 123 91
91 6   92 59 58 90 123 124 92
92 6   93 60 59 91 124 125 93
93 6   94 61 60 92 125 126 94
94 6   95 62 61 93 126 127 95
95 6   96 63 62 94 127 128 96
96 6   97 64 63 95 128 129 97
97 6   98 66 65 64 96 129 98
98 6   99 66 97 129 130 131 99
99 6   100 67 66 98 131 132 100
100 6   101 68 67 99 132 133 101
101 6   102 69 68 100 133 134 102
102 6   103 70 69 101 134 135 103
103 6   104 71 70 102 135 136 104
104 6   105 72 71 103 136 137 105
105 6   106 73 72 104 137 138 106
106 6   107 74 73 105 138 139 107
107 6   108 75 74 106 139 140 108
108 6   109 76 75 107 140 141 109
109 6   110 77 76 108 141 142 110
110 6   111 78 77 109 142 143 111
111 6   112 79 78 110 143 144 112
112 6   113 80 79 111 144 145 113
113 6   114 81 80 112 145 146 114
114 6   115 82 81 113 146 147 115
115 6   116 83 82 114 147 148 116
116 6   117 84 83 115 148 149 117
117 6   118 85 84 116 149 150 118
118 6   119 86 85 117 150 151 119
119 6   120 87 86 118 151 152 120
120 6   121 88 87 119 152 153 121
121 6   122 89 88 120 153 154 122
122 6   123 90 89 121 154 155 123
123 6   124 91 90 122 155 156 124
124 6   125 92 91 123 156 157 125
125 6   126 93 92 124 157 158 126
126 6   127 94 93 125 158 159 127
127 6   128 95 94 126 159 160 128
128 6   129 96 95 127 160 161 129
129 6   130 98 97 96 128 161 130
130 6   131 98 129 161 162 163 131
131 6   132 99 98 130 163 164 132
132 6   133 100 99 131 164 165 133
133 6   134 101 100 132 165 166 134
134 6   135 102 101 133 166 167 135
135 6   136 103 102 134 167 168 136
136 6   137 104 103 135 168 169 137
137 6   138 105 104 136 169 170 138
138 6   139 106 105 137 170 171 139
139 6   140 107 106 138 171 172 140
140 6   141 108 107 139 172 173 141
141 6   142 109 108 140 173 174 142
142 6   143 110 109 141 174 175 143
143 6   144 111 110 142 175 176 144
144 6   145 112 111 143 176 177 145
145 6   146 113 112 144 177 178 146
146 6   147 114 113 145 178 179 147
147 6   148 115 114 146 179 180 148
148 6   149 116 115 147 180 181 149
149 6   150 117 116 148 181 182 150
150 6   151 118 117 149 182 183 151
151 6   152 119 118 150 183 184 152
152 6   153 120 119 151 184 185 153
153 6   154 121 120 152 185 186 154
154 6   155 122 121 153 186 187 155
155 6   156 123 122 154 187 188 156
156 6   157 124 123 155 188 189 157
157 6   158 125 124 156 189 190 158
158 6   159 126 125 157 190 191 159
159 6   160 127 126 158 191 192 160
160 6   161 128 127 159 192 193 161
161 6   162 130 129 128 160 193 162
162 6   163 130 161 193 194 195 163
163 6   164 131 130 162 195 196 164
164 6   165 132 131 163 196 197 165
165 6   166 133 132 164 197 198 166
166 6   167 134 133 165 198 199 167
167 6   168 135 134 166 199 200 168
168 6   169 136 135 167 200 201 169
169 6   170 137 136 168 201 202 170
170 6   171 138 137 169 202 203 171
171 6   172 139 138 170 203 204 172
172 6   173 140 139 171 204 205 173
173 6   174 141 140 172 205 206 174
174 6   175 142 141 173 206 207 175
175 6   176 143 142 174 207 208 176
176 6   177 144 143 175 208 209 177
177 6   178 145 144 176 209 210 178
178 6   179 146 145 177 210 211 179
179 6   180 147 146 178 211 212 180
180 6   181 148 147 179 212 213 181
181 6   182 149 148 180 213 214 182
182 6   183 150 149 181 214 215 183
183 6   184 151 150 182 215 216 184
184 6   185 152 151 183 216 217 185
185 6   186 153 152 184 217 218 186
186 6   187 154 153 185 218 219 187
187 6   188 155 154 186 219 220 188
188 6   189 156 155 187 220 221 189
189 6   190 157 156 188 221 222 190
190 6   191 158 157 189 222 223 191
191 6   192 159 158 190 223 224 192
192 6   193 160 159 191 224 225 193
193 6   194 162 161 160 192 225 194
194 6   195 162 193 225 226 227 195
195 6   196 163 162 194 227 228 196
196 6   197 164 163 195 228 229 197
197 6   198 165 164 196 229 230 198
198 6   199 166 165 197 230 231 199
199 6   200 167 166 198 231 232 200
200 6   201 168 167 199 232 233 201
201 6   202 169 168 200 233 234 202
202 6   203 170 169 201 234 235 203
203 6   204 171 170 202 235 236 204
204 6   205 172 171 203 236 237 205
205 6   206 173 172 204 237 238 206
206 6   207 174 173 205 238 239 207
207 6   208 175 174 206 239 240 208
208 6   209 176 175 207 240 241 209
209 6   210 177 176 208 241 242 210
210 6   211 178 177 209 242 243 211
211 6   212 179 178 210 243 244 212
212 6   213 180 179 211 244 245 213
213 6   214 181 180 212 245 246 214
214 6   215 182 181 213 246 247 215
215 6   216 183 182 214 247 248 216
216 6   217 184 183 215 248 249 217
217 6   218 185 184 216 249 250 218
218 6   219 186 185 217 250 251 219
219 6   220 187 186 218 251 252 220
220 6   221 188 187 219 252 253 221
221 6   222 189 188 220 253 254 222
222 6   223 190 189 221 254 255 223
223 6   224 191 190 222 255 256 224
224 6   225 192 191 223 256 1 225
225 6   226 194 193 192 224 1 226
226 3   227 194 225 1
227 3   228 195 194 226
228 3   229 196 195 227
229 3   230 197 196 228
230 3   231 198 197 229
231 3   232 199 198 230
232 3   233 200 199 231
233 3   234 201 200 232
234 3   235 202 201 233
235 3   236 203 202 234
236 3   237 204 203 235
237 3   238 205 204 236
238 3   239 206 205 237
239 3   240 207 206 238
240 3   241 208 207 239
241 3   242 209 208 240
242 3   243 210 209 241
243 3   244 211 210 242
244 3   245 212 211 243
245 3   246 213 212 244
246 3   247 214 213 245
247 3   248 215 214 246
248 3   249 216 215 247
249 3   250 217 216 248
250 3   251 218 217 249
251 3   252 219 218 250
252 3   253 220 219 251
253 3   254 221 220 252
254 3   255 222 221 253
255 3   256 223 222 254
256 3   1 224 223 255
257 32   2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 2

RADII:
8.600213774e-02   2.610561794e-02   2.610561675e-02   2.610561559e-02
2.610561419e-02   2.610561292e-02   2.610561306e-02   2.610561374e-02
2.610561436e-02   2.610561521e-02   2.610561548e-02   2.610561519e-02
2.610561523e-02   2.610561537e-02   2.610561540e-02   2.610561556e-02
2.610561576e-02   2.610561573e-02   2.610561547e-02   2.610561522e-02
2.610561511e-02   2.610561513e-02   2.610561521e-02   2.610561528e-02
2.610561528e-02   2.610561518e-02   2.610561490e-02   2.610561443e-02
2.610561413e-02   2.610561434e-02   2.610561501e-02   2.610561609e-02
2.610561718e-02   3.095294262e-02   3.095294213e-02   3.095294089e-02
3.095293940e-02   3.095293791e-02   3.095293735e-02   3.095293774e-02
3.095293846e-02   3.095293930e-02   3.095293984e-02   3.095293985e-02
3.095293979e-02   3.095293988e-02   3.095294002e-02   3.095294020e-02
3.095294041e-02   3.095294047e-02   3.095294029e-02   3.095294000e-02
3.095293976e-02   3.095293965e-02   3.095293965e-02   3.095293970e-02
3.095293971e-02   3.095293963e-02   3.095293940e-02   3.095293897e-02
3.095293857e-02   3.095293858e-02   3.095293913e-02   3.095294017e-02
3.095294140e-02   3.670032397e-02   3.670032411e-02   3.670032316e-02
3.670032186e-02   3.670032046e-02   3.670031960e-02   3.670031962e-02
3.670032016e-02   3.670032089e-02   3.670032148e-02   3.670032168e-02
3.670032166e-02   3.670032172e-02   3.670032187e-02   3.670032208e-02
3.670032231e-02   3.670032243e-02   3.670032233e-02   3.670032207e-02
3.670032179e-02   3.670032157e-02   3.670032146e-02   3.670032143e-02
3.670032140e-02   3.670032132e-02   3.670032114e-02   3.670032079e-02
3.670032042e-02   3.670032032e-02   3.670032071e-02   3.670032157e-02
3.670032268e-02   4.351488601e-02   4.351488633e-02   4.351488574e-02
4.351488463e-02   4.351488359e-02   4.351488285e-02   4.351488278e-02
4.351488327e-02   4.351488388e-02   4.351488438e-02   4.351488462e-02
4.351488458e-02   4.351488455e-02   4.351488466e-02   4.351488484e-02
4.351488504e-02   4.351488516e-02   4.351488512e-02   4.351488491e-02
4.351488464e-02   4.351488442e-02   4.351488428e-02   4.351488420e-02
4.351488414e-02   4.351488404e-02   4.351488389e-02   4.351488363e-02
4.351488334e-02   4.351488322e-02   4.351488350e-02   4.351488416e-02
4.351488502e-02   5.159478466e-02   5.159478472e-02   5.159478405e-02
5.159478299e-02   5.159478204e-02   5.159478162e-02   5.159478174e-02
5.159478241e-02   5.159478327e-02   5.159478387e-02   5.159478415e-02
5.159478414e-02   5.159478399e-02   5.159478393e-02   5.159478400e-02
5.159478405e-02   5.159478405e-02   5.159478395e-02   5.159478373e-02
5.159478347e-02   5.159478327e-02   5.159478317e-02   5.159478315e-02
5.159478314e-02   5.159478311e-02   5.159478301e-02   5.159478285e-02
5.159478266e-02   5.159478259e-02   5.159478280e-02   5.159478332e-02
5.159478395e-02   6.117496952e-02   6.117496928e-02   6.117496809e-02
6.117496649e-02   6.117496512e-02   6.117496440e-02   6.117496453e-02
6.117496528e-02   6.117496641e-02   6.117496747e-02   6.117496812e-02
6.117496843e-02   6.117496850e-02   6.117496848e-02   6.117496848e-02
6.117496845e-02   6.117496825e-02   6.117496792e-02   6.117496752e-02
6.117496711e-02   6.117496678e-02   6.117496664e-02   6.117496665e-02
6.117496674e-02   6.117496684e-02   6.117496690e-02   6.117496691e-02
6.117496690e-02   6.117496697e-02   6.117496721e-02   6.117496766e-02
6.117496816e-02   7.253401575e-02   7.253401551e-02   7.253401395e-02
7.253401142e-02   7.253400878e-02   7.253400672e-02   7.253400553e-02
7.253400518e-02   7.253400537e-02   7.253400582e-02   7.253400628e-02
7.253400666e-02   7.253400714e-02   7.253400776e-02   7.253400844e-02
7.253400906e-02   7.253400938e-02   7.253400928e-02   7.253400886e-02
7.253400828e-02   7.253400766e-02   7.253400716e-02   7.253400684e-02
7.253400669e-02   7.253400664e-02   7.253400666e-02   7.253400674e-02
7.253400692e-02   7.253400723e-02   7.253400771e-02   7.253400833e-02
7.253400894e-02   8.600222638e-02   8.600222288e-02   8.600222176e-02
8.600221907e-02   8.600221536e-02   8.600221128e-02   8.600220704e-02
8.600220247e-02   8.600219715e-02   8.600219083e-02   8.600218360e-02
8.600217593e-02   8.600216866e-02   8.600216259e-02   8.600215812e-02
8.600215522e-02   8.600215352e-02   8.600215247e-02   8.600215171e-02
8.600215103e-02   8.600215030e-02   8.600214942e-02   8.600214837e-02
8.600214710e-02   8.600214556e-02   8.600214380e-02   8.600214198e-02
8.600214031e-02   8.600213899e-02   8.600213815e-02   8.600213778e-02
2.402316309e-01

CENTERS:
6.7825509303e-01 5.5662944327e-01  1.6308452961e-17 2.6633724879e-01
-5.1959823166e-02 2.6121965132e-01  -1.0192285677e-01 2.4606352861e-01
-1.4796904941e-01 2.2145132312e-01  -1.8832887251e-01 1.8832886978e-01
-2.2145132375e-01 1.4796904643e-01  -2.4606352694e-01 1.0192285595e-01
-2.6121964825e-01 5.1959826352e-02  -2.6633724606e-01 8.3617623266e-09
-2.6121965241e-01 -5.1959811167e-02  -2.4606353340e-01 -1.0192284415e-01
-2.2145133116e-01 -1.4796903924e-01  -1.8832887842e-01 -1.8832886735e-01
-1.4796905222e-01 -2.2145132270e-01  -1.0192285815e-01 -2.4606352799e-01
-5.1959825367e-02 -2.6121964987e-01  -5.3361779048e-09 -2.6633724658e-01
5.1959814588e-02 -2.6121965172e-01  1.0192284740e-01 -2.4606353209e-01
1.4796904203e-01 -2.2145132916e-01  1.8832886937e-01 -1.8832887605e-01
2.2145132404e-01 -1.4796904987e-01  2.4606352861e-01 -1.0192285594e-01
2.6121964972e-01 -5.1959823706e-02  2.6633724603e-01 -4.6670959552e-09
2.6121965123e-01 5.1959814138e-02  2.4606353196e-01 1.0192284564e-01
2.2145133012e-01 1.4796903884e-01  1.8832887888e-01 1.8832886544e-01
1.4796905447e-01 2.2145132072e-01  1.0192286098e-01 2.4606352740e-01
5.1959825162e-02 2.6121965137e-01  3.0952944693e-02 3.1427047888e-01
-3.0952942580e-02 3.1427047967e-01  -9.1669322899e-02 3.0219323586e-01
-1.4886289785e-01 2.7850287572e-01  -2.0033575087e-01 2.4410980821e-01
-2.4410981150e-01 2.0033574300e-01  -2.7850287290e-01 1.4886289186e-01
-3.0219322879e-01 9.1669322475e-02  -3.1427047017e-01 3.0952950338e-02
-3.1427047428e-01 -3.0952929091e-02  -3.0219323824e-01 -9.1669306275e-02
-2.7850288462e-01 -1.4886288237e-01  -2.4410982235e-01 -2.0033574134e-01
-2.0033575632e-01 -2.4410981057e-01  -1.4886289912e-01 -2.7850287661e-01
-9.1669323923e-02 -3.0219323354e-01  -3.0952947212e-02 -3.1427047371e-01
3.0952934176e-02 -3.1427047463e-01  9.1669310820e-02 -3.0219323665e-01
1.4886288628e-01 -2.7850288237e-01  2.0033574423e-01 -2.4410981924e-01
2.4410981216e-01 -2.0033575305e-01  2.7850287727e-01 -1.4886289617e-01
3.0219323310e-01 -9.1669321330e-02  3.1427047218e-01 -3.0952945683e-02
3.1427047282e-01 3.0952934128e-02  3.0219323503e-01 9.1669309232e-02
2.7850288125e-01 1.4886288278e-01  2.4410982006e-01 2.0033573886e-01
2.0033575717e-01 2.4410980661e-01  1.4886290323e-01 2.7850287419e-01
9.1669326653e-02 3.0219323616e-01  7.3047211835e-02 3.6723308035e-01
4.3018868523e-09 3.7442760696e-01  -7.3047206674e-02 3.6723308262e-01
-1.4328724836e-01 3.4592598986e-01  -2.0802083434e-01 3.1132515676e-01
-2.6476029041e-01 2.6476027799e-01  -3.1132515731e-01 2.0802081899e-01
-3.4592598004e-01 1.4328724059e-01  -3.6723306626e-01 7.3047211501e-02
-3.7442759352e-01 1.4891366827e-08  -3.6723307736e-01 -7.3047186492e-02
-3.4592599680e-01 -1.4328722602e-01  -3.1132517387e-01 -2.0802081609e-01
-2.6476030035e-01 -2.6476028318e-01  -2.0802083666e-01 -3.1132516161e-01
-1.4328724838e-01 -3.4592598873e-01  -7.3047210668e-02 -3.6723307426e-01
-8.4417243841e-09 -3.7442759771e-01  7.3047193899e-02 -3.6723307672e-01
1.4328723192e-01 -3.4592599388e-01  2.0802082067e-01 -3.1132517001e-01
2.6476028584e-01 -2.6476029567e-01  3.1132516235e-01 -2.0802083214e-01
3.4592598799e-01 -1.4328724440e-01  3.6723307189e-01 -7.3047207639e-02
3.7442759417e-01 -7.3510965254e-09  3.6723307306e-01 7.3047192832e-02
3.4592599054e-01 1.4328722871e-01  3.1132516807e-01 2.0802081474e-01
2.6476029767e-01 2.6476027799e-01  2.0802083977e-01 3.1132515578e-01
1.4328725373e-01 3.4592598978e-01  1.2887242436e-01 4.2483538550e-01
4.3514901705e-02 4.4181406165e-01  -4.3514883190e-02 4.4181406520e-01
-1.2887241561e-01 4.2483539031e-01  -2.0927744339e-01 3.9153052333e-01
-2.8164004636e-01 3.4317936253e-01  -3.4317937450e-01 2.8164002155e-01
-3.9153051571e-01 2.0927742322e-01  -4.2483536850e-01 1.2887241324e-01
-4.4181404183e-01 4.3514903699e-02  -4.4181405006e-01 -4.3514865714e-02
-4.2483538926e-01 -1.2887238758e-01  -3.9153053935e-01 -2.0927741507e-01
-3.4317939093e-01 -2.8164002699e-01  -2.8164005232e-01 -3.4317937134e-01
-2.0927744396e-01 -3.9153052560e-01  -1.2887241979e-01 -4.2483538147e-01
-4.3514899217e-02 -4.4181405152e-01  4.3514875645e-02 -4.4181405340e-01
1.2887239710e-01 -4.2483538680e-01  2.0927742217e-01 -3.9153053440e-01
2.8164003186e-01 -3.4317938481e-01  3.4317937333e-01 -2.8164004549e-01
3.9153052491e-01 -2.0927743753e-01  4.2483537856e-01 -1.2887241437e-01
4.4181404652e-01 -4.3514895725e-02  4.4181404729e-01 4.3514876297e-02
4.2483538077e-01 1.2887239492e-01  3.9153052942e-01 2.0927741686e-01
3.4317938337e-01 2.8164002301e-01  2.8164005126e-01 3.4317936317e-01
2.0927744956e-01 3.9153052302e-01  2.0143897815e-01 4.8631664057e-01
1.0269271618e-01 5.1627100524e-01  1.9321195605e-08 5.2638536274e-01
-1.0269268647e-01 5.1627101510e-01  -2.0143896536e-01 4.8631664824e-01
-2.9244404349e-01 4.3767340196e-01  -3.7221064924e-01 3.7221062180e-01
-4.3767340505e-01 2.9244401064e-01  -4.8631662566e-01 2.0143895089e-01
-5.1627098271e-01 1.0269270431e-01  -5.2638534028e-01 2.6419375083e-08
-5.1627100327e-01 -1.0269266049e-01  -4.8631665679e-01 -2.0143892937e-01
-4.3767343112e-01 -2.9244401103e-01  -3.7221066246e-01 -3.7221063163e-01
-2.9244404812e-01 -4.3767340757e-01  -2.0143897205e-01 -4.8631664072e-01
-1.0269270747e-01 -5.1627099806e-01  -1.7669415456e-08 -5.2638534927e-01
1.0269267332e-01 -5.1627100392e-01  2.0143894018e-01 -4.8631665135e-01
2.9244401851e-01 -4.3767342334e-01  3.7221063600e-01 -3.7221065350e-01
4.3767340823e-01 -2.9244403862e-01  4.8631663805e-01 -2.0143896331e-01
5.1627099256e-01 -1.0269270045e-01  5.2638534147e-01 -1.3536764284e-08
5.1627099520e-01 1.0269267384e-01  4.8631664326e-01 2.0143893692e-01
4.3767341803e-01 2.9244401082e-01  3.7221065520e-01 3.7221062425e-01
2.9244405067e-01 4.3767340144e-01  2.9421064386e-01 5.5042931872e-01
1.8117404181e-01 5.9725062997e-01  6.1175012273e-02 6.2111993556e-01
-6.1174951258e-02 6.2111994401e-01  -1.8117400071e-01 5.9725064676e-01
-2.9421062458e-01 5.5042932919e-01  -3.9594088131e-01 4.8245532306e-01
-4.8245534073e-01 3.9594084445e-01  -5.5042931289e-01 2.9421059842e-01
-5.9725060801e-01 1.8117401245e-01  -6.2111990958e-01 6.1175005172e-02
-6.2111992435e-01 -6.1174934677e-02  -5.9725064521e-01 -1.8117396453e-01
-5.5042935330e-01 -2.9421058214e-01  -4.8245536819e-01 -3.9594084866e-01
-3.9594089621e-01 -4.8245532894e-01  -2.9421063869e-01 -5.5042932294e-01
-1.8117402977e-01 -5.9725062745e-01  -6.1175002126e-02 -6.2111992476e-01
6.1174948519e-02 -6.2111992961e-01  1.8117397964e-01 -5.9725064071e-01
2.9421059293e-01 -5.5042934325e-01  3.9594085494e-01 -4.8245535663e-01
4.8245533133e-01 -3.9594088411e-01  5.5042932124e-01 -2.9421062677e-01
5.9725062232e-01 -1.8117401927e-01  6.2111991684e-01 -6.1174993999e-02
6.2111991966e-01 6.1174953207e-02  5.9725063037e-01 1.8117398017e-01
5.5042933472e-01 2.9421058869e-01  4.8245535363e-01 3.9594084511e-01
3.9594089270e-01 4.8245532101e-01  4.1112959053e-01 6.1529882351e-01
2.8319101484e-01 6.8368343956e-01  1.4436955790e-01 7.2579448660e-01
4.7441707427e-08 7.4001365554e-01  -1.4436947555e-01 7.2579450423e-01
-2.8319095988e-01 6.8368346116e-01  -4.1112955789e-01 6.1529883711e-01
-5.2326865778e-01 5.2326863296e-01  -6.1529882832e-01 4.1112952948e-01
-6.8368341700e-01 2.8319096707e-01  -7.2579445273e-01 1.4436953873e-01
-7.4001362718e-01 5.8872299307e-08  -7.2579449364e-01 -1.4436943773e-01
-6.8368347871e-01 -2.8319090641e-01  -6.1529888470e-01 -4.1112950739e-01
-5.2326869836e-01 -5.2326862756e-01  -4.1112959183e-01 -6.1529882638e-01
-2.8319100603e-01 -6.8368343742e-01  -1.4436954670e-01 -7.2579447724e-01
-4.4396966551e-08 -7.4001364089e-01  1.4436946064e-01 -7.2579449248e-01
2.8319092614e-01 -6.8368346577e-01  4.1112951879e-01 -6.1529886680e-01
5.2326863170e-01 -5.2326868059e-01  6.1529882492e-01 -4.1112957566e-01
6.8368343148e-01 -2.8319099240e-01  7.2579446858e-01 -1.4436953631e-01
7.4001363065e-01 -3.7378444457e-08  7.2579448168e-01 1.4436946391e-01
6.8368345623e-01 2.8319092519e-01  6.1529886132e-01 4.1112951279e-01
5.2326868218e-01 5.2326862269e-01  5.5662961034e-01 6.7825503293e-01
4.1361314652e-01 7.7381560874e-01  2.5470175441e-01 8.3963888696e-01
8.6002304772e-02 8.7319531096e-01  -8.6002176262e-02 8.7319532079e-01
-2.5470164719e-01 8.3963891036e-01  -4.1361306734e-01 7.7381563262e-01
-5.5662954522e-01 6.7825505246e-01  -6.7825504023e-01 5.5662953058e-01
-7.7381557020e-01 4.1361307732e-01  -8.3963881643e-01 2.5470172728e-01
-8.7319523781e-01 8.6002335257e-02  -8.7319527210e-01 -8.6002092330e-02
-8.3963890481e-01 -2.5470152445e-01  -7.7381568119e-01 -4.1361292992e-01
-6.7825515054e-01 -5.5662942396e-01  -5.5662965488e-01 -6.7825495956e-01
-4.1361319548e-01 -7.7381553846e-01  -2.5470181162e-01 -8.3963882200e-01
-8.6002376929e-02 -8.7319525587e-01  8.6002083076e-02 -8.7319528330e-01
2.5470153087e-01 -8.3963890216e-01  4.1361293746e-01 -7.7381566655e-01
5.5662942520e-01 -6.7825513067e-01  6.7825495354e-01 -5.5662963558e-01
7.7381552581e-01 -4.1361318006e-01  8.3963880461e-01 -2.5470180288e-01
8.7319523722e-01 -8.6002376211e-02  8.7319526651e-01 8.6002076103e-02
8.3963889008e-01 2.5470151716e-01  7.7381566224e-01 4.1361291836e-01
0.0000000000e+00 0.0000000000e+00

C_COLORS:
1 2 2 255
2 4 4 255
3 6 6 255
4 8 8 255
5 10 10 255
6 12 12 255
7 14 14 255
8 16 16 255
9 18 18 255
10 20 20 255
11 22 22 255
12 24 24 255
13 26 26 255
14 28 28 255
15 30 30 255
16 32 32 255
17 34 34 255
18 36 36 255
19 38 38 255
20 40 40 255
21 42 42 255
22 44 44 255
23 46 46 255
24 48 48 255
25 50 50 255
26 52 52 255
27 54 54 255
28 56 56 255
29 58 58 255
30 60 60 255
31 62 62 255
32 64 64 255
33 66 66 255
34 68 68 255
35 70 70 255
36 72 72 255
37 74 74 255
38 76 76 255
39 78 78 255
40 80 80 255
41 82 82 255
42 84 84 255
43 86 86 255
44 88 88 255
45 90 90 255
46 92 92 255
47 94 94 255
48 96 96 255
49 98 98 255
50 100 100 255
51 102 102 255
52 104 104 255
53 106 106 255
54 108 108 255
55 110 110 255
56 112 112 255
57 114 114 255
58 116 116 255
59 118 118 255
60 120 120 255
61 122 122 255
62 124 124 255
63 126 126 255
64 128 128 255
65 130 130 255
66 132 132 255
67 134 134 255
68 136 136 255
69 138 138 255
70 140 140 255
71 142 142 255
72 144 144 255
73 146 146 255
74 148 148 255
75 150 150 255
76 152 152 255
77 154 154 255
78 156 156 255
79 158 158 255
80 160 160 255
81 162 162 255
82 164 164 255
83 166 166 255
84 168 168 255
85 170 170 255
86 172 172 255
87 174 174 255
88 176 176 255
89 178 178 255
90 180 180 255
91 182 182 255
92 184 184 255
93 186 186 255
94 188 188 255
95 190 190 255
96 192 192 255
97 194 194 255
98 196 196 255
99 198 198 255
100 255 255 255
101 255 253 253
102 255 251 251
103 255 249 249
104 255 247 247
105 255 245 245
106 255 243 243
107 255 241 241
108 255 239 239
109 255 237 237
110 255 235 235
111 255 233 233
112 255 231 231
113 255 229 229
114 255 227 227
115 255 225 225
116 255 223 223
117 255 221 221
118 255 219 219
119 255 217 217
120 255 215 215
121 255 213 213
122 255 211 211
123 255 209 209
124 255 207 207
125 255 205 205
126 255 203 203
127 255 201 201
128 255 199 199
129 255 197 197
130 255 195 195
131 255 193 193
132 255 191 191
133 255 189 189
134 255 187 187
135 255 185 185
136 255 183 183
137 255 181 181
138 255 179 179
139 255 177 177
140 255 175 175
141 255 173 173
142 255 171 171
143 255 169 169
144 255 167 167
145 255 165 165
146 255 163 163
147 255 161 161
148 255 159 159
149 255 157 157
150 255 155 155
151 255 153 153
152 255 151 151
153 255 149 149
154 255 147 147
155 255 145 145
156 255 143 143
157 255 141 141
158 255 139 139
159 255 137 137
160 255 135 135
161 255 133 133
162 255 131 131
163 255 129 129
164 255 127 127
165 255 125 125
166 255 123 123
167 255 121 121
168 255 119 119
169 255 117 117
170 255 115 115
171 255 113 113
172 255 111 111
173 255 109 109
174 255 107 107
175 255 105 105
176 255 103 103
177 255 101 101
178 255 99 99
179 255 97 97
180 255 95 95
181 255 93 93
182 255 91 91
183 255 89 89
184 255 87 87
185 255 85 85
186 255 83 83
187 255 81 81
188 255 79 79
189 255 77 77
190 255 75 75
191 255 73 73
192 255 71 71
193 255 69 69
194 255 67 67
195 255 65 65
196 255 63 63
197 255 61 61
198 255 59 59
199 255 57 57
200 255 255 255
201 255 200 200
202 200 225 255
203 200 255 200
204 255 230 200
205 180 180 240
206 50 128 50
207 128 50 128
208 203 255 102
209 255 255 0
210 255 0 0
211 245 94 0
212 255 146 29
213 255 159 56
214 255 172 84
215 255 185 110
216 255 204 152
217 255 218 178
218 0 255 0
219 34 139 34
220 64 224 208
221 0 255 255
222 135 206 250
223 95 158 160
224 205 133 63
225 160 82 45
226 235 110 100
227 255 140 0
228 221 160 221
229 185 48 185
230 205 205 205
231 50 50 50
232 255 0 0
233 0 255 0
234 0 0 255
235 255 255 0
236 234 138 0
237 0 255 255
238 178 0 255
239 66 138 66
240 255 140 0
241 255 0 255
242 0 155 155
243 255 125 125
244 125 125 255
245 125 255 125
246 255 172 84
247 180 180 240
248 128 128 128
249 160 80 0
251 0 45 45
252 0 35 35
253 0 25 25
254 0 15 15
255 255 255 255
257 255 255 255

(done)

DISP_FLAGS:
Disp -w -cfn
END
    </circlepacking>
    <circlepacking name="twpent5.p">
NODECOUNT:  8421
GEOMETRY: euclidean
ALPHA/BETA/GAMMA:  5157 3126 4098
PACKNAME: twpent5.p
FLOWERS:

1 5   4341 4345 4344 4343 4342 4341
2 5   4341 4348 4347 4346 4345 4341
3 5   4341 4351 4350 4349 4348 4341
4 5   4341 4354 4353 4352 4351 4341
5 5   4341 4342 4356 4355 4354 4341
6 5   4357 4358 4353 4354 4355 4357
7 5   4357 4361 4360 4359 4358 4357
8 5   4357 4364 4363 4362 4361 4357
9 5   4357 4367 4366 4365 4364 4357
10 5   4357 4355 4356 4368 4367 4357
11 5   4369 4370 4366 4367 4368 4369
12 5   4369 4373 4372 4371 4370 4369
13 5   4369 4376 4375 4374 4373 4369
14 5   4369 4379 4378 4377 4376 4369
15 5   4369 4368 4356 4380 4379 4369
16 5   4381 4382 4378 4379 4380 4381
17 5   4381 4385 4384 4383 4382 4381
18 5   4381 4388 4387 4386 4385 4381
19 5   4381 4391 4390 4389 4388 4381
20 5   4381 4380 4356 4392 4391 4381
21 5   4393 4394 4390 4391 4392 4393
22 5   4393 4397 4396 4395 4394 4393
23 5   4393 4400 4399 4398 4397 4393
24 5   4393 4343 4344 4401 4400 4393
25 5   4393 4392 4356 4342 4343 4393
26 5   4402 4395 4396 4404 4403 4402
27 5   4402 4389 4390 4394 4395 4402
28 5   4402 4405 4387 4388 4389 4402
29 5   4402 4408 4407 4406 4405 4402
30 5   4402 4403 4410 4409 4408 4402
31 5   4411 4412 4407 4408 4409 4411
32 5   4411 4415 4414 4413 4412 4411
33 5   4411 4418 4417 4416 4415 4411
34 5   4411 4421 4420 4419 4418 4411
35 5   4411 4409 4410 4422 4421 4411
36 5   4423 4424 4420 4421 4422 4423
37 5   4423 4427 4426 4425 4424 4423
38 5   4423 4430 4429 4428 4427 4423
39 5   4423 4433 4432 4431 4430 4423
40 5   4423 4422 4410 4434 4433 4423
41 5   4435 4436 4432 4433 4434 4435
42 5   4435 4439 4438 4437 4436 4435
43 5   4435 4442 4441 4440 4439 4435
44 5   4435 4445 4444 4443 4442 4435
45 5   4435 4434 4410 4446 4445 4435
46 5   4447 4448 4444 4445 4446 4447
47 5   4447 4451 4450 4449 4448 4447
48 5   4447 4398 4399 4452 4451 4447
49 5   4447 4404 4396 4397 4398 4447
50 5   4447 4446 4410 4403 4404 4447
51 5   4453 4449 4450 4455 4454 4453
52 5   4453 4443 4444 4448 4449 4453
53 5   4453 4456 4441 4442 4443 4453
54 5   4453 4459 4458 4457 4456 4453
55 5   4453 4454 4461 4460 4459 4453
56 5   4462 4463 4458 4459 4460 4462
57 5   4462 4466 4465 4464 4463 4462
58 5   4462 4469 4468 4467 4466 4462
59 5   4462 4472 4471 4470 4469 4462
60 5   4462 4460 4461 4473 4472 4462
61 5   4474 4475 4471 4472 4473 4474
62 5   4474 4478 4477 4476 4475 4474
63 5   4474 3287 3288 4479 4478 4474
64 5   4474 4480 3285 3286 3287 4474
65 5   4474 4473 4461 4481 4480 4474
66 5   4482 3284 3285 4480 4481 4482
67 5   4482 3281 3282 3283 3284 4482
68 5   4482 4483 3279 3280 3281 4482
69 5   4482 4486 4485 4484 4483 4482
70 5   4482 4481 4461 4487 4486 4482
71 5   4488 4489 4485 4486 4487 4488
72 5   4488 4492 4491 4490 4489 4488
73 5   4488 4452 4399 4493 4492 4488
74 5   4488 4455 4450 4451 4452 4488
75 5   4488 4487 4461 4454 4455 4488
76 5   4494 4490 4491 4496 4495 4494
77 5   4494 4484 4485 4489 4490 4494
78 5   4494 3278 3279 4483 4484 4494
79 5   4494 4497 3276 3277 3278 4494
80 5   4494 4495 4499 4498 4497 4494
81 5   4500 3275 3276 4497 4498 4500
82 5   4500 3272 3273 3274 3275 4500
83 5   4500 3269 3270 3271 3272 4500
84 5   4500 4501 3267 3268 3269 4500
85 5   4500 4498 4499 4502 4501 4500
86 5   4503 3266 3267 4501 4502 4503
87 5   4503 3263 3264 3265 3266 4503
88 5   4503 4504 3261 3262 3263 4503
89 5   4503 4507 4506 4505 4504 4503
90 5   4503 4502 4499 4508 4507 4503
91 5   4509 4510 4506 4507 4508 4509
92 5   4509 4513 4512 4511 4510 4509
93 5   4509 4516 4515 4514 4513 4509
94 5   4509 4519 4518 4517 4516 4509
95 5   4509 4508 4499 4520 4519 4509
96 5   4521 4522 4518 4519 4520 4521
97 5   4521 4525 4524 4523 4522 4521
98 5   4521 4493 4399 4526 4525 4521
99 5   4521 4496 4491 4492 4493 4521
100 5   4521 4520 4499 4495 4496 4521
101 5   4527 4523 4524 4529 4528 4527
102 5   4527 4517 4518 4522 4523 4527
103 5   4527 4530 4515 4516 4517 4527
104 5   4527 4533 4532 4531 4530 4527
105 5   4527 4528 4535 4534 4533 4527
106 5   4536 4537 4532 4533 4534 4536
107 5   4536 4540 4539 4538 4537 4536
108 5   4536 4543 4542 4541 4540 4536
109 5   4536 4546 4545 4544 4543 4536
110 5   4536 4534 4535 4547 4546 4536
111 5   4548 4549 4545 4546 4547 4548
112 5   4548 4552 4551 4550 4549 4548
113 5   4548 4555 4554 4553 4552 4548
114 5   4548 4558 4557 4556 4555 4548
115 5   4548 4547 4535 4559 4558 4548
116 5   4560 4561 4557 4558 4559 4560
117 5   4560 4564 4563 4562 4561 4560
118 5   4560 4349 4350 4565 4564 4560
119 5   4560 4566 4347 4348 4349 4560
120 5   4560 4559 4535 4567 4566 4560
121 5   4568 4346 4347 4566 4567 4568
122 5   4568 4401 4344 4345 4346 4568
123 5   4568 4526 4399 4400 4401 4568
124 5   4568 4529 4524 4525 4526 4568
125 5   4568 4567 4535 4528 4529 4568
126 5   4569 4573 4572 4571 4570 4569
127 5   4569 4576 4575 4574 4573 4569
128 5   4569 4541 4542 4577 4576 4569
129 5   4569 4578 4539 4540 4541 4569
130 5   4569 4570 4580 4579 4578 4569
131 5   4581 4538 4539 4578 4579 4581
132 5   4581 4531 4532 4537 4538 4581
133 5   4581 4514 4515 4530 4531 4581
134 5   4581 4582 4512 4513 4514 4581
135 5   4581 4579 4580 4583 4582 4581
136 5   4584 4511 4512 4582 4583 4584
137 5   4584 4505 4506 4510 4511 4584
138 5   4584 3260 3261 4504 4505 4584
139 5   4584 4585 3258 3259 3260 4584
140 5   4584 4583 4580 4586 4585 4584
141 5   4587 3257 3258 4585 4586 4587
142 5   4587 3254 3255 3256 3257 4587
143 5   4587 4588 3252 3253 3254 4587
144 5   4587 4591 4590 4589 4588 4587
145 5   4587 4586 4580 4592 4591 4587
146 5   4593 4594 4590 4591 4592 4593
147 5   4593 4597 4596 4595 4594 4593
148 5   4593 4600 4599 4598 4597 4593
149 5   4593 4571 4572 4601 4600 4593
150 5   4593 4592 4580 4570 4571 4593
151 5   4602 4595 4596 4604 4603 4602
152 5   4602 4589 4590 4594 4595 4602
153 5   4602 3251 3252 4588 4589 4602
154 5   4602 4605 3249 3250 3251 4602
155 5   4602 4603 4607 4606 4605 4602
156 5   4608 3248 3249 4605 4606 4608
157 5   4608 3245 3246 3247 3248 4608
158 5   4608 3242 3243 3244 3245 4608
159 5   4608 4609 3240 3241 3242 4608
160 5   4608 4606 4607 4610 4609 4608
161 5   4611 3239 3240 4609 4610 4611
162 5   4611 3236 3237 3238 3239 4611
163 5   4611 3233 3234 3235 3236 4611
164 5   4611 4612 3231 3232 3233 4611
165 5   4611 4610 4607 4613 4612 4611
166 5   4614 3230 3231 4612 4613 4614
167 5   4614 3227 3228 3229 3230 4614
168 5   4614 4615 3225 3226 3227 4614
169 5   4614 4618 4617 4616 4615 4614
170 5   4614 4613 4607 4619 4618 4614
171 5   4620 4621 4617 4618 4619 4620
172 5   4620 4624 4623 4622 4621 4620
173 5   4620 4598 4599 4625 4624 4620
174 5   4620 4604 4596 4597 4598 4620
175 5   4620 4619 4607 4603 4604 4620
176 5   4626 4622 4623 4628 4627 4626
177 5   4626 4616 4617 4621 4622 4626
178 5   4626 3224 3225 4615 4616 4626
179 5   4626 4629 3222 3223 3224 4626
180 5   4626 4627 4631 4630 4629 4626
181 5   4632 3221 3222 4629 4630 4632
182 5   4632 3218 3219 3220 3221 4632
183 5   4632 3215 3216 3217 3218 4632
184 5   4632 4633 3213 3214 3215 4632
185 5   4632 4630 4631 4634 4633 4632
186 5   4635 3212 3213 4633 4634 4635
187 5   4635 3209 3210 3211 3212 4635
188 5   4635 3206 3207 3208 3209 4635
189 5   4635 4636 3204 3205 3206 4635
190 5   4635 4634 4631 4637 4636 4635
191 5   4638 3203 3204 4636 4637 4638
192 5   4638 3200 3201 3202 3203 4638
193 5   4638 4639 3198 3199 3200 4638
194 5   4638 4642 4641 4640 4639 4638
195 5   4638 4637 4631 4643 4642 4638
196 5   4644 4645 4641 4642 4643 4644
197 5   4644 4648 4647 4646 4645 4644
198 5   4644 4625 4599 4649 4648 4644
199 5   4644 4628 4623 4624 4625 4644
200 5   4644 4643 4631 4627 4628 4644
201 5   4650 4646 4647 4652 4651 4650
202 5   4650 4640 4641 4645 4646 4650
203 5   4650 3197 3198 4639 4640 4650
204 5   4650 4653 3195 3196 3197 4650
205 5   4650 4651 4655 4654 4653 4650
206 5   4656 3194 3195 4653 4654 4656
207 5   4656 3191 3192 3193 3194 4656
208 5   4656 3188 3189 3190 3191 4656
209 5   4656 4657 3186 3187 3188 4656
210 5   4656 4654 4655 4658 4657 4656
211 5   4659 3185 3186 4657 4658 4659
212 5   4659 3182 3183 3184 3185 4659
213 5   4659 4660 3180 3181 3182 4659
214 5   4659 4663 4662 4661 4660 4659
215 5   4659 4658 4655 4664 4663 4659
216 5   4665 4666 4662 4663 4664 4665
217 5   4665 4669 4668 4667 4666 4665
218 5   4665 4672 4671 4670 4669 4665
219 5   4665 4675 4674 4673 4672 4665
220 5   4665 4664 4655 4676 4675 4665
221 5   4677 4678 4674 4675 4676 4677
222 5   4677 4681 4680 4679 4678 4677
223 5   4677 4649 4599 4682 4681 4677
224 5   4677 4652 4647 4648 4649 4677
225 5   4677 4676 4655 4651 4652 4677
226 5   4683 4679 4680 4685 4684 4683
227 5   4683 4673 4674 4678 4679 4683
228 5   4683 4686 4671 4672 4673 4683
229 5   4683 4689 4688 4687 4686 4683
230 5   4683 4684 4691 4690 4689 4683
231 5   4692 4693 4688 4689 4690 4692
232 5   4692 4696 4695 4694 4693 4692
233 5   4692 4699 4698 4697 4696 4692
234 5   4692 4702 4701 4700 4699 4692
235 5   4692 4690 4691 4703 4702 4692
236 5   4704 4705 4701 4702 4703 4704
237 5   4704 4708 4707 4706 4705 4704
238 5   4704 4553 4554 4709 4708 4704
239 5   4704 4710 4551 4552 4553 4704
240 5   4704 4703 4691 4711 4710 4704
241 5   4712 4550 4551 4710 4711 4712
242 5   4712 4544 4545 4549 4550 4712
243 5   4712 4577 4542 4543 4544 4712
244 5   4712 4713 4575 4576 4577 4712
245 5   4712 4711 4691 4714 4713 4712
246 5   4715 4574 4575 4713 4714 4715
247 5   4715 4601 4572 4573 4574 4715
248 5   4715 4682 4599 4600 4601 4715
249 5   4715 4685 4680 4681 4682 4715
250 5   4715 4714 4691 4684 4685 4715
251 5   4716 4720 4719 4718 4717 4716
252 5   4716 4723 4722 4721 4720 4716
253 5   4716 4697 4698 4724 4723 4716
254 5   4716 4725 4695 4696 4697 4716
255 5   4716 4717 4727 4726 4725 4716
256 5   4728 4694 4695 4725 4726 4728
257 5   4728 4687 4688 4693 4694 4728
258 5   4728 4670 4671 4686 4687 4728
259 5   4728 4729 4668 4669 4670 4728
260 5   4728 4726 4727 4730 4729 4728
261 5   4731 4667 4668 4729 4730 4731
262 5   4731 4661 4662 4666 4667 4731
263 5   4731 3179 3180 4660 4661 4731
264 5   4731 4732 3177 3178 3179 4731
265 5   4731 4730 4727 4733 4732 4731
266 5   4734 3176 3177 4732 4733 4734
267 5   4734 3173 3174 3175 3176 4734
268 5   4734 4735 3171 3172 3173 4734
269 5   4734 4738 4737 4736 4735 4734
270 5   4734 4733 4727 4739 4738 4734
271 5   4740 4741 4737 4738 4739 4740
272 5   4740 4744 4743 4742 4741 4740
273 5   4740 4747 4746 4745 4744 4740
274 5   4740 4718 4719 4748 4747 4740
275 5   4740 4739 4727 4717 4718 4740
276 5   4749 4742 4743 4751 4750 4749
277 5   4749 4736 4737 4741 4742 4749
278 5   4749 3170 3171 4735 4736 4749
279 5   4749 4752 3168 3169 3170 4749
280 5   4749 4750 4754 4753 4752 4749
281 5   4755 3167 3168 4752 4753 4755
282 5   4755 3164 3165 3166 3167 4755
283 5   4755 3161 3162 3163 3164 4755
284 5   4755 4756 3159 3160 3161 4755
285 5   4755 4753 4754 4757 4756 4755
286 5   4758 3158 3159 4756 4757 4758
287 5   4758 3155 3156 3157 3158 4758
288 5   4758 3152 3153 3154 3155 4758
289 5   4758 4759 3150 3151 3152 4758
290 5   4758 4757 4754 4760 4759 4758
291 5   4761 3149 3150 4759 4760 4761
292 5   4761 3146 3147 3148 3149 4761
293 5   4761 4762 3144 3145 3146 4761
294 5   4761 4765 4764 4763 4762 4761
295 5   4761 4760 4754 4766 4765 4761
296 5   4767 4768 4764 4765 4766 4767
297 5   4767 4771 4770 4769 4768 4767
298 5   4767 4745 4746 4772 4771 4767
299 5   4767 4751 4743 4744 4745 4767
300 5   4767 4766 4754 4750 4751 4767
301 5   4773 4769 4770 4775 4774 4773
302 5   4773 4763 4764 4768 4769 4773
303 5   4773 3143 3144 4762 4763 4773
304 5   4773 4776 3141 3142 3143 4773
305 5   4773 4774 4778 4777 4776 4773
306 5   4779 3140 3141 4776 4777 4779
307 5   4779 3137 3138 3139 3140 4779
308 5   4779 3134 3135 3136 3137 4779
309 5   4779 4780 3132 3133 3134 4779
310 5   4779 4777 4778 4781 4780 4779
311 5   4782 3131 3132 4780 4781 4782
312 5   4782 3128 3129 3130 3131 4782
313 5   4782 3611 3126 3127 3128 4782
314 5   4782 4783 3609 3610 3611 4782
315 5   4782 4781 4778 4784 4783 4782
316 5   4785 3608 3609 4783 4784 4785
317 5   4785 3605 3606 3607 3608 4785
318 5   4785 4786 3603 3604 3605 4785
319 5   4785 4789 4788 4787 4786 4785
320 5   4785 4784 4778 4790 4789 4785
321 5   4791 4792 4788 4789 4790 4791
322 5   4791 4795 4794 4793 4792 4791
323 5   4791 4772 4746 4796 4795 4791
324 5   4791 4775 4770 4771 4772 4791
325 5   4791 4790 4778 4774 4775 4791
326 5   4797 4793 4794 4799 4798 4797
327 5   4797 4787 4788 4792 4793 4797
328 5   4797 3602 3603 4786 4787 4797
329 5   4797 4800 3600 3601 3602 4797
330 5   4797 4798 4802 4801 4800 4797
331 5   4803 3599 3600 4800 4801 4803
332 5   4803 3596 3597 3598 3599 4803
333 5   4803 3593 3594 3595 3596 4803
334 5   4803 4804 3591 3592 3593 4803
335 5   4803 4801 4802 4805 4804 4803
336 5   4806 3590 3591 4804 4805 4806
337 5   4806 3587 3588 3589 3590 4806
338 5   4806 4807 3585 3586 3587 4806
339 5   4806 4810 4809 4808 4807 4806
340 5   4806 4805 4802 4811 4810 4806
341 5   4812 4813 4809 4810 4811 4812
342 5   4812 4816 4815 4814 4813 4812
343 5   4812 4819 4818 4817 4816 4812
344 5   4812 4822 4821 4820 4819 4812
345 5   4812 4811 4802 4823 4822 4812
346 5   4824 4825 4821 4822 4823 4824
347 5   4824 4828 4827 4826 4825 4824
348 5   4824 4796 4746 4829 4828 4824
349 5   4824 4799 4794 4795 4796 4824
350 5   4824 4823 4802 4798 4799 4824
351 5   4830 4826 4827 4832 4831 4830
352 5   4830 4820 4821 4825 4826 4830
353 5   4830 4833 4818 4819 4820 4830
354 5   4830 4836 4835 4834 4833 4830
355 5   4830 4831 4838 4837 4836 4830
356 5   4839 4840 4835 4836 4837 4839
357 5   4839 4843 4842 4841 4840 4839
358 5   4839 4846 4845 4844 4843 4839
359 5   4839 4849 4848 4847 4846 4839
360 5   4839 4837 4838 4850 4849 4839
361 5   4851 4852 4848 4849 4850 4851
362 5   4851 4855 4854 4853 4852 4851
363 5   4851 4709 4554 4856 4855 4851
364 5   4851 4857 4707 4708 4709 4851
365 5   4851 4850 4838 4858 4857 4851
366 5   4859 4706 4707 4857 4858 4859
367 5   4859 4700 4701 4705 4706 4859
368 5   4859 4724 4698 4699 4700 4859
369 5   4859 4860 4722 4723 4724 4859
370 5   4859 4858 4838 4861 4860 4859
371 5   4862 4721 4722 4860 4861 4862
372 5   4862 4748 4719 4720 4721 4862
373 5   4862 4829 4746 4747 4748 4862
374 5   4862 4832 4827 4828 4829 4862
375 5   4862 4861 4838 4831 4832 4862
376 5   4863 4867 4866 4865 4864 4863
377 5   4863 4870 4869 4868 4867 4863
378 5   4863 4844 4845 4871 4870 4863
379 5   4863 4872 4842 4843 4844 4863
380 5   4863 4864 4874 4873 4872 4863
381 5   4875 4841 4842 4872 4873 4875
382 5   4875 4834 4835 4840 4841 4875
383 5   4875 4817 4818 4833 4834 4875
384 5   4875 4876 4815 4816 4817 4875
385 5   4875 4873 4874 4877 4876 4875
386 5   4878 4814 4815 4876 4877 4878
387 5   4878 4808 4809 4813 4814 4878
388 5   4878 3584 3585 4807 4808 4878
389 5   4878 4879 3582 3583 3584 4878
390 5   4878 4877 4874 4880 4879 4878
391 5   4881 3581 3582 4879 4880 4881
392 5   4881 3578 3579 3580 3581 4881
393 5   4881 4882 3576 3577 3578 4881
394 5   4881 4885 4884 4883 4882 4881
395 5   4881 4880 4874 4886 4885 4881
396 5   4887 4888 4884 4885 4886 4887
397 5   4887 4891 4890 4889 4888 4887
398 5   4887 4894 4893 4892 4891 4887
399 5   4887 4865 4866 4895 4894 4887
400 5   4887 4886 4874 4864 4865 4887
401 5   4896 4889 4890 4898 4897 4896
402 5   4896 4883 4884 4888 4889 4896
403 5   4896 3575 3576 4882 4883 4896
404 5   4896 4899 3573 3574 3575 4896
405 5   4896 4897 4901 4900 4899 4896
406 5   4902 3572 3573 4899 4900 4902
407 5   4902 3569 3570 3571 3572 4902
408 5   4902 3566 3567 3568 3569 4902
409 5   4902 4903 3564 3565 3566 4902
410 5   4902 4900 4901 4904 4903 4902
411 5   4905 3563 3564 4903 4904 4905
412 5   4905 3560 3561 3562 3563 4905
413 5   4905 3557 3558 3559 3560 4905
414 5   4905 4906 3555 3556 3557 4905
415 5   4905 4904 4901 4907 4906 4905
416 5   4908 3554 3555 4906 4907 4908
417 5   4908 3551 3552 3553 3554 4908
418 5   4908 4909 3549 3550 3551 4908
419 5   4908 4912 4911 4910 4909 4908
420 5   4908 4907 4901 4913 4912 4908
421 5   4914 4915 4911 4912 4913 4914
422 5   4914 4918 4917 4916 4915 4914
423 5   4914 4892 4893 4919 4918 4914
424 5   4914 4898 4890 4891 4892 4914
425 5   4914 4913 4901 4897 4898 4914
426 5   4920 4916 4917 4922 4921 4920
427 5   4920 4910 4911 4915 4916 4920
428 5   4920 3548 3549 4909 4910 4920
429 5   4920 4923 3546 3547 3548 4920
430 5   4920 4921 4925 4924 4923 4920
431 5   4926 3545 3546 4923 4924 4926
432 5   4926 3542 3543 3544 3545 4926
433 5   4926 3539 3540 3541 3542 4926
434 5   4926 4927 3537 3538 3539 4926
435 5   4926 4924 4925 4928 4927 4926
436 5   4929 3536 3537 4927 4928 4929
437 5   4929 3533 3534 3535 3536 4929
438 5   4929 4930 3531 3532 3533 4929
439 5   4929 4933 4932 4931 4930 4929
440 5   4929 4928 4925 4934 4933 4929
441 5   4935 4936 4932 4933 4934 4935
442 5   4935 4939 4938 4937 4936 4935
443 5   4935 4942 4941 4940 4939 4935
444 5   4935 4945 4944 4943 4942 4935
445 5   4935 4934 4925 4946 4945 4935
446 5   4947 4948 4944 4945 4946 4947
447 5   4947 4951 4950 4949 4948 4947
448 5   4947 4919 4893 4952 4951 4947
449 5   4947 4922 4917 4918 4919 4947
450 5   4947 4946 4925 4921 4922 4947
451 5   4953 4949 4950 4955 4954 4953
452 5   4953 4943 4944 4948 4949 4953
453 5   4953 4956 4941 4942 4943 4953
454 5   4953 4959 4958 4957 4956 4953
455 5   4953 4954 4961 4960 4959 4953
456 5   4962 4963 4958 4959 4960 4962
457 5   4962 4966 4965 4964 4963 4962
458 5   4962 4969 4968 4967 4966 4962
459 5   4962 4972 4971 4970 4969 4962
460 5   4962 4960 4961 4973 4972 4962
461 5   4974 4975 4971 4972 4973 4974
462 5   4974 4978 4977 4976 4975 4974
463 5   4974 4981 4980 4979 4978 4974
464 5   4974 4984 4983 4982 4981 4974
465 5   4974 4973 4961 4985 4984 4974
466 5   4986 4987 4983 4984 4985 4986
467 5   4986 4990 4989 4988 4987 4986
468 5   4986 4993 4992 4991 4990 4986
469 5   4986 4996 4995 4994 4993 4986
470 5   4986 4985 4961 4997 4996 4986
471 5   4998 4999 4995 4996 4997 4998
472 5   4998 5002 5001 5000 4999 4998
473 5   4998 4952 4893 5003 5002 4998
474 5   4998 4955 4950 4951 4952 4998
475 5   4998 4997 4961 4954 4955 4998
476 5   5004 5000 5001 5006 5005 5004
477 5   5004 4994 4995 4999 5000 5004
478 5   5004 5007 4992 4993 4994 5004
479 5   5004 5010 5009 5008 5007 5004
480 5   5004 5005 5012 5011 5010 5004
481 5   5013 5014 5009 5010 5011 5013
482 5   5013 5017 5016 5015 5014 5013
483 5   5013 5020 5019 5018 5017 5013
484 5   5013 5023 5022 5021 5020 5013
485 5   5013 5011 5012 5024 5023 5013
486 5   5025 5026 5022 5023 5024 5025
487 5   5025 5029 5028 5027 5026 5025
488 5   5025 4856 4554 5030 5029 5025
489 5   5025 5031 4854 4855 4856 5025
490 5   5025 5024 5012 5032 5031 5025
491 5   5033 4853 4854 5031 5032 5033
492 5   5033 4847 4848 4852 4853 5033
493 5   5033 4871 4845 4846 4847 5033
494 5   5033 5034 4869 4870 4871 5033
495 5   5033 5032 5012 5035 5034 5033
496 5   5036 4868 4869 5034 5035 5036
497 5   5036 4895 4866 4867 4868 5036
498 5   5036 5003 4893 4894 4895 5036
499 5   5036 5006 5001 5002 5003 5036
500 5   5036 5035 5012 5005 5006 5036
501 5   5037 5041 5040 5039 5038 5037
502 5   5037 5044 5043 5042 5041 5037
503 5   5037 5018 5019 5045 5044 5037
504 5   5037 5046 5016 5017 5018 5037
505 5   5037 5038 5048 5047 5046 5037
506 5   5049 5015 5016 5046 5047 5049
507 5   5049 5008 5009 5014 5015 5049
508 5   5049 4991 4992 5007 5008 5049
509 5   5049 5050 4989 4990 4991 5049
510 5   5049 5047 5048 5051 5050 5049
511 5   5052 4988 4989 5050 5051 5052
512 5   5052 4982 4983 4987 4988 5052
513 5   5052 5053 4980 4981 4982 5052
514 5   5052 5056 5055 5054 5053 5052
515 5   5052 5051 5048 5057 5056 5052
516 5   5058 5059 5055 5056 5057 5058
517 5   5058 5062 5061 5060 5059 5058
518 5   5058 5065 5064 5063 5062 5058
519 5   5058 5068 5067 5066 5065 5058
520 5   5058 5057 5048 5069 5068 5058
521 5   5070 5071 5067 5068 5069 5070
522 5   5070 5074 5073 5072 5071 5070
523 5   5070 5077 5076 5075 5074 5070
524 5   5070 5039 5040 5078 5077 5070
525 5   5070 5069 5048 5038 5039 5070
526 5   5079 5072 5073 5081 5080 5079
527 5   5079 5066 5067 5071 5072 5079
528 5   5079 5082 5064 5065 5066 5079
529 5   5079 5085 5084 5083 5082 5079
530 5   5079 5080 5087 5086 5085 5079
531 5   5088 5089 5084 5085 5086 5088
532 5   5088 5092 5091 5090 5089 5088
533 5   5088 5095 5094 5093 5092 5088
534 5   5088 5098 5097 5096 5095 5088
535 5   5088 5086 5087 5099 5098 5088
536 5   5100 5101 5097 5098 5099 5100
537 5   5100 5104 5103 5102 5101 5100
538 5   5100 5107 5106 5105 5104 5100
539 5   5100 5110 5109 5108 5107 5100
540 5   5100 5099 5087 5111 5110 5100
541 5   5112 5113 5109 5110 5111 5112
542 5   5112 5116 5115 5114 5113 5112
543 5   5112 5119 5118 5117 5116 5112
544 5   5112 5122 5121 5120 5119 5112
545 5   5112 5111 5087 5123 5122 5112
546 5   5124 5125 5121 5122 5123 5124
547 5   5124 5128 5127 5126 5125 5124
548 5   5124 5075 5076 5129 5128 5124
549 5   5124 5081 5073 5074 5075 5124
550 5   5124 5123 5087 5080 5081 5124
551 5   5130 5126 5127 5132 5131 5130
552 5   5130 5120 5121 5125 5126 5130
553 5   5130 5133 5118 5119 5120 5130
554 5   5130 5136 5135 5134 5133 5130
555 5   5130 5131 5138 5137 5136 5130
556 5   5139 5140 5135 5136 5137 5139
557 5   5139 5143 5142 5141 5140 5139
558 5   5139 5146 5145 5144 5143 5139
559 5   5139 5149 5148 5147 5146 5139
560 5   5139 5137 5138 5150 5149 5139
561 5   5151 5152 5148 5149 5150 5151
562 5   5151 5155 5154 5153 5152 5151
563 5   5151 5158 5157 5156 5155 5151
564 5   5151 5161 5160 5159 5158 5151
565 5   5151 5150 5138 5162 5161 5151
566 5   5163 5164 5160 5161 5162 5163
567 5   5163 5167 5166 5165 5164 5163
568 5   5163 5170 5169 5168 5167 5163
569 5   5163 5173 5172 5171 5170 5163
570 5   5163 5162 5138 5174 5173 5163
571 5   5175 5176 5172 5173 5174 5175
572 5   5175 5179 5178 5177 5176 5175
573 5   5175 5129 5076 5180 5179 5175
574 5   5175 5132 5127 5128 5129 5175
575 5   5175 5174 5138 5131 5132 5175
576 5   5181 5177 5178 5183 5182 5181
577 5   5181 5171 5172 5176 5177 5181
578 5   5181 5184 5169 5170 5171 5181
579 5   5181 5187 5186 5185 5184 5181
580 5   5181 5182 5189 5188 5187 5181
581 5   5190 5191 5186 5187 5188 5190
582 5   5190 5194 5193 5192 5191 5190
583 5   5190 5197 5196 5195 5194 5190
584 5   5190 5200 5199 5198 5197 5190
585 5   5190 5188 5189 5201 5200 5190
586 5   5202 5203 5199 5200 5201 5202
587 5   5202 5206 5205 5204 5203 5202
588 5   5202 4374 4375 5207 5206 5202
589 5   5202 5208 4372 4373 4374 5202
590 5   5202 5201 5189 5209 5208 5202
591 5   5210 4371 4372 5208 5209 5210
592 5   5210 4365 4366 4370 4371 5210
593 5   5210 5211 4363 4364 4365 5210
594 5   5210 5214 5213 5212 5211 5210
595 5   5210 5209 5189 5215 5214 5210
596 5   5216 5217 5213 5214 5215 5216
597 5   5216 5220 5219 5218 5217 5216
598 5   5216 5180 5076 5221 5220 5216
599 5   5216 5183 5178 5179 5180 5216
600 5   5216 5215 5189 5182 5183 5216
601 5   5222 5218 5219 5224 5223 5222
602 5   5222 5212 5213 5217 5218 5222
603 5   5222 4362 4363 5211 5212 5222
604 5   5222 5225 4360 4361 4362 5222
605 5   5222 5223 5227 5226 5225 5222
606 5   5228 4359 4360 5225 5226 5228
607 5   5228 4352 4353 4358 4359 5228
608 5   5228 4565 4350 4351 4352 5228
609 5   5228 5229 4563 4564 4565 5228
610 5   5228 5226 5227 5230 5229 5228
611 5   5231 4562 4563 5229 5230 5231
612 5   5231 4556 4557 4561 4562 5231
613 5   5231 5030 4554 4555 4556 5231
614 5   5231 5232 5028 5029 5030 5231
615 5   5231 5230 5227 5233 5232 5231
616 5   5234 5027 5028 5232 5233 5234
617 5   5234 5021 5022 5026 5027 5234
618 5   5234 5045 5019 5020 5021 5234
619 5   5234 5235 5043 5044 5045 5234
620 5   5234 5233 5227 5236 5235 5234
621 5   5237 5042 5043 5235 5236 5237
622 5   5237 5078 5040 5041 5042 5237
623 5   5237 5221 5076 5077 5078 5237
624 5   5237 5224 5219 5220 5221 5237
625 5   5237 5236 5227 5223 5224 5237
626 5   5238 5242 5241 5240 5239 5238
627 5   5238 5245 5244 5243 5242 5238
628 5   5238 5248 5247 5246 5245 5238
629 5   5238 5251 5250 5249 5248 5238
630 5   5238 5239 5253 5252 5251 5238
631 5   5254 5255 5250 5251 5252 5254
632 5   5254 5258 5257 5256 5255 5254
633 5   5254 5261 5260 5259 5258 5254
634 5   5254 5264 5263 5262 5261 5254
635 5   5254 5252 5253 5265 5264 5254
636 5   5266 5267 5263 5264 5265 5266
637 5   5266 5270 5269 5268 5267 5266
638 5   5266 5105 5106 5271 5270 5266
639 5   5266 5272 5103 5104 5105 5266
640 5   5266 5265 5253 5273 5272 5266
641 5   5274 5102 5103 5272 5273 5274
642 5   5274 5096 5097 5101 5102 5274
643 5   5274 5275 5094 5095 5096 5274
644 5   5274 5278 5277 5276 5275 5274
645 5   5274 5273 5253 5279 5278 5274
646 5   5280 5281 5277 5278 5279 5280
647 5   5280 5284 5283 5282 5281 5280
648 5   5280 5287 5286 5285 5284 5280
649 5   5280 5240 5241 5288 5287 5280
650 5   5280 5279 5253 5239 5240 5280
651 5   5289 5282 5283 5291 5290 5289
652 5   5289 5276 5277 5281 5282 5289
653 5   5289 5093 5094 5275 5276 5289
654 5   5289 5292 5091 5092 5093 5289
655 5   5289 5290 5294 5293 5292 5289
656 5   5295 5090 5091 5292 5293 5295
657 5   5295 5083 5084 5089 5090 5295
658 5   5295 5063 5064 5082 5083 5295
659 5   5295 5296 5061 5062 5063 5295
660 5   5295 5293 5294 5297 5296 5295
661 5   5298 5060 5061 5296 5297 5298
662 5   5298 5054 5055 5059 5060 5298
663 5   5298 4979 4980 5053 5054 5298
664 5   5298 5299 4977 4978 4979 5298
665 5   5298 5297 5294 5300 5299 5298
666 5   5301 4976 4977 5299 5300 5301
667 5   5301 4970 4971 4975 4976 5301
668 5   5301 5302 4968 4969 4970 5301
669 5   5301 5305 5304 5303 5302 5301
670 5   5301 5300 5294 5306 5305 5301
671 5   5307 5308 5304 5305 5306 5307
672 5   5307 5311 5310 5309 5308 5307
673 5   5307 5285 5286 5312 5311 5307
674 5   5307 5291 5283 5284 5285 5307
675 5   5307 5306 5294 5290 5291 5307
676 5   5313 5309 5310 5315 5314 5313
677 5   5313 5303 5304 5308 5309 5313
678 5   5313 4967 4968 5302 5303 5313
679 5   5313 5316 4965 4966 4967 5313
680 5   5313 5314 5318 5317 5316 5313
681 5   5319 4964 4965 5316 5317 5319
682 5   5319 4957 4958 4963 4964 5319
683 5   5319 4940 4941 4956 4957 5319
684 5   5319 5320 4938 4939 4940 5319
685 5   5319 5317 5318 5321 5320 5319
686 5   5322 4937 4938 5320 5321 5322
687 5   5322 4931 4932 4936 4937 5322
688 5   5322 3530 3531 4930 4931 5322
689 5   5322 5323 3528 3529 3530 5322
690 5   5322 5321 5318 5324 5323 5322
691 5   5325 3527 3528 5323 5324 5325
692 5   5325 3524 3525 3526 3527 5325
693 5   5325 5326 3522 3523 3524 5325
694 5   5325 5329 5328 5327 5326 5325
695 5   5325 5324 5318 5330 5329 5325
696 5   5331 5332 5328 5329 5330 5331
697 5   5331 5335 5334 5333 5332 5331
698 5   5331 5312 5286 5336 5335 5331
699 5   5331 5315 5310 5311 5312 5331
700 5   5331 5330 5318 5314 5315 5331
701 5   5337 5333 5334 5339 5338 5337
702 5   5337 5327 5328 5332 5333 5337
703 5   5337 3521 3522 5326 5327 5337
704 5   5337 5340 3519 3520 3521 5337
705 5   5337 5338 5342 5341 5340 5337
706 5   5343 3518 3519 5340 5341 5343
707 5   5343 3515 3516 3517 3518 5343
708 5   5343 3512 3513 3514 3515 5343
709 5   5343 5344 3510 3511 3512 5343
710 5   5343 5341 5342 5345 5344 5343
711 5   5346 3509 3510 5344 5345 5346
712 5   5346 3506 3507 3508 3509 5346
713 5   5346 5347 3504 3505 3506 5346
714 5   5346 5350 5349 5348 5347 5346
715 5   5346 5345 5342 5351 5350 5346
716 5   5352 5353 5349 5350 5351 5352
717 5   5352 5356 5355 5354 5353 5352
718 5   5352 5359 5358 5357 5356 5352
719 5   5352 5362 5361 5360 5359 5352
720 5   5352 5351 5342 5363 5362 5352
721 5   5364 5365 5361 5362 5363 5364
722 5   5364 5368 5367 5366 5365 5364
723 5   5364 5336 5286 5369 5368 5364
724 5   5364 5339 5334 5335 5336 5364
725 5   5364 5363 5342 5338 5339 5364
726 5   5370 5366 5367 5372 5371 5370
727 5   5370 5360 5361 5365 5366 5370
728 5   5370 5373 5358 5359 5360 5370
729 5   5370 5376 5375 5374 5373 5370
730 5   5370 5371 5378 5377 5376 5370
731 5   5379 5380 5375 5376 5377 5379
732 5   5379 5383 5382 5381 5380 5379
733 5   5379 5386 5385 5384 5383 5379
734 5   5379 5389 5388 5387 5386 5379
735 5   5379 5377 5378 5390 5389 5379
736 5   5391 5392 5388 5389 5390 5391
737 5   5391 5395 5394 5393 5392 5391
738 5   5391 5398 5397 5396 5395 5391
739 5   5391 5401 5400 5399 5398 5391
740 5   5391 5390 5378 5402 5401 5391
741 5   5403 5404 5400 5401 5402 5403
742 5   5403 5407 5406 5405 5404 5403
743 5   5403 5246 5247 5408 5407 5403
744 5   5403 5409 5244 5245 5246 5403
745 5   5403 5402 5378 5410 5409 5403
746 5   5411 5243 5244 5409 5410 5411
747 5   5411 5288 5241 5242 5243 5411
748 5   5411 5369 5286 5287 5288 5411
749 5   5411 5372 5367 5368 5369 5411
750 5   5411 5410 5378 5371 5372 5411
751 5   5412 5416 5415 5414 5413 5412
752 5   5412 5419 5418 5417 5416 5412
753 5   5412 5384 5385 5420 5419 5412
754 5   5412 5421 5382 5383 5384 5412
755 5   5412 5413 5423 5422 5421 5412
756 5   5424 5381 5382 5421 5422 5424
757 5   5424 5374 5375 5380 5381 5424
758 5   5424 5357 5358 5373 5374 5424
759 5   5424 5425 5355 5356 5357 5424
760 5   5424 5422 5423 5426 5425 5424
761 5   5427 5354 5355 5425 5426 5427
762 5   5427 5348 5349 5353 5354 5427
763 5   5427 3503 3504 5347 5348 5427
764 5   5427 5428 3501 3502 3503 5427
765 5   5427 5426 5423 5429 5428 5427
766 5   5430 3500 3501 5428 5429 5430
767 5   5430 3497 3498 3499 3500 5430
768 5   5430 5431 3495 3496 3497 5430
769 5   5430 5434 5433 5432 5431 5430
770 5   5430 5429 5423 5435 5434 5430
771 5   5436 5437 5433 5434 5435 5436
772 5   5436 5440 5439 5438 5437 5436
773 5   5436 5443 5442 5441 5440 5436
774 5   5436 5414 5415 5444 5443 5436
775 5   5436 5435 5423 5413 5414 5436
776 5   5445 5438 5439 5447 5446 5445
777 5   5445 5432 5433 5437 5438 5445
778 5   5445 3494 3495 5431 5432 5445
779 5   5445 5448 3492 3493 3494 5445
780 5   5445 5446 5450 5449 5448 5445
781 5   5451 3491 3492 5448 5449 5451
782 5   5451 3488 3489 3490 3491 5451
783 5   5451 3485 3486 3487 3488 5451
784 5   5451 5452 3483 3484 3485 5451
785 5   5451 5449 5450 5453 5452 5451
786 5   5454 3482 3483 5452 5453 5454
787 5   5454 3479 3480 3481 3482 5454
788 5   5454 3476 3477 3478 3479 5454
789 5   5454 5455 3474 3475 3476 5454
790 5   5454 5453 5450 5456 5455 5454
791 5   5457 3473 3474 5455 5456 5457
792 5   5457 3470 3471 3472 3473 5457
793 5   5457 5458 3468 3469 3470 5457
794 5   5457 5461 5460 5459 5458 5457
795 5   5457 5456 5450 5462 5461 5457
796 5   5463 5464 5460 5461 5462 5463
797 5   5463 5467 5466 5465 5464 5463
798 5   5463 5441 5442 5468 5467 5463
799 5   5463 5447 5439 5440 5441 5463
800 5   5463 5462 5450 5446 5447 5463
801 5   5469 5465 5466 5471 5470 5469
802 5   5469 5459 5460 5464 5465 5469
803 5   5469 3467 3468 5458 5459 5469
804 5   5469 5472 3465 3466 3467 5469
805 5   5469 5470 5474 5473 5472 5469
806 5   5475 3464 3465 5472 5473 5475
807 5   5475 3461 3462 3463 3464 5475
808 5   5475 3458 3459 3460 3461 5475
809 5   5475 5476 3456 3457 3458 5475
810 5   5475 5473 5474 5477 5476 5475
811 5   5478 3455 3456 5476 5477 5478
812 5   5478 3452 3453 3454 3455 5478
813 5   5478 3449 3450 3451 3452 5478
814 5   5478 5479 3447 3448 3449 5478
815 5   5478 5477 5474 5480 5479 5478
816 5   5481 3446 3447 5479 5480 5481
817 5   5481 3443 3444 3445 3446 5481
818 5   5481 5482 3441 3442 3443 5481
819 5   5481 5485 5484 5483 5482 5481
820 5   5481 5480 5474 5486 5485 5481
821 5   5487 5488 5484 5485 5486 5487
822 5   5487 5491 5490 5489 5488 5487
823 5   5487 5468 5442 5492 5491 5487
824 5   5487 5471 5466 5467 5468 5487
825 5   5487 5486 5474 5470 5471 5487
826 5   5493 5489 5490 5495 5494 5493
827 5   5493 5483 5484 5488 5489 5493
828 5   5493 3440 3441 5482 5483 5493
829 5   5493 5496 3438 3439 3440 5493
830 5   5493 5494 5498 5497 5496 5493
831 5   5499 3437 3438 5496 5497 5499
832 5   5499 3434 3435 3436 3437 5499
833 5   5499 3431 3432 3433 3434 5499
834 5   5499 5500 3429 3430 3431 5499
835 5   5499 5497 5498 5501 5500 5499
836 5   5502 3428 3429 5500 5501 5502
837 5   5502 3425 3426 3427 3428 5502
838 5   5502 5503 3423 3424 3425 5502
839 5   5502 5506 5505 5504 5503 5502
840 5   5502 5501 5498 5507 5506 5502
841 5   5508 5509 5505 5506 5507 5508
842 5   5508 5512 5511 5510 5509 5508
843 5   5508 5515 5514 5513 5512 5508
844 5   5508 5518 5517 5516 5515 5508
845 5   5508 5507 5498 5519 5518 5508
846 5   5520 5521 5517 5518 5519 5520
847 5   5520 5524 5523 5522 5521 5520
848 5   5520 5492 5442 5525 5524 5520
849 5   5520 5495 5490 5491 5492 5520
850 5   5520 5519 5498 5494 5495 5520
851 5   5526 5522 5523 5528 5527 5526
852 5   5526 5516 5517 5521 5522 5526
853 5   5526 5529 5514 5515 5516 5526
854 5   5526 5532 5531 5530 5529 5526
855 5   5526 5527 5534 5533 5532 5526
856 5   5535 5536 5531 5532 5533 5535
857 5   5535 5539 5538 5537 5536 5535
858 5   5535 5542 5541 5540 5539 5535
859 5   5535 5545 5544 5543 5542 5535
860 5   5535 5533 5534 5546 5545 5535
861 5   5547 5548 5544 5545 5546 5547
862 5   5547 5551 5550 5549 5548 5547
863 5   5547 5396 5397 5552 5551 5547
864 5   5547 5553 5394 5395 5396 5547
865 5   5547 5546 5534 5554 5553 5547
866 5   5555 5393 5394 5553 5554 5555
867 5   5555 5387 5388 5392 5393 5555
868 5   5555 5420 5385 5386 5387 5555
869 5   5555 5556 5418 5419 5420 5555
870 5   5555 5554 5534 5557 5556 5555
871 5   5558 5417 5418 5556 5557 5558
872 5   5558 5444 5415 5416 5417 5558
873 5   5558 5525 5442 5443 5444 5558
874 5   5558 5528 5523 5524 5525 5558
875 5   5558 5557 5534 5527 5528 5558
876 5   5559 5563 5562 5561 5560 5559
877 5   5559 5566 5565 5564 5563 5559
878 5   5559 5540 5541 5567 5566 5559
879 5   5559 5568 5538 5539 5540 5559
880 5   5559 5560 5570 5569 5568 5559
881 5   5571 5537 5538 5568 5569 5571
882 5   5571 5530 5531 5536 5537 5571
883 5   5571 5513 5514 5529 5530 5571
884 5   5571 5572 5511 5512 5513 5571
885 5   5571 5569 5570 5573 5572 5571
886 5   5574 5510 5511 5572 5573 5574
887 5   5574 5504 5505 5509 5510 5574
888 5   5574 3422 3423 5503 5504 5574
889 5   5574 5575 3420 3421 3422 5574
890 5   5574 5573 5570 5576 5575 5574
891 5   5577 3419 3420 5575 5576 5577
892 5   5577 3416 3417 3418 3419 5577
893 5   5577 5578 3414 3415 3416 5577
894 5   5577 5581 5580 5579 5578 5577
895 5   5577 5576 5570 5582 5581 5577
896 5   5583 5584 5580 5581 5582 5583
897 5   5583 5587 5586 5585 5584 5583
898 5   5583 5590 5589 5588 5587 5583
899 5   5583 5561 5562 5591 5590 5583
900 5   5583 5582 5570 5560 5561 5583
901 5   5592 5585 5586 5594 5593 5592
902 5   5592 5579 5580 5584 5585 5592
903 5   5592 3413 3414 5578 5579 5592
904 5   5592 5595 3411 3412 3413 5592
905 5   5592 5593 5597 5596 5595 5592
906 5   5598 3410 3411 5595 5596 5598
907 5   5598 3407 3408 3409 3410 5598
908 5   5598 3404 3405 3406 3407 5598
909 5   5598 5599 3402 3403 3404 5598
910 5   5598 5596 5597 5600 5599 5598
911 5   5601 3401 3402 5599 5600 5601
912 5   5601 3398 3399 3400 3401 5601
913 5   5601 3395 3396 3397 3398 5601
914 5   5601 5602 3393 3394 3395 5601
915 5   5601 5600 5597 5603 5602 5601
916 5   5604 3392 3393 5602 5603 5604
917 5   5604 3389 3390 3391 3392 5604
918 5   5604 5605 3387 3388 3389 5604
919 5   5604 5608 5607 5606 5605 5604
920 5   5604 5603 5597 5609 5608 5604
921 5   5610 5611 5607 5608 5609 5610
922 5   5610 5614 5613 5612 5611 5610
923 5   5610 5588 5589 5615 5614 5610
924 5   5610 5594 5586 5587 5588 5610
925 5   5610 5609 5597 5593 5594 5610
926 5   5616 5612 5613 5618 5617 5616
927 5   5616 5606 5607 5611 5612 5616
928 5   5616 3386 3387 5605 5606 5616
929 5   5616 5619 3384 3385 3386 5616
930 5   5616 5617 5621 5620 5619 5616
931 5   5622 3383 3384 5619 5620 5622
932 5   5622 3380 3381 3382 3383 5622
933 5   5622 3377 3378 3379 3380 5622
934 5   5622 5623 3375 3376 3377 5622
935 5   5622 5620 5621 5624 5623 5622
936 5   5625 3374 3375 5623 5624 5625
937 5   5625 3371 3372 3373 3374 5625
938 5   5625 4097 3369 3370 3371 5625
939 5   5625 5626 4095 4096 4097 5625
940 5   5625 5624 5621 5627 5626 5625
941 5   5628 4094 4095 5626 5627 5628
942 5   5628 4091 4092 4093 4094 5628
943 5   5628 5629 4089 4090 4091 5628
944 5   5628 5632 5631 5630 5629 5628
945 5   5628 5627 5621 5633 5632 5628
946 5   5634 5635 5631 5632 5633 5634
947 5   5634 5638 5637 5636 5635 5634
948 5   5634 5615 5589 5639 5638 5634
949 5   5634 5618 5613 5614 5615 5634
950 5   5634 5633 5621 5617 5618 5634
951 5   5640 5636 5637 5642 5641 5640
952 5   5640 5630 5631 5635 5636 5640
953 5   5640 4088 4089 5629 5630 5640
954 5   5640 5643 4086 4087 4088 5640
955 5   5640 5641 5645 5644 5643 5640
956 5   5646 4085 4086 5643 5644 5646
957 5   5646 4082 4083 4084 4085 5646
958 5   5646 4079 4080 4081 4082 5646
959 5   5646 5647 4077 4078 4079 5646
960 5   5646 5644 5645 5648 5647 5646
961 5   5649 4076 4077 5647 5648 5649
962 5   5649 4073 4074 4075 4076 5649
963 5   5649 5650 4071 4072 4073 5649
964 5   5649 5653 5652 5651 5650 5649
965 5   5649 5648 5645 5654 5653 5649
966 5   5655 5656 5652 5653 5654 5655
967 5   5655 5659 5658 5657 5656 5655
968 5   5655 5662 5661 5660 5659 5655
969 5   5655 5665 5664 5663 5662 5655
970 5   5655 5654 5645 5666 5665 5655
971 5   5667 5668 5664 5665 5666 5667
972 5   5667 5671 5670 5669 5668 5667
973 5   5667 5639 5589 5672 5671 5667
974 5   5667 5642 5637 5638 5639 5667
975 5   5667 5666 5645 5641 5642 5667
976 5   5673 5669 5670 5675 5674 5673
977 5   5673 5663 5664 5668 5669 5673
978 5   5673 5676 5661 5662 5663 5673
979 5   5673 5679 5678 5677 5676 5673
980 5   5673 5674 5681 5680 5679 5673
981 5   5682 5683 5678 5679 5680 5682
982 5   5682 5686 5685 5684 5683 5682
983 5   5682 5689 5688 5687 5686 5682
984 5   5682 5692 5691 5690 5689 5682
985 5   5682 5680 5681 5693 5692 5682
986 5   5694 5695 5691 5692 5693 5694
987 5   5694 5698 5697 5696 5695 5694
988 5   5694 5552 5397 5699 5698 5694
989 5   5694 5700 5550 5551 5552 5694
990 5   5694 5693 5681 5701 5700 5694
991 5   5702 5549 5550 5700 5701 5702
992 5   5702 5543 5544 5548 5549 5702
993 5   5702 5567 5541 5542 5543 5702
994 5   5702 5703 5565 5566 5567 5702
995 5   5702 5701 5681 5704 5703 5702
996 5   5705 5564 5565 5703 5704 5705
997 5   5705 5591 5562 5563 5564 5705
998 5   5705 5672 5589 5590 5591 5705
999 5   5705 5675 5670 5671 5672 5705
1000 5   5705 5704 5681 5674 5675 5705
1001 5   5706 5710 5709 5708 5707 5706
1002 5   5706 5713 5712 5711 5710 5706
1003 5   5706 5687 5688 5714 5713 5706
1004 5   5706 5715 5685 5686 5687 5706
1005 5   5706 5707 5717 5716 5715 5706
1006 5   5718 5684 5685 5715 5716 5718
1007 5   5718 5677 5678 5683 5684 5718
1008 5   5718 5660 5661 5676 5677 5718
1009 5   5718 5719 5658 5659 5660 5718
1010 5   5718 5716 5717 5720 5719 5718
1011 5   5721 5657 5658 5719 5720 5721
1012 5   5721 5651 5652 5656 5657 5721
1013 5   5721 4070 4071 5650 5651 5721
1014 5   5721 5722 4068 4069 4070 5721
1015 5   5721 5720 5717 5723 5722 5721
1016 5   5724 4067 4068 5722 5723 5724
1017 5   5724 4064 4065 4066 4067 5724
1018 5   5724 5725 4062 4063 4064 5724
1019 5   5724 5728 5727 5726 5725 5724
1020 5   5724 5723 5717 5729 5728 5724
1021 5   5730 5731 5727 5728 5729 5730
1022 5   5730 5734 5733 5732 5731 5730
1023 5   5730 5737 5736 5735 5734 5730
1024 5   5730 5708 5709 5738 5737 5730
1025 5   5730 5729 5717 5707 5708 5730
1026 5   5739 5732 5733 5741 5740 5739
1027 5   5739 5726 5727 5731 5732 5739
1028 5   5739 4061 4062 5725 5726 5739
1029 5   5739 5742 4059 4060 4061 5739
1030 5   5739 5740 5744 5743 5742 5739
1031 5   5745 4058 4059 5742 5743 5745
1032 5   5745 4055 4056 4057 4058 5745
1033 5   5745 4052 4053 4054 4055 5745
1034 5   5745 5746 4050 4051 4052 5745
1035 5   5745 5743 5744 5747 5746 5745
1036 5   5748 4049 4050 5746 5747 5748
1037 5   5748 4046 4047 4048 4049 5748
1038 5   5748 4043 4044 4045 4046 5748
1039 5   5748 5749 4041 4042 4043 5748
1040 5   5748 5747 5744 5750 5749 5748
1041 5   5751 4040 4041 5749 5750 5751
1042 5   5751 4037 4038 4039 4040 5751
1043 5   5751 5752 4035 4036 4037 5751
1044 5   5751 5755 5754 5753 5752 5751
1045 5   5751 5750 5744 5756 5755 5751
1046 5   5757 5758 5754 5755 5756 5757
1047 5   5757 5761 5760 5759 5758 5757
1048 5   5757 5735 5736 5762 5761 5757
1049 5   5757 5741 5733 5734 5735 5757
1050 5   5757 5756 5744 5740 5741 5757
1051 5   5763 5759 5760 5765 5764 5763
1052 5   5763 5753 5754 5758 5759 5763
1053 5   5763 4034 4035 5752 5753 5763
1054 5   5763 5766 4032 4033 4034 5763
1055 5   5763 5764 5768 5767 5766 5763
1056 5   5769 4031 4032 5766 5767 5769
1057 5   5769 4028 4029 4030 4031 5769
1058 5   5769 4025 4026 4027 4028 5769
1059 5   5769 5770 4023 4024 4025 5769
1060 5   5769 5767 5768 5771 5770 5769
1061 5   5772 4022 4023 5770 5771 5772
1062 5   5772 4019 4020 4021 4022 5772
1063 5   5772 5773 4017 4018 4019 5772
1064 5   5772 5776 5775 5774 5773 5772
1065 5   5772 5771 5768 5777 5776 5772
1066 5   5778 5779 5775 5776 5777 5778
1067 5   5778 5782 5781 5780 5779 5778
1068 5   5778 5785 5784 5783 5782 5778
1069 5   5778 5788 5787 5786 5785 5778
1070 5   5778 5777 5768 5789 5788 5778
1071 5   5790 5791 5787 5788 5789 5790
1072 5   5790 5794 5793 5792 5791 5790
1073 5   5790 5762 5736 5795 5794 5790
1074 5   5790 5765 5760 5761 5762 5790
1075 5   5790 5789 5768 5764 5765 5790
1076 5   5796 5792 5793 5798 5797 5796
1077 5   5796 5786 5787 5791 5792 5796
1078 5   5796 5799 5784 5785 5786 5796
1079 5   5796 5802 5801 5800 5799 5796
1080 5   5796 5797 5804 5803 5802 5796
1081 5   5805 5806 5801 5802 5803 5805
1082 5   5805 5809 5808 5807 5806 5805
1083 5   5805 5812 5811 5810 5809 5805
1084 5   5805 5815 5814 5813 5812 5805
1085 5   5805 5803 5804 5816 5815 5805
1086 5   5817 5818 5814 5815 5816 5817
1087 5   5817 5821 5820 5819 5818 5817
1088 5   5817 5824 5823 5822 5821 5817
1089 5   5817 5827 5826 5825 5824 5817
1090 5   5817 5816 5804 5828 5827 5817
1091 5   5829 5830 5826 5827 5828 5829
1092 5   5829 5833 5832 5831 5830 5829
1093 5   5829 5836 5835 5834 5833 5829
1094 5   5829 5839 5838 5837 5836 5829
1095 5   5829 5828 5804 5840 5839 5829
1096 5   5841 5842 5838 5839 5840 5841
1097 5   5841 5845 5844 5843 5842 5841
1098 5   5841 5795 5736 5846 5845 5841
1099 5   5841 5798 5793 5794 5795 5841
1100 5   5841 5840 5804 5797 5798 5841
1101 5   5847 5843 5844 5849 5848 5847
1102 5   5847 5837 5838 5842 5843 5847
1103 5   5847 5850 5835 5836 5837 5847
1104 5   5847 5853 5852 5851 5850 5847
1105 5   5847 5848 5855 5854 5853 5847
1106 5   5856 5857 5852 5853 5854 5856
1107 5   5856 5860 5859 5858 5857 5856
1108 5   5856 5863 5862 5861 5860 5856
1109 5   5856 5866 5865 5864 5863 5856
1110 5   5856 5854 5855 5867 5866 5856
1111 5   5868 5869 5865 5866 5867 5868
1112 5   5868 5872 5871 5870 5869 5868
1113 5   5868 5699 5397 5873 5872 5868
1114 5   5868 5874 5697 5698 5699 5868
1115 5   5868 5867 5855 5875 5874 5868
1116 5   5876 5696 5697 5874 5875 5876
1117 5   5876 5690 5691 5695 5696 5876
1118 5   5876 5714 5688 5689 5690 5876
1119 5   5876 5877 5712 5713 5714 5876
1120 5   5876 5875 5855 5878 5877 5876
1121 5   5879 5711 5712 5877 5878 5879
1122 5   5879 5738 5709 5710 5711 5879
1123 5   5879 5846 5736 5737 5738 5879
1124 5   5879 5849 5844 5845 5846 5879
1125 5   5879 5878 5855 5848 5849 5879
1126 5   5880 5884 5883 5882 5881 5880
1127 5   5880 5887 5886 5885 5884 5880
1128 5   5880 5861 5862 5888 5887 5880
1129 5   5880 5889 5859 5860 5861 5880
1130 5   5880 5881 5891 5890 5889 5880
1131 5   5892 5858 5859 5889 5890 5892
1132 5   5892 5851 5852 5857 5858 5892
1133 5   5892 5834 5835 5850 5851 5892
1134 5   5892 5893 5832 5833 5834 5892
1135 5   5892 5890 5891 5894 5893 5892
1136 5   5895 5831 5832 5893 5894 5895
1137 5   5895 5825 5826 5830 5831 5895
1138 5   5895 5896 5823 5824 5825 5895
1139 5   5895 5899 5898 5897 5896 5895
1140 5   5895 5894 5891 5900 5899 5895
1141 5   5901 5902 5898 5899 5900 5901
1142 5   5901 5905 5904 5903 5902 5901
1143 5   5901 5908 5907 5906 5905 5901
1144 5   5901 5911 5910 5909 5908 5901
1145 5   5901 5900 5891 5912 5911 5901
1146 5   5913 5914 5910 5911 5912 5913
1147 5   5913 5917 5916 5915 5914 5913
1148 5   5913 5920 5919 5918 5917 5913
1149 5   5913 5882 5883 5921 5920 5913
1150 5   5913 5912 5891 5881 5882 5913
1151 5   5922 5915 5916 5924 5923 5922
1152 5   5922 5909 5910 5914 5915 5922
1153 5   5922 5925 5907 5908 5909 5922
1154 5   5922 5928 5927 5926 5925 5922
1155 5   5922 5923 5930 5929 5928 5922
1156 5   5931 5932 5927 5928 5929 5931
1157 5   5931 5935 5934 5933 5932 5931
1158 5   5931 5938 5937 5936 5935 5931
1159 5   5931 5941 5940 5939 5938 5931
1160 5   5931 5929 5930 5942 5941 5931
1161 5   5943 5944 5940 5941 5942 5943
1162 5   5943 5947 5946 5945 5944 5943
1163 5   5943 5950 5949 5948 5947 5943
1164 5   5943 5953 5952 5951 5950 5943
1165 5   5943 5942 5930 5954 5953 5943
1166 5   5955 5956 5952 5953 5954 5955
1167 5   5955 5959 5958 5957 5956 5955
1168 5   5955 5962 5961 5960 5959 5955
1169 5   5955 5965 5964 5963 5962 5955
1170 5   5955 5954 5930 5966 5965 5955
1171 5   5967 5968 5964 5965 5966 5967
1172 5   5967 5971 5970 5969 5968 5967
1173 5   5967 5918 5919 5972 5971 5967
1174 5   5967 5924 5916 5917 5918 5967
1175 5   5967 5966 5930 5923 5924 5967
1176 5   5973 5969 5970 5975 5974 5973
1177 5   5973 5963 5964 5968 5969 5973
1178 5   5973 5976 5961 5962 5963 5973
1179 5   5973 5979 5978 5977 5976 5973
1180 5   5973 5974 5981 5980 5979 5973
1181 5   5982 5983 5978 5979 5980 5982
1182 5   5982 5986 5985 5984 5983 5982
1183 5   5982 5989 5988 5987 5986 5982
1184 5   5982 5992 5991 5990 5989 5982
1185 5   5982 5980 5981 5993 5992 5982
1186 5   5994 5995 5991 5992 5993 5994
1187 5   5994 5998 5997 5996 5995 5994
1188 5   5994 5156 5157 5999 5998 5994
1189 5   5994 6000 5154 5155 5156 5994
1190 5   5994 5993 5981 6001 6000 5994
1191 5   6002 5153 5154 6000 6001 6002
1192 5   6002 5147 5148 5152 5153 6002
1193 5   6002 6003 5145 5146 5147 6002
1194 5   6002 6006 6005 6004 6003 6002
1195 5   6002 6001 5981 6007 6006 6002
1196 5   6008 6009 6005 6006 6007 6008
1197 5   6008 6012 6011 6010 6009 6008
1198 5   6008 5972 5919 6013 6012 6008
1199 5   6008 5975 5970 5971 5972 6008
1200 5   6008 6007 5981 5974 5975 6008
1201 5   6014 6010 6011 6016 6015 6014
1202 5   6014 6004 6005 6009 6010 6014
1203 5   6014 5144 5145 6003 6004 6014
1204 5   6014 6017 5142 5143 5144 6014
1205 5   6014 6015 6019 6018 6017 6014
1206 5   6020 5141 5142 6017 6018 6020
1207 5   6020 5134 5135 5140 5141 6020
1208 5   6020 5117 5118 5133 5134 6020
1209 5   6020 6021 5115 5116 5117 6020
1210 5   6020 6018 6019 6022 6021 6020
1211 5   6023 5114 5115 6021 6022 6023
1212 5   6023 5108 5109 5113 5114 6023
1213 5   6023 5271 5106 5107 5108 6023
1214 5   6023 6024 5269 5270 5271 6023
1215 5   6023 6022 6019 6025 6024 6023
1216 5   6026 5268 5269 6024 6025 6026
1217 5   6026 5262 5263 5267 5268 6026
1218 5   6026 6027 5260 5261 5262 6026
1219 5   6026 6030 6029 6028 6027 6026
1220 5   6026 6025 6019 6031 6030 6026
1221 5   6032 6033 6029 6030 6031 6032
1222 5   6032 6036 6035 6034 6033 6032
1223 5   6032 6013 5919 6037 6036 6032
1224 5   6032 6016 6011 6012 6013 6032
1225 5   6032 6031 6019 6015 6016 6032
1226 5   6038 6034 6035 6040 6039 6038
1227 5   6038 6028 6029 6033 6034 6038
1228 5   6038 5259 5260 6027 6028 6038
1229 5   6038 6041 5257 5258 5259 6038
1230 5   6038 6039 6043 6042 6041 6038
1231 5   6044 5256 5257 6041 6042 6044
1232 5   6044 5249 5250 5255 5256 6044
1233 5   6044 5408 5247 5248 5249 6044
1234 5   6044 6045 5406 5407 5408 6044
1235 5   6044 6042 6043 6046 6045 6044
1236 5   6047 5405 5406 6045 6046 6047
1237 5   6047 5399 5400 5404 5405 6047
1238 5   6047 5873 5397 5398 5399 6047
1239 5   6047 6048 5871 5872 5873 6047
1240 5   6047 6046 6043 6049 6048 6047
1241 5   6050 5870 5871 6048 6049 6050
1242 5   6050 5864 5865 5869 5870 6050
1243 5   6050 5888 5862 5863 5864 6050
1244 5   6050 6051 5886 5887 5888 6050
1245 5   6050 6049 6043 6052 6051 6050
1246 5   6053 5885 5886 6051 6052 6053
1247 5   6053 5921 5883 5884 5885 6053
1248 5   6053 6037 5919 5920 5921 6053
1249 5   6053 6040 6035 6036 6037 6053
1250 5   6053 6052 6043 6039 6040 6053
1251 5   6054 6058 6057 6056 6055 6054
1252 5   6054 6061 6060 6059 6058 6054
1253 5   6054 6064 6063 6062 6061 6054
1254 5   6054 6067 6066 6065 6064 6054
1255 5   6054 6055 6069 6068 6067 6054
1256 5   6070 6071 6066 6067 6068 6070
1257 5   6070 6074 6073 6072 6071 6070
1258 5   6070 6077 6076 6075 6074 6070
1259 5   6070 6080 6079 6078 6077 6070
1260 5   6070 6068 6069 6081 6080 6070
1261 5   6082 6083 6079 6080 6081 6082
1262 5   6082 6086 6085 6084 6083 6082
1263 5   6082 5948 5949 6087 6086 6082
1264 5   6082 6088 5946 5947 5948 6082
1265 5   6082 6081 6069 6089 6088 6082
1266 5   6090 5945 5946 6088 6089 6090
1267 5   6090 5939 5940 5944 5945 6090
1268 5   6090 6091 5937 5938 5939 6090
1269 5   6090 6094 6093 6092 6091 6090
1270 5   6090 6089 6069 6095 6094 6090
1271 5   6096 6097 6093 6094 6095 6096
1272 5   6096 6100 6099 6098 6097 6096
1273 5   6096 6103 6102 6101 6100 6096
1274 5   6096 6056 6057 6104 6103 6096
1275 5   6096 6095 6069 6055 6056 6096
1276 5   6105 6098 6099 6107 6106 6105
1277 5   6105 6092 6093 6097 6098 6105
1278 5   6105 5936 5937 6091 6092 6105
1279 5   6105 6108 5934 5935 5936 6105
1280 5   6105 6106 6110 6109 6108 6105
1281 5   6111 5933 5934 6108 6109 6111
1282 5   6111 5926 5927 5932 5933 6111
1283 5   6111 5906 5907 5925 5926 6111
1284 5   6111 6112 5904 5905 5906 6111
1285 5   6111 6109 6110 6113 6112 6111
1286 5   6114 5903 5904 6112 6113 6114
1287 5   6114 5897 5898 5902 5903 6114
1288 5   6114 5822 5823 5896 5897 6114
1289 5   6114 6115 5820 5821 5822 6114
1290 5   6114 6113 6110 6116 6115 6114
1291 5   6117 5819 5820 6115 6116 6117
1292 5   6117 5813 5814 5818 5819 6117
1293 5   6117 6118 5811 5812 5813 6117
1294 5   6117 6121 6120 6119 6118 6117
1295 5   6117 6116 6110 6122 6121 6117
1296 5   6123 6124 6120 6121 6122 6123
1297 5   6123 6127 6126 6125 6124 6123
1298 5   6123 6101 6102 6128 6127 6123
1299 5   6123 6107 6099 6100 6101 6123
1300 5   6123 6122 6110 6106 6107 6123
1301 5   6129 6125 6126 6131 6130 6129
1302 5   6129 6119 6120 6124 6125 6129
1303 5   6129 5810 5811 6118 6119 6129
1304 5   6129 6132 5808 5809 5810 6129
1305 5   6129 6130 6134 6133 6132 6129
1306 5   6135 5807 5808 6132 6133 6135
1307 5   6135 5800 5801 5806 5807 6135
1308 5   6135 5783 5784 5799 5800 6135
1309 5   6135 6136 5781 5782 5783 6135
1310 5   6135 6133 6134 6137 6136 6135
1311 5   6138 5780 5781 6136 6137 6138
1312 5   6138 5774 5775 5779 5780 6138
1313 5   6138 4016 4017 5773 5774 6138
1314 5   6138 6139 4014 4015 4016 6138
1315 5   6138 6137 6134 6140 6139 6138
1316 5   6141 4013 4014 6139 6140 6141
1317 5   6141 4010 4011 4012 4013 6141
1318 5   6141 6142 4008 4009 4010 6141
1319 5   6141 6145 6144 6143 6142 6141
1320 5   6141 6140 6134 6146 6145 6141
1321 5   6147 6148 6144 6145 6146 6147
1322 5   6147 6151 6150 6149 6148 6147
1323 5   6147 6128 6102 6152 6151 6147
1324 5   6147 6131 6126 6127 6128 6147
1325 5   6147 6146 6134 6130 6131 6147
1326 5   6153 6149 6150 6155 6154 6153
1327 5   6153 6143 6144 6148 6149 6153
1328 5   6153 4007 4008 6142 6143 6153
1329 5   6153 6156 4005 4006 4007 6153
1330 5   6153 6154 6158 6157 6156 6153
1331 5   6159 4004 4005 6156 6157 6159
1332 5   6159 4001 4002 4003 4004 6159
1333 5   6159 3998 3999 4000 4001 6159
1334 5   6159 6160 3996 3997 3998 6159
1335 5   6159 6157 6158 6161 6160 6159
1336 5   6162 3995 3996 6160 6161 6162
1337 5   6162 3992 3993 3994 3995 6162
1338 5   6162 6163 3990 3991 3992 6162
1339 5   6162 6166 6165 6164 6163 6162
1340 5   6162 6161 6158 6167 6166 6162
1341 5   6168 6169 6165 6166 6167 6168
1342 5   6168 6172 6171 6170 6169 6168
1343 5   6168 6175 6174 6173 6172 6168
1344 5   6168 6178 6177 6176 6175 6168
1345 5   6168 6167 6158 6179 6178 6168
1346 5   6180 6181 6177 6178 6179 6180
1347 5   6180 6184 6183 6182 6181 6180
1348 5   6180 6152 6102 6185 6184 6180
1349 5   6180 6155 6150 6151 6152 6180
1350 5   6180 6179 6158 6154 6155 6180
1351 5   6186 6182 6183 6188 6187 6186
1352 5   6186 6176 6177 6181 6182 6186
1353 5   6186 6189 6174 6175 6176 6186
1354 5   6186 6192 6191 6190 6189 6186
1355 5   6186 6187 6194 6193 6192 6186
1356 5   6195 6196 6191 6192 6193 6195
1357 5   6195 6199 6198 6197 6196 6195
1358 5   6195 6202 6201 6200 6199 6195
1359 5   6195 6205 6204 6203 6202 6195
1360 5   6195 6193 6194 6206 6205 6195
1361 5   6207 6208 6204 6205 6206 6207
1362 5   6207 6211 6210 6209 6208 6207
1363 5   6207 6214 6213 6212 6211 6207
1364 5   6207 6217 6216 6215 6214 6207
1365 5   6207 6206 6194 6218 6217 6207
1366 5   6219 6220 6216 6217 6218 6219
1367 5   6219 6223 6222 6221 6220 6219
1368 5   6219 6062 6063 6224 6223 6219
1369 5   6219 6225 6060 6061 6062 6219
1370 5   6219 6218 6194 6226 6225 6219
1371 5   6227 6059 6060 6225 6226 6227
1372 5   6227 6104 6057 6058 6059 6227
1373 5   6227 6185 6102 6103 6104 6227
1374 5   6227 6188 6183 6184 6185 6227
1375 5   6227 6226 6194 6187 6188 6227
1376 5   6228 6232 6231 6230 6229 6228
1377 5   6228 6235 6234 6233 6232 6228
1378 5   6228 6200 6201 6236 6235 6228
1379 5   6228 6237 6198 6199 6200 6228
1380 5   6228 6229 6239 6238 6237 6228
1381 5   6240 6197 6198 6237 6238 6240
1382 5   6240 6190 6191 6196 6197 6240
1383 5   6240 6173 6174 6189 6190 6240
1384 5   6240 6241 6171 6172 6173 6240
1385 5   6240 6238 6239 6242 6241 6240
1386 5   6243 6170 6171 6241 6242 6243
1387 5   6243 6164 6165 6169 6170 6243
1388 5   6243 3989 3990 6163 6164 6243
1389 5   6243 6244 3987 3988 3989 6243
1390 5   6243 6242 6239 6245 6244 6243
1391 5   6246 3986 3987 6244 6245 6246
1392 5   6246 3983 3984 3985 3986 6246
1393 5   6246 6247 3981 3982 3983 6246
1394 5   6246 6250 6249 6248 6247 6246
1395 5   6246 6245 6239 6251 6250 6246
1396 5   6252 6253 6249 6250 6251 6252
1397 5   6252 6256 6255 6254 6253 6252
1398 5   6252 6259 6258 6257 6256 6252
1399 5   6252 6230 6231 6260 6259 6252
1400 5   6252 6251 6239 6229 6230 6252
1401 5   6261 6254 6255 6263 6262 6261
1402 5   6261 6248 6249 6253 6254 6261
1403 5   6261 3980 3981 6247 6248 6261
1404 5   6261 6264 3978 3979 3980 6261
1405 5   6261 6262 6266 6265 6264 6261
1406 5   6267 3977 3978 6264 6265 6267
1407 5   6267 3974 3975 3976 3977 6267
1408 5   6267 3971 3972 3973 3974 6267
1409 5   6267 6268 3969 3970 3971 6267
1410 5   6267 6265 6266 6269 6268 6267
1411 5   6270 3968 3969 6268 6269 6270
1412 5   6270 3965 3966 3967 3968 6270
1413 5   6270 3962 3963 3964 3965 6270
1414 5   6270 6271 3960 3961 3962 6270
1415 5   6270 6269 6266 6272 6271 6270
1416 5   6273 3959 3960 6271 6272 6273
1417 5   6273 3956 3957 3958 3959 6273
1418 5   6273 6274 3954 3955 3956 6273
1419 5   6273 6277 6276 6275 6274 6273
1420 5   6273 6272 6266 6278 6277 6273
1421 5   6279 6280 6276 6277 6278 6279
1422 5   6279 6283 6282 6281 6280 6279
1423 5   6279 6257 6258 6284 6283 6279
1424 5   6279 6263 6255 6256 6257 6279
1425 5   6279 6278 6266 6262 6263 6279
1426 5   6285 6281 6282 6287 6286 6285
1427 5   6285 6275 6276 6280 6281 6285
1428 5   6285 3953 3954 6274 6275 6285
1429 5   6285 6288 3951 3952 3953 6285
1430 5   6285 6286 6290 6289 6288 6285
1431 5   6291 3950 3951 6288 6289 6291
1432 5   6291 3947 3948 3949 3950 6291
1433 5   6291 3944 3945 3946 3947 6291
1434 5   6291 6292 3942 3943 3944 6291
1435 5   6291 6289 6290 6293 6292 6291
1436 5   6294 3941 3942 6292 6293 6294
1437 5   6294 3938 3939 3940 3941 6294
1438 5   6294 3935 3936 3937 3938 6294
1439 5   6294 6295 3933 3934 3935 6294
1440 5   6294 6293 6290 6296 6295 6294
1441 5   6297 3932 3933 6295 6296 6297
1442 5   6297 3929 3930 3931 3932 6297
1443 5   6297 6298 3927 3928 3929 6297
1444 5   6297 6301 6300 6299 6298 6297
1445 5   6297 6296 6290 6302 6301 6297
1446 5   6303 6304 6300 6301 6302 6303
1447 5   6303 6307 6306 6305 6304 6303
1448 5   6303 6284 6258 6308 6307 6303
1449 5   6303 6287 6282 6283 6284 6303
1450 5   6303 6302 6290 6286 6287 6303
1451 5   6309 6305 6306 6311 6310 6309
1452 5   6309 6299 6300 6304 6305 6309
1453 5   6309 3926 3927 6298 6299 6309
1454 5   6309 6312 3924 3925 3926 6309
1455 5   6309 6310 6314 6313 6312 6309
1456 5   6315 3923 3924 6312 6313 6315
1457 5   6315 3920 3921 3922 3923 6315
1458 5   6315 3917 3918 3919 3920 6315
1459 5   6315 6316 3915 3916 3917 6315
1460 5   6315 6313 6314 6317 6316 6315
1461 5   6318 3914 3915 6316 6317 6318
1462 5   6318 3911 3912 3913 3914 6318
1463 5   6318 6319 3909 3910 3911 6318
1464 5   6318 6322 6321 6320 6319 6318
1465 5   6318 6317 6314 6323 6322 6318
1466 5   6324 6325 6321 6322 6323 6324
1467 5   6324 6328 6327 6326 6325 6324
1468 5   6324 6331 6330 6329 6328 6324
1469 5   6324 6334 6333 6332 6331 6324
1470 5   6324 6323 6314 6335 6334 6324
1471 5   6336 6337 6333 6334 6335 6336
1472 5   6336 6340 6339 6338 6337 6336
1473 5   6336 6308 6258 6341 6340 6336
1474 5   6336 6311 6306 6307 6308 6336
1475 5   6336 6335 6314 6310 6311 6336
1476 5   6342 6338 6339 6344 6343 6342
1477 5   6342 6332 6333 6337 6338 6342
1478 5   6342 6345 6330 6331 6332 6342
1479 5   6342 6348 6347 6346 6345 6342
1480 5   6342 6343 6350 6349 6348 6342
1481 5   6351 6352 6347 6348 6349 6351
1482 5   6351 6355 6354 6353 6352 6351
1483 5   6351 6358 6357 6356 6355 6351
1484 5   6351 6361 6360 6359 6358 6351
1485 5   6351 6349 6350 6362 6361 6351
1486 5   6363 6364 6360 6361 6362 6363
1487 5   6363 6367 6366 6365 6364 6363
1488 5   6363 6212 6213 6368 6367 6363
1489 5   6363 6369 6210 6211 6212 6363
1490 5   6363 6362 6350 6370 6369 6363
1491 5   6371 6209 6210 6369 6370 6371
1492 5   6371 6203 6204 6208 6209 6371
1493 5   6371 6236 6201 6202 6203 6371
1494 5   6371 6372 6234 6235 6236 6371
1495 5   6371 6370 6350 6373 6372 6371
1496 5   6374 6233 6234 6372 6373 6374
1497 5   6374 6260 6231 6232 6233 6374
1498 5   6374 6341 6258 6259 6260 6374
1499 5   6374 6344 6339 6340 6341 6374
1500 5   6374 6373 6350 6343 6344 6374
1501 5   6375 6379 6378 6377 6376 6375
1502 5   6375 6382 6381 6380 6379 6375
1503 5   6375 6356 6357 6383 6382 6375
1504 5   6375 6384 6354 6355 6356 6375
1505 5   6375 6376 6386 6385 6384 6375
1506 5   6387 6353 6354 6384 6385 6387
1507 5   6387 6346 6347 6352 6353 6387
1508 5   6387 6329 6330 6345 6346 6387
1509 5   6387 6388 6327 6328 6329 6387
1510 5   6387 6385 6386 6389 6388 6387
1511 5   6390 6326 6327 6388 6389 6390
1512 5   6390 6320 6321 6325 6326 6390
1513 5   6390 3908 3909 6319 6320 6390
1514 5   6390 6391 3906 3907 3908 6390
1515 5   6390 6389 6386 6392 6391 6390
1516 5   6393 3905 3906 6391 6392 6393
1517 5   6393 3902 3903 3904 3905 6393
1518 5   6393 6394 3900 3901 3902 6393
1519 5   6393 6397 6396 6395 6394 6393
1520 5   6393 6392 6386 6398 6397 6393
1521 5   6399 6400 6396 6397 6398 6399
1522 5   6399 6403 6402 6401 6400 6399
1523 5   6399 6406 6405 6404 6403 6399
1524 5   6399 6377 6378 6407 6406 6399
1525 5   6399 6398 6386 6376 6377 6399
1526 5   6408 6401 6402 6410 6409 6408
1527 5   6408 6395 6396 6400 6401 6408
1528 5   6408 3899 3900 6394 6395 6408
1529 5   6408 6411 3897 3898 3899 6408
1530 5   6408 6409 6413 6412 6411 6408
1531 5   6414 3896 3897 6411 6412 6414
1532 5   6414 3893 3894 3895 3896 6414
1533 5   6414 3890 3891 3892 3893 6414
1534 5   6414 6415 3888 3889 3890 6414
1535 5   6414 6412 6413 6416 6415 6414
1536 5   6417 3887 3888 6415 6416 6417
1537 5   6417 3884 3885 3886 3887 6417
1538 5   6417 3881 3882 3883 3884 6417
1539 5   6417 6418 3879 3880 3881 6417
1540 5   6417 6416 6413 6419 6418 6417
1541 5   6420 3878 3879 6418 6419 6420
1542 5   6420 3875 3876 3877 3878 6420
1543 5   6420 6421 3873 3874 3875 6420
1544 5   6420 6424 6423 6422 6421 6420
1545 5   6420 6419 6413 6425 6424 6420
1546 5   6426 6427 6423 6424 6425 6426
1547 5   6426 6430 6429 6428 6427 6426
1548 5   6426 6404 6405 6431 6430 6426
1549 5   6426 6410 6402 6403 6404 6426
1550 5   6426 6425 6413 6409 6410 6426
1551 5   6432 6428 6429 6434 6433 6432
1552 5   6432 6422 6423 6427 6428 6432
1553 5   6432 3872 3873 6421 6422 6432
1554 5   6432 6435 3870 3871 3872 6432
1555 5   6432 6433 6437 6436 6435 6432
1556 5   6438 3869 3870 6435 6436 6438
1557 5   6438 3866 3867 3868 3869 6438
1558 5   6438 3863 3864 3865 3866 6438
1559 5   6438 6439 3861 3862 3863 6438
1560 5   6438 6436 6437 6440 6439 6438
1561 5   6441 3860 3861 6439 6440 6441
1562 5   6441 3857 3858 3859 3860 6441
1563 5   6441 3854 3855 3856 3857 6441
1564 5   6441 6442 3852 3853 3854 6441
1565 5   6441 6440 6437 6443 6442 6441
1566 5   6444 3851 3852 6442 6443 6444
1567 5   6444 3848 3849 3850 3851 6444
1568 5   6444 6445 3846 3847 3848 6444
1569 5   6444 6448 6447 6446 6445 6444
1570 5   6444 6443 6437 6449 6448 6444
1571 5   6450 6451 6447 6448 6449 6450
1572 5   6450 6454 6453 6452 6451 6450
1573 5   6450 6431 6405 6455 6454 6450
1574 5   6450 6434 6429 6430 6431 6450
1575 5   6450 6449 6437 6433 6434 6450
1576 5   6456 6452 6453 6458 6457 6456
1577 5   6456 6446 6447 6451 6452 6456
1578 5   6456 3845 3846 6445 6446 6456
1579 5   6456 6459 3843 3844 3845 6456
1580 5   6456 6457 6461 6460 6459 6456
1581 5   6462 3842 3843 6459 6460 6462
1582 5   6462 3839 3840 3841 3842 6462
1583 5   6462 3836 3837 3838 3839 6462
1584 5   6462 6463 3834 3835 3836 6462
1585 5   6462 6460 6461 6464 6463 6462
1586 5   6465 3833 3834 6463 6464 6465
1587 5   6465 3830 3831 3832 3833 6465
1588 5   6465 6466 3828 3829 3830 6465
1589 5   6465 6469 6468 6467 6466 6465
1590 5   6465 6464 6461 6470 6469 6465
1591 5   6471 6472 6468 6469 6470 6471
1592 5   6471 6475 6474 6473 6472 6471
1593 5   6471 6478 6477 6476 6475 6471
1594 5   6471 6481 6480 6479 6478 6471
1595 5   6471 6470 6461 6482 6481 6471
1596 5   6483 6484 6480 6481 6482 6483
1597 5   6483 6487 6486 6485 6484 6483
1598 5   6483 6455 6405 6488 6487 6483
1599 5   6483 6458 6453 6454 6455 6483
1600 5   6483 6482 6461 6457 6458 6483
1601 5   6489 6485 6486 6491 6490 6489
1602 5   6489 6479 6480 6484 6485 6489
1603 5   6489 6492 6477 6478 6479 6489
1604 5   6489 6495 6494 6493 6492 6489
1605 5   6489 6490 6497 6496 6495 6489
1606 5   6498 6499 6494 6495 6496 6498
1607 5   6498 6502 6501 6500 6499 6498
1608 5   6498 6505 6504 6503 6502 6498
1609 5   6498 6508 6507 6506 6505 6498
1610 5   6498 6496 6497 6509 6508 6498
1611 5   6510 6511 6507 6508 6509 6510
1612 5   6510 6514 6513 6512 6511 6510
1613 5   6510 6368 6213 6515 6514 6510
1614 5   6510 6516 6366 6367 6368 6510
1615 5   6510 6509 6497 6517 6516 6510
1616 5   6518 6365 6366 6516 6517 6518
1617 5   6518 6359 6360 6364 6365 6518
1618 5   6518 6383 6357 6358 6359 6518
1619 5   6518 6519 6381 6382 6383 6518
1620 5   6518 6517 6497 6520 6519 6518
1621 5   6521 6380 6381 6519 6520 6521
1622 5   6521 6407 6378 6379 6380 6521
1623 5   6521 6488 6405 6406 6407 6521
1624 5   6521 6491 6486 6487 6488 6521
1625 5   6521 6520 6497 6490 6491 6521
1626 5   6522 6526 6525 6524 6523 6522
1627 5   6522 6529 6528 6527 6526 6522
1628 5   6522 6503 6504 6530 6529 6522
1629 5   6522 6531 6501 6502 6503 6522
1630 5   6522 6523 6533 6532 6531 6522
1631 5   6534 6500 6501 6531 6532 6534
1632 5   6534 6493 6494 6499 6500 6534
1633 5   6534 6476 6477 6492 6493 6534
1634 5   6534 6535 6474 6475 6476 6534
1635 5   6534 6532 6533 6536 6535 6534
1636 5   6537 6473 6474 6535 6536 6537
1637 5   6537 6467 6468 6472 6473 6537
1638 5   6537 3827 3828 6466 6467 6537
1639 5   6537 6538 3825 3826 3827 6537
1640 5   6537 6536 6533 6539 6538 6537
1641 5   6540 3824 3825 6538 6539 6540
1642 5   6540 3821 3822 3823 3824 6540
1643 5   6540 6541 3819 3820 3821 6540
1644 5   6540 6544 6543 6542 6541 6540
1645 5   6540 6539 6533 6545 6544 6540
1646 5   6546 6547 6543 6544 6545 6546
1647 5   6546 6550 6549 6548 6547 6546
1648 5   6546 6553 6552 6551 6550 6546
1649 5   6546 6524 6525 6554 6553 6546
1650 5   6546 6545 6533 6523 6524 6546
1651 5   6555 6548 6549 6557 6556 6555
1652 5   6555 6542 6543 6547 6548 6555
1653 5   6555 3818 3819 6541 6542 6555
1654 5   6555 6558 3816 3817 3818 6555
1655 5   6555 6556 6560 6559 6558 6555
1656 5   6561 3815 3816 6558 6559 6561
1657 5   6561 3812 3813 3814 3815 6561
1658 5   6561 3809 3810 3811 3812 6561
1659 5   6561 6562 3807 3808 3809 6561
1660 5   6561 6559 6560 6563 6562 6561
1661 5   6564 3806 3807 6562 6563 6564
1662 5   6564 3803 3804 3805 3806 6564
1663 5   6564 3800 3801 3802 3803 6564
1664 5   6564 6565 3798 3799 3800 6564
1665 5   6564 6563 6560 6566 6565 6564
1666 5   6567 3797 3798 6565 6566 6567
1667 5   6567 3794 3795 3796 3797 6567
1668 5   6567 6568 3792 3793 3794 6567
1669 5   6567 6571 6570 6569 6568 6567
1670 5   6567 6566 6560 6572 6571 6567
1671 5   6573 6574 6570 6571 6572 6573
1672 5   6573 6577 6576 6575 6574 6573
1673 5   6573 6551 6552 6578 6577 6573
1674 5   6573 6557 6549 6550 6551 6573
1675 5   6573 6572 6560 6556 6557 6573
1676 5   6579 6575 6576 6581 6580 6579
1677 5   6579 6569 6570 6574 6575 6579
1678 5   6579 3791 3792 6568 6569 6579
1679 5   6579 6582 3789 3790 3791 6579
1680 5   6579 6580 6584 6583 6582 6579
1681 5   6585 3788 3789 6582 6583 6585
1682 5   6585 3785 3786 3787 3788 6585
1683 5   6585 3782 3783 3784 3785 6585
1684 5   6585 6586 3780 3781 3782 6585
1685 5   6585 6583 6584 6587 6586 6585
1686 5   6588 3779 3780 6586 6587 6588
1687 5   6588 3776 3777 3778 3779 6588
1688 5   6588 6589 3774 3775 3776 6588
1689 5   6588 6592 6591 6590 6589 6588
1690 5   6588 6587 6584 6593 6592 6588
1691 5   6594 6595 6591 6592 6593 6594
1692 5   6594 6598 6597 6596 6595 6594
1693 5   6594 6601 6600 6599 6598 6594
1694 5   6594 6604 6603 6602 6601 6594
1695 5   6594 6593 6584 6605 6604 6594
1696 5   6606 6607 6603 6604 6605 6606
1697 5   6606 6610 6609 6608 6607 6606
1698 5   6606 6578 6552 6611 6610 6606
1699 5   6606 6581 6576 6577 6578 6606
1700 5   6606 6605 6584 6580 6581 6606
1701 5   6612 6608 6609 6614 6613 6612
1702 5   6612 6602 6603 6607 6608 6612
1703 5   6612 6615 6600 6601 6602 6612
1704 5   6612 6618 6617 6616 6615 6612
1705 5   6612 6613 6620 6619 6618 6612
1706 5   6621 6622 6617 6618 6619 6621
1707 5   6621 6625 6624 6623 6622 6621
1708 5   6621 6628 6627 6626 6625 6621
1709 5   6621 6631 6630 6629 6628 6621
1710 5   6621 6619 6620 6632 6631 6621
1711 5   6633 6634 6630 6631 6632 6633
1712 5   6633 6637 6636 6635 6634 6633
1713 5   6633 6640 6639 6638 6637 6633
1714 5   6633 6643 6642 6641 6640 6633
1715 5   6633 6632 6620 6644 6643 6633
1716 5   6645 6646 6642 6643 6644 6645
1717 5   6645 6649 6648 6647 6646 6645
1718 5   6645 6652 6651 6650 6649 6645
1719 5   6645 6655 6654 6653 6652 6645
1720 5   6645 6644 6620 6656 6655 6645
1721 5   6657 6658 6654 6655 6656 6657
1722 5   6657 6661 6660 6659 6658 6657
1723 5   6657 6611 6552 6662 6661 6657
1724 5   6657 6614 6609 6610 6611 6657
1725 5   6657 6656 6620 6613 6614 6657
1726 5   6663 6659 6660 6665 6664 6663
1727 5   6663 6653 6654 6658 6659 6663
1728 5   6663 6666 6651 6652 6653 6663
1729 5   6663 6669 6668 6667 6666 6663
1730 5   6663 6664 6671 6670 6669 6663
1731 5   6672 6673 6668 6669 6670 6672
1732 5   6672 6676 6675 6674 6673 6672
1733 5   6672 6679 6678 6677 6676 6672
1734 5   6672 6682 6681 6680 6679 6672
1735 5   6672 6670 6671 6683 6682 6672
1736 5   6684 6685 6681 6682 6683 6684
1737 5   6684 6688 6687 6686 6685 6684
1738 5   6684 6515 6213 6689 6688 6684
1739 5   6684 6690 6513 6514 6515 6684
1740 5   6684 6683 6671 6691 6690 6684
1741 5   6692 6512 6513 6690 6691 6692
1742 5   6692 6506 6507 6511 6512 6692
1743 5   6692 6530 6504 6505 6506 6692
1744 5   6692 6693 6528 6529 6530 6692
1745 5   6692 6691 6671 6694 6693 6692
1746 5   6695 6527 6528 6693 6694 6695
1747 5   6695 6554 6525 6526 6527 6695
1748 5   6695 6662 6552 6553 6554 6695
1749 5   6695 6665 6660 6661 6662 6695
1750 5   6695 6694 6671 6664 6665 6695
1751 5   6696 6700 6699 6698 6697 6696
1752 5   6696 6703 6702 6701 6700 6696
1753 5   6696 6677 6678 6704 6703 6696
1754 5   6696 6705 6675 6676 6677 6696
1755 5   6696 6697 6707 6706 6705 6696
1756 5   6708 6674 6675 6705 6706 6708
1757 5   6708 6667 6668 6673 6674 6708
1758 5   6708 6650 6651 6666 6667 6708
1759 5   6708 6709 6648 6649 6650 6708
1760 5   6708 6706 6707 6710 6709 6708
1761 5   6711 6647 6648 6709 6710 6711
1762 5   6711 6641 6642 6646 6647 6711
1763 5   6711 6712 6639 6640 6641 6711
1764 5   6711 6715 6714 6713 6712 6711
1765 5   6711 6710 6707 6716 6715 6711
1766 5   6717 6718 6714 6715 6716 6717
1767 5   6717 6721 6720 6719 6718 6717
1768 5   6717 6724 6723 6722 6721 6717
1769 5   6717 6727 6726 6725 6724 6717
1770 5   6717 6716 6707 6728 6727 6717
1771 5   6729 6730 6726 6727 6728 6729
1772 5   6729 6733 6732 6731 6730 6729
1773 5   6729 6736 6735 6734 6733 6729
1774 5   6729 6698 6699 6737 6736 6729
1775 5   6729 6728 6707 6697 6698 6729
1776 5   6738 6731 6732 6740 6739 6738
1777 5   6738 6725 6726 6730 6731 6738
1778 5   6738 6741 6723 6724 6725 6738
1779 5   6738 6744 6743 6742 6741 6738
1780 5   6738 6739 6746 6745 6744 6738
1781 5   6747 6748 6743 6744 6745 6747
1782 5   6747 6751 6750 6749 6748 6747
1783 5   6747 6754 6753 6752 6751 6747
1784 5   6747 6757 6756 6755 6754 6747
1785 5   6747 6745 6746 6758 6757 6747
1786 5   6759 6760 6756 6757 6758 6759
1787 5   6759 6763 6762 6761 6760 6759
1788 5   6759 6766 6765 6764 6763 6759
1789 5   6759 6769 6768 6767 6766 6759
1790 5   6759 6758 6746 6770 6769 6759
1791 5   6771 6772 6768 6769 6770 6771
1792 5   6771 6775 6774 6773 6772 6771
1793 5   6771 6778 6777 6776 6775 6771
1794 5   6771 6781 6780 6779 6778 6771
1795 5   6771 6770 6746 6782 6781 6771
1796 5   6783 6784 6780 6781 6782 6783
1797 5   6783 6787 6786 6785 6784 6783
1798 5   6783 6734 6735 6788 6787 6783
1799 5   6783 6740 6732 6733 6734 6783
1800 5   6783 6782 6746 6739 6740 6783
1801 5   6789 6785 6786 6791 6790 6789
1802 5   6789 6779 6780 6784 6785 6789
1803 5   6789 6792 6777 6778 6779 6789
1804 5   6789 6795 6794 6793 6792 6789
1805 5   6789 6790 6797 6796 6795 6789
1806 5   6798 6799 6794 6795 6796 6798
1807 5   6798 6802 6801 6800 6799 6798
1808 5   6798 6805 6804 6803 6802 6798
1809 5   6798 6808 6807 6806 6805 6798
1810 5   6798 6796 6797 6809 6808 6798
1811 5   6810 6811 6807 6808 6809 6810
1812 5   6810 6814 6813 6812 6811 6810
1813 5   6810 5999 5157 6815 6814 6810
1814 5   6810 6816 5997 5998 5999 6810
1815 5   6810 6809 6797 6817 6816 6810
1816 5   6818 5996 5997 6816 6817 6818
1817 5   6818 5990 5991 5995 5996 6818
1818 5   6818 6819 5988 5989 5990 6818
1819 5   6818 6822 6821 6820 6819 6818
1820 5   6818 6817 6797 6823 6822 6818
1821 5   6824 6825 6821 6822 6823 6824
1822 5   6824 6828 6827 6826 6825 6824
1823 5   6824 6788 6735 6829 6828 6824
1824 5   6824 6791 6786 6787 6788 6824
1825 5   6824 6823 6797 6790 6791 6824
1826 5   6830 6826 6827 6832 6831 6830
1827 5   6830 6820 6821 6825 6826 6830
1828 5   6830 5987 5988 6819 6820 6830
1829 5   6830 6833 5985 5986 5987 6830
1830 5   6830 6831 6835 6834 6833 6830
1831 5   6836 5984 5985 6833 6834 6836
1832 5   6836 5977 5978 5983 5984 6836
1833 5   6836 5960 5961 5976 5977 6836
1834 5   6836 6837 5958 5959 5960 6836
1835 5   6836 6834 6835 6838 6837 6836
1836 5   6839 5957 5958 6837 6838 6839
1837 5   6839 5951 5952 5956 5957 6839
1838 5   6839 6087 5949 5950 5951 6839
1839 5   6839 6840 6085 6086 6087 6839
1840 5   6839 6838 6835 6841 6840 6839
1841 5   6842 6084 6085 6840 6841 6842
1842 5   6842 6078 6079 6083 6084 6842
1843 5   6842 6843 6076 6077 6078 6842
1844 5   6842 6846 6845 6844 6843 6842
1845 5   6842 6841 6835 6847 6846 6842
1846 5   6848 6849 6845 6846 6847 6848
1847 5   6848 6852 6851 6850 6849 6848
1848 5   6848 6829 6735 6853 6852 6848
1849 5   6848 6832 6827 6828 6829 6848
1850 5   6848 6847 6835 6831 6832 6848
1851 5   6854 6850 6851 6856 6855 6854
1852 5   6854 6844 6845 6849 6850 6854
1853 5   6854 6075 6076 6843 6844 6854
1854 5   6854 6857 6073 6074 6075 6854
1855 5   6854 6855 6859 6858 6857 6854
1856 5   6860 6072 6073 6857 6858 6860
1857 5   6860 6065 6066 6071 6072 6860
1858 5   6860 6224 6063 6064 6065 6860
1859 5   6860 6861 6222 6223 6224 6860
1860 5   6860 6858 6859 6862 6861 6860
1861 5   6863 6221 6222 6861 6862 6863
1862 5   6863 6215 6216 6220 6221 6863
1863 5   6863 6689 6213 6214 6215 6863
1864 5   6863 6864 6687 6688 6689 6863
1865 5   6863 6862 6859 6865 6864 6863
1866 5   6866 6686 6687 6864 6865 6866
1867 5   6866 6680 6681 6685 6686 6866
1868 5   6866 6704 6678 6679 6680 6866
1869 5   6866 6867 6702 6703 6704 6866
1870 5   6866 6865 6859 6868 6867 6866
1871 5   6869 6701 6702 6867 6868 6869
1872 5   6869 6737 6699 6700 6701 6869
1873 5   6869 6853 6735 6736 6737 6869
1874 5   6869 6856 6851 6852 6853 6869
1875 5   6869 6868 6859 6855 6856 6869
1876 5   6870 6874 6873 6872 6871 6870
1877 5   6870 6877 6876 6875 6874 6870
1878 5   6870 6880 6879 6878 6877 6870
1879 5   6870 6883 6882 6881 6880 6870
1880 5   6870 6871 6885 6884 6883 6870
1881 5   6886 6887 6882 6883 6884 6886
1882 5   6886 6890 6889 6888 6887 6886
1883 5   6886 6893 6892 6891 6890 6886
1884 5   6886 6896 6895 6894 6893 6886
1885 5   6886 6884 6885 6897 6896 6886
1886 5   6898 6899 6895 6896 6897 6898
1887 5   6898 6902 6901 6900 6899 6898
1888 5   6898 6764 6765 6903 6902 6898
1889 5   6898 6904 6762 6763 6764 6898
1890 5   6898 6897 6885 6905 6904 6898
1891 5   6906 6761 6762 6904 6905 6906
1892 5   6906 6755 6756 6760 6761 6906
1893 5   6906 6907 6753 6754 6755 6906
1894 5   6906 6910 6909 6908 6907 6906
1895 5   6906 6905 6885 6911 6910 6906
1896 5   6912 6913 6909 6910 6911 6912
1897 5   6912 6916 6915 6914 6913 6912
1898 5   6912 6919 6918 6917 6916 6912
1899 5   6912 6872 6873 6920 6919 6912
1900 5   6912 6911 6885 6871 6872 6912
1901 5   6921 6914 6915 6923 6922 6921
1902 5   6921 6908 6909 6913 6914 6921
1903 5   6921 6752 6753 6907 6908 6921
1904 5   6921 6924 6750 6751 6752 6921
1905 5   6921 6922 6926 6925 6924 6921
1906 5   6927 6749 6750 6924 6925 6927
1907 5   6927 6742 6743 6748 6749 6927
1908 5   6927 6722 6723 6741 6742 6927
1909 5   6927 6928 6720 6721 6722 6927
1910 5   6927 6925 6926 6929 6928 6927
1911 5   6930 6719 6720 6928 6929 6930
1912 5   6930 6713 6714 6718 6719 6930
1913 5   6930 6638 6639 6712 6713 6930
1914 5   6930 6931 6636 6637 6638 6930
1915 5   6930 6929 6926 6932 6931 6930
1916 5   6933 6635 6636 6931 6932 6933
1917 5   6933 6629 6630 6634 6635 6933
1918 5   6933 6934 6627 6628 6629 6933
1919 5   6933 6937 6936 6935 6934 6933
1920 5   6933 6932 6926 6938 6937 6933
1921 5   6939 6940 6936 6937 6938 6939
1922 5   6939 6943 6942 6941 6940 6939
1923 5   6939 6917 6918 6944 6943 6939
1924 5   6939 6923 6915 6916 6917 6939
1925 5   6939 6938 6926 6922 6923 6939
1926 5   6945 6941 6942 6947 6946 6945
1927 5   6945 6935 6936 6940 6941 6945
1928 5   6945 6626 6627 6934 6935 6945
1929 5   6945 6948 6624 6625 6626 6945
1930 5   6945 6946 6950 6949 6948 6945
1931 5   6951 6623 6624 6948 6949 6951
1932 5   6951 6616 6617 6622 6623 6951
1933 5   6951 6599 6600 6615 6616 6951
1934 5   6951 6952 6597 6598 6599 6951
1935 5   6951 6949 6950 6953 6952 6951
1936 5   6954 6596 6597 6952 6953 6954
1937 5   6954 6590 6591 6595 6596 6954
1938 5   6954 3773 3774 6589 6590 6954
1939 5   6954 6955 3771 3772 3773 6954
1940 5   6954 6953 6950 6956 6955 6954
1941 5   6957 3770 3771 6955 6956 6957
1942 5   6957 3767 3768 3769 3770 6957
1943 5   6957 6958 3765 3766 3767 6957
1944 5   6957 6961 6960 6959 6958 6957
1945 5   6957 6956 6950 6962 6961 6957
1946 5   6963 6964 6960 6961 6962 6963
1947 5   6963 6967 6966 6965 6964 6963
1948 5   6963 6944 6918 6968 6967 6963
1949 5   6963 6947 6942 6943 6944 6963
1950 5   6963 6962 6950 6946 6947 6963
1951 5   6969 6965 6966 6971 6970 6969
1952 5   6969 6959 6960 6964 6965 6969
1953 5   6969 3764 3765 6958 6959 6969
1954 5   6969 6972 3762 3763 3764 6969
1955 5   6969 6970 6974 6973 6972 6969
1956 5   6975 3761 3762 6972 6973 6975
1957 5   6975 3758 3759 3760 3761 6975
1958 5   6975 3755 3756 3757 3758 6975
1959 5   6975 6976 3753 3754 3755 6975
1960 5   6975 6973 6974 6977 6976 6975
1961 5   6978 3752 3753 6976 6977 6978
1962 5   6978 3749 3750 3751 3752 6978
1963 5   6978 6979 3747 3748 3749 6978
1964 5   6978 6982 6981 6980 6979 6978
1965 5   6978 6977 6974 6983 6982 6978
1966 5   6984 6985 6981 6982 6983 6984
1967 5   6984 6988 6987 6986 6985 6984
1968 5   6984 6991 6990 6989 6988 6984
1969 5   6984 6994 6993 6992 6991 6984
1970 5   6984 6983 6974 6995 6994 6984
1971 5   6996 6997 6993 6994 6995 6996
1972 5   6996 7000 6999 6998 6997 6996
1973 5   6996 6968 6918 7001 7000 6996
1974 5   6996 6971 6966 6967 6968 6996
1975 5   6996 6995 6974 6970 6971 6996
1976 5   7002 6998 6999 7004 7003 7002
1977 5   7002 6992 6993 6997 6998 7002
1978 5   7002 7005 6990 6991 6992 7002
1979 5   7002 7008 7007 7006 7005 7002
1980 5   7002 7003 7010 7009 7008 7002
1981 5   7011 7012 7007 7008 7009 7011
1982 5   7011 7015 7014 7013 7012 7011
1983 5   7011 7018 7017 7016 7015 7011
1984 5   7011 7021 7020 7019 7018 7011
1985 5   7011 7009 7010 7022 7021 7011
1986 5   7023 7024 7020 7021 7022 7023
1987 5   7023 7027 7026 7025 7024 7023
1988 5   7023 7030 7029 7028 7027 7023
1989 5   7023 7033 7032 7031 7030 7023
1990 5   7023 7022 7010 7034 7033 7023
1991 5   7035 7036 7032 7033 7034 7035
1992 5   7035 7039 7038 7037 7036 7035
1993 5   7035 6878 6879 7040 7039 7035
1994 5   7035 7041 6876 6877 6878 7035
1995 5   7035 7034 7010 7042 7041 7035
1996 5   7043 6875 6876 7041 7042 7043
1997 5   7043 6920 6873 6874 6875 7043
1998 5   7043 7001 6918 6919 6920 7043
1999 5   7043 7004 6999 7000 7001 7043
2000 5   7043 7042 7010 7003 7004 7043
2001 5   7044 7048 7047 7046 7045 7044
2002 5   7044 7051 7050 7049 7048 7044
2003 5   7044 7016 7017 7052 7051 7044
2004 5   7044 7053 7014 7015 7016 7044
2005 5   7044 7045 7055 7054 7053 7044
2006 5   7056 7013 7014 7053 7054 7056
2007 5   7056 7006 7007 7012 7013 7056
2008 5   7056 6989 6990 7005 7006 7056
2009 5   7056 7057 6987 6988 6989 7056
2010 5   7056 7054 7055 7058 7057 7056
2011 5   7059 6986 6987 7057 7058 7059
2012 5   7059 6980 6981 6985 6986 7059
2013 5   7059 3746 3747 6979 6980 7059
2014 5   7059 7060 3744 3745 3746 7059
2015 5   7059 7058 7055 7061 7060 7059
2016 5   7062 3743 3744 7060 7061 7062
2017 5   7062 3740 3741 3742 3743 7062
2018 5   7062 7063 3738 3739 3740 7062
2019 5   7062 7066 7065 7064 7063 7062
2020 5   7062 7061 7055 7067 7066 7062
2021 5   7068 7069 7065 7066 7067 7068
2022 5   7068 7072 7071 7070 7069 7068
2023 5   7068 7075 7074 7073 7072 7068
2024 5   7068 7046 7047 7076 7075 7068
2025 5   7068 7067 7055 7045 7046 7068
2026 5   7077 7070 7071 7079 7078 7077
2027 5   7077 7064 7065 7069 7070 7077
2028 5   7077 3737 3738 7063 7064 7077
2029 5   7077 7080 3735 3736 3737 7077
2030 5   7077 7078 7082 7081 7080 7077
2031 5   7083 3734 3735 7080 7081 7083
2032 5   7083 3731 3732 3733 3734 7083
2033 5   7083 3728 3729 3730 3731 7083
2034 5   7083 7084 3726 3727 3728 7083
2035 5   7083 7081 7082 7085 7084 7083
2036 5   7086 3725 3726 7084 7085 7086
2037 5   7086 3722 3723 3724 3725 7086
2038 5   7086 3719 3720 3721 3722 7086
2039 5   7086 7087 3717 3718 3719 7086
2040 5   7086 7085 7082 7088 7087 7086
2041 5   7089 3716 3717 7087 7088 7089
2042 5   7089 3713 3714 3715 3716 7089
2043 5   7089 7090 3711 3712 3713 7089
2044 5   7089 7093 7092 7091 7090 7089
2045 5   7089 7088 7082 7094 7093 7089
2046 5   7095 7096 7092 7093 7094 7095
2047 5   7095 7099 7098 7097 7096 7095
2048 5   7095 7073 7074 7100 7099 7095
2049 5   7095 7079 7071 7072 7073 7095
2050 5   7095 7094 7082 7078 7079 7095
2051 5   7101 7097 7098 7103 7102 7101
2052 5   7101 7091 7092 7096 7097 7101
2053 5   7101 3710 3711 7090 7091 7101
2054 5   7101 7104 3708 3709 3710 7101
2055 5   7101 7102 7106 7105 7104 7101
2056 5   7107 3707 3708 7104 7105 7107
2057 5   7107 3704 3705 3706 3707 7107
2058 5   7107 3701 3702 3703 3704 7107
2059 5   7107 7108 3699 3700 3701 7107
2060 5   7107 7105 7106 7109 7108 7107
2061 5   7110 3698 3699 7108 7109 7110
2062 5   7110 3695 3696 3697 3698 7110
2063 5   7110 3692 3693 3694 3695 7110
2064 5   7110 7111 3690 3691 3692 7110
2065 5   7110 7109 7106 7112 7111 7110
2066 5   7113 3689 3690 7111 7112 7113
2067 5   7113 3686 3687 3688 3689 7113
2068 5   7113 7114 3684 3685 3686 7113
2069 5   7113 7117 7116 7115 7114 7113
2070 5   7113 7112 7106 7118 7117 7113
2071 5   7119 7120 7116 7117 7118 7119
2072 5   7119 7123 7122 7121 7120 7119
2073 5   7119 7100 7074 7124 7123 7119
2074 5   7119 7103 7098 7099 7100 7119
2075 5   7119 7118 7106 7102 7103 7119
2076 5   7125 7121 7122 7127 7126 7125
2077 5   7125 7115 7116 7120 7121 7125
2078 5   7125 3683 3684 7114 7115 7125
2079 5   7125 7128 3681 3682 3683 7125
2080 5   7125 7126 7130 7129 7128 7125
2081 5   7131 3680 3681 7128 7129 7131
2082 5   7131 3677 3678 3679 3680 7131
2083 5   7131 3674 3675 3676 3677 7131
2084 5   7131 7132 3672 3673 3674 7131
2085 5   7131 7129 7130 7133 7132 7131
2086 5   7134 3671 3672 7132 7133 7134
2087 5   7134 3668 3669 3670 3671 7134
2088 5   7134 7135 3666 3667 3668 7134
2089 5   7134 7138 7137 7136 7135 7134
2090 5   7134 7133 7130 7139 7138 7134
2091 5   7140 7141 7137 7138 7139 7140
2092 5   7140 7144 7143 7142 7141 7140
2093 5   7140 7147 7146 7145 7144 7140
2094 5   7140 7150 7149 7148 7147 7140
2095 5   7140 7139 7130 7151 7150 7140
2096 5   7152 7153 7149 7150 7151 7152
2097 5   7152 7156 7155 7154 7153 7152
2098 5   7152 7124 7074 7157 7156 7152
2099 5   7152 7127 7122 7123 7124 7152
2100 5   7152 7151 7130 7126 7127 7152
2101 5   7158 7154 7155 7160 7159 7158
2102 5   7158 7148 7149 7153 7154 7158
2103 5   7158 7161 7146 7147 7148 7158
2104 5   7158 7164 7163 7162 7161 7158
2105 5   7158 7159 7166 7165 7164 7158
2106 5   7167 7168 7163 7164 7165 7167
2107 5   7167 7171 7170 7169 7168 7167
2108 5   7167 7174 7173 7172 7171 7167
2109 5   7167 7177 7176 7175 7174 7167
2110 5   7167 7165 7166 7178 7177 7167
2111 5   7179 7180 7176 7177 7178 7179
2112 5   7179 7183 7182 7181 7180 7179
2113 5   7179 7028 7029 7184 7183 7179
2114 5   7179 7185 7026 7027 7028 7179
2115 5   7179 7178 7166 7186 7185 7179
2116 5   7187 7025 7026 7185 7186 7187
2117 5   7187 7019 7020 7024 7025 7187
2118 5   7187 7052 7017 7018 7019 7187
2119 5   7187 7188 7050 7051 7052 7187
2120 5   7187 7186 7166 7189 7188 7187
2121 5   7190 7049 7050 7188 7189 7190
2122 5   7190 7076 7047 7048 7049 7190
2123 5   7190 7157 7074 7075 7076 7190
2124 5   7190 7160 7155 7156 7157 7190
2125 5   7190 7189 7166 7159 7160 7190
2126 5   7191 7195 7194 7193 7192 7191
2127 5   7191 7198 7197 7196 7195 7191
2128 5   7191 7172 7173 7199 7198 7191
2129 5   7191 7200 7170 7171 7172 7191
2130 5   7191 7192 7202 7201 7200 7191
2131 5   7203 7169 7170 7200 7201 7203
2132 5   7203 7162 7163 7168 7169 7203
2133 5   7203 7145 7146 7161 7162 7203
2134 5   7203 7204 7143 7144 7145 7203
2135 5   7203 7201 7202 7205 7204 7203
2136 5   7206 7142 7143 7204 7205 7206
2137 5   7206 7136 7137 7141 7142 7206
2138 5   7206 3665 3666 7135 7136 7206
2139 5   7206 7207 3663 3664 3665 7206
2140 5   7206 7205 7202 7208 7207 7206
2141 5   7209 3662 3663 7207 7208 7209
2142 5   7209 3659 3660 3661 3662 7209
2143 5   7209 7210 3657 3658 3659 7209
2144 5   7209 7213 7212 7211 7210 7209
2145 5   7209 7208 7202 7214 7213 7209
2146 5   7215 7216 7212 7213 7214 7215
2147 5   7215 7219 7218 7217 7216 7215
2148 5   7215 7222 7221 7220 7219 7215
2149 5   7215 7193 7194 7223 7222 7215
2150 5   7215 7214 7202 7192 7193 7215
2151 5   7224 7217 7218 7226 7225 7224
2152 5   7224 7211 7212 7216 7217 7224
2153 5   7224 3656 3657 7210 7211 7224
2154 5   7224 7227 3654 3655 3656 7224
2155 5   7224 7225 7229 7228 7227 7224
2156 5   7230 3653 3654 7227 7228 7230
2157 5   7230 3650 3651 3652 3653 7230
2158 5   7230 3647 3648 3649 3650 7230
2159 5   7230 7231 3645 3646 3647 7230
2160 5   7230 7228 7229 7232 7231 7230
2161 5   7233 3644 3645 7231 7232 7233
2162 5   7233 3641 3642 3643 3644 7233
2163 5   7233 3638 3639 3640 3641 7233
2164 5   7233 7234 3636 3637 3638 7233
2165 5   7233 7232 7229 7235 7234 7233
2166 5   7236 3635 3636 7234 7235 7236
2167 5   7236 3632 3633 3634 3635 7236
2168 5   7236 7237 3630 3631 3632 7236
2169 5   7236 7240 7239 7238 7237 7236
2170 5   7236 7235 7229 7241 7240 7236
2171 5   7242 7243 7239 7240 7241 7242
2172 5   7242 7246 7245 7244 7243 7242
2173 5   7242 7220 7221 7247 7246 7242
2174 5   7242 7226 7218 7219 7220 7242
2175 5   7242 7241 7229 7225 7226 7242
2176 5   7248 7244 7245 7250 7249 7248
2177 5   7248 7238 7239 7243 7244 7248
2178 5   7248 3629 3630 7237 7238 7248
2179 5   7248 7251 3627 3628 3629 7248
2180 5   7248 7249 7253 7252 7251 7248
2181 5   7254 3626 3627 7251 7252 7254
2182 5   7254 3623 3624 3625 3626 7254
2183 5   7254 3620 3621 3622 3623 7254
2184 5   7254 7255 3618 3619 3620 7254
2185 5   7254 7252 7253 7256 7255 7254
2186 5   7257 3617 3618 7255 7256 7257
2187 5   7257 3614 3615 3616 3617 7257
2188 5   7257 4340 3612 3613 3614 7257
2189 5   7257 7258 4338 4339 4340 7257
2190 5   7257 7256 7253 7259 7258 7257
2191 5   7260 4337 4338 7258 7259 7260
2192 5   7260 4334 4335 4336 4337 7260
2193 5   7260 7261 4332 4333 4334 7260
2194 5   7260 7264 7263 7262 7261 7260
2195 5   7260 7259 7253 7265 7264 7260
2196 5   7266 7267 7263 7264 7265 7266
2197 5   7266 7270 7269 7268 7267 7266
2198 5   7266 7247 7221 7271 7270 7266
2199 5   7266 7250 7245 7246 7247 7266
2200 5   7266 7265 7253 7249 7250 7266
2201 5   7272 7268 7269 7274 7273 7272
2202 5   7272 7262 7263 7267 7268 7272
2203 5   7272 4331 4332 7261 7262 7272
2204 5   7272 7275 4329 4330 4331 7272
2205 5   7272 7273 7277 7276 7275 7272
2206 5   7278 4328 4329 7275 7276 7278
2207 5   7278 4325 4326 4327 4328 7278
2208 5   7278 4322 4323 4324 4325 7278
2209 5   7278 7279 4320 4321 4322 7278
2210 5   7278 7276 7277 7280 7279 7278
2211 5   7281 4319 4320 7279 7280 7281
2212 5   7281 4316 4317 4318 4319 7281
2213 5   7281 7282 4314 4315 4316 7281
2214 5   7281 7285 7284 7283 7282 7281
2215 5   7281 7280 7277 7286 7285 7281
2216 5   7287 7288 7284 7285 7286 7287
2217 5   7287 7291 7290 7289 7288 7287
2218 5   7287 7294 7293 7292 7291 7287
2219 5   7287 7297 7296 7295 7294 7287
2220 5   7287 7286 7277 7298 7297 7287
2221 5   7299 7300 7296 7297 7298 7299
2222 5   7299 7303 7302 7301 7300 7299
2223 5   7299 7271 7221 7304 7303 7299
2224 5   7299 7274 7269 7270 7271 7299
2225 5   7299 7298 7277 7273 7274 7299
2226 5   7305 7301 7302 7307 7306 7305
2227 5   7305 7295 7296 7300 7301 7305
2228 5   7305 7308 7293 7294 7295 7305
2229 5   7305 7311 7310 7309 7308 7305
2230 5   7305 7306 7313 7312 7311 7305
2231 5   7314 7315 7310 7311 7312 7314
2232 5   7314 7318 7317 7316 7315 7314
2233 5   7314 7321 7320 7319 7318 7314
2234 5   7314 7324 7323 7322 7321 7314
2235 5   7314 7312 7313 7325 7324 7314
2236 5   7326 7327 7323 7324 7325 7326
2237 5   7326 7330 7329 7328 7327 7326
2238 5   7326 7184 7029 7331 7330 7326
2239 5   7326 7332 7182 7183 7184 7326
2240 5   7326 7325 7313 7333 7332 7326
2241 5   7334 7181 7182 7332 7333 7334
2242 5   7334 7175 7176 7180 7181 7334
2243 5   7334 7199 7173 7174 7175 7334
2244 5   7334 7335 7197 7198 7199 7334
2245 5   7334 7333 7313 7336 7335 7334
2246 5   7337 7196 7197 7335 7336 7337
2247 5   7337 7223 7194 7195 7196 7337
2248 5   7337 7304 7221 7222 7223 7337
2249 5   7337 7307 7302 7303 7304 7337
2250 5   7337 7336 7313 7306 7307 7337
2251 5   7338 7342 7341 7340 7339 7338
2252 5   7338 7345 7344 7343 7342 7338
2253 5   7338 7319 7320 7346 7345 7338
2254 5   7338 7347 7317 7318 7319 7338
2255 5   7338 7339 7349 7348 7347 7338
2256 5   7350 7316 7317 7347 7348 7350
2257 5   7350 7309 7310 7315 7316 7350
2258 5   7350 7292 7293 7308 7309 7350
2259 5   7350 7351 7290 7291 7292 7350
2260 5   7350 7348 7349 7352 7351 7350
2261 5   7353 7289 7290 7351 7352 7353
2262 5   7353 7283 7284 7288 7289 7353
2263 5   7353 4313 4314 7282 7283 7353
2264 5   7353 7354 4311 4312 4313 7353
2265 5   7353 7352 7349 7355 7354 7353
2266 5   7356 4310 4311 7354 7355 7356
2267 5   7356 4307 4308 4309 4310 7356
2268 5   7356 7357 4305 4306 4307 7356
2269 5   7356 7360 7359 7358 7357 7356
2270 5   7356 7355 7349 7361 7360 7356
2271 5   7362 7363 7359 7360 7361 7362
2272 5   7362 7366 7365 7364 7363 7362
2273 5   7362 7369 7368 7367 7366 7362
2274 5   7362 7340 7341 7370 7369 7362
2275 5   7362 7361 7349 7339 7340 7362
2276 5   7371 7364 7365 7373 7372 7371
2277 5   7371 7358 7359 7363 7364 7371
2278 5   7371 4304 4305 7357 7358 7371
2279 5   7371 7374 4302 4303 4304 7371
2280 5   7371 7372 7376 7375 7374 7371
2281 5   7377 4301 4302 7374 7375 7377
2282 5   7377 4298 4299 4300 4301 7377
2283 5   7377 4295 4296 4297 4298 7377
2284 5   7377 7378 4293 4294 4295 7377
2285 5   7377 7375 7376 7379 7378 7377
2286 5   7380 4292 4293 7378 7379 7380
2287 5   7380 4289 4290 4291 4292 7380
2288 5   7380 4286 4287 4288 4289 7380
2289 5   7380 7381 4284 4285 4286 7380
2290 5   7380 7379 7376 7382 7381 7380
2291 5   7383 4283 4284 7381 7382 7383
2292 5   7383 4280 4281 4282 4283 7383
2293 5   7383 7384 4278 4279 4280 7383
2294 5   7383 7387 7386 7385 7384 7383
2295 5   7383 7382 7376 7388 7387 7383
2296 5   7389 7390 7386 7387 7388 7389
2297 5   7389 7393 7392 7391 7390 7389
2298 5   7389 7367 7368 7394 7393 7389
2299 5   7389 7373 7365 7366 7367 7389
2300 5   7389 7388 7376 7372 7373 7389
2301 5   7395 7391 7392 7397 7396 7395
2302 5   7395 7385 7386 7390 7391 7395
2303 5   7395 4277 4278 7384 7385 7395
2304 5   7395 7398 4275 4276 4277 7395
2305 5   7395 7396 7400 7399 7398 7395
2306 5   7401 4274 4275 7398 7399 7401
2307 5   7401 4271 4272 4273 4274 7401
2308 5   7401 4268 4269 4270 4271 7401
2309 5   7401 7402 4266 4267 4268 7401
2310 5   7401 7399 7400 7403 7402 7401
2311 5   7404 4265 4266 7402 7403 7404
2312 5   7404 4262 4263 4264 4265 7404
2313 5   7404 7405 4260 4261 4262 7404
2314 5   7404 7408 7407 7406 7405 7404
2315 5   7404 7403 7400 7409 7408 7404
2316 5   7410 7411 7407 7408 7409 7410
2317 5   7410 7414 7413 7412 7411 7410
2318 5   7410 7417 7416 7415 7414 7410
2319 5   7410 7420 7419 7418 7417 7410
2320 5   7410 7409 7400 7421 7420 7410
2321 5   7422 7423 7419 7420 7421 7422
2322 5   7422 7426 7425 7424 7423 7422
2323 5   7422 7394 7368 7427 7426 7422
2324 5   7422 7397 7392 7393 7394 7422
2325 5   7422 7421 7400 7396 7397 7422
2326 5   7428 7424 7425 7430 7429 7428
2327 5   7428 7418 7419 7423 7424 7428
2328 5   7428 7431 7416 7417 7418 7428
2329 5   7428 7434 7433 7432 7431 7428
2330 5   7428 7429 7436 7435 7434 7428
2331 5   7437 7438 7433 7434 7435 7437
2332 5   7437 7441 7440 7439 7438 7437
2333 5   7437 7444 7443 7442 7441 7437
2334 5   7437 7447 7446 7445 7444 7437
2335 5   7437 7435 7436 7448 7447 7437
2336 5   7449 7450 7446 7447 7448 7449
2337 5   7449 7453 7452 7451 7450 7449
2338 5   7449 7456 7455 7454 7453 7449
2339 5   7449 7459 7458 7457 7456 7449
2340 5   7449 7448 7436 7460 7459 7449
2341 5   7461 7462 7458 7459 7460 7461
2342 5   7461 7465 7464 7463 7462 7461
2343 5   7461 7468 7467 7466 7465 7461
2344 5   7461 7471 7470 7469 7468 7461
2345 5   7461 7460 7436 7472 7471 7461
2346 5   7473 7474 7470 7471 7472 7473
2347 5   7473 7477 7476 7475 7474 7473
2348 5   7473 7427 7368 7478 7477 7473
2349 5   7473 7430 7425 7426 7427 7473
2350 5   7473 7472 7436 7429 7430 7473
2351 5   7479 7475 7476 7481 7480 7479
2352 5   7479 7469 7470 7474 7475 7479
2353 5   7479 7482 7467 7468 7469 7479
2354 5   7479 7485 7484 7483 7482 7479
2355 5   7479 7480 7487 7486 7485 7479
2356 5   7488 7489 7484 7485 7486 7488
2357 5   7488 7492 7491 7490 7489 7488
2358 5   7488 7495 7494 7493 7492 7488
2359 5   7488 7498 7497 7496 7495 7488
2360 5   7488 7486 7487 7499 7498 7488
2361 5   7500 7501 7497 7498 7499 7500
2362 5   7500 7504 7503 7502 7501 7500
2363 5   7500 7331 7029 7505 7504 7500
2364 5   7500 7506 7329 7330 7331 7500
2365 5   7500 7499 7487 7507 7506 7500
2366 5   7508 7328 7329 7506 7507 7508
2367 5   7508 7322 7323 7327 7328 7508
2368 5   7508 7346 7320 7321 7322 7508
2369 5   7508 7509 7344 7345 7346 7508
2370 5   7508 7507 7487 7510 7509 7508
2371 5   7511 7343 7344 7509 7510 7511
2372 5   7511 7370 7341 7342 7343 7511
2373 5   7511 7478 7368 7369 7370 7511
2374 5   7511 7481 7476 7477 7478 7511
2375 5   7511 7510 7487 7480 7481 7511
2376 5   7512 7516 7515 7514 7513 7512
2377 5   7512 7519 7518 7517 7516 7512
2378 5   7512 7493 7494 7520 7519 7512
2379 5   7512 7521 7491 7492 7493 7512
2380 5   7512 7513 7523 7522 7521 7512
2381 5   7524 7490 7491 7521 7522 7524
2382 5   7524 7483 7484 7489 7490 7524
2383 5   7524 7466 7467 7482 7483 7524
2384 5   7524 7525 7464 7465 7466 7524
2385 5   7524 7522 7523 7526 7525 7524
2386 5   7527 7463 7464 7525 7526 7527
2387 5   7527 7457 7458 7462 7463 7527
2388 5   7527 7528 7455 7456 7457 7527
2389 5   7527 7531 7530 7529 7528 7527
2390 5   7527 7526 7523 7532 7531 7527
2391 5   7533 7534 7530 7531 7532 7533
2392 5   7533 7537 7536 7535 7534 7533
2393 5   7533 7540 7539 7538 7537 7533
2394 5   7533 7543 7542 7541 7540 7533
2395 5   7533 7532 7523 7544 7543 7533
2396 5   7545 7546 7542 7543 7544 7545
2397 5   7545 7549 7548 7547 7546 7545
2398 5   7545 7552 7551 7550 7549 7545
2399 5   7545 7514 7515 7553 7552 7545
2400 5   7545 7544 7523 7513 7514 7545
2401 5   7554 7547 7548 7556 7555 7554
2402 5   7554 7541 7542 7546 7547 7554
2403 5   7554 7557 7539 7540 7541 7554
2404 5   7554 7560 7559 7558 7557 7554
2405 5   7554 7555 7562 7561 7560 7554
2406 5   7563 7564 7559 7560 7561 7563
2407 5   7563 7567 7566 7565 7564 7563
2408 5   7563 7570 7569 7568 7567 7563
2409 5   7563 7573 7572 7571 7570 7563
2410 5   7563 7561 7562 7574 7573 7563
2411 5   7575 7576 7572 7573 7574 7575
2412 5   7575 7579 7578 7577 7576 7575
2413 5   7575 7582 7581 7580 7579 7575
2414 5   7575 7585 7584 7583 7582 7575
2415 5   7575 7574 7562 7586 7585 7575
2416 5   7587 7588 7584 7585 7586 7587
2417 5   7587 7591 7590 7589 7588 7587
2418 5   7587 7594 7593 7592 7591 7587
2419 5   7587 7597 7596 7595 7594 7587
2420 5   7587 7586 7562 7598 7597 7587
2421 5   7599 7600 7596 7597 7598 7599
2422 5   7599 7603 7602 7601 7600 7599
2423 5   7599 7550 7551 7604 7603 7599
2424 5   7599 7556 7548 7549 7550 7599
2425 5   7599 7598 7562 7555 7556 7599
2426 5   7605 7601 7602 7607 7606 7605
2427 5   7605 7595 7596 7600 7601 7605
2428 5   7605 7608 7593 7594 7595 7605
2429 5   7605 7611 7610 7609 7608 7605
2430 5   7605 7606 7613 7612 7611 7605
2431 5   7614 7615 7610 7611 7612 7614
2432 5   7614 7618 7617 7616 7615 7614
2433 5   7614 7621 7620 7619 7618 7614
2434 5   7614 7624 7623 7622 7621 7614
2435 5   7614 7612 7613 7625 7624 7614
2436 5   7626 7627 7623 7624 7625 7626
2437 5   7626 7630 7629 7628 7627 7626
2438 5   7626 6815 5157 7631 7630 7626
2439 5   7626 7632 6813 6814 6815 7626
2440 5   7626 7625 7613 7633 7632 7626
2441 5   7634 6812 6813 7632 7633 7634
2442 5   7634 6806 6807 6811 6812 7634
2443 5   7634 7635 6804 6805 6806 7634
2444 5   7634 7638 7637 7636 7635 7634
2445 5   7634 7633 7613 7639 7638 7634
2446 5   7640 7641 7637 7638 7639 7640
2447 5   7640 7644 7643 7642 7641 7640
2448 5   7640 7604 7551 7645 7644 7640
2449 5   7640 7607 7602 7603 7604 7640
2450 5   7640 7639 7613 7606 7607 7640
2451 5   7646 7642 7643 7648 7647 7646
2452 5   7646 7636 7637 7641 7642 7646
2453 5   7646 6803 6804 7635 7636 7646
2454 5   7646 7649 6801 6802 6803 7646
2455 5   7646 7647 7651 7650 7649 7646
2456 5   7652 6800 6801 7649 7650 7652
2457 5   7652 6793 6794 6799 6800 7652
2458 5   7652 6776 6777 6792 6793 7652
2459 5   7652 7653 6774 6775 6776 7652
2460 5   7652 7650 7651 7654 7653 7652
2461 5   7655 6773 6774 7653 7654 7655
2462 5   7655 6767 6768 6772 6773 7655
2463 5   7655 6903 6765 6766 6767 7655
2464 5   7655 7656 6901 6902 6903 7655
2465 5   7655 7654 7651 7657 7656 7655
2466 5   7658 6900 6901 7656 7657 7658
2467 5   7658 6894 6895 6899 6900 7658
2468 5   7658 7659 6892 6893 6894 7658
2469 5   7658 7662 7661 7660 7659 7658
2470 5   7658 7657 7651 7663 7662 7658
2471 5   7664 7665 7661 7662 7663 7664
2472 5   7664 7668 7667 7666 7665 7664
2473 5   7664 7645 7551 7669 7668 7664
2474 5   7664 7648 7643 7644 7645 7664
2475 5   7664 7663 7651 7647 7648 7664
2476 5   7670 7666 7667 7672 7671 7670
2477 5   7670 7660 7661 7665 7666 7670
2478 5   7670 6891 6892 7659 7660 7670
2479 5   7670 7673 6889 6890 6891 7670
2480 5   7670 7671 7675 7674 7673 7670
2481 5   7676 6888 6889 7673 7674 7676
2482 5   7676 6881 6882 6887 6888 7676
2483 5   7676 7040 6879 6880 6881 7676
2484 5   7676 7677 7038 7039 7040 7676
2485 5   7676 7674 7675 7678 7677 7676
2486 5   7679 7037 7038 7677 7678 7679
2487 5   7679 7031 7032 7036 7037 7679
2488 5   7679 7505 7029 7030 7031 7679
2489 5   7679 7680 7503 7504 7505 7679
2490 5   7679 7678 7675 7681 7680 7679
2491 5   7682 7502 7503 7680 7681 7682
2492 5   7682 7496 7497 7501 7502 7682
2493 5   7682 7520 7494 7495 7496 7682
2494 5   7682 7683 7518 7519 7520 7682
2495 5   7682 7681 7675 7684 7683 7682
2496 5   7685 7517 7518 7683 7684 7685
2497 5   7685 7553 7515 7516 7517 7685
2498 5   7685 7669 7551 7552 7553 7685
2499 5   7685 7672 7667 7668 7669 7685
2500 5   7685 7684 7675 7671 7672 7685
2501 5   7686 7690 7689 7688 7687 7686
2502 5   7686 7693 7692 7691 7690 7686
2503 5   7686 7696 7695 7694 7693 7686
2504 5   7686 7699 7698 7697 7696 7686
2505 5   7686 7687 7701 7700 7699 7686
2506 5   7702 7703 7698 7699 7700 7702
2507 5   7702 7706 7705 7704 7703 7702
2508 5   7702 7709 7708 7707 7706 7702
2509 5   7702 7712 7711 7710 7709 7702
2510 5   7702 7700 7701 7713 7712 7702
2511 5   7714 7715 7711 7712 7713 7714
2512 5   7714 7718 7717 7716 7715 7714
2513 5   7714 7580 7581 7719 7718 7714
2514 5   7714 7720 7578 7579 7580 7714
2515 5   7714 7713 7701 7721 7720 7714
2516 5   7722 7577 7578 7720 7721 7722
2517 5   7722 7571 7572 7576 7577 7722
2518 5   7722 7723 7569 7570 7571 7722
2519 5   7722 7726 7725 7724 7723 7722
2520 5   7722 7721 7701 7727 7726 7722
2521 5   7728 7729 7725 7726 7727 7728
2522 5   7728 7732 7731 7730 7729 7728
2523 5   7728 7735 7734 7733 7732 7728
2524 5   7728 7688 7689 7736 7735 7728
2525 5   7728 7727 7701 7687 7688 7728
2526 5   7737 7730 7731 7739 7738 7737
2527 5   7737 7724 7725 7729 7730 7737
2528 5   7737 7568 7569 7723 7724 7737
2529 5   7737 7740 7566 7567 7568 7737
2530 5   7737 7738 7742 7741 7740 7737
2531 5   7743 7565 7566 7740 7741 7743
2532 5   7743 7558 7559 7564 7565 7743
2533 5   7743 7538 7539 7557 7558 7743
2534 5   7743 7744 7536 7537 7538 7743
2535 5   7743 7741 7742 7745 7744 7743
2536 5   7746 7535 7536 7744 7745 7746
2537 5   7746 7529 7530 7534 7535 7746
2538 5   7746 7454 7455 7528 7529 7746
2539 5   7746 7747 7452 7453 7454 7746
2540 5   7746 7745 7742 7748 7747 7746
2541 5   7749 7451 7452 7747 7748 7749
2542 5   7749 7445 7446 7450 7451 7749
2543 5   7749 7750 7443 7444 7445 7749
2544 5   7749 7753 7752 7751 7750 7749
2545 5   7749 7748 7742 7754 7753 7749
2546 5   7755 7756 7752 7753 7754 7755
2547 5   7755 7759 7758 7757 7756 7755
2548 5   7755 7733 7734 7760 7759 7755
2549 5   7755 7739 7731 7732 7733 7755
2550 5   7755 7754 7742 7738 7739 7755
2551 5   7761 7757 7758 7763 7762 7761
2552 5   7761 7751 7752 7756 7757 7761
2553 5   7761 7442 7443 7750 7751 7761
2554 5   7761 7764 7440 7441 7442 7761
2555 5   7761 7762 7766 7765 7764 7761
2556 5   7767 7439 7440 7764 7765 7767
2557 5   7767 7432 7433 7438 7439 7767
2558 5   7767 7415 7416 7431 7432 7767
2559 5   7767 7768 7413 7414 7415 7767
2560 5   7767 7765 7766 7769 7768 7767
2561 5   7770 7412 7413 7768 7769 7770
2562 5   7770 7406 7407 7411 7412 7770
2563 5   7770 4259 4260 7405 7406 7770
2564 5   7770 7771 4257 4258 4259 7770
2565 5   7770 7769 7766 7772 7771 7770
2566 5   7773 4256 4257 7771 7772 7773
2567 5   7773 4253 4254 4255 4256 7773
2568 5   7773 7774 4251 4252 4253 7773
2569 5   7773 7777 7776 7775 7774 7773
2570 5   7773 7772 7766 7778 7777 7773
2571 5   7779 7780 7776 7777 7778 7779
2572 5   7779 7783 7782 7781 7780 7779
2573 5   7779 7760 7734 7784 7783 7779
2574 5   7779 7763 7758 7759 7760 7779
2575 5   7779 7778 7766 7762 7763 7779
2576 5   7785 7781 7782 7787 7786 7785
2577 5   7785 7775 7776 7780 7781 7785
2578 5   7785 4250 4251 7774 7775 7785
2579 5   7785 7788 4248 4249 4250 7785
2580 5   7785 7786 7790 7789 7788 7785
2581 5   7791 4247 4248 7788 7789 7791
2582 5   7791 4244 4245 4246 4247 7791
2583 5   7791 4241 4242 4243 4244 7791
2584 5   7791 7792 4239 4240 4241 7791
2585 5   7791 7789 7790 7793 7792 7791
2586 5   7794 4238 4239 7792 7793 7794
2587 5   7794 4235 4236 4237 4238 7794
2588 5   7794 7795 4233 4234 4235 7794
2589 5   7794 7798 7797 7796 7795 7794
2590 5   7794 7793 7790 7799 7798 7794
2591 5   7800 7801 7797 7798 7799 7800
2592 5   7800 7804 7803 7802 7801 7800
2593 5   7800 7807 7806 7805 7804 7800
2594 5   7800 7810 7809 7808 7807 7800
2595 5   7800 7799 7790 7811 7810 7800
2596 5   7812 7813 7809 7810 7811 7812
2597 5   7812 7816 7815 7814 7813 7812
2598 5   7812 7784 7734 7817 7816 7812
2599 5   7812 7787 7782 7783 7784 7812
2600 5   7812 7811 7790 7786 7787 7812
2601 5   7818 7814 7815 7820 7819 7818
2602 5   7818 7808 7809 7813 7814 7818
2603 5   7818 7821 7806 7807 7808 7818
2604 5   7818 7824 7823 7822 7821 7818
2605 5   7818 7819 7826 7825 7824 7818
2606 5   7827 7828 7823 7824 7825 7827
2607 5   7827 7831 7830 7829 7828 7827
2608 5   7827 7834 7833 7832 7831 7827
2609 5   7827 7837 7836 7835 7834 7827
2610 5   7827 7825 7826 7838 7837 7827
2611 5   7839 7840 7836 7837 7838 7839
2612 5   7839 7843 7842 7841 7840 7839
2613 5   7839 7846 7845 7844 7843 7839
2614 5   7839 7849 7848 7847 7846 7839
2615 5   7839 7838 7826 7850 7849 7839
2616 5   7851 7852 7848 7849 7850 7851
2617 5   7851 7855 7854 7853 7852 7851
2618 5   7851 7694 7695 7856 7855 7851
2619 5   7851 7857 7692 7693 7694 7851
2620 5   7851 7850 7826 7858 7857 7851
2621 5   7859 7691 7692 7857 7858 7859
2622 5   7859 7736 7689 7690 7691 7859
2623 5   7859 7817 7734 7735 7736 7859
2624 5   7859 7820 7815 7816 7817 7859
2625 5   7859 7858 7826 7819 7820 7859
2626 5   7860 7864 7863 7862 7861 7860
2627 5   7860 7867 7866 7865 7864 7860
2628 5   7860 7832 7833 7868 7867 7860
2629 5   7860 7869 7830 7831 7832 7860
2630 5   7860 7861 7871 7870 7869 7860
2631 5   7872 7829 7830 7869 7870 7872
2632 5   7872 7822 7823 7828 7829 7872
2633 5   7872 7805 7806 7821 7822 7872
2634 5   7872 7873 7803 7804 7805 7872
2635 5   7872 7870 7871 7874 7873 7872
2636 5   7875 7802 7803 7873 7874 7875
2637 5   7875 7796 7797 7801 7802 7875
2638 5   7875 4232 4233 7795 7796 7875
2639 5   7875 7876 4230 4231 4232 7875
2640 5   7875 7874 7871 7877 7876 7875
2641 5   7878 4229 4230 7876 7877 7878
2642 5   7878 4226 4227 4228 4229 7878
2643 5   7878 7879 4224 4225 4226 7878
2644 5   7878 7882 7881 7880 7879 7878
2645 5   7878 7877 7871 7883 7882 7878
2646 5   7884 7885 7881 7882 7883 7884
2647 5   7884 7888 7887 7886 7885 7884
2648 5   7884 7891 7890 7889 7888 7884
2649 5   7884 7862 7863 7892 7891 7884
2650 5   7884 7883 7871 7861 7862 7884
2651 5   7893 7886 7887 7895 7894 7893
2652 5   7893 7880 7881 7885 7886 7893
2653 5   7893 4223 4224 7879 7880 7893
2654 5   7893 7896 4221 4222 4223 7893
2655 5   7893 7894 7898 7897 7896 7893
2656 5   7899 4220 4221 7896 7897 7899
2657 5   7899 4217 4218 4219 4220 7899
2658 5   7899 4214 4215 4216 4217 7899
2659 5   7899 7900 4212 4213 4214 7899
2660 5   7899 7897 7898 7901 7900 7899
2661 5   7902 4211 4212 7900 7901 7902
2662 5   7902 4208 4209 4210 4211 7902
2663 5   7902 4205 4206 4207 4208 7902
2664 5   7902 7903 4203 4204 4205 7902
2665 5   7902 7901 7898 7904 7903 7902
2666 5   7905 4202 4203 7903 7904 7905
2667 5   7905 4199 4200 4201 4202 7905
2668 5   7905 7906 4197 4198 4199 7905
2669 5   7905 7909 7908 7907 7906 7905
2670 5   7905 7904 7898 7910 7909 7905
2671 5   7911 7912 7908 7909 7910 7911
2672 5   7911 7915 7914 7913 7912 7911
2673 5   7911 7889 7890 7916 7915 7911
2674 5   7911 7895 7887 7888 7889 7911
2675 5   7911 7910 7898 7894 7895 7911
2676 5   7917 7913 7914 7919 7918 7917
2677 5   7917 7907 7908 7912 7913 7917
2678 5   7917 4196 4197 7906 7907 7917
2679 5   7917 7920 4194 4195 4196 7917
2680 5   7917 7918 7922 7921 7920 7917
2681 5   7923 4193 4194 7920 7921 7923
2682 5   7923 4190 4191 4192 4193 7923
2683 5   7923 4187 4188 4189 4190 7923
2684 5   7923 7924 4185 4186 4187 7923
2685 5   7923 7921 7922 7925 7924 7923
2686 5   7926 4184 4185 7924 7925 7926
2687 5   7926 4181 4182 4183 4184 7926
2688 5   7926 4178 4179 4180 4181 7926
2689 5   7926 7927 4176 4177 4178 7926
2690 5   7926 7925 7922 7928 7927 7926
2691 5   7929 4175 4176 7927 7928 7929
2692 5   7929 4172 4173 4174 4175 7929
2693 5   7929 7930 4170 4171 4172 7929
2694 5   7929 7933 7932 7931 7930 7929
2695 5   7929 7928 7922 7934 7933 7929
2696 5   7935 7936 7932 7933 7934 7935
2697 5   7935 7939 7938 7937 7936 7935
2698 5   7935 7916 7890 7940 7939 7935
2699 5   7935 7919 7914 7915 7916 7935
2700 5   7935 7934 7922 7918 7919 7935
2701 5   7941 7937 7938 7943 7942 7941
2702 5   7941 7931 7932 7936 7937 7941
2703 5   7941 4169 4170 7930 7931 7941
2704 5   7941 7944 4167 4168 4169 7941
2705 5   7941 7942 7946 7945 7944 7941
2706 5   7947 4166 4167 7944 7945 7947
2707 5   7947 4163 4164 4165 4166 7947
2708 5   7947 4160 4161 4162 4163 7947
2709 5   7947 7948 4158 4159 4160 7947
2710 5   7947 7945 7946 7949 7948 7947
2711 5   7950 4157 4158 7948 7949 7950
2712 5   7950 4154 4155 4156 4157 7950
2713 5   7950 7951 4152 4153 4154 7950
2714 5   7950 7954 7953 7952 7951 7950
2715 5   7950 7949 7946 7955 7954 7950
2716 5   7956 7957 7953 7954 7955 7956
2717 5   7956 7960 7959 7958 7957 7956
2718 5   7956 7963 7962 7961 7960 7956
2719 5   7956 7966 7965 7964 7963 7956
2720 5   7956 7955 7946 7967 7966 7956
2721 5   7968 7969 7965 7966 7967 7968
2722 5   7968 7972 7971 7970 7969 7968
2723 5   7968 7940 7890 7973 7972 7968
2724 5   7968 7943 7938 7939 7940 7968
2725 5   7968 7967 7946 7942 7943 7968
2726 5   7974 7970 7971 7976 7975 7974
2727 5   7974 7964 7965 7969 7970 7974
2728 5   7974 7977 7962 7963 7964 7974
2729 5   7974 7980 7979 7978 7977 7974
2730 5   7974 7975 7982 7981 7980 7974
2731 5   7983 7984 7979 7980 7981 7983
2732 5   7983 7987 7986 7985 7984 7983
2733 5   7983 7990 7989 7988 7987 7983
2734 5   7983 7993 7992 7991 7990 7983
2735 5   7983 7981 7982 7994 7993 7983
2736 5   7995 7996 7992 7993 7994 7995
2737 5   7995 7999 7998 7997 7996 7995
2738 5   7995 7844 7845 8000 7999 7995
2739 5   7995 8001 7842 7843 7844 7995
2740 5   7995 7994 7982 8002 8001 7995
2741 5   8003 7841 7842 8001 8002 8003
2742 5   8003 7835 7836 7840 7841 8003
2743 5   8003 7868 7833 7834 7835 8003
2744 5   8003 8004 7866 7867 7868 8003
2745 5   8003 8002 7982 8005 8004 8003
2746 5   8006 7865 7866 8004 8005 8006
2747 5   8006 7892 7863 7864 7865 8006
2748 5   8006 7973 7890 7891 7892 8006
2749 5   8006 7976 7971 7972 7973 8006
2750 5   8006 8005 7982 7975 7976 8006
2751 5   8007 8011 8010 8009 8008 8007
2752 5   8007 8014 8013 8012 8011 8007
2753 5   8007 7988 7989 8015 8014 8007
2754 5   8007 8016 7986 7987 7988 8007
2755 5   8007 8008 8018 8017 8016 8007
2756 5   8019 7985 7986 8016 8017 8019
2757 5   8019 7978 7979 7984 7985 8019
2758 5   8019 7961 7962 7977 7978 8019
2759 5   8019 8020 7959 7960 7961 8019
2760 5   8019 8017 8018 8021 8020 8019
2761 5   8022 7958 7959 8020 8021 8022
2762 5   8022 7952 7953 7957 7958 8022
2763 5   8022 4151 4152 7951 7952 8022
2764 5   8022 8023 4149 4150 4151 8022
2765 5   8022 8021 8018 8024 8023 8022
2766 5   8025 4148 4149 8023 8024 8025
2767 5   8025 4145 4146 4147 4148 8025
2768 5   8025 8026 4143 4144 4145 8025
2769 5   8025 8029 8028 8027 8026 8025
2770 5   8025 8024 8018 8030 8029 8025
2771 5   8031 8032 8028 8029 8030 8031
2772 5   8031 8035 8034 8033 8032 8031
2773 5   8031 8038 8037 8036 8035 8031
2774 5   8031 8009 8010 8039 8038 8031
2775 5   8031 8030 8018 8008 8009 8031
2776 5   8040 8033 8034 8042 8041 8040
2777 5   8040 8027 8028 8032 8033 8040
2778 5   8040 4142 4143 8026 8027 8040
2779 5   8040 8043 4140 4141 4142 8040
2780 5   8040 8041 8045 8044 8043 8040
2781 5   8046 4139 4140 8043 8044 8046
2782 5   8046 4136 4137 4138 4139 8046
2783 5   8046 4133 4134 4135 4136 8046
2784 5   8046 8047 4131 4132 4133 8046
2785 5   8046 8044 8045 8048 8047 8046
2786 5   8049 4130 4131 8047 8048 8049
2787 5   8049 4127 4128 4129 4130 8049
2788 5   8049 4124 4125 4126 4127 8049
2789 5   8049 8050 4122 4123 4124 8049
2790 5   8049 8048 8045 8051 8050 8049
2791 5   8052 4121 4122 8050 8051 8052
2792 5   8052 4118 4119 4120 4121 8052
2793 5   8052 8053 4116 4117 4118 8052
2794 5   8052 8056 8055 8054 8053 8052
2795 5   8052 8051 8045 8057 8056 8052
2796 5   8058 8059 8055 8056 8057 8058
2797 5   8058 8062 8061 8060 8059 8058
2798 5   8058 8036 8037 8063 8062 8058
2799 5   8058 8042 8034 8035 8036 8058
2800 5   8058 8057 8045 8041 8042 8058
2801 5   8064 8060 8061 8066 8065 8064
2802 5   8064 8054 8055 8059 8060 8064
2803 5   8064 4115 4116 8053 8054 8064
2804 5   8064 8067 4113 4114 4115 8064
2805 5   8064 8065 8069 8068 8067 8064
2806 5   8070 4112 4113 8067 8068 8070
2807 5   8070 4109 4110 4111 4112 8070
2808 5   8070 4106 4107 4108 4109 8070
2809 5   8070 8071 4104 4105 4106 8070
2810 5   8070 8068 8069 8072 8071 8070
2811 5   8073 4103 4104 8071 8072 8073
2812 5   8073 4100 4101 4102 4103 8073
2813 5   8073 3368 4098 4099 4100 8073
2814 5   8073 8074 3366 3367 3368 8073
2815 5   8073 8072 8069 8075 8074 8073
2816 5   8076 3365 3366 8074 8075 8076
2817 5   8076 3362 3363 3364 3365 8076
2818 5   8076 8077 3360 3361 3362 8076
2819 5   8076 8080 8079 8078 8077 8076
2820 5   8076 8075 8069 8081 8080 8076
2821 5   8082 8083 8079 8080 8081 8082
2822 5   8082 8086 8085 8084 8083 8082
2823 5   8082 8063 8037 8087 8086 8082
2824 5   8082 8066 8061 8062 8063 8082
2825 5   8082 8081 8069 8065 8066 8082
2826 5   8088 8084 8085 8090 8089 8088
2827 5   8088 8078 8079 8083 8084 8088
2828 5   8088 3359 3360 8077 8078 8088
2829 5   8088 8091 3357 3358 3359 8088
2830 5   8088 8089 8093 8092 8091 8088
2831 5   8094 3356 3357 8091 8092 8094
2832 5   8094 3353 3354 3355 3356 8094
2833 5   8094 3350 3351 3352 3353 8094
2834 5   8094 8095 3348 3349 3350 8094
2835 5   8094 8092 8093 8096 8095 8094
2836 5   8097 3347 3348 8095 8096 8097
2837 5   8097 3344 3345 3346 3347 8097
2838 5   8097 8098 3342 3343 3344 8097
2839 5   8097 8101 8100 8099 8098 8097
2840 5   8097 8096 8093 8102 8101 8097
2841 5   8103 8104 8100 8101 8102 8103
2842 5   8103 8107 8106 8105 8104 8103
2843 5   8103 8110 8109 8108 8107 8103
2844 5   8103 8113 8112 8111 8110 8103
2845 5   8103 8102 8093 8114 8113 8103
2846 5   8115 8116 8112 8113 8114 8115
2847 5   8115 8119 8118 8117 8116 8115
2848 5   8115 8087 8037 8120 8119 8115
2849 5   8115 8090 8085 8086 8087 8115
2850 5   8115 8114 8093 8089 8090 8115
2851 5   8121 8117 8118 8123 8122 8121
2852 5   8121 8111 8112 8116 8117 8121
2853 5   8121 8124 8109 8110 8111 8121
2854 5   8121 8127 8126 8125 8124 8121
2855 5   8121 8122 8129 8128 8127 8121
2856 5   8130 8131 8126 8127 8128 8130
2857 5   8130 8134 8133 8132 8131 8130
2858 5   8130 8137 8136 8135 8134 8130
2859 5   8130 8140 8139 8138 8137 8130
2860 5   8130 8128 8129 8141 8140 8130
2861 5   8142 8143 8139 8140 8141 8142
2862 5   8142 8146 8145 8144 8143 8142
2863 5   8142 8000 7845 8147 8146 8142
2864 5   8142 8148 7998 7999 8000 8142
2865 5   8142 8141 8129 8149 8148 8142
2866 5   8150 7997 7998 8148 8149 8150
2867 5   8150 7991 7992 7996 7997 8150
2868 5   8150 8015 7989 7990 7991 8150
2869 5   8150 8151 8013 8014 8015 8150
2870 5   8150 8149 8129 8152 8151 8150
2871 5   8153 8012 8013 8151 8152 8153
2872 5   8153 8039 8010 8011 8012 8153
2873 5   8153 8120 8037 8038 8039 8153
2874 5   8153 8123 8118 8119 8120 8153
2875 5   8153 8152 8129 8122 8123 8153
2876 5   8154 8158 8157 8156 8155 8154
2877 5   8154 8161 8160 8159 8158 8154
2878 5   8154 8135 8136 8162 8161 8154
2879 5   8154 8163 8133 8134 8135 8154
2880 5   8154 8155 8165 8164 8163 8154
2881 5   8166 8132 8133 8163 8164 8166
2882 5   8166 8125 8126 8131 8132 8166
2883 5   8166 8108 8109 8124 8125 8166
2884 5   8166 8167 8106 8107 8108 8166
2885 5   8166 8164 8165 8168 8167 8166
2886 5   8169 8105 8106 8167 8168 8169
2887 5   8169 8099 8100 8104 8105 8169
2888 5   8169 3341 3342 8098 8099 8169
2889 5   8169 8170 3339 3340 3341 8169
2890 5   8169 8168 8165 8171 8170 8169
2891 5   8172 3338 3339 8170 8171 8172
2892 5   8172 3335 3336 3337 3338 8172
2893 5   8172 8173 3333 3334 3335 8172
2894 5   8172 8176 8175 8174 8173 8172
2895 5   8172 8171 8165 8177 8176 8172
2896 5   8178 8179 8175 8176 8177 8178
2897 5   8178 8182 8181 8180 8179 8178
2898 5   8178 8185 8184 8183 8182 8178
2899 5   8178 8156 8157 8186 8185 8178
2900 5   8178 8177 8165 8155 8156 8178
2901 5   8187 8180 8181 8189 8188 8187
2902 5   8187 8174 8175 8179 8180 8187
2903 5   8187 3332 3333 8173 8174 8187
2904 5   8187 8190 3330 3331 3332 8187
2905 5   8187 8188 8192 8191 8190 8187
2906 5   8193 3329 3330 8190 8191 8193
2907 5   8193 3326 3327 3328 3329 8193
2908 5   8193 3323 3324 3325 3326 8193
2909 5   8193 8194 3321 3322 3323 8193
2910 5   8193 8191 8192 8195 8194 8193
2911 5   8196 3320 3321 8194 8195 8196
2912 5   8196 3317 3318 3319 3320 8196
2913 5   8196 3314 3315 3316 3317 8196
2914 5   8196 8197 3312 3313 3314 8196
2915 5   8196 8195 8192 8198 8197 8196
2916 5   8199 3311 3312 8197 8198 8199
2917 5   8199 3308 3309 3310 3311 8199
2918 5   8199 8200 3306 3307 3308 8199
2919 5   8199 8203 8202 8201 8200 8199
2920 5   8199 8198 8192 8204 8203 8199
2921 5   8205 8206 8202 8203 8204 8205
2922 5   8205 8209 8208 8207 8206 8205
2923 5   8205 8183 8184 8210 8209 8205
2924 5   8205 8189 8181 8182 8183 8205
2925 5   8205 8204 8192 8188 8189 8205
2926 5   8211 8207 8208 8213 8212 8211
2927 5   8211 8201 8202 8206 8207 8211
2928 5   8211 3305 3306 8200 8201 8211
2929 5   8211 8214 3303 3304 3305 8211
2930 5   8211 8212 8216 8215 8214 8211
2931 5   8217 3302 3303 8214 8215 8217
2932 5   8217 3299 3300 3301 3302 8217
2933 5   8217 3296 3297 3298 3299 8217
2934 5   8217 8218 3294 3295 3296 8217
2935 5   8217 8215 8216 8219 8218 8217
2936 5   8220 3293 3294 8218 8219 8220
2937 5   8220 3290 3291 3292 3293 8220
2938 5   8220 4479 3288 3289 3290 8220
2939 5   8220 8221 4477 4478 4479 8220
2940 5   8220 8219 8216 8222 8221 8220
2941 5   8223 4476 4477 8221 8222 8223
2942 5   8223 4470 4471 4475 4476 8223
2943 5   8223 8224 4468 4469 4470 8223
2944 5   8223 8227 8226 8225 8224 8223
2945 5   8223 8222 8216 8228 8227 8223
2946 5   8229 8230 8226 8227 8228 8229
2947 5   8229 8233 8232 8231 8230 8229
2948 5   8229 8210 8184 8234 8233 8229
2949 5   8229 8213 8208 8209 8210 8229
2950 5   8229 8228 8216 8212 8213 8229
2951 5   8235 8231 8232 8237 8236 8235
2952 5   8235 8225 8226 8230 8231 8235
2953 5   8235 4467 4468 8224 8225 8235
2954 5   8235 8238 4465 4466 4467 8235
2955 5   8235 8236 8240 8239 8238 8235
2956 5   8241 4464 4465 8238 8239 8241
2957 5   8241 4457 4458 4463 4464 8241
2958 5   8241 4440 4441 4456 4457 8241
2959 5   8241 8242 4438 4439 4440 8241
2960 5   8241 8239 8240 8243 8242 8241
2961 5   8244 4437 4438 8242 8243 8244
2962 5   8244 4431 4432 4436 4437 8244
2963 5   8244 8245 4429 4430 4431 8244
2964 5   8244 8248 8247 8246 8245 8244
2965 5   8244 8243 8240 8249 8248 8244
2966 5   8250 8251 8247 8248 8249 8250
2967 5   8250 8254 8253 8252 8251 8250
2968 5   8250 8257 8256 8255 8254 8250
2969 5   8250 8260 8259 8258 8257 8250
2970 5   8250 8249 8240 8261 8260 8250
2971 5   8262 8263 8259 8260 8261 8262
2972 5   8262 8266 8265 8264 8263 8262
2973 5   8262 8234 8184 8267 8266 8262
2974 5   8262 8237 8232 8233 8234 8262
2975 5   8262 8261 8240 8236 8237 8262
2976 5   8268 8264 8265 8270 8269 8268
2977 5   8268 8258 8259 8263 8264 8268
2978 5   8268 8271 8256 8257 8258 8268
2979 5   8268 8274 8273 8272 8271 8268
2980 5   8268 8269 8276 8275 8274 8268
2981 5   8277 8278 8273 8274 8275 8277
2982 5   8277 8281 8280 8279 8278 8277
2983 5   8277 8284 8283 8282 8281 8277
2984 5   8277 8287 8286 8285 8284 8277
2985 5   8277 8275 8276 8288 8287 8277
2986 5   8289 8290 8286 8287 8288 8289
2987 5   8289 8293 8292 8291 8290 8289
2988 5   8289 8147 7845 8294 8293 8289
2989 5   8289 8295 8145 8146 8147 8289
2990 5   8289 8288 8276 8296 8295 8289
2991 5   8297 8144 8145 8295 8296 8297
2992 5   8297 8138 8139 8143 8144 8297
2993 5   8297 8162 8136 8137 8138 8297
2994 5   8297 8298 8160 8161 8162 8297
2995 5   8297 8296 8276 8299 8298 8297
2996 5   8300 8159 8160 8298 8299 8300
2997 5   8300 8186 8157 8158 8159 8300
2998 5   8300 8267 8184 8185 8186 8300
2999 5   8300 8270 8265 8266 8267 8300
3000 5   8300 8299 8276 8269 8270 8300
3001 5   8301 8305 8304 8303 8302 8301
3002 5   8301 8308 8307 8306 8305 8301
3003 5   8301 8282 8283 8309 8308 8301
3004 5   8301 8310 8280 8281 8282 8301
3005 5   8301 8302 8312 8311 8310 8301
3006 5   8313 8279 8280 8310 8311 8313
3007 5   8313 8272 8273 8278 8279 8313
3008 5   8313 8255 8256 8271 8272 8313
3009 5   8313 8314 8253 8254 8255 8313
3010 5   8313 8311 8312 8315 8314 8313
3011 5   8316 8252 8253 8314 8315 8316
3012 5   8316 8246 8247 8251 8252 8316
3013 5   8316 4428 4429 8245 8246 8316
3014 5   8316 8317 4426 4427 4428 8316
3015 5   8316 8315 8312 8318 8317 8316
3016 5   8319 4425 4426 8317 8318 8319
3017 5   8319 4419 4420 4424 4425 8319
3018 5   8319 8320 4417 4418 4419 8319
3019 5   8319 8323 8322 8321 8320 8319
3020 5   8319 8318 8312 8324 8323 8319
3021 5   8325 8326 8322 8323 8324 8325
3022 5   8325 8329 8328 8327 8326 8325
3023 5   8325 8332 8331 8330 8329 8325
3024 5   8325 8303 8304 8333 8332 8325
3025 5   8325 8324 8312 8302 8303 8325
3026 5   8334 8327 8328 8336 8335 8334
3027 5   8334 8321 8322 8326 8327 8334
3028 5   8334 4416 4417 8320 8321 8334
3029 5   8334 8337 4414 4415 4416 8334
3030 5   8334 8335 8339 8338 8337 8334
3031 5   8340 4413 4414 8337 8338 8340
3032 5   8340 4406 4407 4412 4413 8340
3033 5   8340 4386 4387 4405 4406 8340
3034 5   8340 8341 4384 4385 4386 8340
3035 5   8340 8338 8339 8342 8341 8340
3036 5   8343 4383 4384 8341 8342 8343
3037 5   8343 4377 4378 4382 4383 8343
3038 5   8343 5207 4375 4376 4377 8343
3039 5   8343 8344 5205 5206 5207 8343
3040 5   8343 8342 8339 8345 8344 8343
3041 5   8346 5204 5205 8344 8345 8346
3042 5   8346 5198 5199 5203 5204 8346
3043 5   8346 8347 5196 5197 5198 8346
3044 5   8346 8350 8349 8348 8347 8346
3045 5   8346 8345 8339 8351 8350 8346
3046 5   8352 8353 8349 8350 8351 8352
3047 5   8352 8356 8355 8354 8353 8352
3048 5   8352 8330 8331 8357 8356 8352
3049 5   8352 8336 8328 8329 8330 8352
3050 5   8352 8351 8339 8335 8336 8352
3051 5   8358 8354 8355 8360 8359 8358
3052 5   8358 8348 8349 8353 8354 8358
3053 5   8358 5195 5196 8347 8348 8358
3054 5   8358 8361 5193 5194 5195 8358
3055 5   8358 8359 8363 8362 8361 8358
3056 5   8364 5192 5193 8361 8362 8364
3057 5   8364 5185 5186 5191 5192 8364
3058 5   8364 5168 5169 5184 5185 8364
3059 5   8364 8365 5166 5167 5168 8364
3060 5   8364 8362 8363 8366 8365 8364
3061 5   8367 5165 5166 8365 8366 8367
3062 5   8367 5159 5160 5164 5165 8367
3063 5   8367 7631 5157 5158 5159 8367
3064 5   8367 8368 7629 7630 7631 8367
3065 5   8367 8366 8363 8369 8368 8367
3066 5   8370 7628 7629 8368 8369 8370
3067 5   8370 7622 7623 7627 7628 8370
3068 5   8370 8371 7620 7621 7622 8370
3069 5   8370 8374 8373 8372 8371 8370
3070 5   8370 8369 8363 8375 8374 8370
3071 5   8376 8377 8373 8374 8375 8376
3072 5   8376 8380 8379 8378 8377 8376
3073 5   8376 8357 8331 8381 8380 8376
3074 5   8376 8360 8355 8356 8357 8376
3075 5   8376 8375 8363 8359 8360 8376
3076 5   8382 8378 8379 8384 8383 8382
3077 5   8382 8372 8373 8377 8378 8382
3078 5   8382 7619 7620 8371 8372 8382
3079 5   8382 8385 7617 7618 7619 8382
3080 5   8382 8383 8387 8386 8385 8382
3081 5   8388 7616 7617 8385 8386 8388
3082 5   8388 7609 7610 7615 7616 8388
3083 5   8388 7592 7593 7608 7609 8388
3084 5   8388 8389 7590 7591 7592 8388
3085 5   8388 8386 8387 8390 8389 8388
3086 5   8391 7589 7590 8389 8390 8391
3087 5   8391 7583 7584 7588 7589 8391
3088 5   8391 7719 7581 7582 7583 8391
3089 5   8391 8392 7717 7718 7719 8391
3090 5   8391 8390 8387 8393 8392 8391
3091 5   8394 7716 7717 8392 8393 8394
3092 5   8394 7710 7711 7715 7716 8394
3093 5   8394 8395 7708 7709 7710 8394
3094 5   8394 8398 8397 8396 8395 8394
3095 5   8394 8393 8387 8399 8398 8394
3096 5   8400 8401 8397 8398 8399 8400
3097 5   8400 8404 8403 8402 8401 8400
3098 5   8400 8381 8331 8405 8404 8400
3099 5   8400 8384 8379 8380 8381 8400
3100 5   8400 8399 8387 8383 8384 8400
3101 5   8406 8402 8403 8408 8407 8406
3102 5   8406 8396 8397 8401 8402 8406
3103 5   8406 7707 7708 8395 8396 8406
3104 5   8406 8409 7705 7706 7707 8406
3105 5   8406 8407 8411 8410 8409 8406
3106 5   8412 7704 7705 8409 8410 8412
3107 5   8412 7697 7698 7703 7704 8412
3108 5   8412 7856 7695 7696 7697 8412
3109 5   8412 8413 7854 7855 7856 8412
3110 5   8412 8410 8411 8414 8413 8412
3111 5   8415 7853 7854 8413 8414 8415
3112 5   8415 7847 7848 7852 7853 8415
3113 5   8415 8294 7845 7846 7847 8415
3114 5   8415 8416 8292 8293 8294 8415
3115 5   8415 8414 8411 8417 8416 8415
3116 5   8418 8291 8292 8416 8417 8418
3117 5   8418 8285 8286 8290 8291 8418
3118 5   8418 8309 8283 8284 8285 8418
3119 5   8418 8419 8307 8308 8309 8418
3120 5   8418 8417 8411 8420 8419 8418
3121 5   8421 8306 8307 8419 8420 8421
3122 5   8421 8333 8304 8305 8306 8421
3123 5   8421 8405 8331 8332 8333 8421
3124 5   8421 8408 8403 8404 8405 8421
3125 5   8421 8420 8411 8407 8408 8421
3126 2   3127 313 3611
3127 2   3128 313 3126
3128 4   3129 312 4782 313 3127
3129 2   3130 312 3128
3130 2   3131 312 3129
3131 4   3132 311 4782 312 3130
3132 4   3133 309 4780 311 3131
3133 2   3134 309 3132
3134 4   3135 308 4779 309 3133
3135 2   3136 308 3134
3136 2   3137 308 3135
3137 4   3138 307 4779 308 3136
3138 2   3139 307 3137
3139 2   3140 307 3138
3140 4   3141 306 4779 307 3139
3141 4   3142 304 4776 306 3140
3142 2   3143 304 3141
3143 4   3144 303 4773 304 3142
3144 4   3145 293 4762 303 3143
3145 2   3146 293 3144
3146 4   3147 292 4761 293 3145
3147 2   3148 292 3146
3148 2   3149 292 3147
3149 4   3150 291 4761 292 3148
3150 4   3151 289 4759 291 3149
3151 2   3152 289 3150
3152 4   3153 288 4758 289 3151
3153 2   3154 288 3152
3154 2   3155 288 3153
3155 4   3156 287 4758 288 3154
3156 2   3157 287 3155
3157 2   3158 287 3156
3158 4   3159 286 4758 287 3157
3159 4   3160 284 4756 286 3158
3160 2   3161 284 3159
3161 4   3162 283 4755 284 3160
3162 2   3163 283 3161
3163 2   3164 283 3162
3164 4   3165 282 4755 283 3163
3165 2   3166 282 3164
3166 2   3167 282 3165
3167 4   3168 281 4755 282 3166
3168 4   3169 279 4752 281 3167
3169 2   3170 279 3168
3170 4   3171 278 4749 279 3169
3171 4   3172 268 4735 278 3170
3172 2   3173 268 3171
3173 4   3174 267 4734 268 3172
3174 2   3175 267 3173
3175 2   3176 267 3174
3176 4   3177 266 4734 267 3175
3177 4   3178 264 4732 266 3176
3178 2   3179 264 3177
3179 4   3180 263 4731 264 3178
3180 4   3181 213 4660 263 3179
3181 2   3182 213 3180
3182 4   3183 212 4659 213 3181
3183 2   3184 212 3182
3184 2   3185 212 3183
3185 4   3186 211 4659 212 3184
3186 4   3187 209 4657 211 3185
3187 2   3188 209 3186
3188 4   3189 208 4656 209 3187
3189 2   3190 208 3188
3190 2   3191 208 3189
3191 4   3192 207 4656 208 3190
3192 2   3193 207 3191
3193 2   3194 207 3192
3194 4   3195 206 4656 207 3193
3195 4   3196 204 4653 206 3194
3196 2   3197 204 3195
3197 4   3198 203 4650 204 3196
3198 4   3199 193 4639 203 3197
3199 2   3200 193 3198
3200 4   3201 192 4638 193 3199
3201 2   3202 192 3200
3202 2   3203 192 3201
3203 4   3204 191 4638 192 3202
3204 4   3205 189 4636 191 3203
3205 2   3206 189 3204
3206 4   3207 188 4635 189 3205
3207 2   3208 188 3206
3208 2   3209 188 3207
3209 4   3210 187 4635 188 3208
3210 2   3211 187 3209
3211 2   3212 187 3210
3212 4   3213 186 4635 187 3211
3213 4   3214 184 4633 186 3212
3214 2   3215 184 3213
3215 4   3216 183 4632 184 3214
3216 2   3217 183 3215
3217 2   3218 183 3216
3218 4   3219 182 4632 183 3217
3219 2   3220 182 3218
3220 2   3221 182 3219
3221 4   3222 181 4632 182 3220
3222 4   3223 179 4629 181 3221
3223 2   3224 179 3222
3224 4   3225 178 4626 179 3223
3225 4   3226 168 4615 178 3224
3226 2   3227 168 3225
3227 4   3228 167 4614 168 3226
3228 2   3229 167 3227
3229 2   3230 167 3228
3230 4   3231 166 4614 167 3229
3231 4   3232 164 4612 166 3230
3232 2   3233 164 3231
3233 4   3234 163 4611 164 3232
3234 2   3235 163 3233
3235 2   3236 163 3234
3236 4   3237 162 4611 163 3235
3237 2   3238 162 3236
3238 2   3239 162 3237
3239 4   3240 161 4611 162 3238
3240 4   3241 159 4609 161 3239
3241 2   3242 159 3240
3242 4   3243 158 4608 159 3241
3243 2   3244 158 3242
3244 2   3245 158 3243
3245 4   3246 157 4608 158 3244
3246 2   3247 157 3245
3247 2   3248 157 3246
3248 4   3249 156 4608 157 3247
3249 4   3250 154 4605 156 3248
3250 2   3251 154 3249
3251 4   3252 153 4602 154 3250
3252 4   3253 143 4588 153 3251
3253 2   3254 143 3252
3254 4   3255 142 4587 143 3253
3255 2   3256 142 3254
3256 2   3257 142 3255
3257 4   3258 141 4587 142 3256
3258 4   3259 139 4585 141 3257
3259 2   3260 139 3258
3260 4   3261 138 4584 139 3259
3261 4   3262 88 4504 138 3260
3262 2   3263 88 3261
3263 4   3264 87 4503 88 3262
3264 2   3265 87 3263
3265 2   3266 87 3264
3266 4   3267 86 4503 87 3265
3267 4   3268 84 4501 86 3266
3268 2   3269 84 3267
3269 4   3270 83 4500 84 3268
3270 2   3271 83 3269
3271 2   3272 83 3270
3272 4   3273 82 4500 83 3271
3273 2   3274 82 3272
3274 2   3275 82 3273
3275 4   3276 81 4500 82 3274
3276 4   3277 79 4497 81 3275
3277 2   3278 79 3276
3278 4   3279 78 4494 79 3277
3279 4   3280 68 4483 78 3278
3280 2   3281 68 3279
3281 4   3282 67 4482 68 3280
3282 2   3283 67 3281
3283 2   3284 67 3282
3284 4   3285 66 4482 67 3283
3285 4   3286 64 4480 66 3284
3286 2   3287 64 3285
3287 4   3288 63 4474 64 3286
3288 4   3289 2938 4479 63 3287
3289 2   3290 2938 3288
3290 4   3291 2937 8220 2938 3289
3291 2   3292 2937 3290
3292 2   3293 2937 3291
3293 4   3294 2936 8220 2937 3292
3294 4   3295 2934 8218 2936 3293
3295 2   3296 2934 3294
3296 4   3297 2933 8217 2934 3295
3297 2   3298 2933 3296
3298 2   3299 2933 3297
3299 4   3300 2932 8217 2933 3298
3300 2   3301 2932 3299
3301 2   3302 2932 3300
3302 4   3303 2931 8217 2932 3301
3303 4   3304 2929 8214 2931 3302
3304 2   3305 2929 3303
3305 4   3306 2928 8211 2929 3304
3306 4   3307 2918 8200 2928 3305
3307 2   3308 2918 3306
3308 4   3309 2917 8199 2918 3307
3309 2   3310 2917 3308
3310 2   3311 2917 3309
3311 4   3312 2916 8199 2917 3310
3312 4   3313 2914 8197 2916 3311
3313 2   3314 2914 3312
3314 4   3315 2913 8196 2914 3313
3315 2   3316 2913 3314
3316 2   3317 2913 3315
3317 4   3318 2912 8196 2913 3316
3318 2   3319 2912 3317
3319 2   3320 2912 3318
3320 4   3321 2911 8196 2912 3319
3321 4   3322 2909 8194 2911 3320
3322 2   3323 2909 3321
3323 4   3324 2908 8193 2909 3322
3324 2   3325 2908 3323
3325 2   3326 2908 3324
3326 4   3327 2907 8193 2908 3325
3327 2   3328 2907 3326
3328 2   3329 2907 3327
3329 4   3330 2906 8193 2907 3328
3330 4   3331 2904 8190 2906 3329
3331 2   3332 2904 3330
3332 4   3333 2903 8187 2904 3331
3333 4   3334 2893 8173 2903 3332
3334 2   3335 2893 3333
3335 4   3336 2892 8172 2893 3334
3336 2   3337 2892 3335
3337 2   3338 2892 3336
3338 4   3339 2891 8172 2892 3337
3339 4   3340 2889 8170 2891 3338
3340 2   3341 2889 3339
3341 4   3342 2888 8169 2889 3340
3342 4   3343 2838 8098 2888 3341
3343 2   3344 2838 3342
3344 4   3345 2837 8097 2838 3343
3345 2   3346 2837 3344
3346 2   3347 2837 3345
3347 4   3348 2836 8097 2837 3346
3348 4   3349 2834 8095 2836 3347
3349 2   3350 2834 3348
3350 4   3351 2833 8094 2834 3349
3351 2   3352 2833 3350
3352 2   3353 2833 3351
3353 4   3354 2832 8094 2833 3352
3354 2   3355 2832 3353
3355 2   3356 2832 3354
3356 4   3357 2831 8094 2832 3355
3357 4   3358 2829 8091 2831 3356
3358 2   3359 2829 3357
3359 4   3360 2828 8088 2829 3358
3360 4   3361 2818 8077 2828 3359
3361 2   3362 2818 3360
3362 4   3363 2817 8076 2818 3361
3363 2   3364 2817 3362
3364 2   3365 2817 3363
3365 4   3366 2816 8076 2817 3364
3366 4   3367 2814 8074 2816 3365
3367 2   3368 2814 3366
3368 4   4098 2813 8073 2814 3367
3369 2   3370 938 4097
3370 2   3371 938 3369
3371 4   3372 937 5625 938 3370
3372 2   3373 937 3371
3373 2   3374 937 3372
3374 4   3375 936 5625 937 3373
3375 4   3376 934 5623 936 3374
3376 2   3377 934 3375
3377 4   3378 933 5622 934 3376
3378 2   3379 933 3377
3379 2   3380 933 3378
3380 4   3381 932 5622 933 3379
3381 2   3382 932 3380
3382 2   3383 932 3381
3383 4   3384 931 5622 932 3382
3384 4   3385 929 5619 931 3383
3385 2   3386 929 3384
3386 4   3387 928 5616 929 3385
3387 4   3388 918 5605 928 3386
3388 2   3389 918 3387
3389 4   3390 917 5604 918 3388
3390 2   3391 917 3389
3391 2   3392 917 3390
3392 4   3393 916 5604 917 3391
3393 4   3394 914 5602 916 3392
3394 2   3395 914 3393
3395 4   3396 913 5601 914 3394
3396 2   3397 913 3395
3397 2   3398 913 3396
3398 4   3399 912 5601 913 3397
3399 2   3400 912 3398
3400 2   3401 912 3399
3401 4   3402 911 5601 912 3400
3402 4   3403 909 5599 911 3401
3403 2   3404 909 3402
3404 4   3405 908 5598 909 3403
3405 2   3406 908 3404
3406 2   3407 908 3405
3407 4   3408 907 5598 908 3406
3408 2   3409 907 3407
3409 2   3410 907 3408
3410 4   3411 906 5598 907 3409
3411 4   3412 904 5595 906 3410
3412 2   3413 904 3411
3413 4   3414 903 5592 904 3412
3414 4   3415 893 5578 903 3413
3415 2   3416 893 3414
3416 4   3417 892 5577 893 3415
3417 2   3418 892 3416
3418 2   3419 892 3417
3419 4   3420 891 5577 892 3418
3420 4   3421 889 5575 891 3419
3421 2   3422 889 3420
3422 4   3423 888 5574 889 3421
3423 4   3424 838 5503 888 3422
3424 2   3425 838 3423
3425 4   3426 837 5502 838 3424
3426 2   3427 837 3425
3427 2   3428 837 3426
3428 4   3429 836 5502 837 3427
3429 4   3430 834 5500 836 3428
3430 2   3431 834 3429
3431 4   3432 833 5499 834 3430
3432 2   3433 833 3431
3433 2   3434 833 3432
3434 4   3435 832 5499 833 3433
3435 2   3436 832 3434
3436 2   3437 832 3435
3437 4   3438 831 5499 832 3436
3438 4   3439 829 5496 831 3437
3439 2   3440 829 3438
3440 4   3441 828 5493 829 3439
3441 4   3442 818 5482 828 3440
3442 2   3443 818 3441
3443 4   3444 817 5481 818 3442
3444 2   3445 817 3443
3445 2   3446 817 3444
3446 4   3447 816 5481 817 3445
3447 4   3448 814 5479 816 3446
3448 2   3449 814 3447
3449 4   3450 813 5478 814 3448
3450 2   3451 813 3449
3451 2   3452 813 3450
3452 4   3453 812 5478 813 3451
3453 2   3454 812 3452
3454 2   3455 812 3453
3455 4   3456 811 5478 812 3454
3456 4   3457 809 5476 811 3455
3457 2   3458 809 3456
3458 4   3459 808 5475 809 3457
3459 2   3460 808 3458
3460 2   3461 808 3459
3461 4   3462 807 5475 808 3460
3462 2   3463 807 3461
3463 2   3464 807 3462
3464 4   3465 806 5475 807 3463
3465 4   3466 804 5472 806 3464
3466 2   3467 804 3465
3467 4   3468 803 5469 804 3466
3468 4   3469 793 5458 803 3467
3469 2   3470 793 3468
3470 4   3471 792 5457 793 3469
3471 2   3472 792 3470
3472 2   3473 792 3471
3473 4   3474 791 5457 792 3472
3474 4   3475 789 5455 791 3473
3475 2   3476 789 3474
3476 4   3477 788 5454 789 3475
3477 2   3478 788 3476
3478 2   3479 788 3477
3479 4   3480 787 5454 788 3478
3480 2   3481 787 3479
3481 2   3482 787 3480
3482 4   3483 786 5454 787 3481
3483 4   3484 784 5452 786 3482
3484 2   3485 784 3483
3485 4   3486 783 5451 784 3484
3486 2   3487 783 3485
3487 2   3488 783 3486
3488 4   3489 782 5451 783 3487
3489 2   3490 782 3488
3490 2   3491 782 3489
3491 4   3492 781 5451 782 3490
3492 4   3493 779 5448 781 3491
3493 2   3494 779 3492
3494 4   3495 778 5445 779 3493
3495 4   3496 768 5431 778 3494
3496 2   3497 768 3495
3497 4   3498 767 5430 768 3496
3498 2   3499 767 3497
3499 2   3500 767 3498
3500 4   3501 766 5430 767 3499
3501 4   3502 764 5428 766 3500
3502 2   3503 764 3501
3503 4   3504 763 5427 764 3502
3504 4   3505 713 5347 763 3503
3505 2   3506 713 3504
3506 4   3507 712 5346 713 3505
3507 2   3508 712 3506
3508 2   3509 712 3507
3509 4   3510 711 5346 712 3508
3510 4   3511 709 5344 711 3509
3511 2   3512 709 3510
3512 4   3513 708 5343 709 3511
3513 2   3514 708 3512
3514 2   3515 708 3513
3515 4   3516 707 5343 708 3514
3516 2   3517 707 3515
3517 2   3518 707 3516
3518 4   3519 706 5343 707 3517
3519 4   3520 704 5340 706 3518
3520 2   3521 704 3519
3521 4   3522 703 5337 704 3520
3522 4   3523 693 5326 703 3521
3523 2   3524 693 3522
3524 4   3525 692 5325 693 3523
3525 2   3526 692 3524
3526 2   3527 692 3525
3527 4   3528 691 5325 692 3526
3528 4   3529 689 5323 691 3527
3529 2   3530 689 3528
3530 4   3531 688 5322 689 3529
3531 4   3532 438 4930 688 3530
3532 2   3533 438 3531
3533 4   3534 437 4929 438 3532
3534 2   3535 437 3533
3535 2   3536 437 3534
3536 4   3537 436 4929 437 3535
3537 4   3538 434 4927 436 3536
3538 2   3539 434 3537
3539 4   3540 433 4926 434 3538
3540 2   3541 433 3539
3541 2   3542 433 3540
3542 4   3543 432 4926 433 3541
3543 2   3544 432 3542
3544 2   3545 432 3543
3545 4   3546 431 4926 432 3544
3546 4   3547 429 4923 431 3545
3547 2   3548 429 3546
3548 4   3549 428 4920 429 3547
3549 4   3550 418 4909 428 3548
3550 2   3551 418 3549
3551 4   3552 417 4908 418 3550
3552 2   3553 417 3551
3553 2   3554 417 3552
3554 4   3555 416 4908 417 3553
3555 4   3556 414 4906 416 3554
3556 2   3557 414 3555
3557 4   3558 413 4905 414 3556
3558 2   3559 413 3557
3559 2   3560 413 3558
3560 4   3561 412 4905 413 3559
3561 2   3562 412 3560
3562 2   3563 412 3561
3563 4   3564 411 4905 412 3562
3564 4   3565 409 4903 411 3563
3565 2   3566 409 3564
3566 4   3567 408 4902 409 3565
3567 2   3568 408 3566
3568 2   3569 408 3567
3569 4   3570 407 4902 408 3568
3570 2   3571 407 3569
3571 2   3572 407 3570
3572 4   3573 406 4902 407 3571
3573 4   3574 404 4899 406 3572
3574 2   3575 404 3573
3575 4   3576 403 4896 404 3574
3576 4   3577 393 4882 403 3575
3577 2   3578 393 3576
3578 4   3579 392 4881 393 3577
3579 2   3580 392 3578
3580 2   3581 392 3579
3581 4   3582 391 4881 392 3580
3582 4   3583 389 4879 391 3581
3583 2   3584 389 3582
3584 4   3585 388 4878 389 3583
3585 4   3586 338 4807 388 3584
3586 2   3587 338 3585
3587 4   3588 337 4806 338 3586
3588 2   3589 337 3587
3589 2   3590 337 3588
3590 4   3591 336 4806 337 3589
3591 4   3592 334 4804 336 3590
3592 2   3593 334 3591
3593 4   3594 333 4803 334 3592
3594 2   3595 333 3593
3595 2   3596 333 3594
3596 4   3597 332 4803 333 3595
3597 2   3598 332 3596
3598 2   3599 332 3597
3599 4   3600 331 4803 332 3598
3600 4   3601 329 4800 331 3599
3601 2   3602 329 3600
3602 4   3603 328 4797 329 3601
3603 4   3604 318 4786 328 3602
3604 2   3605 318 3603
3605 4   3606 317 4785 318 3604
3606 2   3607 317 3605
3607 2   3608 317 3606
3608 4   3609 316 4785 317 3607
3609 4   3610 314 4783 316 3608
3610 2   3611 314 3609
3611 4   3126 313 4782 314 3610
3612 2   3613 2188 4340
3613 2   3614 2188 3612
3614 4   3615 2187 7257 2188 3613
3615 2   3616 2187 3614
3616 2   3617 2187 3615
3617 4   3618 2186 7257 2187 3616
3618 4   3619 2184 7255 2186 3617
3619 2   3620 2184 3618
3620 4   3621 2183 7254 2184 3619
3621 2   3622 2183 3620
3622 2   3623 2183 3621
3623 4   3624 2182 7254 2183 3622
3624 2   3625 2182 3623
3625 2   3626 2182 3624
3626 4   3627 2181 7254 2182 3625
3627 4   3628 2179 7251 2181 3626
3628 2   3629 2179 3627
3629 4   3630 2178 7248 2179 3628
3630 4   3631 2168 7237 2178 3629
3631 2   3632 2168 3630
3632 4   3633 2167 7236 2168 3631
3633 2   3634 2167 3632
3634 2   3635 2167 3633
3635 4   3636 2166 7236 2167 3634
3636 4   3637 2164 7234 2166 3635
3637 2   3638 2164 3636
3638 4   3639 2163 7233 2164 3637
3639 2   3640 2163 3638
3640 2   3641 2163 3639
3641 4   3642 2162 7233 2163 3640
3642 2   3643 2162 3641
3643 2   3644 2162 3642
3644 4   3645 2161 7233 2162 3643
3645 4   3646 2159 7231 2161 3644
3646 2   3647 2159 3645
3647 4   3648 2158 7230 2159 3646
3648 2   3649 2158 3647
3649 2   3650 2158 3648
3650 4   3651 2157 7230 2158 3649
3651 2   3652 2157 3650
3652 2   3653 2157 3651
3653 4   3654 2156 7230 2157 3652
3654 4   3655 2154 7227 2156 3653
3655 2   3656 2154 3654
3656 4   3657 2153 7224 2154 3655
3657 4   3658 2143 7210 2153 3656
3658 2   3659 2143 3657
3659 4   3660 2142 7209 2143 3658
3660 2   3661 2142 3659
3661 2   3662 2142 3660
3662 4   3663 2141 7209 2142 3661
3663 4   3664 2139 7207 2141 3662
3664 2   3665 2139 3663
3665 4   3666 2138 7206 2139 3664
3666 4   3667 2088 7135 2138 3665
3667 2   3668 2088 3666
3668 4   3669 2087 7134 2088 3667
3669 2   3670 2087 3668
3670 2   3671 2087 3669
3671 4   3672 2086 7134 2087 3670
3672 4   3673 2084 7132 2086 3671
3673 2   3674 2084 3672
3674 4   3675 2083 7131 2084 3673
3675 2   3676 2083 3674
3676 2   3677 2083 3675
3677 4   3678 2082 7131 2083 3676
3678 2   3679 2082 3677
3679 2   3680 2082 3678
3680 4   3681 2081 7131 2082 3679
3681 4   3682 2079 7128 2081 3680
3682 2   3683 2079 3681
3683 4   3684 2078 7125 2079 3682
3684 4   3685 2068 7114 2078 3683
3685 2   3686 2068 3684
3686 4   3687 2067 7113 2068 3685
3687 2   3688 2067 3686
3688 2   3689 2067 3687
3689 4   3690 2066 7113 2067 3688
3690 4   3691 2064 7111 2066 3689
3691 2   3692 2064 3690
3692 4   3693 2063 7110 2064 3691
3693 2   3694 2063 3692
3694 2   3695 2063 3693
3695 4   3696 2062 7110 2063 3694
3696 2   3697 2062 3695
3697 2   3698 2062 3696
3698 4   3699 2061 7110 2062 3697
3699 4   3700 2059 7108 2061 3698
3700 2   3701 2059 3699
3701 4   3702 2058 7107 2059 3700
3702 2   3703 2058 3701
3703 2   3704 2058 3702
3704 4   3705 2057 7107 2058 3703
3705 2   3706 2057 3704
3706 2   3707 2057 3705
3707 4   3708 2056 7107 2057 3706
3708 4   3709 2054 7104 2056 3707
3709 2   3710 2054 3708
3710 4   3711 2053 7101 2054 3709
3711 4   3712 2043 7090 2053 3710
3712 2   3713 2043 3711
3713 4   3714 2042 7089 2043 3712
3714 2   3715 2042 3713
3715 2   3716 2042 3714
3716 4   3717 2041 7089 2042 3715
3717 4   3718 2039 7087 2041 3716
3718 2   3719 2039 3717
3719 4   3720 2038 7086 2039 3718
3720 2   3721 2038 3719
3721 2   3722 2038 3720
3722 4   3723 2037 7086 2038 3721
3723 2   3724 2037 3722
3724 2   3725 2037 3723
3725 4   3726 2036 7086 2037 3724
3726 4   3727 2034 7084 2036 3725
3727 2   3728 2034 3726
3728 4   3729 2033 7083 2034 3727
3729 2   3730 2033 3728
3730 2   3731 2033 3729
3731 4   3732 2032 7083 2033 3730
3732 2   3733 2032 3731
3733 2   3734 2032 3732
3734 4   3735 2031 7083 2032 3733
3735 4   3736 2029 7080 2031 3734
3736 2   3737 2029 3735
3737 4   3738 2028 7077 2029 3736
3738 4   3739 2018 7063 2028 3737
3739 2   3740 2018 3738
3740 4   3741 2017 7062 2018 3739
3741 2   3742 2017 3740
3742 2   3743 2017 3741
3743 4   3744 2016 7062 2017 3742
3744 4   3745 2014 7060 2016 3743
3745 2   3746 2014 3744
3746 4   3747 2013 7059 2014 3745
3747 4   3748 1963 6979 2013 3746
3748 2   3749 1963 3747
3749 4   3750 1962 6978 1963 3748
3750 2   3751 1962 3749
3751 2   3752 1962 3750
3752 4   3753 1961 6978 1962 3751
3753 4   3754 1959 6976 1961 3752
3754 2   3755 1959 3753
3755 4   3756 1958 6975 1959 3754
3756 2   3757 1958 3755
3757 2   3758 1958 3756
3758 4   3759 1957 6975 1958 3757
3759 2   3760 1957 3758
3760 2   3761 1957 3759
3761 4   3762 1956 6975 1957 3760
3762 4   3763 1954 6972 1956 3761
3763 2   3764 1954 3762
3764 4   3765 1953 6969 1954 3763
3765 4   3766 1943 6958 1953 3764
3766 2   3767 1943 3765
3767 4   3768 1942 6957 1943 3766
3768 2   3769 1942 3767
3769 2   3770 1942 3768
3770 4   3771 1941 6957 1942 3769
3771 4   3772 1939 6955 1941 3770
3772 2   3773 1939 3771
3773 4   3774 1938 6954 1939 3772
3774 4   3775 1688 6589 1938 3773
3775 2   3776 1688 3774
3776 4   3777 1687 6588 1688 3775
3777 2   3778 1687 3776
3778 2   3779 1687 3777
3779 4   3780 1686 6588 1687 3778
3780 4   3781 1684 6586 1686 3779
3781 2   3782 1684 3780
3782 4   3783 1683 6585 1684 3781
3783 2   3784 1683 3782
3784 2   3785 1683 3783
3785 4   3786 1682 6585 1683 3784
3786 2   3787 1682 3785
3787 2   3788 1682 3786
3788 4   3789 1681 6585 1682 3787
3789 4   3790 1679 6582 1681 3788
3790 2   3791 1679 3789
3791 4   3792 1678 6579 1679 3790
3792 4   3793 1668 6568 1678 3791
3793 2   3794 1668 3792
3794 4   3795 1667 6567 1668 3793
3795 2   3796 1667 3794
3796 2   3797 1667 3795
3797 4   3798 1666 6567 1667 3796
3798 4   3799 1664 6565 1666 3797
3799 2   3800 1664 3798
3800 4   3801 1663 6564 1664 3799
3801 2   3802 1663 3800
3802 2   3803 1663 3801
3803 4   3804 1662 6564 1663 3802
3804 2   3805 1662 3803
3805 2   3806 1662 3804
3806 4   3807 1661 6564 1662 3805
3807 4   3808 1659 6562 1661 3806
3808 2   3809 1659 3807
3809 4   3810 1658 6561 1659 3808
3810 2   3811 1658 3809
3811 2   3812 1658 3810
3812 4   3813 1657 6561 1658 3811
3813 2   3814 1657 3812
3814 2   3815 1657 3813
3815 4   3816 1656 6561 1657 3814
3816 4   3817 1654 6558 1656 3815
3817 2   3818 1654 3816
3818 4   3819 1653 6555 1654 3817
3819 4   3820 1643 6541 1653 3818
3820 2   3821 1643 3819
3821 4   3822 1642 6540 1643 3820
3822 2   3823 1642 3821
3823 2   3824 1642 3822
3824 4   3825 1641 6540 1642 3823
3825 4   3826 1639 6538 1641 3824
3826 2   3827 1639 3825
3827 4   3828 1638 6537 1639 3826
3828 4   3829 1588 6466 1638 3827
3829 2   3830 1588 3828
3830 4   3831 1587 6465 1588 3829
3831 2   3832 1587 3830
3832 2   3833 1587 3831
3833 4   3834 1586 6465 1587 3832
3834 4   3835 1584 6463 1586 3833
3835 2   3836 1584 3834
3836 4   3837 1583 6462 1584 3835
3837 2   3838 1583 3836
3838 2   3839 1583 3837
3839 4   3840 1582 6462 1583 3838
3840 2   3841 1582 3839
3841 2   3842 1582 3840
3842 4   3843 1581 6462 1582 3841
3843 4   3844 1579 6459 1581 3842
3844 2   3845 1579 3843
3845 4   3846 1578 6456 1579 3844
3846 4   3847 1568 6445 1578 3845
3847 2   3848 1568 3846
3848 4   3849 1567 6444 1568 3847
3849 2   3850 1567 3848
3850 2   3851 1567 3849
3851 4   3852 1566 6444 1567 3850
3852 4   3853 1564 6442 1566 3851
3853 2   3854 1564 3852
3854 4   3855 1563 6441 1564 3853
3855 2   3856 1563 3854
3856 2   3857 1563 3855
3857 4   3858 1562 6441 1563 3856
3858 2   3859 1562 3857
3859 2   3860 1562 3858
3860 4   3861 1561 6441 1562 3859
3861 4   3862 1559 6439 1561 3860
3862 2   3863 1559 3861
3863 4   3864 1558 6438 1559 3862
3864 2   3865 1558 3863
3865 2   3866 1558 3864
3866 4   3867 1557 6438 1558 3865
3867 2   3868 1557 3866
3868 2   3869 1557 3867
3869 4   3870 1556 6438 1557 3868
3870 4   3871 1554 6435 1556 3869
3871 2   3872 1554 3870
3872 4   3873 1553 6432 1554 3871
3873 4   3874 1543 6421 1553 3872
3874 2   3875 1543 3873
3875 4   3876 1542 6420 1543 3874
3876 2   3877 1542 3875
3877 2   3878 1542 3876
3878 4   3879 1541 6420 1542 3877
3879 4   3880 1539 6418 1541 3878
3880 2   3881 1539 3879
3881 4   3882 1538 6417 1539 3880
3882 2   3883 1538 3881
3883 2   3884 1538 3882
3884 4   3885 1537 6417 1538 3883
3885 2   3886 1537 3884
3886 2   3887 1537 3885
3887 4   3888 1536 6417 1537 3886
3888 4   3889 1534 6415 1536 3887
3889 2   3890 1534 3888
3890 4   3891 1533 6414 1534 3889
3891 2   3892 1533 3890
3892 2   3893 1533 3891
3893 4   3894 1532 6414 1533 3892
3894 2   3895 1532 3893
3895 2   3896 1532 3894
3896 4   3897 1531 6414 1532 3895
3897 4   3898 1529 6411 1531 3896
3898 2   3899 1529 3897
3899 4   3900 1528 6408 1529 3898
3900 4   3901 1518 6394 1528 3899
3901 2   3902 1518 3900
3902 4   3903 1517 6393 1518 3901
3903 2   3904 1517 3902
3904 2   3905 1517 3903
3905 4   3906 1516 6393 1517 3904
3906 4   3907 1514 6391 1516 3905
3907 2   3908 1514 3906
3908 4   3909 1513 6390 1514 3907
3909 4   3910 1463 6319 1513 3908
3910 2   3911 1463 3909
3911 4   3912 1462 6318 1463 3910
3912 2   3913 1462 3911
3913 2   3914 1462 3912
3914 4   3915 1461 6318 1462 3913
3915 4   3916 1459 6316 1461 3914
3916 2   3917 1459 3915
3917 4   3918 1458 6315 1459 3916
3918 2   3919 1458 3917
3919 2   3920 1458 3918
3920 4   3921 1457 6315 1458 3919
3921 2   3922 1457 3920
3922 2   3923 1457 3921
3923 4   3924 1456 6315 1457 3922
3924 4   3925 1454 6312 1456 3923
3925 2   3926 1454 3924
3926 4   3927 1453 6309 1454 3925
3927 4   3928 1443 6298 1453 3926
3928 2   3929 1443 3927
3929 4   3930 1442 6297 1443 3928
3930 2   3931 1442 3929
3931 2   3932 1442 3930
3932 4   3933 1441 6297 1442 3931
3933 4   3934 1439 6295 1441 3932
3934 2   3935 1439 3933
3935 4   3936 1438 6294 1439 3934
3936 2   3937 1438 3935
3937 2   3938 1438 3936
3938 4   3939 1437 6294 1438 3937
3939 2   3940 1437 3938
3940 2   3941 1437 3939
3941 4   3942 1436 6294 1437 3940
3942 4   3943 1434 6292 1436 3941
3943 2   3944 1434 3942
3944 4   3945 1433 6291 1434 3943
3945 2   3946 1433 3944
3946 2   3947 1433 3945
3947 4   3948 1432 6291 1433 3946
3948 2   3949 1432 3947
3949 2   3950 1432 3948
3950 4   3951 1431 6291 1432 3949
3951 4   3952 1429 6288 1431 3950
3952 2   3953 1429 3951
3953 4   3954 1428 6285 1429 3952
3954 4   3955 1418 6274 1428 3953
3955 2   3956 1418 3954
3956 4   3957 1417 6273 1418 3955
3957 2   3958 1417 3956
3958 2   3959 1417 3957
3959 4   3960 1416 6273 1417 3958
3960 4   3961 1414 6271 1416 3959
3961 2   3962 1414 3960
3962 4   3963 1413 6270 1414 3961
3963 2   3964 1413 3962
3964 2   3965 1413 3963
3965 4   3966 1412 6270 1413 3964
3966 2   3967 1412 3965
3967 2   3968 1412 3966
3968 4   3969 1411 6270 1412 3967
3969 4   3970 1409 6268 1411 3968
3970 2   3971 1409 3969
3971 4   3972 1408 6267 1409 3970
3972 2   3973 1408 3971
3973 2   3974 1408 3972
3974 4   3975 1407 6267 1408 3973
3975 2   3976 1407 3974
3976 2   3977 1407 3975
3977 4   3978 1406 6267 1407 3976
3978 4   3979 1404 6264 1406 3977
3979 2   3980 1404 3978
3980 4   3981 1403 6261 1404 3979
3981 4   3982 1393 6247 1403 3980
3982 2   3983 1393 3981
3983 4   3984 1392 6246 1393 3982
3984 2   3985 1392 3983
3985 2   3986 1392 3984
3986 4   3987 1391 6246 1392 3985
3987 4   3988 1389 6244 1391 3986
3988 2   3989 1389 3987
3989 4   3990 1388 6243 1389 3988
3990 4   3991 1338 6163 1388 3989
3991 2   3992 1338 3990
3992 4   3993 1337 6162 1338 3991
3993 2   3994 1337 3992
3994 2   3995 1337 3993
3995 4   3996 1336 6162 1337 3994
3996 4   3997 1334 6160 1336 3995
3997 2   3998 1334 3996
3998 4   3999 1333 6159 1334 3997
3999 2   4000 1333 3998
4000 2   4001 1333 3999
4001 4   4002 1332 6159 1333 4000
4002 2   4003 1332 4001
4003 2   4004 1332 4002
4004 4   4005 1331 6159 1332 4003
4005 4   4006 1329 6156 1331 4004
4006 2   4007 1329 4005
4007 4   4008 1328 6153 1329 4006
4008 4   4009 1318 6142 1328 4007
4009 2   4010 1318 4008
4010 4   4011 1317 6141 1318 4009
4011 2   4012 1317 4010
4012 2   4013 1317 4011
4013 4   4014 1316 6141 1317 4012
4014 4   4015 1314 6139 1316 4013
4015 2   4016 1314 4014
4016 4   4017 1313 6138 1314 4015
4017 4   4018 1063 5773 1313 4016
4018 2   4019 1063 4017
4019 4   4020 1062 5772 1063 4018
4020 2   4021 1062 4019
4021 2   4022 1062 4020
4022 4   4023 1061 5772 1062 4021
4023 4   4024 1059 5770 1061 4022
4024 2   4025 1059 4023
4025 4   4026 1058 5769 1059 4024
4026 2   4027 1058 4025
4027 2   4028 1058 4026
4028 4   4029 1057 5769 1058 4027
4029 2   4030 1057 4028
4030 2   4031 1057 4029
4031 4   4032 1056 5769 1057 4030
4032 4   4033 1054 5766 1056 4031
4033 2   4034 1054 4032
4034 4   4035 1053 5763 1054 4033
4035 4   4036 1043 5752 1053 4034
4036 2   4037 1043 4035
4037 4   4038 1042 5751 1043 4036
4038 2   4039 1042 4037
4039 2   4040 1042 4038
4040 4   4041 1041 5751 1042 4039
4041 4   4042 1039 5749 1041 4040
4042 2   4043 1039 4041
4043 4   4044 1038 5748 1039 4042
4044 2   4045 1038 4043
4045 2   4046 1038 4044
4046 4   4047 1037 5748 1038 4045
4047 2   4048 1037 4046
4048 2   4049 1037 4047
4049 4   4050 1036 5748 1037 4048
4050 4   4051 1034 5746 1036 4049
4051 2   4052 1034 4050
4052 4   4053 1033 5745 1034 4051
4053 2   4054 1033 4052
4054 2   4055 1033 4053
4055 4   4056 1032 5745 1033 4054
4056 2   4057 1032 4055
4057 2   4058 1032 4056
4058 4   4059 1031 5745 1032 4057
4059 4   4060 1029 5742 1031 4058
4060 2   4061 1029 4059
4061 4   4062 1028 5739 1029 4060
4062 4   4063 1018 5725 1028 4061
4063 2   4064 1018 4062
4064 4   4065 1017 5724 1018 4063
4065 2   4066 1017 4064
4066 2   4067 1017 4065
4067 4   4068 1016 5724 1017 4066
4068 4   4069 1014 5722 1016 4067
4069 2   4070 1014 4068
4070 4   4071 1013 5721 1014 4069
4071 4   4072 963 5650 1013 4070
4072 2   4073 963 4071
4073 4   4074 962 5649 963 4072
4074 2   4075 962 4073
4075 2   4076 962 4074
4076 4   4077 961 5649 962 4075
4077 4   4078 959 5647 961 4076
4078 2   4079 959 4077
4079 4   4080 958 5646 959 4078
4080 2   4081 958 4079
4081 2   4082 958 4080
4082 4   4083 957 5646 958 4081
4083 2   4084 957 4082
4084 2   4085 957 4083
4085 4   4086 956 5646 957 4084
4086 4   4087 954 5643 956 4085
4087 2   4088 954 4086
4088 4   4089 953 5640 954 4087
4089 4   4090 943 5629 953 4088
4090 2   4091 943 4089
4091 4   4092 942 5628 943 4090
4092 2   4093 942 4091
4093 2   4094 942 4092
4094 4   4095 941 5628 942 4093
4095 4   4096 939 5626 941 4094
4096 2   4097 939 4095
4097 4   3369 938 5625 939 4096
4098 2   4099 2813 3368
4099 2   4100 2813 4098
4100 4   4101 2812 8073 2813 4099
4101 2   4102 2812 4100
4102 2   4103 2812 4101
4103 4   4104 2811 8073 2812 4102
4104 4   4105 2809 8071 2811 4103
4105 2   4106 2809 4104
4106 4   4107 2808 8070 2809 4105
4107 2   4108 2808 4106
4108 2   4109 2808 4107
4109 4   4110 2807 8070 2808 4108
4110 2   4111 2807 4109
4111 2   4112 2807 4110
4112 4   4113 2806 8070 2807 4111
4113 4   4114 2804 8067 2806 4112
4114 2   4115 2804 4113
4115 4   4116 2803 8064 2804 4114
4116 4   4117 2793 8053 2803 4115
4117 2   4118 2793 4116
4118 4   4119 2792 8052 2793 4117
4119 2   4120 2792 4118
4120 2   4121 2792 4119
4121 4   4122 2791 8052 2792 4120
4122 4   4123 2789 8050 2791 4121
4123 2   4124 2789 4122
4124 4   4125 2788 8049 2789 4123
4125 2   4126 2788 4124
4126 2   4127 2788 4125
4127 4   4128 2787 8049 2788 4126
4128 2   4129 2787 4127
4129 2   4130 2787 4128
4130 4   4131 2786 8049 2787 4129
4131 4   4132 2784 8047 2786 4130
4132 2   4133 2784 4131
4133 4   4134 2783 8046 2784 4132
4134 2   4135 2783 4133
4135 2   4136 2783 4134
4136 4   4137 2782 8046 2783 4135
4137 2   4138 2782 4136
4138 2   4139 2782 4137
4139 4   4140 2781 8046 2782 4138
4140 4   4141 2779 8043 2781 4139
4141 2   4142 2779 4140
4142 4   4143 2778 8040 2779 4141
4143 4   4144 2768 8026 2778 4142
4144 2   4145 2768 4143
4145 4   4146 2767 8025 2768 4144
4146 2   4147 2767 4145
4147 2   4148 2767 4146
4148 4   4149 2766 8025 2767 4147
4149 4   4150 2764 8023 2766 4148
4150 2   4151 2764 4149
4151 4   4152 2763 8022 2764 4150
4152 4   4153 2713 7951 2763 4151
4153 2   4154 2713 4152
4154 4   4155 2712 7950 2713 4153
4155 2   4156 2712 4154
4156 2   4157 2712 4155
4157 4   4158 2711 7950 2712 4156
4158 4   4159 2709 7948 2711 4157
4159 2   4160 2709 4158
4160 4   4161 2708 7947 2709 4159
4161 2   4162 2708 4160
4162 2   4163 2708 4161
4163 4   4164 2707 7947 2708 4162
4164 2   4165 2707 4163
4165 2   4166 2707 4164
4166 4   4167 2706 7947 2707 4165
4167 4   4168 2704 7944 2706 4166
4168 2   4169 2704 4167
4169 4   4170 2703 7941 2704 4168
4170 4   4171 2693 7930 2703 4169
4171 2   4172 2693 4170
4172 4   4173 2692 7929 2693 4171
4173 2   4174 2692 4172
4174 2   4175 2692 4173
4175 4   4176 2691 7929 2692 4174
4176 4   4177 2689 7927 2691 4175
4177 2   4178 2689 4176
4178 4   4179 2688 7926 2689 4177
4179 2   4180 2688 4178
4180 2   4181 2688 4179
4181 4   4182 2687 7926 2688 4180
4182 2   4183 2687 4181
4183 2   4184 2687 4182
4184 4   4185 2686 7926 2687 4183
4185 4   4186 2684 7924 2686 4184
4186 2   4187 2684 4185
4187 4   4188 2683 7923 2684 4186
4188 2   4189 2683 4187
4189 2   4190 2683 4188
4190 4   4191 2682 7923 2683 4189
4191 2   4192 2682 4190
4192 2   4193 2682 4191
4193 4   4194 2681 7923 2682 4192
4194 4   4195 2679 7920 2681 4193
4195 2   4196 2679 4194
4196 4   4197 2678 7917 2679 4195
4197 4   4198 2668 7906 2678 4196
4198 2   4199 2668 4197
4199 4   4200 2667 7905 2668 4198
4200 2   4201 2667 4199
4201 2   4202 2667 4200
4202 4   4203 2666 7905 2667 4201
4203 4   4204 2664 7903 2666 4202
4204 2   4205 2664 4203
4205 4   4206 2663 7902 2664 4204
4206 2   4207 2663 4205
4207 2   4208 2663 4206
4208 4   4209 2662 7902 2663 4207
4209 2   4210 2662 4208
4210 2   4211 2662 4209
4211 4   4212 2661 7902 2662 4210
4212 4   4213 2659 7900 2661 4211
4213 2   4214 2659 4212
4214 4   4215 2658 7899 2659 4213
4215 2   4216 2658 4214
4216 2   4217 2658 4215
4217 4   4218 2657 7899 2658 4216
4218 2   4219 2657 4217
4219 2   4220 2657 4218
4220 4   4221 2656 7899 2657 4219
4221 4   4222 2654 7896 2656 4220
4222 2   4223 2654 4221
4223 4   4224 2653 7893 2654 4222
4224 4   4225 2643 7879 2653 4223
4225 2   4226 2643 4224
4226 4   4227 2642 7878 2643 4225
4227 2   4228 2642 4226
4228 2   4229 2642 4227
4229 4   4230 2641 7878 2642 4228
4230 4   4231 2639 7876 2641 4229
4231 2   4232 2639 4230
4232 4   4233 2638 7875 2639 4231
4233 4   4234 2588 7795 2638 4232
4234 2   4235 2588 4233
4235 4   4236 2587 7794 2588 4234
4236 2   4237 2587 4235
4237 2   4238 2587 4236
4238 4   4239 2586 7794 2587 4237
4239 4   4240 2584 7792 2586 4238
4240 2   4241 2584 4239
4241 4   4242 2583 7791 2584 4240
4242 2   4243 2583 4241
4243 2   4244 2583 4242
4244 4   4245 2582 7791 2583 4243
4245 2   4246 2582 4244
4246 2   4247 2582 4245
4247 4   4248 2581 7791 2582 4246
4248 4   4249 2579 7788 2581 4247
4249 2   4250 2579 4248
4250 4   4251 2578 7785 2579 4249
4251 4   4252 2568 7774 2578 4250
4252 2   4253 2568 4251
4253 4   4254 2567 7773 2568 4252
4254 2   4255 2567 4253
4255 2   4256 2567 4254
4256 4   4257 2566 7773 2567 4255
4257 4   4258 2564 7771 2566 4256
4258 2   4259 2564 4257
4259 4   4260 2563 7770 2564 4258
4260 4   4261 2313 7405 2563 4259
4261 2   4262 2313 4260
4262 4   4263 2312 7404 2313 4261
4263 2   4264 2312 4262
4264 2   4265 2312 4263
4265 4   4266 2311 7404 2312 4264
4266 4   4267 2309 7402 2311 4265
4267 2   4268 2309 4266
4268 4   4269 2308 7401 2309 4267
4269 2   4270 2308 4268
4270 2   4271 2308 4269
4271 4   4272 2307 7401 2308 4270
4272 2   4273 2307 4271
4273 2   4274 2307 4272
4274 4   4275 2306 7401 2307 4273
4275 4   4276 2304 7398 2306 4274
4276 2   4277 2304 4275
4277 4   4278 2303 7395 2304 4276
4278 4   4279 2293 7384 2303 4277
4279 2   4280 2293 4278
4280 4   4281 2292 7383 2293 4279
4281 2   4282 2292 4280
4282 2   4283 2292 4281
4283 4   4284 2291 7383 2292 4282
4284 4   4285 2289 7381 2291 4283
4285 2   4286 2289 4284
4286 4   4287 2288 7380 2289 4285
4287 2   4288 2288 4286
4288 2   4289 2288 4287
4289 4   4290 2287 7380 2288 4288
4290 2   4291 2287 4289
4291 2   4292 2287 4290
4292 4   4293 2286 7380 2287 4291
4293 4   4294 2284 7378 2286 4292
4294 2   4295 2284 4293
4295 4   4296 2283 7377 2284 4294
4296 2   4297 2283 4295
4297 2   4298 2283 4296
4298 4   4299 2282 7377 2283 4297
4299 2   4300 2282 4298
4300 2   4301 2282 4299
4301 4   4302 2281 7377 2282 4300
4302 4   4303 2279 7374 2281 4301
4303 2   4304 2279 4302
4304 4   4305 2278 7371 2279 4303
4305 4   4306 2268 7357 2278 4304
4306 2   4307 2268 4305
4307 4   4308 2267 7356 2268 4306
4308 2   4309 2267 4307
4309 2   4310 2267 4308
4310 4   4311 2266 7356 2267 4309
4311 4   4312 2264 7354 2266 4310
4312 2   4313 2264 4311
4313 4   4314 2263 7353 2264 4312
4314 4   4315 2213 7282 2263 4313
4315 2   4316 2213 4314
4316 4   4317 2212 7281 2213 4315
4317 2   4318 2212 4316
4318 2   4319 2212 4317
4319 4   4320 2211 7281 2212 4318
4320 4   4321 2209 7279 2211 4319
4321 2   4322 2209 4320
4322 4   4323 2208 7278 2209 4321
4323 2   4324 2208 4322
4324 2   4325 2208 4323
4325 4   4326 2207 7278 2208 4324
4326 2   4327 2207 4325
4327 2   4328 2207 4326
4328 4   4329 2206 7278 2207 4327
4329 4   4330 2204 7275 2206 4328
4330 2   4331 2204 4329
4331 4   4332 2203 7272 2204 4330
4332 4   4333 2193 7261 2203 4331
4333 2   4334 2193 4332
4334 4   4335 2192 7260 2193 4333
4335 2   4336 2192 4334
4336 2   4337 2192 4335
4337 4   4338 2191 7260 2192 4336
4338 4   4339 2189 7258 2191 4337
4339 2   4340 2189 4338
4340 4   3612 2188 7257 2189 4339
4341 10   4342 5 4354 4 4351 3 4348 2 4345 1 4342
4342 6   4343 25 4356 5 4341 1 4343
4343 6   4344 24 4393 25 4342 1 4344
4344 6   4345 122 4401 24 4343 1 4345
4345 6   4341 2 4346 122 4344 1 4341
4346 6   4347 121 4568 122 4345 2 4347
4347 6   4348 119 4566 121 4346 2 4348
4348 6   4341 3 4349 119 4347 2 4341
4349 6   4350 118 4560 119 4348 3 4350
4350 6   4351 608 4565 118 4349 3 4351
4351 6   4341 4 4352 608 4350 3 4341
4352 6   4353 607 5228 608 4351 4 4353
4353 6   4354 6 4358 607 4352 4 4354
4354 6   4341 5 4355 6 4353 4 4341
4355 6   4356 10 4357 6 4354 5 4356
4356 10   4342 25 4392 20 4380 15 4368 10 4355 5 4342
4357 10   4355 10 4367 9 4364 8 4361 7 4358 6 4355
4358 6   4357 7 4359 607 4353 6 4357
4359 6   4360 606 5228 607 4358 7 4360
4360 6   4361 604 5225 606 4359 7 4361
4361 6   4357 8 4362 604 4360 7 4357
4362 6   4363 603 5222 604 4361 8 4363
4363 6   4364 593 5211 603 4362 8 4364
4364 6   4357 9 4365 593 4363 8 4357
4365 6   4366 592 5210 593 4364 9 4366
4366 6   4367 11 4370 592 4365 9 4367
4367 6   4357 10 4368 11 4366 9 4357
4368 6   4356 15 4369 11 4367 10 4356
4369 10   4368 15 4379 14 4376 13 4373 12 4370 11 4368
4370 6   4369 12 4371 592 4366 11 4369
4371 6   4372 591 5210 592 4370 12 4372
4372 6   4373 589 5208 591 4371 12 4373
4373 6   4369 13 4374 589 4372 12 4369
4374 6   4375 588 5202 589 4373 13 4375
4375 6   4376 3038 5207 588 4374 13 4376
4376 6   4369 14 4377 3038 4375 13 4369
4377 6   4378 3037 8343 3038 4376 14 4378
4378 6   4379 16 4382 3037 4377 14 4379
4379 6   4369 15 4380 16 4378 14 4369
4380 6   4356 20 4381 16 4379 15 4356
4381 10   4380 20 4391 19 4388 18 4385 17 4382 16 4380
4382 6   4381 17 4383 3037 4378 16 4381
4383 6   4384 3036 8343 3037 4382 17 4384
4384 6   4385 3034 8341 3036 4383 17 4385
4385 6   4381 18 4386 3034 4384 17 4381
4386 6   4387 3033 8340 3034 4385 18 4387
4387 6   4388 28 4405 3033 4386 18 4388
4388 6   4381 19 4389 28 4387 18 4381
4389 6   4390 27 4402 28 4388 19 4390
4390 6   4391 21 4394 27 4389 19 4391
4391 6   4381 20 4392 21 4390 19 4381
4392 6   4356 25 4393 21 4391 20 4356
4393 10   4392 25 4343 24 4400 23 4397 22 4394 21 4392
4394 6   4393 22 4395 27 4390 21 4393
4395 6   4396 26 4402 27 4394 22 4396
4396 6   4397 49 4404 26 4395 22 4397
4397 6   4393 23 4398 49 4396 22 4393
4398 6   4399 48 4447 49 4397 23 4399
4399 10   4400 123 4526 98 4493 73 4452 48 4398 23 4400
4400 6   4393 24 4401 123 4399 23 4393
4401 6   4344 122 4568 123 4400 24 4344
4402 10   4403 30 4408 29 4405 28 4389 27 4395 26 4403
4403 6   4404 50 4410 30 4402 26 4404
4404 6   4396 49 4447 50 4403 26 4396
4405 6   4402 29 4406 3033 4387 28 4402
4406 6   4407 3032 8340 3033 4405 29 4407
4407 6   4408 31 4412 3032 4406 29 4408
4408 6   4402 30 4409 31 4407 29 4402
4409 6   4410 35 4411 31 4408 30 4410
4410 10   4403 50 4446 45 4434 40 4422 35 4409 30 4403
4411 10   4409 35 4421 34 4418 33 4415 32 4412 31 4409
4412 6   4411 32 4413 3032 4407 31 4411
4413 6   4414 3031 8340 3032 4412 32 4414
4414 6   4415 3029 8337 3031 4413 32 4415
4415 6   4411 33 4416 3029 4414 32 4411
4416 6   4417 3028 8334 3029 4415 33 4417
4417 6   4418 3018 8320 3028 4416 33 4418
4418 6   4411 34 4419 3018 4417 33 4411
4419 6   4420 3017 8319 3018 4418 34 4420
4420 6   4421 36 4424 3017 4419 34 4421
4421 6   4411 35 4422 36 4420 34 4411
4422 6   4410 40 4423 36 4421 35 4410
4423 10   4422 40 4433 39 4430 38 4427 37 4424 36 4422
4424 6   4423 37 4425 3017 4420 36 4423
4425 6   4426 3016 8319 3017 4424 37 4426
4426 6   4427 3014 8317 3016 4425 37 4427
4427 6   4423 38 4428 3014 4426 37 4423
4428 6   4429 3013 8316 3014 4427 38 4429
4429 6   4430 2963 8245 3013 4428 38 4430
4430 6   4423 39 4431 2963 4429 38 4423
4431 6   4432 2962 8244 2963 4430 39 4432
4432 6   4433 41 4436 2962 4431 39 4433
4433 6   4423 40 4434 41 4432 39 4423
4434 6   4410 45 4435 41 4433 40 4410
4435 10   4434 45 4445 44 4442 43 4439 42 4436 41 4434
4436 6   4435 42 4437 2962 4432 41 4435
4437 6   4438 2961 8244 2962 4436 42 4438
4438 6   4439 2959 8242 2961 4437 42 4439
4439 6   4435 43 4440 2959 4438 42 4435
4440 6   4441 2958 8241 2959 4439 43 4441
4441 6   4442 53 4456 2958 4440 43 4442
4442 6   4435 44 4443 53 4441 43 4435
4443 6   4444 52 4453 53 4442 44 4444
4444 6   4445 46 4448 52 4443 44 4445
4445 6   4435 45 4446 46 4444 44 4435
4446 6   4410 50 4447 46 4445 45 4410
4447 10   4446 50 4404 49 4398 48 4451 47 4448 46 4446
4448 6   4447 47 4449 52 4444 46 4447
4449 6   4450 51 4453 52 4448 47 4450
4450 6   4451 74 4455 51 4449 47 4451
4451 6   4447 48 4452 74 4450 47 4447
4452 6   4399 73 4488 74 4451 48 4399
4453 10   4454 55 4459 54 4456 53 4443 52 4449 51 4454
4454 6   4455 75 4461 55 4453 51 4455
4455 6   4450 74 4488 75 4454 51 4450
4456 6   4453 54 4457 2958 4441 53 4453
4457 6   4458 2957 8241 2958 4456 54 4458
4458 6   4459 56 4463 2957 4457 54 4459
4459 6   4453 55 4460 56 4458 54 4453
4460 6   4461 60 4462 56 4459 55 4461
4461 10   4454 75 4487 70 4481 65 4473 60 4460 55 4454
4462 10   4460 60 4472 59 4469 58 4466 57 4463 56 4460
4463 6   4462 57 4464 2957 4458 56 4462
4464 6   4465 2956 8241 2957 4463 57 4465
4465 6   4466 2954 8238 2956 4464 57 4466
4466 6   4462 58 4467 2954 4465 57 4462
4467 6   4468 2953 8235 2954 4466 58 4468
4468 6   4469 2943 8224 2953 4467 58 4469
4469 6   4462 59 4470 2943 4468 58 4462
4470 6   4471 2942 8223 2943 4469 59 4471
4471 6   4472 61 4475 2942 4470 59 4472
4472 6   4462 60 4473 61 4471 59 4462
4473 6   4461 65 4474 61 4472 60 4461
4474 10   4473 65 4480 64 3287 63 4478 62 4475 61 4473
4475 6   4474 62 4476 2942 4471 61 4474
4476 6   4477 2941 8223 2942 4475 62 4477
4477 6   4478 2939 8221 2941 4476 62 4478
4478 6   4474 63 4479 2939 4477 62 4474
4479 6   3288 2938 8220 2939 4478 63 3288
4480 6   4474 65 4481 66 3285 64 4474
4481 6   4461 70 4482 66 4480 65 4461
4482 10   4481 70 4486 69 4483 68 3281 67 3284 66 4481
4483 6   4482 69 4484 78 3279 68 4482
4484 6   4485 77 4494 78 4483 69 4485
4485 6   4486 71 4489 77 4484 69 4486
4486 6   4482 70 4487 71 4485 69 4482
4487 6   4461 75 4488 71 4486 70 4461
4488 10   4487 75 4455 74 4452 73 4492 72 4489 71 4487
4489 6   4488 72 4490 77 4485 71 4488
4490 6   4491 76 4494 77 4489 72 4491
4491 6   4492 99 4496 76 4490 72 4492
4492 6   4488 73 4493 99 4491 72 4488
4493 6   4399 98 4521 99 4492 73 4399
4494 10   4495 80 4497 79 3278 78 4484 77 4490 76 4495
4495 6   4496 100 4499 80 4494 76 4496
4496 6   4491 99 4521 100 4495 76 4491
4497 6   4494 80 4498 81 3276 79 4494
4498 6   4499 85 4500 81 4497 80 4499
4499 10   4495 100 4520 95 4508 90 4502 85 4498 80 4495
4500 10   4498 85 4501 84 3269 83 3272 82 3275 81 4498
4501 6   4500 85 4502 86 3267 84 4500
4502 6   4499 90 4503 86 4501 85 4499
4503 10   4502 90 4507 89 4504 88 3263 87 3266 86 4502
4504 6   4503 89 4505 138 3261 88 4503
4505 6   4506 137 4584 138 4504 89 4506
4506 6   4507 91 4510 137 4505 89 4507
4507 6   4503 90 4508 91 4506 89 4503
4508 6   4499 95 4509 91 4507 90 4499
4509 10   4508 95 4519 94 4516 93 4513 92 4510 91 4508
4510 6   4509 92 4511 137 4506 91 4509
4511 6   4512 136 4584 137 4510 92 4512
4512 6   4513 134 4582 136 4511 92 4513
4513 6   4509 93 4514 134 4512 92 4509
4514 6   4515 133 4581 134 4513 93 4515
4515 6   4516 103 4530 133 4514 93 4516
4516 6   4509 94 4517 103 4515 93 4509
4517 6   4518 102 4527 103 4516 94 4518
4518 6   4519 96 4522 102 4517 94 4519
4519 6   4509 95 4520 96 4518 94 4509
4520 6   4499 100 4521 96 4519 95 4499
4521 10   4520 100 4496 99 4493 98 4525 97 4522 96 4520
4522 6   4521 97 4523 102 4518 96 4521
4523 6   4524 101 4527 102 4522 97 4524
4524 6   4525 124 4529 101 4523 97 4525
4525 6   4521 98 4526 124 4524 97 4521
4526 6   4399 123 4568 124 4525 98 4399
4527 10   4528 105 4533 104 4530 103 4517 102 4523 101 4528
4528 6   4529 125 4535 105 4527 101 4529
4529 6   4524 124 4568 125 4528 101 4524
4530 6   4527 104 4531 133 4515 103 4527
4531 6   4532 132 4581 133 4530 104 4532
4532 6   4533 106 4537 132 4531 104 4533
4533 6   4527 105 4534 106 4532 104 4527
4534 6   4535 110 4536 106 4533 105 4535
4535 10   4528 125 4567 120 4559 115 4547 110 4534 105 4528
4536 10   4534 110 4546 109 4543 108 4540 107 4537 106 4534
4537 6   4536 107 4538 132 4532 106 4536
4538 6   4539 131 4581 132 4537 107 4539
4539 6   4540 129 4578 131 4538 107 4540
4540 6   4536 108 4541 129 4539 107 4536
4541 6   4542 128 4569 129 4540 108 4542
4542 6   4543 243 4577 128 4541 108 4543
4543 6   4536 109 4544 243 4542 108 4536
4544 6   4545 242 4712 243 4543 109 4545
4545 6   4546 111 4549 242 4544 109 4546
4546 6   4536 110 4547 111 4545 109 4536
4547 6   4535 115 4548 111 4546 110 4535
4548 10   4547 115 4558 114 4555 113 4552 112 4549 111 4547
4549 6   4548 112 4550 242 4545 111 4548
4550 6   4551 241 4712 242 4549 112 4551
4551 6   4552 239 4710 241 4550 112 4552
4552 6   4548 113 4553 239 4551 112 4548
4553 6   4554 238 4704 239 4552 113 4554
4554 10   4555 613 5030 488 4856 363 4709 238 4553 113 4555
4555 6   4548 114 4556 613 4554 113 4548
4556 6   4557 612 5231 613 4555 114 4557
4557 6   4558 116 4561 612 4556 114 4558
4558 6   4548 115 4559 116 4557 114 4548
4559 6   4535 120 4560 116 4558 115 4535
4560 10   4559 120 4566 119 4349 118 4564 117 4561 116 4559
4561 6   4560 117 4562 612 4557 116 4560
4562 6   4563 611 5231 612 4561 117 4563
4563 6   4564 609 5229 611 4562 117 4564
4564 6   4560 118 4565 609 4563 117 4560
4565 6   4350 608 5228 609 4564 118 4350
4566 6   4560 120 4567 121 4347 119 4560
4567 6   4535 125 4568 121 4566 120 4535
4568 10   4567 125 4529 124 4526 123 4401 122 4346 121 4567
4569 10   4570 130 4578 129 4541 128 4576 127 4573 126 4570
4570 6   4571 150 4580 130 4569 126 4571
4571 6   4572 149 4593 150 4570 126 4572
4572 6   4573 247 4601 149 4571 126 4573
4573 6   4569 127 4574 247 4572 126 4569
4574 6   4575 246 4715 247 4573 127 4575
4575 6   4576 244 4713 246 4574 127 4576
4576 6   4569 128 4577 244 4575 127 4569
4577 6   4542 243 4712 244 4576 128 4542
4578 6   4569 130 4579 131 4539 129 4569
4579 6   4580 135 4581 131 4578 130 4580
4580 10   4570 150 4592 145 4586 140 4583 135 4579 130 4570
4581 10   4579 135 4582 134 4514 133 4531 132 4538 131 4579
4582 6   4581 135 4583 136 4512 134 4581
4583 6   4580 140 4584 136 4582 135 4580
4584 10   4583 140 4585 139 3260 138 4505 137 4511 136 4583
4585 6   4584 140 4586 141 3258 139 4584
4586 6   4580 145 4587 141 4585 140 4580
4587 10   4586 145 4591 144 4588 143 3254 142 3257 141 4586
4588 6   4587 144 4589 153 3252 143 4587
4589 6   4590 152 4602 153 4588 144 4590
4590 6   4591 146 4594 152 4589 144 4591
4591 6   4587 145 4592 146 4590 144 4587
4592 6   4580 150 4593 146 4591 145 4580
4593 10   4592 150 4571 149 4600 148 4597 147 4594 146 4592
4594 6   4593 147 4595 152 4590 146 4593
4595 6   4596 151 4602 152 4594 147 4596
4596 6   4597 174 4604 151 4595 147 4597
4597 6   4593 148 4598 174 4596 147 4593
4598 6   4599 173 4620 174 4597 148 4599
4599 10   4600 248 4682 223 4649 198 4625 173 4598 148 4600
4600 6   4593 149 4601 248 4599 148 4593
4601 6   4572 247 4715 248 4600 149 4572
4602 10   4603 155 4605 154 3251 153 4589 152 4595 151 4603
4603 6   4604 175 4607 155 4602 151 4604
4604 6   4596 174 4620 175 4603 151 4596
4605 6   4602 155 4606 156 3249 154 4602
4606 6   4607 160 4608 156 4605 155 4607
4607 10   4603 175 4619 170 4613 165 4610 160 4606 155 4603
4608 10   4606 160 4609 159 3242 158 3245 157 3248 156 4606
4609 6   4608 160 4610 161 3240 159 4608
4610 6   4607 165 4611 161 4609 160 4607
4611 10   4610 165 4612 164 3233 163 3236 162 3239 161 4610
4612 6   4611 165 4613 166 3231 164 4611
4613 6   4607 170 4614 166 4612 165 4607
4614 10   4613 170 4618 169 4615 168 3227 167 3230 166 4613
4615 6   4614 169 4616 178 3225 168 4614
4616 6   4617 177 4626 178 4615 169 4617
4617 6   4618 171 4621 177 4616 169 4618
4618 6   4614 170 4619 171 4617 169 4614
4619 6   4607 175 4620 171 4618 170 4607
4620 10   4619 175 4604 174 4598 173 4624 172 4621 171 4619
4621 6   4620 172 4622 177 4617 171 4620
4622 6   4623 176 4626 177 4621 172 4623
4623 6   4624 199 4628 176 4622 172 4624
4624 6   4620 173 4625 199 4623 172 4620
4625 6   4599 198 4644 199 4624 173 4599
4626 10   4627 180 4629 179 3224 178 4616 177 4622 176 4627
4627 6   4628 200 4631 180 4626 176 4628
4628 6   4623 199 4644 200 4627 176 4623
4629 6   4626 180 4630 181 3222 179 4626
4630 6   4631 185 4632 181 4629 180 4631
4631 10   4627 200 4643 195 4637 190 4634 185 4630 180 4627
4632 10   4630 185 4633 184 3215 183 3218 182 3221 181 4630
4633 6   4632 185 4634 186 3213 184 4632
4634 6   4631 190 4635 186 4633 185 4631
4635 10   4634 190 4636 189 3206 188 3209 187 3212 186 4634
4636 6   4635 190 4637 191 3204 189 4635
4637 6   4631 195 4638 191 4636 190 4631
4638 10   4637 195 4642 194 4639 193 3200 192 3203 191 4637
4639 6   4638 194 4640 203 3198 193 4638
4640 6   4641 202 4650 203 4639 194 4641
4641 6   4642 196 4645 202 4640 194 4642
4642 6   4638 195 4643 196 4641 194 4638
4643 6   4631 200 4644 196 4642 195 4631
4644 10   4643 200 4628 199 4625 198 4648 197 4645 196 4643
4645 6   4644 197 4646 202 4641 196 4644
4646 6   4647 201 4650 202 4645 197 4647
4647 6   4648 224 4652 201 4646 197 4648
4648 6   4644 198 4649 224 4647 197 4644
4649 6   4599 223 4677 224 4648 198 4599
4650 10   4651 205 4653 204 3197 203 4640 202 4646 201 4651
4651 6   4652 225 4655 205 4650 201 4652
4652 6   4647 224 4677 225 4651 201 4647
4653 6   4650 205 4654 206 3195 204 4650
4654 6   4655 210 4656 206 4653 205 4655
4655 10   4651 225 4676 220 4664 215 4658 210 4654 205 4651
4656 10   4654 210 4657 209 3188 208 3191 207 3194 206 4654
4657 6   4656 210 4658 211 3186 209 4656
4658 6   4655 215 4659 211 4657 210 4655
4659 10   4658 215 4663 214 4660 213 3182 212 3185 211 4658
4660 6   4659 214 4661 263 3180 213 4659
4661 6   4662 262 4731 263 4660 214 4662
4662 6   4663 216 4666 262 4661 214 4663
4663 6   4659 215 4664 216 4662 214 4659
4664 6   4655 220 4665 216 4663 215 4655
4665 10   4664 220 4675 219 4672 218 4669 217 4666 216 4664
4666 6   4665 217 4667 262 4662 216 4665
4667 6   4668 261 4731 262 4666 217 4668
4668 6   4669 259 4729 261 4667 217 4669
4669 6   4665 218 4670 259 4668 217 4665
4670 6   4671 258 4728 259 4669 218 4671
4671 6   4672 228 4686 258 4670 218 4672
4672 6   4665 219 4673 228 4671 218 4665
4673 6   4674 227 4683 228 4672 219 4674
4674 6   4675 221 4678 227 4673 219 4675
4675 6   4665 220 4676 221 4674 219 4665
4676 6   4655 225 4677 221 4675 220 4655
4677 10   4676 225 4652 224 4649 223 4681 222 4678 221 4676
4678 6   4677 222 4679 227 4674 221 4677
4679 6   4680 226 4683 227 4678 222 4680
4680 6   4681 249 4685 226 4679 222 4681
4681 6   4677 223 4682 249 4680 222 4677
4682 6   4599 248 4715 249 4681 223 4599
4683 10   4684 230 4689 229 4686 228 4673 227 4679 226 4684
4684 6   4685 250 4691 230 4683 226 4685
4685 6   4680 249 4715 250 4684 226 4680
4686 6   4683 229 4687 258 4671 228 4683
4687 6   4688 257 4728 258 4686 229 4688
4688 6   4689 231 4693 257 4687 229 4689
4689 6   4683 230 4690 231 4688 229 4683
4690 6   4691 235 4692 231 4689 230 4691
4691 10   4684 250 4714 245 4711 240 4703 235 4690 230 4684
4692 10   4690 235 4702 234 4699 233 4696 232 4693 231 4690
4693 6   4692 232 4694 257 4688 231 4692
4694 6   4695 256 4728 257 4693 232 4695
4695 6   4696 254 4725 256 4694 232 4696
4696 6   4692 233 4697 254 4695 232 4692
4697 6   4698 253 4716 254 4696 233 4698
4698 6   4699 368 4724 253 4697 233 4699
4699 6   4692 234 4700 368 4698 233 4692
4700 6   4701 367 4859 368 4699 234 4701
4701 6   4702 236 4705 367 4700 234 4702
4702 6   4692 235 4703 236 4701 234 4692
4703 6   4691 240 4704 236 4702 235 4691
4704 10   4703 240 4710 239 4553 238 4708 237 4705 236 4703
4705 6   4704 237 4706 367 4701 236 4704
4706 6   4707 366 4859 367 4705 237 4707
4707 6   4708 364 4857 366 4706 237 4708
4708 6   4704 238 4709 364 4707 237 4704
4709 6   4554 363 4851 364 4708 238 4554
4710 6   4704 240 4711 241 4551 239 4704
4711 6   4691 245 4712 241 4710 240 4691
4712 10   4711 245 4713 244 4577 243 4544 242 4550 241 4711
4713 6   4712 245 4714 246 4575 244 4712
4714 6   4691 250 4715 246 4713 245 4691
4715 10   4714 250 4685 249 4682 248 4601 247 4574 246 4714
4716 10   4717 255 4725 254 4697 253 4723 252 4720 251 4717
4717 6   4718 275 4727 255 4716 251 4718
4718 6   4719 274 4740 275 4717 251 4719
4719 6   4720 372 4748 274 4718 251 4720
4720 6   4716 252 4721 372 4719 251 4716
4721 6   4722 371 4862 372 4720 252 4722
4722 6   4723 369 4860 371 4721 252 4723
4723 6   4716 253 4724 369 4722 252 4716
4724 6   4698 368 4859 369 4723 253 4698
4725 6   4716 255 4726 256 4695 254 4716
4726 6   4727 260 4728 256 4725 255 4727
4727 10   4717 275 4739 270 4733 265 4730 260 4726 255 4717
4728 10   4726 260 4729 259 4670 258 4687 257 4694 256 4726
4729 6   4728 260 4730 261 4668 259 4728
4730 6   4727 265 4731 261 4729 260 4727
4731 10   4730 265 4732 264 3179 263 4661 262 4667 261 4730
4732 6   4731 265 4733 266 3177 264 4731
4733 6   4727 270 4734 266 4732 265 4727
4734 10   4733 270 4738 269 4735 268 3173 267 3176 266 4733
4735 6   4734 269 4736 278 3171 268 4734
4736 6   4737 277 4749 278 4735 269 4737
4737 6   4738 271 4741 277 4736 269 4738
4738 6   4734 270 4739 271 4737 269 4734
4739 6   4727 275 4740 271 4738 270 4727
4740 10   4739 275 4718 274 4747 273 4744 272 4741 271 4739
4741 6   4740 272 4742 277 4737 271 4740
4742 6   4743 276 4749 277 4741 272 4743
4743 6   4744 299 4751 276 4742 272 4744
4744 6   4740 273 4745 299 4743 272 4740
4745 6   4746 298 4767 299 4744 273 4746
4746 10   4747 373 4829 348 4796 323 4772 298 4745 273 4747
4747 6   4740 274 4748 373 4746 273 4740
4748 6   4719 372 4862 373 4747 274 4719
4749 10   4750 280 4752 279 3170 278 4736 277 4742 276 4750
4750 6   4751 300 4754 280 4749 276 4751
4751 6   4743 299 4767 300 4750 276 4743
4752 6   4749 280 4753 281 3168 279 4749
4753 6   4754 285 4755 281 4752 280 4754
4754 10   4750 300 4766 295 4760 290 4757 285 4753 280 4750
4755 10   4753 285 4756 284 3161 283 3164 282 3167 281 4753
4756 6   4755 285 4757 286 3159 284 4755
4757 6   4754 290 4758 286 4756 285 4754
4758 10   4757 290 4759 289 3152 288 3155 287 3158 286 4757
4759 6   4758 290 4760 291 3150 289 4758
4760 6   4754 295 4761 291 4759 290 4754
4761 10   4760 295 4765 294 4762 293 3146 292 3149 291 4760
4762 6   4761 294 4763 303 3144 293 4761
4763 6   4764 302 4773 303 4762 294 4764
4764 6   4765 296 4768 302 4763 294 4765
4765 6   4761 295 4766 296 4764 294 4761
4766 6   4754 300 4767 296 4765 295 4754
4767 10   4766 300 4751 299 4745 298 4771 297 4768 296 4766
4768 6   4767 297 4769 302 4764 296 4767
4769 6   4770 301 4773 302 4768 297 4770
4770 6   4771 324 4775 301 4769 297 4771
4771 6   4767 298 4772 324 4770 297 4767
4772 6   4746 323 4791 324 4771 298 4746
4773 10   4774 305 4776 304 3143 303 4763 302 4769 301 4774
4774 6   4775 325 4778 305 4773 301 4775
4775 6   4770 324 4791 325 4774 301 4770
4776 6   4773 305 4777 306 3141 304 4773
4777 6   4778 310 4779 306 4776 305 4778
4778 10   4774 325 4790 320 4784 315 4781 310 4777 305 4774
4779 10   4777 310 4780 309 3134 308 3137 307 3140 306 4777
4780 6   4779 310 4781 311 3132 309 4779
4781 6   4778 315 4782 311 4780 310 4778
4782 10   4781 315 4783 314 3611 313 3128 312 3131 311 4781
4783 6   4782 315 4784 316 3609 314 4782
4784 6   4778 320 4785 316 4783 315 4778
4785 10   4784 320 4789 319 4786 318 3605 317 3608 316 4784
4786 6   4785 319 4787 328 3603 318 4785
4787 6   4788 327 4797 328 4786 319 4788
4788 6   4789 321 4792 327 4787 319 4789
4789 6   4785 320 4790 321 4788 319 4785
4790 6   4778 325 4791 321 4789 320 4778
4791 10   4790 325 4775 324 4772 323 4795 322 4792 321 4790
4792 6   4791 322 4793 327 4788 321 4791
4793 6   4794 326 4797 327 4792 322 4794
4794 6   4795 349 4799 326 4793 322 4795
4795 6   4791 323 4796 349 4794 322 4791
4796 6   4746 348 4824 349 4795 323 4746
4797 10   4798 330 4800 329 3602 328 4787 327 4793 326 4798
4798 6   4799 350 4802 330 4797 326 4799
4799 6   4794 349 4824 350 4798 326 4794
4800 6   4797 330 4801 331 3600 329 4797
4801 6   4802 335 4803 331 4800 330 4802
4802 10   4798 350 4823 345 4811 340 4805 335 4801 330 4798
4803 10   4801 335 4804 334 3593 333 3596 332 3599 331 4801
4804 6   4803 335 4805 336 3591 334 4803
4805 6   4802 340 4806 336 4804 335 4802
4806 10   4805 340 4810 339 4807 338 3587 337 3590 336 4805
4807 6   4806 339 4808 388 3585 338 4806
4808 6   4809 387 4878 388 4807 339 4809
4809 6   4810 341 4813 387 4808 339 4810
4810 6   4806 340 4811 341 4809 339 4806
4811 6   4802 345 4812 341 4810 340 4802
4812 10   4811 345 4822 344 4819 343 4816 342 4813 341 4811
4813 6   4812 342 4814 387 4809 341 4812
4814 6   4815 386 4878 387 4813 342 4815
4815 6   4816 384 4876 386 4814 342 4816
4816 6   4812 343 4817 384 4815 342 4812
4817 6   4818 383 4875 384 4816 343 4818
4818 6   4819 353 4833 383 4817 343 4819
4819 6   4812 344 4820 353 4818 343 4812
4820 6   4821 352 4830 353 4819 344 4821
4821 6   4822 346 4825 352 4820 344 4822
4822 6   4812 345 4823 346 4821 344 4812
4823 6   4802 350 4824 346 4822 345 4802
4824 10   4823 350 4799 349 4796 348 4828 347 4825 346 4823
4825 6   4824 347 4826 352 4821 346 4824
4826 6   4827 351 4830 352 4825 347 4827
4827 6   4828 374 4832 351 4826 347 4828
4828 6   4824 348 4829 374 4827 347 4824
4829 6   4746 373 4862 374 4828 348 4746
4830 10   4831 355 4836 354 4833 353 4820 352 4826 351 4831
4831 6   4832 375 4838 355 4830 351 4832
4832 6   4827 374 4862 375 4831 351 4827
4833 6   4830 354 4834 383 4818 353 4830
4834 6   4835 382 4875 383 4833 354 4835
4835 6   4836 356 4840 382 4834 354 4836
4836 6   4830 355 4837 356 4835 354 4830
4837 6   4838 360 4839 356 4836 355 4838
4838 10   4831 375 4861 370 4858 365 4850 360 4837 355 4831
4839 10   4837 360 4849 359 4846 358 4843 357 4840 356 4837
4840 6   4839 357 4841 382 4835 356 4839
4841 6   4842 381 4875 382 4840 357 4842
4842 6   4843 379 4872 381 4841 357 4843
4843 6   4839 358 4844 379 4842 357 4839
4844 6   4845 378 4863 379 4843 358 4845
4845 6   4846 493 4871 378 4844 358 4846
4846 6   4839 359 4847 493 4845 358 4839
4847 6   4848 492 5033 493 4846 359 4848
4848 6   4849 361 4852 492 4847 359 4849
4849 6   4839 360 4850 361 4848 359 4839
4850 6   4838 365 4851 361 4849 360 4838
4851 10   4850 365 4857 364 4709 363 4855 362 4852 361 4850
4852 6   4851 362 4853 492 4848 361 4851
4853 6   4854 491 5033 492 4852 362 4854
4854 6   4855 489 5031 491 4853 362 4855
4855 6   4851 363 4856 489 4854 362 4851
4856 6   4554 488 5025 489 4855 363 4554
4857 6   4851 365 4858 366 4707 364 4851
4858 6   4838 370 4859 366 4857 365 4838
4859 10   4858 370 4860 369 4724 368 4700 367 4706 366 4858
4860 6   4859 370 4861 371 4722 369 4859
4861 6   4838 375 4862 371 4860 370 4838
4862 10   4861 375 4832 374 4829 373 4748 372 4721 371 4861
4863 10   4864 380 4872 379 4844 378 4870 377 4867 376 4864
4864 6   4865 400 4874 380 4863 376 4865
4865 6   4866 399 4887 400 4864 376 4866
4866 6   4867 497 4895 399 4865 376 4867
4867 6   4863 377 4868 497 4866 376 4863
4868 6   4869 496 5036 497 4867 377 4869
4869 6   4870 494 5034 496 4868 377 4870
4870 6   4863 378 4871 494 4869 377 4863
4871 6   4845 493 5033 494 4870 378 4845
4872 6   4863 380 4873 381 4842 379 4863
4873 6   4874 385 4875 381 4872 380 4874
4874 10   4864 400 4886 395 4880 390 4877 385 4873 380 4864
4875 10   4873 385 4876 384 4817 383 4834 382 4841 381 4873
4876 6   4875 385 4877 386 4815 384 4875
4877 6   4874 390 4878 386 4876 385 4874
4878 10   4877 390 4879 389 3584 388 4808 387 4814 386 4877
4879 6   4878 390 4880 391 3582 389 4878
4880 6   4874 395 4881 391 4879 390 4874
4881 10   4880 395 4885 394 4882 393 3578 392 3581 391 4880
4882 6   4881 394 4883 403 3576 393 4881
4883 6   4884 402 4896 403 4882 394 4884
4884 6   4885 396 4888 402 4883 394 4885
4885 6   4881 395 4886 396 4884 394 4881
4886 6   4874 400 4887 396 4885 395 4874
4887 10   4886 400 4865 399 4894 398 4891 397 4888 396 4886
4888 6   4887 397 4889 402 4884 396 4887
4889 6   4890 401 4896 402 4888 397 4890
4890 6   4891 424 4898 401 4889 397 4891
4891 6   4887 398 4892 424 4890 397 4887
4892 6   4893 423 4914 424 4891 398 4893
4893 10   4894 498 5003 473 4952 448 4919 423 4892 398 4894
4894 6   4887 399 4895 498 4893 398 4887
4895 6   4866 497 5036 498 4894 399 4866
4896 10   4897 405 4899 404 3575 403 4883 402 4889 401 4897
4897 6   4898 425 4901 405 4896 401 4898
4898 6   4890 424 4914 425 4897 401 4890
4899 6   4896 405 4900 406 3573 404 4896
4900 6   4901 410 4902 406 4899 405 4901
4901 10   4897 425 4913 420 4907 415 4904 410 4900 405 4897
4902 10   4900 410 4903 409 3566 408 3569 407 3572 406 4900
4903 6   4902 410 4904 411 3564 409 4902
4904 6   4901 415 4905 411 4903 410 4901
4905 10   4904 415 4906 414 3557 413 3560 412 3563 411 4904
4906 6   4905 415 4907 416 3555 414 4905
4907 6   4901 420 4908 416 4906 415 4901
4908 10   4907 420 4912 419 4909 418 3551 417 3554 416 4907
4909 6   4908 419 4910 428 3549 418 4908
4910 6   4911 427 4920 428 4909 419 4911
4911 6   4912 421 4915 427 4910 419 4912
4912 6   4908 420 4913 421 4911 419 4908
4913 6   4901 425 4914 421 4912 420 4901
4914 10   4913 425 4898 424 4892 423 4918 422 4915 421 4913
4915 6   4914 422 4916 427 4911 421 4914
4916 6   4917 426 4920 427 4915 422 4917
4917 6   4918 449 4922 426 4916 422 4918
4918 6   4914 423 4919 449 4917 422 4914
4919 6   4893 448 4947 449 4918 423 4893
4920 10   4921 430 4923 429 3548 428 4910 427 4916 426 4921
4921 6   4922 450 4925 430 4920 426 4922
4922 6   4917 449 4947 450 4921 426 4917
4923 6   4920 430 4924 431 3546 429 4920
4924 6   4925 435 4926 431 4923 430 4925
4925 10   4921 450 4946 445 4934 440 4928 435 4924 430 4921
4926 10   4924 435 4927 434 3539 433 3542 432 3545 431 4924
4927 6   4926 435 4928 436 3537 434 4926
4928 6   4925 440 4929 436 4927 435 4925
4929 10   4928 440 4933 439 4930 438 3533 437 3536 436 4928
4930 6   4929 439 4931 688 3531 438 4929
4931 6   4932 687 5322 688 4930 439 4932
4932 6   4933 441 4936 687 4931 439 4933
4933 6   4929 440 4934 441 4932 439 4929
4934 6   4925 445 4935 441 4933 440 4925
4935 10   4934 445 4945 444 4942 443 4939 442 4936 441 4934
4936 6   4935 442 4937 687 4932 441 4935
4937 6   4938 686 5322 687 4936 442 4938
4938 6   4939 684 5320 686 4937 442 4939
4939 6   4935 443 4940 684 4938 442 4935
4940 6   4941 683 5319 684 4939 443 4941
4941 6   4942 453 4956 683 4940 443 4942
4942 6   4935 444 4943 453 4941 443 4935
4943 6   4944 452 4953 453 4942 444 4944
4944 6   4945 446 4948 452 4943 444 4945
4945 6   4935 445 4946 446 4944 444 4935
4946 6   4925 450 4947 446 4945 445 4925
4947 10   4946 450 4922 449 4919 448 4951 447 4948 446 4946
4948 6   4947 447 4949 452 4944 446 4947
4949 6   4950 451 4953 452 4948 447 4950
4950 6   4951 474 4955 451 4949 447 4951
4951 6   4947 448 4952 474 4950 447 4947
4952 6   4893 473 4998 474 4951 448 4893
4953 10   4954 455 4959 454 4956 453 4943 452 4949 451 4954
4954 6   4955 475 4961 455 4953 451 4955
4955 6   4950 474 4998 475 4954 451 4950
4956 6   4953 454 4957 683 4941 453 4953
4957 6   4958 682 5319 683 4956 454 4958
4958 6   4959 456 4963 682 4957 454 4959
4959 6   4953 455 4960 456 4958 454 4953
4960 6   4961 460 4962 456 4959 455 4961
4961 10   4954 475 4997 470 4985 465 4973 460 4960 455 4954
4962 10   4960 460 4972 459 4969 458 4966 457 4963 456 4960
4963 6   4962 457 4964 682 4958 456 4962
4964 6   4965 681 5319 682 4963 457 4965
4965 6   4966 679 5316 681 4964 457 4966
4966 6   4962 458 4967 679 4965 457 4962
4967 6   4968 678 5313 679 4966 458 4968
4968 6   4969 668 5302 678 4967 458 4969
4969 6   4962 459 4970 668 4968 458 4962
4970 6   4971 667 5301 668 4969 459 4971
4971 6   4972 461 4975 667 4970 459 4972
4972 6   4962 460 4973 461 4971 459 4962
4973 6   4961 465 4974 461 4972 460 4961
4974 10   4973 465 4984 464 4981 463 4978 462 4975 461 4973
4975 6   4974 462 4976 667 4971 461 4974
4976 6   4977 666 5301 667 4975 462 4977
4977 6   4978 664 5299 666 4976 462 4978
4978 6   4974 463 4979 664 4977 462 4974
4979 6   4980 663 5298 664 4978 463 4980
4980 6   4981 513 5053 663 4979 463 4981
4981 6   4974 464 4982 513 4980 463 4974
4982 6   4983 512 5052 513 4981 464 4983
4983 6   4984 466 4987 512 4982 464 4984
4984 6   4974 465 4985 466 4983 464 4974
4985 6   4961 470 4986 466 4984 465 4961
4986 10   4985 470 4996 469 4993 468 4990 467 4987 466 4985
4987 6   4986 467 4988 512 4983 466 4986
4988 6   4989 511 5052 512 4987 467 4989
4989 6   4990 509 5050 511 4988 467 4990
4990 6   4986 468 4991 509 4989 467 4986
4991 6   4992 508 5049 509 4990 468 4992
4992 6   4993 478 5007 508 4991 468 4993
4993 6   4986 469 4994 478 4992 468 4986
4994 6   4995 477 5004 478 4993 469 4995
4995 6   4996 471 4999 477 4994 469 4996
4996 6   4986 470 4997 471 4995 469 4986
4997 6   4961 475 4998 471 4996 470 4961
4998 10   4997 475 4955 474 4952 473 5002 472 4999 471 4997
4999 6   4998 472 5000 477 4995 471 4998
5000 6   5001 476 5004 477 4999 472 5001
5001 6   5002 499 5006 476 5000 472 5002
5002 6   4998 473 5003 499 5001 472 4998
5003 6   4893 498 5036 499 5002 473 4893
5004 10   5005 480 5010 479 5007 478 4994 477 5000 476 5005
5005 6   5006 500 5012 480 5004 476 5006
5006 6   5001 499 5036 500 5005 476 5001
5007 6   5004 479 5008 508 4992 478 5004
5008 6   5009 507 5049 508 5007 479 5009
5009 6   5010 481 5014 507 5008 479 5010
5010 6   5004 480 5011 481 5009 479 5004
5011 6   5012 485 5013 481 5010 480 5012
5012 10   5005 500 5035 495 5032 490 5024 485 5011 480 5005
5013 10   5011 485 5023 484 5020 483 5017 482 5014 481 5011
5014 6   5013 482 5015 507 5009 481 5013
5015 6   5016 506 5049 507 5014 482 5016
5016 6   5017 504 5046 506 5015 482 5017
5017 6   5013 483 5018 504 5016 482 5013
5018 6   5019 503 5037 504 5017 483 5019
5019 6   5020 618 5045 503 5018 483 5020
5020 6   5013 484 5021 618 5019 483 5013
5021 6   5022 617 5234 618 5020 484 5022
5022 6   5023 486 5026 617 5021 484 5023
5023 6   5013 485 5024 486 5022 484 5013
5024 6   5012 490 5025 486 5023 485 5012
5025 10   5024 490 5031 489 4856 488 5029 487 5026 486 5024
5026 6   5025 487 5027 617 5022 486 5025
5027 6   5028 616 5234 617 5026 487 5028
5028 6   5029 614 5232 616 5027 487 5029
5029 6   5025 488 5030 614 5028 487 5025
5030 6   4554 613 5231 614 5029 488 4554
5031 6   5025 490 5032 491 4854 489 5025
5032 6   5012 495 5033 491 5031 490 5012
5033 10   5032 495 5034 494 4871 493 4847 492 4853 491 5032
5034 6   5033 495 5035 496 4869 494 5033
5035 6   5012 500 5036 496 5034 495 5012
5036 10   5035 500 5006 499 5003 498 4895 497 4868 496 5035
5037 10   5038 505 5046 504 5018 503 5044 502 5041 501 5038
5038 6   5039 525 5048 505 5037 501 5039
5039 6   5040 524 5070 525 5038 501 5040
5040 6   5041 622 5078 524 5039 501 5041
5041 6   5037 502 5042 622 5040 501 5037
5042 6   5043 621 5237 622 5041 502 5043
5043 6   5044 619 5235 621 5042 502 5044
5044 6   5037 503 5045 619 5043 502 5037
5045 6   5019 618 5234 619 5044 503 5019
5046 6   5037 505 5047 506 5016 504 5037
5047 6   5048 510 5049 506 5046 505 5048
5048 10   5038 525 5069 520 5057 515 5051 510 5047 505 5038
5049 10   5047 510 5050 509 4991 508 5008 507 5015 506 5047
5050 6   5049 510 5051 511 4989 509 5049
5051 6   5048 515 5052 511 5050 510 5048
5052 10   5051 515 5056 514 5053 513 4982 512 4988 511 5051
5053 6   5052 514 5054 663 4980 513 5052
5054 6   5055 662 5298 663 5053 514 5055
5055 6   5056 516 5059 662 5054 514 5056
5056 6   5052 515 5057 516 5055 514 5052
5057 6   5048 520 5058 516 5056 515 5048
5058 10   5057 520 5068 519 5065 518 5062 517 5059 516 5057
5059 6   5058 517 5060 662 5055 516 5058
5060 6   5061 661 5298 662 5059 517 5061
5061 6   5062 659 5296 661 5060 517 5062
5062 6   5058 518 5063 659 5061 517 5058
5063 6   5064 658 5295 659 5062 518 5064
5064 6   5065 528 5082 658 5063 518 5065
5065 6   5058 519 5066 528 5064 518 5058
5066 6   5067 527 5079 528 5065 519 5067
5067 6   5068 521 5071 527 5066 519 5068
5068 6   5058 520 5069 521 5067 519 5058
5069 6   5048 525 5070 521 5068 520 5048
5070 10   5069 525 5039 524 5077 523 5074 522 5071 521 5069
5071 6   5070 522 5072 527 5067 521 5070
5072 6   5073 526 5079 527 5071 522 5073
5073 6   5074 549 5081 526 5072 522 5074
5074 6   5070 523 5075 549 5073 522 5070
5075 6   5076 548 5124 549 5074 523 5076
5076 10   5077 623 5221 598 5180 573 5129 548 5075 523 5077
5077 6   5070 524 5078 623 5076 523 5070
5078 6   5040 622 5237 623 5077 524 5040
5079 10   5080 530 5085 529 5082 528 5066 527 5072 526 5080
5080 6   5081 550 5087 530 5079 526 5081
5081 6   5073 549 5124 550 5080 526 5073
5082 6   5079 529 5083 658 5064 528 5079
5083 6   5084 657 5295 658 5082 529 5084
5084 6   5085 531 5089 657 5083 529 5085
5085 6   5079 530 5086 531 5084 529 5079
5086 6   5087 535 5088 531 5085 530 5087
5087 10   5080 550 5123 545 5111 540 5099 535 5086 530 5080
5088 10   5086 535 5098 534 5095 533 5092 532 5089 531 5086
5089 6   5088 532 5090 657 5084 531 5088
5090 6   5091 656 5295 657 5089 532 5091
5091 6   5092 654 5292 656 5090 532 5092
5092 6   5088 533 5093 654 5091 532 5088
5093 6   5094 653 5289 654 5092 533 5094
5094 6   5095 643 5275 653 5093 533 5095
5095 6   5088 534 5096 643 5094 533 5088
5096 6   5097 642 5274 643 5095 534 5097
5097 6   5098 536 5101 642 5096 534 5098
5098 6   5088 535 5099 536 5097 534 5088
5099 6   5087 540 5100 536 5098 535 5087
5100 10   5099 540 5110 539 5107 538 5104 537 5101 536 5099
5101 6   5100 537 5102 642 5097 536 5100
5102 6   5103 641 5274 642 5101 537 5103
5103 6   5104 639 5272 641 5102 537 5104
5104 6   5100 538 5105 639 5103 537 5100
5105 6   5106 638 5266 639 5104 538 5106
5106 6   5107 1213 5271 638 5105 538 5107
5107 6   5100 539 5108 1213 5106 538 5100
5108 6   5109 1212 6023 1213 5107 539 5109
5109 6   5110 541 5113 1212 5108 539 5110
5110 6   5100 540 5111 541 5109 539 5100
5111 6   5087 545 5112 541 5110 540 5087
5112 10   5111 545 5122 544 5119 543 5116 542 5113 541 5111
5113 6   5112 542 5114 1212 5109 541 5112
5114 6   5115 1211 6023 1212 5113 542 5115
5115 6   5116 1209 6021 1211 5114 542 5116
5116 6   5112 543 5117 1209 5115 542 5112
5117 6   5118 1208 6020 1209 5116 543 5118
5118 6   5119 553 5133 1208 5117 543 5119
5119 6   5112 544 5120 553 5118 543 5112
5120 6   5121 552 5130 553 5119 544 5121
5121 6   5122 546 5125 552 5120 544 5122
5122 6   5112 545 5123 546 5121 544 5112
5123 6   5087 550 5124 546 5122 545 5087
5124 10   5123 550 5081 549 5075 548 5128 547 5125 546 5123
5125 6   5124 547 5126 552 5121 546 5124
5126 6   5127 551 5130 552 5125 547 5127
5127 6   5128 574 5132 551 5126 547 5128
5128 6   5124 548 5129 574 5127 547 5124
5129 6   5076 573 5175 574 5128 548 5076
5130 10   5131 555 5136 554 5133 553 5120 552 5126 551 5131
5131 6   5132 575 5138 555 5130 551 5132
5132 6   5127 574 5175 575 5131 551 5127
5133 6   5130 554 5134 1208 5118 553 5130
5134 6   5135 1207 6020 1208 5133 554 5135
5135 6   5136 556 5140 1207 5134 554 5136
5136 6   5130 555 5137 556 5135 554 5130
5137 6   5138 560 5139 556 5136 555 5138
5138 10   5131 575 5174 570 5162 565 5150 560 5137 555 5131
5139 10   5137 560 5149 559 5146 558 5143 557 5140 556 5137
5140 6   5139 557 5141 1207 5135 556 5139
5141 6   5142 1206 6020 1207 5140 557 5142
5142 6   5143 1204 6017 1206 5141 557 5143
5143 6   5139 558 5144 1204 5142 557 5139
5144 6   5145 1203 6014 1204 5143 558 5145
5145 6   5146 1193 6003 1203 5144 558 5146
5146 6   5139 559 5147 1193 5145 558 5139
5147 6   5148 1192 6002 1193 5146 559 5148
5148 6   5149 561 5152 1192 5147 559 5149
5149 6   5139 560 5150 561 5148 559 5139
5150 6   5138 565 5151 561 5149 560 5138
5151 10   5150 565 5161 564 5158 563 5155 562 5152 561 5150
5152 6   5151 562 5153 1192 5148 561 5151
5153 6   5154 1191 6002 1192 5152 562 5154
5154 6   5155 1189 6000 1191 5153 562 5155
5155 6   5151 563 5156 1189 5154 562 5151
5156 6   5157 1188 5994 1189 5155 563 5157
5157 10   5158 3063 7631 2438 6815 1813 5999 1188 5156 563 5158
5158 6   5151 564 5159 3063 5157 563 5151
5159 6   5160 3062 8367 3063 5158 564 5160
5160 6   5161 566 5164 3062 5159 564 5161
5161 6   5151 565 5162 566 5160 564 5151
5162 6   5138 570 5163 566 5161 565 5138
5163 10   5162 570 5173 569 5170 568 5167 567 5164 566 5162
5164 6   5163 567 5165 3062 5160 566 5163
5165 6   5166 3061 8367 3062 5164 567 5166
5166 6   5167 3059 8365 3061 5165 567 5167
5167 6   5163 568 5168 3059 5166 567 5163
5168 6   5169 3058 8364 3059 5167 568 5169
5169 6   5170 578 5184 3058 5168 568 5170
5170 6   5163 569 5171 578 5169 568 5163
5171 6   5172 577 5181 578 5170 569 5172
5172 6   5173 571 5176 577 5171 569 5173
5173 6   5163 570 5174 571 5172 569 5163
5174 6   5138 575 5175 571 5173 570 5138
5175 10   5174 575 5132 574 5129 573 5179 572 5176 571 5174
5176 6   5175 572 5177 577 5172 571 5175
5177 6   5178 576 5181 577 5176 572 5178
5178 6   5179 599 5183 576 5177 572 5179
5179 6   5175 573 5180 599 5178 572 5175
5180 6   5076 598 5216 599 5179 573 5076
5181 10   5182 580 5187 579 5184 578 5171 577 5177 576 5182
5182 6   5183 600 5189 580 5181 576 5183
5183 6   5178 599 5216 600 5182 576 5178
5184 6   5181 579 5185 3058 5169 578 5181
5185 6   5186 3057 8364 3058 5184 579 5186
5186 6   5187 581 5191 3057 5185 579 5187
5187 6   5181 580 5188 581 5186 579 5181
5188 6   5189 585 5190 581 5187 580 5189
5189 10   5182 600 5215 595 5209 590 5201 585 5188 580 5182
5190 10   5188 585 5200 584 5197 583 5194 582 5191 581 5188
5191 6   5190 582 5192 3057 5186 581 5190
5192 6   5193 3056 8364 3057 5191 582 5193
5193 6   5194 3054 8361 3056 5192 582 5194
5194 6   5190 583 5195 3054 5193 582 5190
5195 6   5196 3053 8358 3054 5194 583 5196
5196 6   5197 3043 8347 3053 5195 583 5197
5197 6   5190 584 5198 3043 5196 583 5190
5198 6   5199 3042 8346 3043 5197 584 5199
5199 6   5200 586 5203 3042 5198 584 5200
5200 6   5190 585 5201 586 5199 584 5190
5201 6   5189 590 5202 586 5200 585 5189
5202 10   5201 590 5208 589 4374 588 5206 587 5203 586 5201
5203 6   5202 587 5204 3042 5199 586 5202
5204 6   5205 3041 8346 3042 5203 587 5205
5205 6   5206 3039 8344 3041 5204 587 5206
5206 6   5202 588 5207 3039 5205 587 5202
5207 6   4375 3038 8343 3039 5206 588 4375
5208 6   5202 590 5209 591 4372 589 5202
5209 6   5189 595 5210 591 5208 590 5189
5210 10   5209 595 5214 594 5211 593 4365 592 4371 591 5209
5211 6   5210 594 5212 603 4363 593 5210
5212 6   5213 602 5222 603 5211 594 5213
5213 6   5214 596 5217 602 5212 594 5214
5214 6   5210 595 5215 596 5213 594 5210
5215 6   5189 600 5216 596 5214 595 5189
5216 10   5215 600 5183 599 5180 598 5220 597 5217 596 5215
5217 6   5216 597 5218 602 5213 596 5216
5218 6   5219 601 5222 602 5217 597 5219
5219 6   5220 624 5224 601 5218 597 5220
5220 6   5216 598 5221 624 5219 597 5216
5221 6   5076 623 5237 624 5220 598 5076
5222 10   5223 605 5225 604 4362 603 5212 602 5218 601 5223
5223 6   5224 625 5227 605 5222 601 5224
5224 6   5219 624 5237 625 5223 601 5219
5225 6   5222 605 5226 606 4360 604 5222
5226 6   5227 610 5228 606 5225 605 5227
5227 10   5223 625 5236 620 5233 615 5230 610 5226 605 5223
5228 10   5226 610 5229 609 4565 608 4352 607 4359 606 5226
5229 6   5228 610 5230 611 4563 609 5228
5230 6   5227 615 5231 611 5229 610 5227
5231 10   5230 615 5232 614 5030 613 4556 612 4562 611 5230
5232 6   5231 615 5233 616 5028 614 5231
5233 6   5227 620 5234 616 5232 615 5227
5234 10   5233 620 5235 619 5045 618 5021 617 5027 616 5233
5235 6   5234 620 5236 621 5043 619 5234
5236 6   5227 625 5237 621 5235 620 5227
5237 10   5236 625 5224 624 5221 623 5078 622 5042 621 5236
5238 10   5239 630 5251 629 5248 628 5245 627 5242 626 5239
5239 6   5240 650 5253 630 5238 626 5240
5240 6   5241 649 5280 650 5239 626 5241
5241 6   5242 747 5288 649 5240 626 5242
5242 6   5238 627 5243 747 5241 626 5238
5243 6   5244 746 5411 747 5242 627 5244
5244 6   5245 744 5409 746 5243 627 5245
5245 6   5238 628 5246 744 5244 627 5238
5246 6   5247 743 5403 744 5245 628 5247
5247 6   5248 1233 5408 743 5246 628 5248
5248 6   5238 629 5249 1233 5247 628 5238
5249 6   5250 1232 6044 1233 5248 629 5250
5250 6   5251 631 5255 1232 5249 629 5251
5251 6   5238 630 5252 631 5250 629 5238
5252 6   5253 635 5254 631 5251 630 5253
5253 10   5239 650 5279 645 5273 640 5265 635 5252 630 5239
5254 10   5252 635 5264 634 5261 633 5258 632 5255 631 5252
5255 6   5254 632 5256 1232 5250 631 5254
5256 6   5257 1231 6044 1232 5255 632 5257
5257 6   5258 1229 6041 1231 5256 632 5258
5258 6   5254 633 5259 1229 5257 632 5254
5259 6   5260 1228 6038 1229 5258 633 5260
5260 6   5261 1218 6027 1228 5259 633 5261
5261 6   5254 634 5262 1218 5260 633 5254
5262 6   5263 1217 6026 1218 5261 634 5263
5263 6   5264 636 5267 1217 5262 634 5264
5264 6   5254 635 5265 636 5263 634 5254
5265 6   5253 640 5266 636 5264 635 5253
5266 10   5265 640 5272 639 5105 638 5270 637 5267 636 5265
5267 6   5266 637 5268 1217 5263 636 5266
5268 6   5269 1216 6026 1217 5267 637 5269
5269 6   5270 1214 6024 1216 5268 637 5270
5270 6   5266 638 5271 1214 5269 637 5266
5271 6   5106 1213 6023 1214 5270 638 5106
5272 6   5266 640 5273 641 5103 639 5266
5273 6   5253 645 5274 641 5272 640 5253
5274 10   5273 645 5278 644 5275 643 5096 642 5102 641 5273
5275 6   5274 644 5276 653 5094 643 5274
5276 6   5277 652 5289 653 5275 644 5277
5277 6   5278 646 5281 652 5276 644 5278
5278 6   5274 645 5279 646 5277 644 5274
5279 6   5253 650 5280 646 5278 645 5253
5280 10   5279 650 5240 649 5287 648 5284 647 5281 646 5279
5281 6   5280 647 5282 652 5277 646 5280
5282 6   5283 651 5289 652 5281 647 5283
5283 6   5284 674 5291 651 5282 647 5284
5284 6   5280 648 5285 674 5283 647 5280
5285 6   5286 673 5307 674 5284 648 5286
5286 10   5287 748 5369 723 5336 698 5312 673 5285 648 5287
5287 6   5280 649 5288 748 5286 648 5280
5288 6   5241 747 5411 748 5287 649 5241
5289 10   5290 655 5292 654 5093 653 5276 652 5282 651 5290
5290 6   5291 675 5294 655 5289 651 5291
5291 6   5283 674 5307 675 5290 651 5283
5292 6   5289 655 5293 656 5091 654 5289
5293 6   5294 660 5295 656 5292 655 5294
5294 10   5290 675 5306 670 5300 665 5297 660 5293 655 5290
5295 10   5293 660 5296 659 5063 658 5083 657 5090 656 5293
5296 6   5295 660 5297 661 5061 659 5295
5297 6   5294 665 5298 661 5296 660 5294
5298 10   5297 665 5299 664 4979 663 5054 662 5060 661 5297
5299 6   5298 665 5300 666 4977 664 5298
5300 6   5294 670 5301 666 5299 665 5294
5301 10   5300 670 5305 669 5302 668 4970 667 4976 666 5300
5302 6   5301 669 5303 678 4968 668 5301
5303 6   5304 677 5313 678 5302 669 5304
5304 6   5305 671 5308 677 5303 669 5305
5305 6   5301 670 5306 671 5304 669 5301
5306 6   5294 675 5307 671 5305 670 5294
5307 10   5306 675 5291 674 5285 673 5311 672 5308 671 5306
5308 6   5307 672 5309 677 5304 671 5307
5309 6   5310 676 5313 677 5308 672 5310
5310 6   5311 699 5315 676 5309 672 5311
5311 6   5307 673 5312 699 5310 672 5307
5312 6   5286 698 5331 699 5311 673 5286
5313 10   5314 680 5316 679 4967 678 5303 677 5309 676 5314
5314 6   5315 700 5318 680 5313 676 5315
5315 6   5310 699 5331 700 5314 676 5310
5316 6   5313 680 5317 681 4965 679 5313
5317 6   5318 685 5319 681 5316 680 5318
5318 10   5314 700 5330 695 5324 690 5321 685 5317 680 5314
5319 10   5317 685 5320 684 4940 683 4957 682 4964 681 5317
5320 6   5319 685 5321 686 4938 684 5319
5321 6   5318 690 5322 686 5320 685 5318
5322 10   5321 690 5323 689 3530 688 4931 687 4937 686 5321
5323 6   5322 690 5324 691 3528 689 5322
5324 6   5318 695 5325 691 5323 690 5318
5325 10   5324 695 5329 694 5326 693 3524 692 3527 691 5324
5326 6   5325 694 5327 703 3522 693 5325
5327 6   5328 702 5337 703 5326 694 5328
5328 6   5329 696 5332 702 5327 694 5329
5329 6   5325 695 5330 696 5328 694 5325
5330 6   5318 700 5331 696 5329 695 5318
5331 10   5330 700 5315 699 5312 698 5335 697 5332 696 5330
5332 6   5331 697 5333 702 5328 696 5331
5333 6   5334 701 5337 702 5332 697 5334
5334 6   5335 724 5339 701 5333 697 5335
5335 6   5331 698 5336 724 5334 697 5331
5336 6   5286 723 5364 724 5335 698 5286
5337 10   5338 705 5340 704 3521 703 5327 702 5333 701 5338
5338 6   5339 725 5342 705 5337 701 5339
5339 6   5334 724 5364 725 5338 701 5334
5340 6   5337 705 5341 706 3519 704 5337
5341 6   5342 710 5343 706 5340 705 5342
5342 10   5338 725 5363 720 5351 715 5345 710 5341 705 5338
5343 10   5341 710 5344 709 3512 708 3515 707 3518 706 5341
5344 6   5343 710 5345 711 3510 709 5343
5345 6   5342 715 5346 711 5344 710 5342
5346 10   5345 715 5350 714 5347 713 3506 712 3509 711 5345
5347 6   5346 714 5348 763 3504 713 5346
5348 6   5349 762 5427 763 5347 714 5349
5349 6   5350 716 5353 762 5348 714 5350
5350 6   5346 715 5351 716 5349 714 5346
5351 6   5342 720 5352 716 5350 715 5342
5352 10   5351 720 5362 719 5359 718 5356 717 5353 716 5351
5353 6   5352 717 5354 762 5349 716 5352
5354 6   5355 761 5427 762 5353 717 5355
5355 6   5356 759 5425 761 5354 717 5356
5356 6   5352 718 5357 759 5355 717 5352
5357 6   5358 758 5424 759 5356 718 5358
5358 6   5359 728 5373 758 5357 718 5359
5359 6   5352 719 5360 728 5358 718 5352
5360 6   5361 727 5370 728 5359 719 5361
5361 6   5362 721 5365 727 5360 719 5362
5362 6   5352 720 5363 721 5361 719 5352
5363 6   5342 725 5364 721 5362 720 5342
5364 10   5363 725 5339 724 5336 723 5368 722 5365 721 5363
5365 6   5364 722 5366 727 5361 721 5364
5366 6   5367 726 5370 727 5365 722 5367
5367 6   5368 749 5372 726 5366 722 5368
5368 6   5364 723 5369 749 5367 722 5364
5369 6   5286 748 5411 749 5368 723 5286
5370 10   5371 730 5376 729 5373 728 5360 727 5366 726 5371
5371 6   5372 750 5378 730 5370 726 5372
5372 6   5367 749 5411 750 5371 726 5367
5373 6   5370 729 5374 758 5358 728 5370
5374 6   5375 757 5424 758 5373 729 5375
5375 6   5376 731 5380 757 5374 729 5376
5376 6   5370 730 5377 731 5375 729 5370
5377 6   5378 735 5379 731 5376 730 5378
5378 10   5371 750 5410 745 5402 740 5390 735 5377 730 5371
5379 10   5377 735 5389 734 5386 733 5383 732 5380 731 5377
5380 6   5379 732 5381 757 5375 731 5379
5381 6   5382 756 5424 757 5380 732 5382
5382 6   5383 754 5421 756 5381 732 5383
5383 6   5379 733 5384 754 5382 732 5379
5384 6   5385 753 5412 754 5383 733 5385
5385 6   5386 868 5420 753 5384 733 5386
5386 6   5379 734 5387 868 5385 733 5379
5387 6   5388 867 5555 868 5386 734 5388
5388 6   5389 736 5392 867 5387 734 5389
5389 6   5379 735 5390 736 5388 734 5379
5390 6   5378 740 5391 736 5389 735 5378
5391 10   5390 740 5401 739 5398 738 5395 737 5392 736 5390
5392 6   5391 737 5393 867 5388 736 5391
5393 6   5394 866 5555 867 5392 737 5394
5394 6   5395 864 5553 866 5393 737 5395
5395 6   5391 738 5396 864 5394 737 5391
5396 6   5397 863 5547 864 5395 738 5397
5397 10   5398 1238 5873 1113 5699 988 5552 863 5396 738 5398
5398 6   5391 739 5399 1238 5397 738 5391
5399 6   5400 1237 6047 1238 5398 739 5400
5400 6   5401 741 5404 1237 5399 739 5401
5401 6   5391 740 5402 741 5400 739 5391
5402 6   5378 745 5403 741 5401 740 5378
5403 10   5402 745 5409 744 5246 743 5407 742 5404 741 5402
5404 6   5403 742 5405 1237 5400 741 5403
5405 6   5406 1236 6047 1237 5404 742 5406
5406 6   5407 1234 6045 1236 5405 742 5407
5407 6   5403 743 5408 1234 5406 742 5403
5408 6   5247 1233 6044 1234 5407 743 5247
5409 6   5403 745 5410 746 5244 744 5403
5410 6   5378 750 5411 746 5409 745 5378
5411 10   5410 750 5372 749 5369 748 5288 747 5243 746 5410
5412 10   5413 755 5421 754 5384 753 5419 752 5416 751 5413
5413 6   5414 775 5423 755 5412 751 5414
5414 6   5415 774 5436 775 5413 751 5415
5415 6   5416 872 5444 774 5414 751 5416
5416 6   5412 752 5417 872 5415 751 5412
5417 6   5418 871 5558 872 5416 752 5418
5418 6   5419 869 5556 871 5417 752 5419
5419 6   5412 753 5420 869 5418 752 5412
5420 6   5385 868 5555 869 5419 753 5385
5421 6   5412 755 5422 756 5382 754 5412
5422 6   5423 760 5424 756 5421 755 5423
5423 10   5413 775 5435 770 5429 765 5426 760 5422 755 5413
5424 10   5422 760 5425 759 5357 758 5374 757 5381 756 5422
5425 6   5424 760 5426 761 5355 759 5424
5426 6   5423 765 5427 761 5425 760 5423
5427 10   5426 765 5428 764 3503 763 5348 762 5354 761 5426
5428 6   5427 765 5429 766 3501 764 5427
5429 6   5423 770 5430 766 5428 765 5423
5430 10   5429 770 5434 769 5431 768 3497 767 3500 766 5429
5431 6   5430 769 5432 778 3495 768 5430
5432 6   5433 777 5445 778 5431 769 5433
5433 6   5434 771 5437 777 5432 769 5434
5434 6   5430 770 5435 771 5433 769 5430
5435 6   5423 775 5436 771 5434 770 5423
5436 10   5435 775 5414 774 5443 773 5440 772 5437 771 5435
5437 6   5436 772 5438 777 5433 771 5436
5438 6   5439 776 5445 777 5437 772 5439
5439 6   5440 799 5447 776 5438 772 5440
5440 6   5436 773 5441 799 5439 772 5436
5441 6   5442 798 5463 799 5440 773 5442
5442 10   5443 873 5525 848 5492 823 5468 798 5441 773 5443
5443 6   5436 774 5444 873 5442 773 5436
5444 6   5415 872 5558 873 5443 774 5415
5445 10   5446 780 5448 779 3494 778 5432 777 5438 776 5446
5446 6   5447 800 5450 780 5445 776 5447
5447 6   5439 799 5463 800 5446 776 5439
5448 6   5445 780 5449 781 3492 779 5445
5449 6   5450 785 5451 781 5448 780 5450
5450 10   5446 800 5462 795 5456 790 5453 785 5449 780 5446
5451 10   5449 785 5452 784 3485 783 3488 782 3491 781 5449
5452 6   5451 785 5453 786 3483 784 5451
5453 6   5450 790 5454 786 5452 785 5450
5454 10   5453 790 5455 789 3476 788 3479 787 3482 786 5453
5455 6   5454 790 5456 791 3474 789 5454
5456 6   5450 795 5457 791 5455 790 5450
5457 10   5456 795 5461 794 5458 793 3470 792 3473 791 5456
5458 6   5457 794 5459 803 3468 793 5457
5459 6   5460 802 5469 803 5458 794 5460
5460 6   5461 796 5464 802 5459 794 5461
5461 6   5457 795 5462 796 5460 794 5457
5462 6   5450 800 5463 796 5461 795 5450
5463 10   5462 800 5447 799 5441 798 5467 797 5464 796 5462
5464 6   5463 797 5465 802 5460 796 5463
5465 6   5466 801 5469 802 5464 797 5466
5466 6   5467 824 5471 801 5465 797 5467
5467 6   5463 798 5468 824 5466 797 5463
5468 6   5442 823 5487 824 5467 798 5442
5469 10   5470 805 5472 804 3467 803 5459 802 5465 801 5470
5470 6   5471 825 5474 805 5469 801 5471
5471 6   5466 824 5487 825 5470 801 5466
5472 6   5469 805 5473 806 3465 804 5469
5473 6   5474 810 5475 806 5472 805 5474
5474 10   5470 825 5486 820 5480 815 5477 810 5473 805 5470
5475 10   5473 810 5476 809 3458 808 3461 807 3464 806 5473
5476 6   5475 810 5477 811 3456 809 5475
5477 6   5474 815 5478 811 5476 810 5474
5478 10   5477 815 5479 814 3449 813 3452 812 3455 811 5477
5479 6   5478 815 5480 816 3447 814 5478
5480 6   5474 820 5481 816 5479 815 5474
5481 10   5480 820 5485 819 5482 818 3443 817 3446 816 5480
5482 6   5481 819 5483 828 3441 818 5481
5483 6   5484 827 5493 828 5482 819 5484
5484 6   5485 821 5488 827 5483 819 5485
5485 6   5481 820 5486 821 5484 819 5481
5486 6   5474 825 5487 821 5485 820 5474
5487 10   5486 825 5471 824 5468 823 5491 822 5488 821 5486
5488 6   5487 822 5489 827 5484 821 5487
5489 6   5490 826 5493 827 5488 822 5490
5490 6   5491 849 5495 826 5489 822 5491
5491 6   5487 823 5492 849 5490 822 5487
5492 6   5442 848 5520 849 5491 823 5442
5493 10   5494 830 5496 829 3440 828 5483 827 5489 826 5494
5494 6   5495 850 5498 830 5493 826 5495
5495 6   5490 849 5520 850 5494 826 5490
5496 6   5493 830 5497 831 3438 829 5493
5497 6   5498 835 5499 831 5496 830 5498
5498 10   5494 850 5519 845 5507 840 5501 835 5497 830 5494
5499 10   5497 835 5500 834 3431 833 3434 832 3437 831 5497
5500 6   5499 835 5501 836 3429 834 5499
5501 6   5498 840 5502 836 5500 835 5498
5502 10   5501 840 5506 839 5503 838 3425 837 3428 836 5501
5503 6   5502 839 5504 888 3423 838 5502
5504 6   5505 887 5574 888 5503 839 5505
5505 6   5506 841 5509 887 5504 839 5506
5506 6   5502 840 5507 841 5505 839 5502
5507 6   5498 845 5508 841 5506 840 5498
5508 10   5507 845 5518 844 5515 843 5512 842 5509 841 5507
5509 6   5508 842 5510 887 5505 841 5508
5510 6   5511 886 5574 887 5509 842 5511
5511 6   5512 884 5572 886 5510 842 5512
5512 6   5508 843 5513 884 5511 842 5508
5513 6   5514 883 5571 884 5512 843 5514
5514 6   5515 853 5529 883 5513 843 5515
5515 6   5508 844 5516 853 5514 843 5508
5516 6   5517 852 5526 853 5515 844 5517
5517 6   5518 846 5521 852 5516 844 5518
5518 6   5508 845 5519 846 5517 844 5508
5519 6   5498 850 5520 846 5518 845 5498
5520 10   5519 850 5495 849 5492 848 5524 847 5521 846 5519
5521 6   5520 847 5522 852 5517 846 5520
5522 6   5523 851 5526 852 5521 847 5523
5523 6   5524 874 5528 851 5522 847 5524
5524 6   5520 848 5525 874 5523 847 5520
5525 6   5442 873 5558 874 5524 848 5442
5526 10   5527 855 5532 854 5529 853 5516 852 5522 851 5527
5527 6   5528 875 5534 855 5526 851 5528
5528 6   5523 874 5558 875 5527 851 5523
5529 6   5526 854 5530 883 5514 853 5526
5530 6   5531 882 5571 883 5529 854 5531
5531 6   5532 856 5536 882 5530 854 5532
5532 6   5526 855 5533 856 5531 854 5526
5533 6   5534 860 5535 856 5532 855 5534
5534 10   5527 875 5557 870 5554 865 5546 860 5533 855 5527
5535 10   5533 860 5545 859 5542 858 5539 857 5536 856 5533
5536 6   5535 857 5537 882 5531 856 5535
5537 6   5538 881 5571 882 5536 857 5538
5538 6   5539 879 5568 881 5537 857 5539
5539 6   5535 858 5540 879 5538 857 5535
5540 6   5541 878 5559 879 5539 858 5541
5541 6   5542 993 5567 878 5540 858 5542
5542 6   5535 859 5543 993 5541 858 5535
5543 6   5544 992 5702 993 5542 859 5544
5544 6   5545 861 5548 992 5543 859 5545
5545 6   5535 860 5546 861 5544 859 5535
5546 6   5534 865 5547 861 5545 860 5534
5547 10   5546 865 5553 864 5396 863 5551 862 5548 861 5546
5548 6   5547 862 5549 992 5544 861 5547
5549 6   5550 991 5702 992 5548 862 5550
5550 6   5551 989 5700 991 5549 862 5551
5551 6   5547 863 5552 989 5550 862 5547
5552 6   5397 988 5694 989 5551 863 5397
5553 6   5547 865 5554 866 5394 864 5547
5554 6   5534 870 5555 866 5553 865 5534
5555 10   5554 870 5556 869 5420 868 5387 867 5393 866 5554
5556 6   5555 870 5557 871 5418 869 5555
5557 6   5534 875 5558 871 5556 870 5534
5558 10   5557 875 5528 874 5525 873 5444 872 5417 871 5557
5559 10   5560 880 5568 879 5540 878 5566 877 5563 876 5560
5560 6   5561 900 5570 880 5559 876 5561
5561 6   5562 899 5583 900 5560 876 5562
5562 6   5563 997 5591 899 5561 876 5563
5563 6   5559 877 5564 997 5562 876 5559
5564 6   5565 996 5705 997 5563 877 5565
5565 6   5566 994 5703 996 5564 877 5566
5566 6   5559 878 5567 994 5565 877 5559
5567 6   5541 993 5702 994 5566 878 5541
5568 6   5559 880 5569 881 5538 879 5559
5569 6   5570 885 5571 881 5568 880 5570
5570 10   5560 900 5582 895 5576 890 5573 885 5569 880 5560
5571 10   5569 885 5572 884 5513 883 5530 882 5537 881 5569
5572 6   5571 885 5573 886 5511 884 5571
5573 6   5570 890 5574 886 5572 885 5570
5574 10   5573 890 5575 889 3422 888 5504 887 5510 886 5573
5575 6   5574 890 5576 891 3420 889 5574
5576 6   5570 895 5577 891 5575 890 5570
5577 10   5576 895 5581 894 5578 893 3416 892 3419 891 5576
5578 6   5577 894 5579 903 3414 893 5577
5579 6   5580 902 5592 903 5578 894 5580
5580 6   5581 896 5584 902 5579 894 5581
5581 6   5577 895 5582 896 5580 894 5577
5582 6   5570 900 5583 896 5581 895 5570
5583 10   5582 900 5561 899 5590 898 5587 897 5584 896 5582
5584 6   5583 897 5585 902 5580 896 5583
5585 6   5586 901 5592 902 5584 897 5586
5586 6   5587 924 5594 901 5585 897 5587
5587 6   5583 898 5588 924 5586 897 5583
5588 6   5589 923 5610 924 5587 898 5589
5589 10   5590 998 5672 973 5639 948 5615 923 5588 898 5590
5590 6   5583 899 5591 998 5589 898 5583
5591 6   5562 997 5705 998 5590 899 5562
5592 10   5593 905 5595 904 3413 903 5579 902 5585 901 5593
5593 6   5594 925 5597 905 5592 901 5594
5594 6   5586 924 5610 925 5593 901 5586
5595 6   5592 905 5596 906 3411 904 5592
5596 6   5597 910 5598 906 5595 905 5597
5597 10   5593 925 5609 920 5603 915 5600 910 5596 905 5593
5598 10   5596 910 5599 909 3404 908 3407 907 3410 906 5596
5599 6   5598 910 5600 911 3402 909 5598
5600 6   5597 915 5601 911 5599 910 5597
5601 10   5600 915 5602 914 3395 913 3398 912 3401 911 5600
5602 6   5601 915 5603 916 3393 914 5601
5603 6   5597 920 5604 916 5602 915 5597
5604 10   5603 920 5608 919 5605 918 3389 917 3392 916 5603
5605 6   5604 919 5606 928 3387 918 5604
5606 6   5607 927 5616 928 5605 919 5607
5607 6   5608 921 5611 927 5606 919 5608
5608 6   5604 920 5609 921 5607 919 5604
5609 6   5597 925 5610 921 5608 920 5597
5610 10   5609 925 5594 924 5588 923 5614 922 5611 921 5609
5611 6   5610 922 5612 927 5607 921 5610
5612 6   5613 926 5616 927 5611 922 5613
5613 6   5614 949 5618 926 5612 922 5614
5614 6   5610 923 5615 949 5613 922 5610
5615 6   5589 948 5634 949 5614 923 5589
5616 10   5617 930 5619 929 3386 928 5606 927 5612 926 5617
5617 6   5618 950 5621 930 5616 926 5618
5618 6   5613 949 5634 950 5617 926 5613
5619 6   5616 930 5620 931 3384 929 5616
5620 6   5621 935 5622 931 5619 930 5621
5621 10   5617 950 5633 945 5627 940 5624 935 5620 930 5617
5622 10   5620 935 5623 934 3377 933 3380 932 3383 931 5620
5623 6   5622 935 5624 936 3375 934 5622
5624 6   5621 940 5625 936 5623 935 5621
5625 10   5624 940 5626 939 4097 938 3371 937 3374 936 5624
5626 6   5625 940 5627 941 4095 939 5625
5627 6   5621 945 5628 941 5626 940 5621
5628 10   5627 945 5632 944 5629 943 4091 942 4094 941 5627
5629 6   5628 944 5630 953 4089 943 5628
5630 6   5631 952 5640 953 5629 944 5631
5631 6   5632 946 5635 952 5630 944 5632
5632 6   5628 945 5633 946 5631 944 5628
5633 6   5621 950 5634 946 5632 945 5621
5634 10   5633 950 5618 949 5615 948 5638 947 5635 946 5633
5635 6   5634 947 5636 952 5631 946 5634
5636 6   5637 951 5640 952 5635 947 5637
5637 6   5638 974 5642 951 5636 947 5638
5638 6   5634 948 5639 974 5637 947 5634
5639 6   5589 973 5667 974 5638 948 5589
5640 10   5641 955 5643 954 4088 953 5630 952 5636 951 5641
5641 6   5642 975 5645 955 5640 951 5642
5642 6   5637 974 5667 975 5641 951 5637
5643 6   5640 955 5644 956 4086 954 5640
5644 6   5645 960 5646 956 5643 955 5645
5645 10   5641 975 5666 970 5654 965 5648 960 5644 955 5641
5646 10   5644 960 5647 959 4079 958 4082 957 4085 956 5644
5647 6   5646 960 5648 961 4077 959 5646
5648 6   5645 965 5649 961 5647 960 5645
5649 10   5648 965 5653 964 5650 963 4073 962 4076 961 5648
5650 6   5649 964 5651 1013 4071 963 5649
5651 6   5652 1012 5721 1013 5650 964 5652
5652 6   5653 966 5656 1012 5651 964 5653
5653 6   5649 965 5654 966 5652 964 5649
5654 6   5645 970 5655 966 5653 965 5645
5655 10   5654 970 5665 969 5662 968 5659 967 5656 966 5654
5656 6   5655 967 5657 1012 5652 966 5655
5657 6   5658 1011 5721 1012 5656 967 5658
5658 6   5659 1009 5719 1011 5657 967 5659
5659 6   5655 968 5660 1009 5658 967 5655
5660 6   5661 1008 5718 1009 5659 968 5661
5661 6   5662 978 5676 1008 5660 968 5662
5662 6   5655 969 5663 978 5661 968 5655
5663 6   5664 977 5673 978 5662 969 5664
5664 6   5665 971 5668 977 5663 969 5665
5665 6   5655 970 5666 971 5664 969 5655
5666 6   5645 975 5667 971 5665 970 5645
5667 10   5666 975 5642 974 5639 973 5671 972 5668 971 5666
5668 6   5667 972 5669 977 5664 971 5667
5669 6   5670 976 5673 977 5668 972 5670
5670 6   5671 999 5675 976 5669 972 5671
5671 6   5667 973 5672 999 5670 972 5667
5672 6   5589 998 5705 999 5671 973 5589
5673 10   5674 980 5679 979 5676 978 5663 977 5669 976 5674
5674 6   5675 1000 5681 980 5673 976 5675
5675 6   5670 999 5705 1000 5674 976 5670
5676 6   5673 979 5677 1008 5661 978 5673
5677 6   5678 1007 5718 1008 5676 979 5678
5678 6   5679 981 5683 1007 5677 979 5679
5679 6   5673 980 5680 981 5678 979 5673
5680 6   5681 985 5682 981 5679 980 5681
5681 10   5674 1000 5704 995 5701 990 5693 985 5680 980 5674
5682 10   5680 985 5692 984 5689 983 5686 982 5683 981 5680
5683 6   5682 982 5684 1007 5678 981 5682
5684 6   5685 1006 5718 1007 5683 982 5685
5685 6   5686 1004 5715 1006 5684 982 5686
5686 6   5682 983 5687 1004 5685 982 5682
5687 6   5688 1003 5706 1004 5686 983 5688
5688 6   5689 1118 5714 1003 5687 983 5689
5689 6   5682 984 5690 1118 5688 983 5682
5690 6   5691 1117 5876 1118 5689 984 5691
5691 6   5692 986 5695 1117 5690 984 5692
5692 6   5682 985 5693 986 5691 984 5682
5693 6   5681 990 5694 986 5692 985 5681
5694 10   5693 990 5700 989 5552 988 5698 987 5695 986 5693
5695 6   5694 987 5696 1117 5691 986 5694
5696 6   5697 1116 5876 1117 5695 987 5697
5697 6   5698 1114 5874 1116 5696 987 5698
5698 6   5694 988 5699 1114 5697 987 5694
5699 6   5397 1113 5868 1114 5698 988 5397
5700 6   5694 990 5701 991 5550 989 5694
5701 6   5681 995 5702 991 5700 990 5681
5702 10   5701 995 5703 994 5567 993 5543 992 5549 991 5701
5703 6   5702 995 5704 996 5565 994 5702
5704 6   5681 1000 5705 996 5703 995 5681
5705 10   5704 1000 5675 999 5672 998 5591 997 5564 996 5704
5706 10   5707 1005 5715 1004 5687 1003 5713 1002 5710 1001 5707
5707 6   5708 1025 5717 1005 5706 1001 5708
5708 6   5709 1024 5730 1025 5707 1001 5709
5709 6   5710 1122 5738 1024 5708 1001 5710
5710 6   5706 1002 5711 1122 5709 1001 5706
5711 6   5712 1121 5879 1122 5710 1002 5712
5712 6   5713 1119 5877 1121 5711 1002 5713
5713 6   5706 1003 5714 1119 5712 1002 5706
5714 6   5688 1118 5876 1119 5713 1003 5688
5715 6   5706 1005 5716 1006 5685 1004 5706
5716 6   5717 1010 5718 1006 5715 1005 5717
5717 10   5707 1025 5729 1020 5723 1015 5720 1010 5716 1005 5707
5718 10   5716 1010 5719 1009 5660 1008 5677 1007 5684 1006 5716
5719 6   5718 1010 5720 1011 5658 1009 5718
5720 6   5717 1015 5721 1011 5719 1010 5717
5721 10   5720 1015 5722 1014 4070 1013 5651 1012 5657 1011 5720
5722 6   5721 1015 5723 1016 4068 1014 5721
5723 6   5717 1020 5724 1016 5722 1015 5717
5724 10   5723 1020 5728 1019 5725 1018 4064 1017 4067 1016 5723
5725 6   5724 1019 5726 1028 4062 1018 5724
5726 6   5727 1027 5739 1028 5725 1019 5727
5727 6   5728 1021 5731 1027 5726 1019 5728
5728 6   5724 1020 5729 1021 5727 1019 5724
5729 6   5717 1025 5730 1021 5728 1020 5717
5730 10   5729 1025 5708 1024 5737 1023 5734 1022 5731 1021 5729
5731 6   5730 1022 5732 1027 5727 1021 5730
5732 6   5733 1026 5739 1027 5731 1022 5733
5733 6   5734 1049 5741 1026 5732 1022 5734
5734 6   5730 1023 5735 1049 5733 1022 5730
5735 6   5736 1048 5757 1049 5734 1023 5736
5736 10   5737 1123 5846 1098 5795 1073 5762 1048 5735 1023 5737
5737 6   5730 1024 5738 1123 5736 1023 5730
5738 6   5709 1122 5879 1123 5737 1024 5709
5739 10   5740 1030 5742 1029 4061 1028 5726 1027 5732 1026 5740
5740 6   5741 1050 5744 1030 5739 1026 5741
5741 6   5733 1049 5757 1050 5740 1026 5733
5742 6   5739 1030 5743 1031 4059 1029 5739
5743 6   5744 1035 5745 1031 5742 1030 5744
5744 10   5740 1050 5756 1045 5750 1040 5747 1035 5743 1030 5740
5745 10   5743 1035 5746 1034 4052 1033 4055 1032 4058 1031 5743
5746 6   5745 1035 5747 1036 4050 1034 5745
5747 6   5744 1040 5748 1036 5746 1035 5744
5748 10   5747 1040 5749 1039 4043 1038 4046 1037 4049 1036 5747
5749 6   5748 1040 5750 1041 4041 1039 5748
5750 6   5744 1045 5751 1041 5749 1040 5744
5751 10   5750 1045 5755 1044 5752 1043 4037 1042 4040 1041 5750
5752 6   5751 1044 5753 1053 4035 1043 5751
5753 6   5754 1052 5763 1053 5752 1044 5754
5754 6   5755 1046 5758 1052 5753 1044 5755
5755 6   5751 1045 5756 1046 5754 1044 5751
5756 6   5744 1050 5757 1046 5755 1045 5744
5757 10   5756 1050 5741 1049 5735 1048 5761 1047 5758 1046 5756
5758 6   5757 1047 5759 1052 5754 1046 5757
5759 6   5760 1051 5763 1052 5758 1047 5760
5760 6   5761 1074 5765 1051 5759 1047 5761
5761 6   5757 1048 5762 1074 5760 1047 5757
5762 6   5736 1073 5790 1074 5761 1048 5736
5763 10   5764 1055 5766 1054 4034 1053 5753 1052 5759 1051 5764
5764 6   5765 1075 5768 1055 5763 1051 5765
5765 6   5760 1074 5790 1075 5764 1051 5760
5766 6   5763 1055 5767 1056 4032 1054 5763
5767 6   5768 1060 5769 1056 5766 1055 5768
5768 10   5764 1075 5789 1070 5777 1065 5771 1060 5767 1055 5764
5769 10   5767 1060 5770 1059 4025 1058 4028 1057 4031 1056 5767
5770 6   5769 1060 5771 1061 4023 1059 5769
5771 6   5768 1065 5772 1061 5770 1060 5768
5772 10   5771 1065 5776 1064 5773 1063 4019 1062 4022 1061 5771
5773 6   5772 1064 5774 1313 4017 1063 5772
5774 6   5775 1312 6138 1313 5773 1064 5775
5775 6   5776 1066 5779 1312 5774 1064 5776
5776 6   5772 1065 5777 1066 5775 1064 5772
5777 6   5768 1070 5778 1066 5776 1065 5768
5778 10   5777 1070 5788 1069 5785 1068 5782 1067 5779 1066 5777
5779 6   5778 1067 5780 1312 5775 1066 5778
5780 6   5781 1311 6138 1312 5779 1067 5781
5781 6   5782 1309 6136 1311 5780 1067 5782
5782 6   5778 1068 5783 1309 5781 1067 5778
5783 6   5784 1308 6135 1309 5782 1068 5784
5784 6   5785 1078 5799 1308 5783 1068 5785
5785 6   5778 1069 5786 1078 5784 1068 5778
5786 6   5787 1077 5796 1078 5785 1069 5787
5787 6   5788 1071 5791 1077 5786 1069 5788
5788 6   5778 1070 5789 1071 5787 1069 5778
5789 6   5768 1075 5790 1071 5788 1070 5768
5790 10   5789 1075 5765 1074 5762 1073 5794 1072 5791 1071 5789
5791 6   5790 1072 5792 1077 5787 1071 5790
5792 6   5793 1076 5796 1077 5791 1072 5793
5793 6   5794 1099 5798 1076 5792 1072 5794
5794 6   5790 1073 5795 1099 5793 1072 5790
5795 6   5736 1098 5841 1099 5794 1073 5736
5796 10   5797 1080 5802 1079 5799 1078 5786 1077 5792 1076 5797
5797 6   5798 1100 5804 1080 5796 1076 5798
5798 6   5793 1099 5841 1100 5797 1076 5793
5799 6   5796 1079 5800 1308 5784 1078 5796
5800 6   5801 1307 6135 1308 5799 1079 5801
5801 6   5802 1081 5806 1307 5800 1079 5802
5802 6   5796 1080 5803 1081 5801 1079 5796
5803 6   5804 1085 5805 1081 5802 1080 5804
5804 10   5797 1100 5840 1095 5828 1090 5816 1085 5803 1080 5797
5805 10   5803 1085 5815 1084 5812 1083 5809 1082 5806 1081 5803
5806 6   5805 1082 5807 1307 5801 1081 5805
5807 6   5808 1306 6135 1307 5806 1082 5808
5808 6   5809 1304 6132 1306 5807 1082 5809
5809 6   5805 1083 5810 1304 5808 1082 5805
5810 6   5811 1303 6129 1304 5809 1083 5811
5811 6   5812 1293 6118 1303 5810 1083 5812
5812 6   5805 1084 5813 1293 5811 1083 5805
5813 6   5814 1292 6117 1293 5812 1084 5814
5814 6   5815 1086 5818 1292 5813 1084 5815
5815 6   5805 1085 5816 1086 5814 1084 5805
5816 6   5804 1090 5817 1086 5815 1085 5804
5817 10   5816 1090 5827 1089 5824 1088 5821 1087 5818 1086 5816
5818 6   5817 1087 5819 1292 5814 1086 5817
5819 6   5820 1291 6117 1292 5818 1087 5820
5820 6   5821 1289 6115 1291 5819 1087 5821
5821 6   5817 1088 5822 1289 5820 1087 5817
5822 6   5823 1288 6114 1289 5821 1088 5823
5823 6   5824 1138 5896 1288 5822 1088 5824
5824 6   5817 1089 5825 1138 5823 1088 5817
5825 6   5826 1137 5895 1138 5824 1089 5826
5826 6   5827 1091 5830 1137 5825 1089 5827
5827 6   5817 1090 5828 1091 5826 1089 5817
5828 6   5804 1095 5829 1091 5827 1090 5804
5829 10   5828 1095 5839 1094 5836 1093 5833 1092 5830 1091 5828
5830 6   5829 1092 5831 1137 5826 1091 5829
5831 6   5832 1136 5895 1137 5830 1092 5832
5832 6   5833 1134 5893 1136 5831 1092 5833
5833 6   5829 1093 5834 1134 5832 1092 5829
5834 6   5835 1133 5892 1134 5833 1093 5835
5835 6   5836 1103 5850 1133 5834 1093 5836
5836 6   5829 1094 5837 1103 5835 1093 5829
5837 6   5838 1102 5847 1103 5836 1094 5838
5838 6   5839 1096 5842 1102 5837 1094 5839
5839 6   5829 1095 5840 1096 5838 1094 5829
5840 6   5804 1100 5841 1096 5839 1095 5804
5841 10   5840 1100 5798 1099 5795 1098 5845 1097 5842 1096 5840
5842 6   5841 1097 5843 1102 5838 1096 5841
5843 6   5844 1101 5847 1102 5842 1097 5844
5844 6   5845 1124 5849 1101 5843 1097 5845
5845 6   5841 1098 5846 1124 5844 1097 5841
5846 6   5736 1123 5879 1124 5845 1098 5736
5847 10   5848 1105 5853 1104 5850 1103 5837 1102 5843 1101 5848
5848 6   5849 1125 5855 1105 5847 1101 5849
5849 6   5844 1124 5879 1125 5848 1101 5844
5850 6   5847 1104 5851 1133 5835 1103 5847
5851 6   5852 1132 5892 1133 5850 1104 5852
5852 6   5853 1106 5857 1132 5851 1104 5853
5853 6   5847 1105 5854 1106 5852 1104 5847
5854 6   5855 1110 5856 1106 5853 1105 5855
5855 10   5848 1125 5878 1120 5875 1115 5867 1110 5854 1105 5848
5856 10   5854 1110 5866 1109 5863 1108 5860 1107 5857 1106 5854
5857 6   5856 1107 5858 1132 5852 1106 5856
5858 6   5859 1131 5892 1132 5857 1107 5859
5859 6   5860 1129 5889 1131 5858 1107 5860
5860 6   5856 1108 5861 1129 5859 1107 5856
5861 6   5862 1128 5880 1129 5860 1108 5862
5862 6   5863 1243 5888 1128 5861 1108 5863
5863 6   5856 1109 5864 1243 5862 1108 5856
5864 6   5865 1242 6050 1243 5863 1109 5865
5865 6   5866 1111 5869 1242 5864 1109 5866
5866 6   5856 1110 5867 1111 5865 1109 5856
5867 6   5855 1115 5868 1111 5866 1110 5855
5868 10   5867 1115 5874 1114 5699 1113 5872 1112 5869 1111 5867
5869 6   5868 1112 5870 1242 5865 1111 5868
5870 6   5871 1241 6050 1242 5869 1112 5871
5871 6   5872 1239 6048 1241 5870 1112 5872
5872 6   5868 1113 5873 1239 5871 1112 5868
5873 6   5397 1238 6047 1239 5872 1113 5397
5874 6   5868 1115 5875 1116 5697 1114 5868
5875 6   5855 1120 5876 1116 5874 1115 5855
5876 10   5875 1120 5877 1119 5714 1118 5690 1117 5696 1116 5875
5877 6   5876 1120 5878 1121 5712 1119 5876
5878 6   5855 1125 5879 1121 5877 1120 5855
5879 10   5878 1125 5849 1124 5846 1123 5738 1122 5711 1121 5878
5880 10   5881 1130 5889 1129 5861 1128 5887 1127 5884 1126 5881
5881 6   5882 1150 5891 1130 5880 1126 5882
5882 6   5883 1149 5913 1150 5881 1126 5883
5883 6   5884 1247 5921 1149 5882 1126 5884
5884 6   5880 1127 5885 1247 5883 1126 5880
5885 6   5886 1246 6053 1247 5884 1127 5886
5886 6   5887 1244 6051 1246 5885 1127 5887
5887 6   5880 1128 5888 1244 5886 1127 5880
5888 6   5862 1243 6050 1244 5887 1128 5862
5889 6   5880 1130 5890 1131 5859 1129 5880
5890 6   5891 1135 5892 1131 5889 1130 5891
5891 10   5881 1150 5912 1145 5900 1140 5894 1135 5890 1130 5881
5892 10   5890 1135 5893 1134 5834 1133 5851 1132 5858 1131 5890
5893 6   5892 1135 5894 1136 5832 1134 5892
5894 6   5891 1140 5895 1136 5893 1135 5891
5895 10   5894 1140 5899 1139 5896 1138 5825 1137 5831 1136 5894
5896 6   5895 1139 5897 1288 5823 1138 5895
5897 6   5898 1287 6114 1288 5896 1139 5898
5898 6   5899 1141 5902 1287 5897 1139 5899
5899 6   5895 1140 5900 1141 5898 1139 5895
5900 6   5891 1145 5901 1141 5899 1140 5891
5901 10   5900 1145 5911 1144 5908 1143 5905 1142 5902 1141 5900
5902 6   5901 1142 5903 1287 5898 1141 5901
5903 6   5904 1286 6114 1287 5902 1142 5904
5904 6   5905 1284 6112 1286 5903 1142 5905
5905 6   5901 1143 5906 1284 5904 1142 5901
5906 6   5907 1283 6111 1284 5905 1143 5907
5907 6   5908 1153 5925 1283 5906 1143 5908
5908 6   5901 1144 5909 1153 5907 1143 5901
5909 6   5910 1152 5922 1153 5908 1144 5910
5910 6   5911 1146 5914 1152 5909 1144 5911
5911 6   5901 1145 5912 1146 5910 1144 5901
5912 6   5891 1150 5913 1146 5911 1145 5891
5913 10   5912 1150 5882 1149 5920 1148 5917 1147 5914 1146 5912
5914 6   5913 1147 5915 1152 5910 1146 5913
5915 6   5916 1151 5922 1152 5914 1147 5916
5916 6   5917 1174 5924 1151 5915 1147 5917
5917 6   5913 1148 5918 1174 5916 1147 5913
5918 6   5919 1173 5967 1174 5917 1148 5919
5919 10   5920 1248 6037 1223 6013 1198 5972 1173 5918 1148 5920
5920 6   5913 1149 5921 1248 5919 1148 5913
5921 6   5883 1247 6053 1248 5920 1149 5883
5922 10   5923 1155 5928 1154 5925 1153 5909 1152 5915 1151 5923
5923 6   5924 1175 5930 1155 5922 1151 5924
5924 6   5916 1174 5967 1175 5923 1151 5916
5925 6   5922 1154 5926 1283 5907 1153 5922
5926 6   5927 1282 6111 1283 5925 1154 5927
5927 6   5928 1156 5932 1282 5926 1154 5928
5928 6   5922 1155 5929 1156 5927 1154 5922
5929 6   5930 1160 5931 1156 5928 1155 5930
5930 10   5923 1175 5966 1170 5954 1165 5942 1160 5929 1155 5923
5931 10   5929 1160 5941 1159 5938 1158 5935 1157 5932 1156 5929
5932 6   5931 1157 5933 1282 5927 1156 5931
5933 6   5934 1281 6111 1282 5932 1157 5934
5934 6   5935 1279 6108 1281 5933 1157 5935
5935 6   5931 1158 5936 1279 5934 1157 5931
5936 6   5937 1278 6105 1279 5935 1158 5937
5937 6   5938 1268 6091 1278 5936 1158 5938
5938 6   5931 1159 5939 1268 5937 1158 5931
5939 6   5940 1267 6090 1268 5938 1159 5940
5940 6   5941 1161 5944 1267 5939 1159 5941
5941 6   5931 1160 5942 1161 5940 1159 5931
5942 6   5930 1165 5943 1161 5941 1160 5930
5943 10   5942 1165 5953 1164 5950 1163 5947 1162 5944 1161 5942
5944 6   5943 1162 5945 1267 5940 1161 5943
5945 6   5946 1266 6090 1267 5944 1162 5946
5946 6   5947 1264 6088 1266 5945 1162 5947
5947 6   5943 1163 5948 1264 5946 1162 5943
5948 6   5949 1263 6082 1264 5947 1163 5949
5949 6   5950 1838 6087 1263 5948 1163 5950
5950 6   5943 1164 5951 1838 5949 1163 5943
5951 6   5952 1837 6839 1838 5950 1164 5952
5952 6   5953 1166 5956 1837 5951 1164 5953
5953 6   5943 1165 5954 1166 5952 1164 5943
5954 6   5930 1170 5955 1166 5953 1165 5930
5955 10   5954 1170 5965 1169 5962 1168 5959 1167 5956 1166 5954
5956 6   5955 1167 5957 1837 5952 1166 5955
5957 6   5958 1836 6839 1837 5956 1167 5958
5958 6   5959 1834 6837 1836 5957 1167 5959
5959 6   5955 1168 5960 1834 5958 1167 5955
5960 6   5961 1833 6836 1834 5959 1168 5961
5961 6   5962 1178 5976 1833 5960 1168 5962
5962 6   5955 1169 5963 1178 5961 1168 5955
5963 6   5964 1177 5973 1178 5962 1169 5964
5964 6   5965 1171 5968 1177 5963 1169 5965
5965 6   5955 1170 5966 1171 5964 1169 5955
5966 6   5930 1175 5967 1171 5965 1170 5930
5967 10   5966 1175 5924 1174 5918 1173 5971 1172 5968 1171 5966
5968 6   5967 1172 5969 1177 5964 1171 5967
5969 6   5970 1176 5973 1177 5968 1172 5970
5970 6   5971 1199 5975 1176 5969 1172 5971
5971 6   5967 1173 5972 1199 5970 1172 5967
5972 6   5919 1198 6008 1199 5971 1173 5919
5973 10   5974 1180 5979 1179 5976 1178 5963 1177 5969 1176 5974
5974 6   5975 1200 5981 1180 5973 1176 5975
5975 6   5970 1199 6008 1200 5974 1176 5970
5976 6   5973 1179 5977 1833 5961 1178 5973
5977 6   5978 1832 6836 1833 5976 1179 5978
5978 6   5979 1181 5983 1832 5977 1179 5979
5979 6   5973 1180 5980 1181 5978 1179 5973
5980 6   5981 1185 5982 1181 5979 1180 5981
5981 10   5974 1200 6007 1195 6001 1190 5993 1185 5980 1180 5974
5982 10   5980 1185 5992 1184 5989 1183 5986 1182 5983 1181 5980
5983 6   5982 1182 5984 1832 5978 1181 5982
5984 6   5985 1831 6836 1832 5983 1182 5985
5985 6   5986 1829 6833 1831 5984 1182 5986
5986 6   5982 1183 5987 1829 5985 1182 5982
5987 6   5988 1828 6830 1829 5986 1183 5988
5988 6   5989 1818 6819 1828 5987 1183 5989
5989 6   5982 1184 5990 1818 5988 1183 5982
5990 6   5991 1817 6818 1818 5989 1184 5991
5991 6   5992 1186 5995 1817 5990 1184 5992
5992 6   5982 1185 5993 1186 5991 1184 5982
5993 6   5981 1190 5994 1186 5992 1185 5981
5994 10   5993 1190 6000 1189 5156 1188 5998 1187 5995 1186 5993
5995 6   5994 1187 5996 1817 5991 1186 5994
5996 6   5997 1816 6818 1817 5995 1187 5997
5997 6   5998 1814 6816 1816 5996 1187 5998
5998 6   5994 1188 5999 1814 5997 1187 5994
5999 6   5157 1813 6810 1814 5998 1188 5157
6000 6   5994 1190 6001 1191 5154 1189 5994
6001 6   5981 1195 6002 1191 6000 1190 5981
6002 10   6001 1195 6006 1194 6003 1193 5147 1192 5153 1191 6001
6003 6   6002 1194 6004 1203 5145 1193 6002
6004 6   6005 1202 6014 1203 6003 1194 6005
6005 6   6006 1196 6009 1202 6004 1194 6006
6006 6   6002 1195 6007 1196 6005 1194 6002
6007 6   5981 1200 6008 1196 6006 1195 5981
6008 10   6007 1200 5975 1199 5972 1198 6012 1197 6009 1196 6007
6009 6   6008 1197 6010 1202 6005 1196 6008
6010 6   6011 1201 6014 1202 6009 1197 6011
6011 6   6012 1224 6016 1201 6010 1197 6012
6012 6   6008 1198 6013 1224 6011 1197 6008
6013 6   5919 1223 6032 1224 6012 1198 5919
6014 10   6015 1205 6017 1204 5144 1203 6004 1202 6010 1201 6015
6015 6   6016 1225 6019 1205 6014 1201 6016
6016 6   6011 1224 6032 1225 6015 1201 6011
6017 6   6014 1205 6018 1206 5142 1204 6014
6018 6   6019 1210 6020 1206 6017 1205 6019
6019 10   6015 1225 6031 1220 6025 1215 6022 1210 6018 1205 6015
6020 10   6018 1210 6021 1209 5117 1208 5134 1207 5141 1206 6018
6021 6   6020 1210 6022 1211 5115 1209 6020
6022 6   6019 1215 6023 1211 6021 1210 6019
6023 10   6022 1215 6024 1214 5271 1213 5108 1212 5114 1211 6022
6024 6   6023 1215 6025 1216 5269 1214 6023
6025 6   6019 1220 6026 1216 6024 1215 6019
6026 10   6025 1220 6030 1219 6027 1218 5262 1217 5268 1216 6025
6027 6   6026 1219 6028 1228 5260 1218 6026
6028 6   6029 1227 6038 1228 6027 1219 6029
6029 6   6030 1221 6033 1227 6028 1219 6030
6030 6   6026 1220 6031 1221 6029 1219 6026
6031 6   6019 1225 6032 1221 6030 1220 6019
6032 10   6031 1225 6016 1224 6013 1223 6036 1222 6033 1221 6031
6033 6   6032 1222 6034 1227 6029 1221 6032
6034 6   6035 1226 6038 1227 6033 1222 6035
6035 6   6036 1249 6040 1226 6034 1222 6036
6036 6   6032 1223 6037 1249 6035 1222 6032
6037 6   5919 1248 6053 1249 6036 1223 5919
6038 10   6039 1230 6041 1229 5259 1228 6028 1227 6034 1226 6039
6039 6   6040 1250 6043 1230 6038 1226 6040
6040 6   6035 1249 6053 1250 6039 1226 6035
6041 6   6038 1230 6042 1231 5257 1229 6038
6042 6   6043 1235 6044 1231 6041 1230 6043
6043 10   6039 1250 6052 1245 6049 1240 6046 1235 6042 1230 6039
6044 10   6042 1235 6045 1234 5408 1233 5249 1232 5256 1231 6042
6045 6   6044 1235 6046 1236 5406 1234 6044
6046 6   6043 1240 6047 1236 6045 1235 6043
6047 10   6046 1240 6048 1239 5873 1238 5399 1237 5405 1236 6046
6048 6   6047 1240 6049 1241 5871 1239 6047
6049 6   6043 1245 6050 1241 6048 1240 6043
6050 10   6049 1245 6051 1244 5888 1243 5864 1242 5870 1241 6049
6051 6   6050 1245 6052 1246 5886 1244 6050
6052 6   6043 1250 6053 1246 6051 1245 6043
6053 10   6052 1250 6040 1249 6037 1248 5921 1247 5885 1246 6052
6054 10   6055 1255 6067 1254 6064 1253 6061 1252 6058 1251 6055
6055 6   6056 1275 6069 1255 6054 1251 6056
6056 6   6057 1274 6096 1275 6055 1251 6057
6057 6   6058 1372 6104 1274 6056 1251 6058
6058 6   6054 1252 6059 1372 6057 1251 6054
6059 6   6060 1371 6227 1372 6058 1252 6060
6060 6   6061 1369 6225 1371 6059 1252 6061
6061 6   6054 1253 6062 1369 6060 1252 6054
6062 6   6063 1368 6219 1369 6061 1253 6063
6063 6   6064 1858 6224 1368 6062 1253 6064
6064 6   6054 1254 6065 1858 6063 1253 6054
6065 6   6066 1857 6860 1858 6064 1254 6066
6066 6   6067 1256 6071 1857 6065 1254 6067
6067 6   6054 1255 6068 1256 6066 1254 6054
6068 6   6069 1260 6070 1256 6067 1255 6069
6069 10   6055 1275 6095 1270 6089 1265 6081 1260 6068 1255 6055
6070 10   6068 1260 6080 1259 6077 1258 6074 1257 6071 1256 6068
6071 6   6070 1257 6072 1857 6066 1256 6070
6072 6   6073 1856 6860 1857 6071 1257 6073
6073 6   6074 1854 6857 1856 6072 1257 6074
6074 6   6070 1258 6075 1854 6073 1257 6070
6075 6   6076 1853 6854 1854 6074 1258 6076
6076 6   6077 1843 6843 1853 6075 1258 6077
6077 6   6070 1259 6078 1843 6076 1258 6070
6078 6   6079 1842 6842 1843 6077 1259 6079
6079 6   6080 1261 6083 1842 6078 1259 6080
6080 6   6070 1260 6081 1261 6079 1259 6070
6081 6   6069 1265 6082 1261 6080 1260 6069
6082 10   6081 1265 6088 1264 5948 1263 6086 1262 6083 1261 6081
6083 6   6082 1262 6084 1842 6079 1261 6082
6084 6   6085 1841 6842 1842 6083 1262 6085
6085 6   6086 1839 6840 1841 6084 1262 6086
6086 6   6082 1263 6087 1839 6085 1262 6082
6087 6   5949 1838 6839 1839 6086 1263 5949
6088 6   6082 1265 6089 1266 5946 1264 6082
6089 6   6069 1270 6090 1266 6088 1265 6069
6090 10   6089 1270 6094 1269 6091 1268 5939 1267 5945 1266 6089
6091 6   6090 1269 6092 1278 5937 1268 6090
6092 6   6093 1277 6105 1278 6091 1269 6093
6093 6   6094 1271 6097 1277 6092 1269 6094
6094 6   6090 1270 6095 1271 6093 1269 6090
6095 6   6069 1275 6096 1271 6094 1270 6069
6096 10   6095 1275 6056 1274 6103 1273 6100 1272 6097 1271 6095
6097 6   6096 1272 6098 1277 6093 1271 6096
6098 6   6099 1276 6105 1277 6097 1272 6099
6099 6   6100 1299 6107 1276 6098 1272 6100
6100 6   6096 1273 6101 1299 6099 1272 6096
6101 6   6102 1298 6123 1299 6100 1273 6102
6102 10   6103 1373 6185 1348 6152 1323 6128 1298 6101 1273 6103
6103 6   6096 1274 6104 1373 6102 1273 6096
6104 6   6057 1372 6227 1373 6103 1274 6057
6105 10   6106 1280 6108 1279 5936 1278 6092 1277 6098 1276 6106
6106 6   6107 1300 6110 1280 6105 1276 6107
6107 6   6099 1299 6123 1300 6106 1276 6099
6108 6   6105 1280 6109 1281 5934 1279 6105
6109 6   6110 1285 6111 1281 6108 1280 6110
6110 10   6106 1300 6122 1295 6116 1290 6113 1285 6109 1280 6106
6111 10   6109 1285 6112 1284 5906 1283 5926 1282 5933 1281 6109
6112 6   6111 1285 6113 1286 5904 1284 6111
6113 6   6110 1290 6114 1286 6112 1285 6110
6114 10   6113 1290 6115 1289 5822 1288 5897 1287 5903 1286 6113
6115 6   6114 1290 6116 1291 5820 1289 6114
6116 6   6110 1295 6117 1291 6115 1290 6110
6117 10   6116 1295 6121 1294 6118 1293 5813 1292 5819 1291 6116
6118 6   6117 1294 6119 1303 5811 1293 6117
6119 6   6120 1302 6129 1303 6118 1294 6120
6120 6   6121 1296 6124 1302 6119 1294 6121
6121 6   6117 1295 6122 1296 6120 1294 6117
6122 6   6110 1300 6123 1296 6121 1295 6110
6123 10   6122 1300 6107 1299 6101 1298 6127 1297 6124 1296 6122
6124 6   6123 1297 6125 1302 6120 1296 6123
6125 6   6126 1301 6129 1302 6124 1297 6126
6126 6   6127 1324 6131 1301 6125 1297 6127
6127 6   6123 1298 6128 1324 6126 1297 6123
6128 6   6102 1323 6147 1324 6127 1298 6102
6129 10   6130 1305 6132 1304 5810 1303 6119 1302 6125 1301 6130
6130 6   6131 1325 6134 1305 6129 1301 6131
6131 6   6126 1324 6147 1325 6130 1301 6126
6132 6   6129 1305 6133 1306 5808 1304 6129
6133 6   6134 1310 6135 1306 6132 1305 6134
6134 10   6130 1325 6146 1320 6140 1315 6137 1310 6133 1305 6130
6135 10   6133 1310 6136 1309 5783 1308 5800 1307 5807 1306 6133
6136 6   6135 1310 6137 1311 5781 1309 6135
6137 6   6134 1315 6138 1311 6136 1310 6134
6138 10   6137 1315 6139 1314 4016 1313 5774 1312 5780 1311 6137
6139 6   6138 1315 6140 1316 4014 1314 6138
6140 6   6134 1320 6141 1316 6139 1315 6134
6141 10   6140 1320 6145 1319 6142 1318 4010 1317 4013 1316 6140
6142 6   6141 1319 6143 1328 4008 1318 6141
6143 6   6144 1327 6153 1328 6142 1319 6144
6144 6   6145 1321 6148 1327 6143 1319 6145
6145 6   6141 1320 6146 1321 6144 1319 6141
6146 6   6134 1325 6147 1321 6145 1320 6134
6147 10   6146 1325 6131 1324 6128 1323 6151 1322 6148 1321 6146
6148 6   6147 1322 6149 1327 6144 1321 6147
6149 6   6150 1326 6153 1327 6148 1322 6150
6150 6   6151 1349 6155 1326 6149 1322 6151
6151 6   6147 1323 6152 1349 6150 1322 6147
6152 6   6102 1348 6180 1349 6151 1323 6102
6153 10   6154 1330 6156 1329 4007 1328 6143 1327 6149 1326 6154
6154 6   6155 1350 6158 1330 6153 1326 6155
6155 6   6150 1349 6180 1350 6154 1326 6150
6156 6   6153 1330 6157 1331 4005 1329 6153
6157 6   6158 1335 6159 1331 6156 1330 6158
6158 10   6154 1350 6179 1345 6167 1340 6161 1335 6157 1330 6154
6159 10   6157 1335 6160 1334 3998 1333 4001 1332 4004 1331 6157
6160 6   6159 1335 6161 1336 3996 1334 6159
6161 6   6158 1340 6162 1336 6160 1335 6158
6162 10   6161 1340 6166 1339 6163 1338 3992 1337 3995 1336 6161
6163 6   6162 1339 6164 1388 3990 1338 6162
6164 6   6165 1387 6243 1388 6163 1339 6165
6165 6   6166 1341 6169 1387 6164 1339 6166
6166 6   6162 1340 6167 1341 6165 1339 6162
6167 6   6158 1345 6168 1341 6166 1340 6158
6168 10   6167 1345 6178 1344 6175 1343 6172 1342 6169 1341 6167
6169 6   6168 1342 6170 1387 6165 1341 6168
6170 6   6171 1386 6243 1387 6169 1342 6171
6171 6   6172 1384 6241 1386 6170 1342 6172
6172 6   6168 1343 6173 1384 6171 1342 6168
6173 6   6174 1383 6240 1384 6172 1343 6174
6174 6   6175 1353 6189 1383 6173 1343 6175
6175 6   6168 1344 6176 1353 6174 1343 6168
6176 6   6177 1352 6186 1353 6175 1344 6177
6177 6   6178 1346 6181 1352 6176 1344 6178
6178 6   6168 1345 6179 1346 6177 1344 6168
6179 6   6158 1350 6180 1346 6178 1345 6158
6180 10   6179 1350 6155 1349 6152 1348 6184 1347 6181 1346 6179
6181 6   6180 1347 6182 1352 6177 1346 6180
6182 6   6183 1351 6186 1352 6181 1347 6183
6183 6   6184 1374 6188 1351 6182 1347 6184
6184 6   6180 1348 6185 1374 6183 1347 6180
6185 6   6102 1373 6227 1374 6184 1348 6102
6186 10   6187 1355 6192 1354 6189 1353 6176 1352 6182 1351 6187
6187 6   6188 1375 6194 1355 6186 1351 6188
6188 6   6183 1374 6227 1375 6187 1351 6183
6189 6   6186 1354 6190 1383 6174 1353 6186
6190 6   6191 1382 6240 1383 6189 1354 6191
6191 6   6192 1356 6196 1382 6190 1354 6192
6192 6   6186 1355 6193 1356 6191 1354 6186
6193 6   6194 1360 6195 1356 6192 1355 6194
6194 10   6187 1375 6226 1370 6218 1365 6206 1360 6193 1355 6187
6195 10   6193 1360 6205 1359 6202 1358 6199 1357 6196 1356 6193
6196 6   6195 1357 6197 1382 6191 1356 6195
6197 6   6198 1381 6240 1382 6196 1357 6198
6198 6   6199 1379 6237 1381 6197 1357 6199
6199 6   6195 1358 6200 1379 6198 1357 6195
6200 6   6201 1378 6228 1379 6199 1358 6201
6201 6   6202 1493 6236 1378 6200 1358 6202
6202 6   6195 1359 6203 1493 6201 1358 6195
6203 6   6204 1492 6371 1493 6202 1359 6204
6204 6   6205 1361 6208 1492 6203 1359 6205
6205 6   6195 1360 6206 1361 6204 1359 6195
6206 6   6194 1365 6207 1361 6205 1360 6194
6207 10   6206 1365 6217 1364 6214 1363 6211 1362 6208 1361 6206
6208 6   6207 1362 6209 1492 6204 1361 6207
6209 6   6210 1491 6371 1492 6208 1362 6210
6210 6   6211 1489 6369 1491 6209 1362 6211
6211 6   6207 1363 6212 1489 6210 1362 6207
6212 6   6213 1488 6363 1489 6211 1363 6213
6213 10   6214 1863 6689 1738 6515 1613 6368 1488 6212 1363 6214
6214 6   6207 1364 6215 1863 6213 1363 6207
6215 6   6216 1862 6863 1863 6214 1364 6216
6216 6   6217 1366 6220 1862 6215 1364 6217
6217 6   6207 1365 6218 1366 6216 1364 6207
6218 6   6194 1370 6219 1366 6217 1365 6194
6219 10   6218 1370 6225 1369 6062 1368 6223 1367 6220 1366 6218
6220 6   6219 1367 6221 1862 6216 1366 6219
6221 6   6222 1861 6863 1862 6220 1367 6222
6222 6   6223 1859 6861 1861 6221 1367 6223
6223 6   6219 1368 6224 1859 6222 1367 6219
6224 6   6063 1858 6860 1859 6223 1368 6063
6225 6   6219 1370 6226 1371 6060 1369 6219
6226 6   6194 1375 6227 1371 6225 1370 6194
6227 10   6226 1375 6188 1374 6185 1373 6104 1372 6059 1371 6226
6228 10   6229 1380 6237 1379 6200 1378 6235 1377 6232 1376 6229
6229 6   6230 1400 6239 1380 6228 1376 6230
6230 6   6231 1399 6252 1400 6229 1376 6231
6231 6   6232 1497 6260 1399 6230 1376 6232
6232 6   6228 1377 6233 1497 6231 1376 6228
6233 6   6234 1496 6374 1497 6232 1377 6234
6234 6   6235 1494 6372 1496 6233 1377 6235
6235 6   6228 1378 6236 1494 6234 1377 6228
6236 6   6201 1493 6371 1494 6235 1378 6201
6237 6   6228 1380 6238 1381 6198 1379 6228
6238 6   6239 1385 6240 1381 6237 1380 6239
6239 10   6229 1400 6251 1395 6245 1390 6242 1385 6238 1380 6229
6240 10   6238 1385 6241 1384 6173 1383 6190 1382 6197 1381 6238
6241 6   6240 1385 6242 1386 6171 1384 6240
6242 6   6239 1390 6243 1386 6241 1385 6239
6243 10   6242 1390 6244 1389 3989 1388 6164 1387 6170 1386 6242
6244 6   6243 1390 6245 1391 3987 1389 6243
6245 6   6239 1395 6246 1391 6244 1390 6239
6246 10   6245 1395 6250 1394 6247 1393 3983 1392 3986 1391 6245
6247 6   6246 1394 6248 1403 3981 1393 6246
6248 6   6249 1402 6261 1403 6247 1394 6249
6249 6   6250 1396 6253 1402 6248 1394 6250
6250 6   6246 1395 6251 1396 6249 1394 6246
6251 6   6239 1400 6252 1396 6250 1395 6239
6252 10   6251 1400 6230 1399 6259 1398 6256 1397 6253 1396 6251
6253 6   6252 1397 6254 1402 6249 1396 6252
6254 6   6255 1401 6261 1402 6253 1397 6255
6255 6   6256 1424 6263 1401 6254 1397 6256
6256 6   6252 1398 6257 1424 6255 1397 6252
6257 6   6258 1423 6279 1424 6256 1398 6258
6258 10   6259 1498 6341 1473 6308 1448 6284 1423 6257 1398 6259
6259 6   6252 1399 6260 1498 6258 1398 6252
6260 6   6231 1497 6374 1498 6259 1399 6231
6261 10   6262 1405 6264 1404 3980 1403 6248 1402 6254 1401 6262
6262 6   6263 1425 6266 1405 6261 1401 6263
6263 6   6255 1424 6279 1425 6262 1401 6255
6264 6   6261 1405 6265 1406 3978 1404 6261
6265 6   6266 1410 6267 1406 6264 1405 6266
6266 10   6262 1425 6278 1420 6272 1415 6269 1410 6265 1405 6262
6267 10   6265 1410 6268 1409 3971 1408 3974 1407 3977 1406 6265
6268 6   6267 1410 6269 1411 3969 1409 6267
6269 6   6266 1415 6270 1411 6268 1410 6266
6270 10   6269 1415 6271 1414 3962 1413 3965 1412 3968 1411 6269
6271 6   6270 1415 6272 1416 3960 1414 6270
6272 6   6266 1420 6273 1416 6271 1415 6266
6273 10   6272 1420 6277 1419 6274 1418 3956 1417 3959 1416 6272
6274 6   6273 1419 6275 1428 3954 1418 6273
6275 6   6276 1427 6285 1428 6274 1419 6276
6276 6   6277 1421 6280 1427 6275 1419 6277
6277 6   6273 1420 6278 1421 6276 1419 6273
6278 6   6266 1425 6279 1421 6277 1420 6266
6279 10   6278 1425 6263 1424 6257 1423 6283 1422 6280 1421 6278
6280 6   6279 1422 6281 1427 6276 1421 6279
6281 6   6282 1426 6285 1427 6280 1422 6282
6282 6   6283 1449 6287 1426 6281 1422 6283
6283 6   6279 1423 6284 1449 6282 1422 6279
6284 6   6258 1448 6303 1449 6283 1423 6258
6285 10   6286 1430 6288 1429 3953 1428 6275 1427 6281 1426 6286
6286 6   6287 1450 6290 1430 6285 1426 6287
6287 6   6282 1449 6303 1450 6286 1426 6282
6288 6   6285 1430 6289 1431 3951 1429 6285
6289 6   6290 1435 6291 1431 6288 1430 6290
6290 10   6286 1450 6302 1445 6296 1440 6293 1435 6289 1430 6286
6291 10   6289 1435 6292 1434 3944 1433 3947 1432 3950 1431 6289
6292 6   6291 1435 6293 1436 3942 1434 6291
6293 6   6290 1440 6294 1436 6292 1435 6290
6294 10   6293 1440 6295 1439 3935 1438 3938 1437 3941 1436 6293
6295 6   6294 1440 6296 1441 3933 1439 6294
6296 6   6290 1445 6297 1441 6295 1440 6290
6297 10   6296 1445 6301 1444 6298 1443 3929 1442 3932 1441 6296
6298 6   6297 1444 6299 1453 3927 1443 6297
6299 6   6300 1452 6309 1453 6298 1444 6300
6300 6   6301 1446 6304 1452 6299 1444 6301
6301 6   6297 1445 6302 1446 6300 1444 6297
6302 6   6290 1450 6303 1446 6301 1445 6290
6303 10   6302 1450 6287 1449 6284 1448 6307 1447 6304 1446 6302
6304 6   6303 1447 6305 1452 6300 1446 6303
6305 6   6306 1451 6309 1452 6304 1447 6306
6306 6   6307 1474 6311 1451 6305 1447 6307
6307 6   6303 1448 6308 1474 6306 1447 6303
6308 6   6258 1473 6336 1474 6307 1448 6258
6309 10   6310 1455 6312 1454 3926 1453 6299 1452 6305 1451 6310
6310 6   6311 1475 6314 1455 6309 1451 6311
6311 6   6306 1474 6336 1475 6310 1451 6306
6312 6   6309 1455 6313 1456 3924 1454 6309
6313 6   6314 1460 6315 1456 6312 1455 6314
6314 10   6310 1475 6335 1470 6323 1465 6317 1460 6313 1455 6310
6315 10   6313 1460 6316 1459 3917 1458 3920 1457 3923 1456 6313
6316 6   6315 1460 6317 1461 3915 1459 6315
6317 6   6314 1465 6318 1461 6316 1460 6314
6318 10   6317 1465 6322 1464 6319 1463 3911 1462 3914 1461 6317
6319 6   6318 1464 6320 1513 3909 1463 6318
6320 6   6321 1512 6390 1513 6319 1464 6321
6321 6   6322 1466 6325 1512 6320 1464 6322
6322 6   6318 1465 6323 1466 6321 1464 6318
6323 6   6314 1470 6324 1466 6322 1465 6314
6324 10   6323 1470 6334 1469 6331 1468 6328 1467 6325 1466 6323
6325 6   6324 1467 6326 1512 6321 1466 6324
6326 6   6327 1511 6390 1512 6325 1467 6327
6327 6   6328 1509 6388 1511 6326 1467 6328
6328 6   6324 1468 6329 1509 6327 1467 6324
6329 6   6330 1508 6387 1509 6328 1468 6330
6330 6   6331 1478 6345 1508 6329 1468 6331
6331 6   6324 1469 6332 1478 6330 1468 6324
6332 6   6333 1477 6342 1478 6331 1469 6333
6333 6   6334 1471 6337 1477 6332 1469 6334
6334 6   6324 1470 6335 1471 6333 1469 6324
6335 6   6314 1475 6336 1471 6334 1470 6314
6336 10   6335 1475 6311 1474 6308 1473 6340 1472 6337 1471 6335
6337 6   6336 1472 6338 1477 6333 1471 6336
6338 6   6339 1476 6342 1477 6337 1472 6339
6339 6   6340 1499 6344 1476 6338 1472 6340
6340 6   6336 1473 6341 1499 6339 1472 6336
6341 6   6258 1498 6374 1499 6340 1473 6258
6342 10   6343 1480 6348 1479 6345 1478 6332 1477 6338 1476 6343
6343 6   6344 1500 6350 1480 6342 1476 6344
6344 6   6339 1499 6374 1500 6343 1476 6339
6345 6   6342 1479 6346 1508 6330 1478 6342
6346 6   6347 1507 6387 1508 6345 1479 6347
6347 6   6348 1481 6352 1507 6346 1479 6348
6348 6   6342 1480 6349 1481 6347 1479 6342
6349 6   6350 1485 6351 1481 6348 1480 6350
6350 10   6343 1500 6373 1495 6370 1490 6362 1485 6349 1480 6343
6351 10   6349 1485 6361 1484 6358 1483 6355 1482 6352 1481 6349
6352 6   6351 1482 6353 1507 6347 1481 6351
6353 6   6354 1506 6387 1507 6352 1482 6354
6354 6   6355 1504 6384 1506 6353 1482 6355
6355 6   6351 1483 6356 1504 6354 1482 6351
6356 6   6357 1503 6375 1504 6355 1483 6357
6357 6   6358 1618 6383 1503 6356 1483 6358
6358 6   6351 1484 6359 1618 6357 1483 6351
6359 6   6360 1617 6518 1618 6358 1484 6360
6360 6   6361 1486 6364 1617 6359 1484 6361
6361 6   6351 1485 6362 1486 6360 1484 6351
6362 6   6350 1490 6363 1486 6361 1485 6350
6363 10   6362 1490 6369 1489 6212 1488 6367 1487 6364 1486 6362
6364 6   6363 1487 6365 1617 6360 1486 6363
6365 6   6366 1616 6518 1617 6364 1487 6366
6366 6   6367 1614 6516 1616 6365 1487 6367
6367 6   6363 1488 6368 1614 6366 1487 6363
6368 6   6213 1613 6510 1614 6367 1488 6213
6369 6   6363 1490 6370 1491 6210 1489 6363
6370 6   6350 1495 6371 1491 6369 1490 6350
6371 10   6370 1495 6372 1494 6236 1493 6203 1492 6209 1491 6370
6372 6   6371 1495 6373 1496 6234 1494 6371
6373 6   6350 1500 6374 1496 6372 1495 6350
6374 10   6373 1500 6344 1499 6341 1498 6260 1497 6233 1496 6373
6375 10   6376 1505 6384 1504 6356 1503 6382 1502 6379 1501 6376
6376 6   6377 1525 6386 1505 6375 1501 6377
6377 6   6378 1524 6399 1525 6376 1501 6378
6378 6   6379 1622 6407 1524 6377 1501 6379
6379 6   6375 1502 6380 1622 6378 1501 6375
6380 6   6381 1621 6521 1622 6379 1502 6381
6381 6   6382 1619 6519 1621 6380 1502 6382
6382 6   6375 1503 6383 1619 6381 1502 6375
6383 6   6357 1618 6518 1619 6382 1503 6357
6384 6   6375 1505 6385 1506 6354 1504 6375
6385 6   6386 1510 6387 1506 6384 1505 6386
6386 10   6376 1525 6398 1520 6392 1515 6389 1510 6385 1505 6376
6387 10   6385 1510 6388 1509 6329 1508 6346 1507 6353 1506 6385
6388 6   6387 1510 6389 1511 6327 1509 6387
6389 6   6386 1515 6390 1511 6388 1510 6386
6390 10   6389 1515 6391 1514 3908 1513 6320 1512 6326 1511 6389
6391 6   6390 1515 6392 1516 3906 1514 6390
6392 6   6386 1520 6393 1516 6391 1515 6386
6393 10   6392 1520 6397 1519 6394 1518 3902 1517 3905 1516 6392
6394 6   6393 1519 6395 1528 3900 1518 6393
6395 6   6396 1527 6408 1528 6394 1519 6396
6396 6   6397 1521 6400 1527 6395 1519 6397
6397 6   6393 1520 6398 1521 6396 1519 6393
6398 6   6386 1525 6399 1521 6397 1520 6386
6399 10   6398 1525 6377 1524 6406 1523 6403 1522 6400 1521 6398
6400 6   6399 1522 6401 1527 6396 1521 6399
6401 6   6402 1526 6408 1527 6400 1522 6402
6402 6   6403 1549 6410 1526 6401 1522 6403
6403 6   6399 1523 6404 1549 6402 1522 6399
6404 6   6405 1548 6426 1549 6403 1523 6405
6405 10   6406 1623 6488 1598 6455 1573 6431 1548 6404 1523 6406
6406 6   6399 1524 6407 1623 6405 1523 6399
6407 6   6378 1622 6521 1623 6406 1524 6378
6408 10   6409 1530 6411 1529 3899 1528 6395 1527 6401 1526 6409
6409 6   6410 1550 6413 1530 6408 1526 6410
6410 6   6402 1549 6426 1550 6409 1526 6402
6411 6   6408 1530 6412 1531 3897 1529 6408
6412 6   6413 1535 6414 1531 6411 1530 6413
6413 10   6409 1550 6425 1545 6419 1540 6416 1535 6412 1530 6409
6414 10   6412 1535 6415 1534 3890 1533 3893 1532 3896 1531 6412
6415 6   6414 1535 6416 1536 3888 1534 6414
6416 6   6413 1540 6417 1536 6415 1535 6413
6417 10   6416 1540 6418 1539 3881 1538 3884 1537 3887 1536 6416
6418 6   6417 1540 6419 1541 3879 1539 6417
6419 6   6413 1545 6420 1541 6418 1540 6413
6420 10   6419 1545 6424 1544 6421 1543 3875 1542 3878 1541 6419
6421 6   6420 1544 6422 1553 3873 1543 6420
6422 6   6423 1552 6432 1553 6421 1544 6423
6423 6   6424 1546 6427 1552 6422 1544 6424
6424 6   6420 1545 6425 1546 6423 1544 6420
6425 6   6413 1550 6426 1546 6424 1545 6413
6426 10   6425 1550 6410 1549 6404 1548 6430 1547 6427 1546 6425
6427 6   6426 1547 6428 1552 6423 1546 6426
6428 6   6429 1551 6432 1552 6427 1547 6429
6429 6   6430 1574 6434 1551 6428 1547 6430
6430 6   6426 1548 6431 1574 6429 1547 6426
6431 6   6405 1573 6450 1574 6430 1548 6405
6432 10   6433 1555 6435 1554 3872 1553 6422 1552 6428 1551 6433
6433 6   6434 1575 6437 1555 6432 1551 6434
6434 6   6429 1574 6450 1575 6433 1551 6429
6435 6   6432 1555 6436 1556 3870 1554 6432
6436 6   6437 1560 6438 1556 6435 1555 6437
6437 10   6433 1575 6449 1570 6443 1565 6440 1560 6436 1555 6433
6438 10   6436 1560 6439 1559 3863 1558 3866 1557 3869 1556 6436
6439 6   6438 1560 6440 1561 3861 1559 6438
6440 6   6437 1565 6441 1561 6439 1560 6437
6441 10   6440 1565 6442 1564 3854 1563 3857 1562 3860 1561 6440
6442 6   6441 1565 6443 1566 3852 1564 6441
6443 6   6437 1570 6444 1566 6442 1565 6437
6444 10   6443 1570 6448 1569 6445 1568 3848 1567 3851 1566 6443
6445 6   6444 1569 6446 1578 3846 1568 6444
6446 6   6447 1577 6456 1578 6445 1569 6447
6447 6   6448 1571 6451 1577 6446 1569 6448
6448 6   6444 1570 6449 1571 6447 1569 6444
6449 6   6437 1575 6450 1571 6448 1570 6437
6450 10   6449 1575 6434 1574 6431 1573 6454 1572 6451 1571 6449
6451 6   6450 1572 6452 1577 6447 1571 6450
6452 6   6453 1576 6456 1577 6451 1572 6453
6453 6   6454 1599 6458 1576 6452 1572 6454
6454 6   6450 1573 6455 1599 6453 1572 6450
6455 6   6405 1598 6483 1599 6454 1573 6405
6456 10   6457 1580 6459 1579 3845 1578 6446 1577 6452 1576 6457
6457 6   6458 1600 6461 1580 6456 1576 6458
6458 6   6453 1599 6483 1600 6457 1576 6453
6459 6   6456 1580 6460 1581 3843 1579 6456
6460 6   6461 1585 6462 1581 6459 1580 6461
6461 10   6457 1600 6482 1595 6470 1590 6464 1585 6460 1580 6457
6462 10   6460 1585 6463 1584 3836 1583 3839 1582 3842 1581 6460
6463 6   6462 1585 6464 1586 3834 1584 6462
6464 6   6461 1590 6465 1586 6463 1585 6461
6465 10   6464 1590 6469 1589 6466 1588 3830 1587 3833 1586 6464
6466 6   6465 1589 6467 1638 3828 1588 6465
6467 6   6468 1637 6537 1638 6466 1589 6468
6468 6   6469 1591 6472 1637 6467 1589 6469
6469 6   6465 1590 6470 1591 6468 1589 6465
6470 6   6461 1595 6471 1591 6469 1590 6461
6471 10   6470 1595 6481 1594 6478 1593 6475 1592 6472 1591 6470
6472 6   6471 1592 6473 1637 6468 1591 6471
6473 6   6474 1636 6537 1637 6472 1592 6474
6474 6   6475 1634 6535 1636 6473 1592 6475
6475 6   6471 1593 6476 1634 6474 1592 6471
6476 6   6477 1633 6534 1634 6475 1593 6477
6477 6   6478 1603 6492 1633 6476 1593 6478
6478 6   6471 1594 6479 1603 6477 1593 6471
6479 6   6480 1602 6489 1603 6478 1594 6480
6480 6   6481 1596 6484 1602 6479 1594 6481
6481 6   6471 1595 6482 1596 6480 1594 6471
6482 6   6461 1600 6483 1596 6481 1595 6461
6483 10   6482 1600 6458 1599 6455 1598 6487 1597 6484 1596 6482
6484 6   6483 1597 6485 1602 6480 1596 6483
6485 6   6486 1601 6489 1602 6484 1597 6486
6486 6   6487 1624 6491 1601 6485 1597 6487
6487 6   6483 1598 6488 1624 6486 1597 6483
6488 6   6405 1623 6521 1624 6487 1598 6405
6489 10   6490 1605 6495 1604 6492 1603 6479 1602 6485 1601 6490
6490 6   6491 1625 6497 1605 6489 1601 6491
6491 6   6486 1624 6521 1625 6490 1601 6486
6492 6   6489 1604 6493 1633 6477 1603 6489
6493 6   6494 1632 6534 1633 6492 1604 6494
6494 6   6495 1606 6499 1632 6493 1604 6495
6495 6   6489 1605 6496 1606 6494 1604 6489
6496 6   6497 1610 6498 1606 6495 1605 6497
6497 10   6490 1625 6520 1620 6517 1615 6509 1610 6496 1605 6490
6498 10   6496 1610 6508 1609 6505 1608 6502 1607 6499 1606 6496
6499 6   6498 1607 6500 1632 6494 1606 6498
6500 6   6501 1631 6534 1632 6499 1607 6501
6501 6   6502 1629 6531 1631 6500 1607 6502
6502 6   6498 1608 6503 1629 6501 1607 6498
6503 6   6504 1628 6522 1629 6502 1608 6504
6504 6   6505 1743 6530 1628 6503 1608 6505
6505 6   6498 1609 6506 1743 6504 1608 6498
6506 6   6507 1742 6692 1743 6505 1609 6507
6507 6   6508 1611 6511 1742 6506 1609 6508
6508 6   6498 1610 6509 1611 6507 1609 6498
6509 6   6497 1615 6510 1611 6508 1610 6497
6510 10   6509 1615 6516 1614 6368 1613 6514 1612 6511 1611 6509
6511 6   6510 1612 6512 1742 6507 1611 6510
6512 6   6513 1741 6692 1742 6511 1612 6513
6513 6   6514 1739 6690 1741 6512 1612 6514
6514 6   6510 1613 6515 1739 6513 1612 6510
6515 6   6213 1738 6684 1739 6514 1613 6213
6516 6   6510 1615 6517 1616 6366 1614 6510
6517 6   6497 1620 6518 1616 6516 1615 6497
6518 10   6517 1620 6519 1619 6383 1618 6359 1617 6365 1616 6517
6519 6   6518 1620 6520 1621 6381 1619 6518
6520 6   6497 1625 6521 1621 6519 1620 6497
6521 10   6520 1625 6491 1624 6488 1623 6407 1622 6380 1621 6520
6522 10   6523 1630 6531 1629 6503 1628 6529 1627 6526 1626 6523
6523 6   6524 1650 6533 1630 6522 1626 6524
6524 6   6525 1649 6546 1650 6523 1626 6525
6525 6   6526 1747 6554 1649 6524 1626 6526
6526 6   6522 1627 6527 1747 6525 1626 6522
6527 6   6528 1746 6695 1747 6526 1627 6528
6528 6   6529 1744 6693 1746 6527 1627 6529
6529 6   6522 1628 6530 1744 6528 1627 6522
6530 6   6504 1743 6692 1744 6529 1628 6504
6531 6   6522 1630 6532 1631 6501 1629 6522
6532 6   6533 1635 6534 1631 6531 1630 6533
6533 10   6523 1650 6545 1645 6539 1640 6536 1635 6532 1630 6523
6534 10   6532 1635 6535 1634 6476 1633 6493 1632 6500 1631 6532
6535 6   6534 1635 6536 1636 6474 1634 6534
6536 6   6533 1640 6537 1636 6535 1635 6533
6537 10   6536 1640 6538 1639 3827 1638 6467 1637 6473 1636 6536
6538 6   6537 1640 6539 1641 3825 1639 6537
6539 6   6533 1645 6540 1641 6538 1640 6533
6540 10   6539 1645 6544 1644 6541 1643 3821 1642 3824 1641 6539
6541 6   6540 1644 6542 1653 3819 1643 6540
6542 6   6543 1652 6555 1653 6541 1644 6543
6543 6   6544 1646 6547 1652 6542 1644 6544
6544 6   6540 1645 6545 1646 6543 1644 6540
6545 6   6533 1650 6546 1646 6544 1645 6533
6546 10   6545 1650 6524 1649 6553 1648 6550 1647 6547 1646 6545
6547 6   6546 1647 6548 1652 6543 1646 6546
6548 6   6549 1651 6555 1652 6547 1647 6549
6549 6   6550 1674 6557 1651 6548 1647 6550
6550 6   6546 1648 6551 1674 6549 1647 6546
6551 6   6552 1673 6573 1674 6550 1648 6552
6552 10   6553 1748 6662 1723 6611 1698 6578 1673 6551 1648 6553
6553 6   6546 1649 6554 1748 6552 1648 6546
6554 6   6525 1747 6695 1748 6553 1649 6525
6555 10   6556 1655 6558 1654 3818 1653 6542 1652 6548 1651 6556
6556 6   6557 1675 6560 1655 6555 1651 6557
6557 6   6549 1674 6573 1675 6556 1651 6549
6558 6   6555 1655 6559 1656 3816 1654 6555
6559 6   6560 1660 6561 1656 6558 1655 6560
6560 10   6556 1675 6572 1670 6566 1665 6563 1660 6559 1655 6556
6561 10   6559 1660 6562 1659 3809 1658 3812 1657 3815 1656 6559
6562 6   6561 1660 6563 1661 3807 1659 6561
6563 6   6560 1665 6564 1661 6562 1660 6560
6564 10   6563 1665 6565 1664 3800 1663 3803 1662 3806 1661 6563
6565 6   6564 1665 6566 1666 3798 1664 6564
6566 6   6560 1670 6567 1666 6565 1665 6560
6567 10   6566 1670 6571 1669 6568 1668 3794 1667 3797 1666 6566
6568 6   6567 1669 6569 1678 3792 1668 6567
6569 6   6570 1677 6579 1678 6568 1669 6570
6570 6   6571 1671 6574 1677 6569 1669 6571
6571 6   6567 1670 6572 1671 6570 1669 6567
6572 6   6560 1675 6573 1671 6571 1670 6560
6573 10   6572 1675 6557 1674 6551 1673 6577 1672 6574 1671 6572
6574 6   6573 1672 6575 1677 6570 1671 6573
6575 6   6576 1676 6579 1677 6574 1672 6576
6576 6   6577 1699 6581 1676 6575 1672 6577
6577 6   6573 1673 6578 1699 6576 1672 6573
6578 6   6552 1698 6606 1699 6577 1673 6552
6579 10   6580 1680 6582 1679 3791 1678 6569 1677 6575 1676 6580
6580 6   6581 1700 6584 1680 6579 1676 6581
6581 6   6576 1699 6606 1700 6580 1676 6576
6582 6   6579 1680 6583 1681 3789 1679 6579
6583 6   6584 1685 6585 1681 6582 1680 6584
6584 10   6580 1700 6605 1695 6593 1690 6587 1685 6583 1680 6580
6585 10   6583 1685 6586 1684 3782 1683 3785 1682 3788 1681 6583
6586 6   6585 1685 6587 1686 3780 1684 6585
6587 6   6584 1690 6588 1686 6586 1685 6584
6588 10   6587 1690 6592 1689 6589 1688 3776 1687 3779 1686 6587
6589 6   6588 1689 6590 1938 3774 1688 6588
6590 6   6591 1937 6954 1938 6589 1689 6591
6591 6   6592 1691 6595 1937 6590 1689 6592
6592 6   6588 1690 6593 1691 6591 1689 6588
6593 6   6584 1695 6594 1691 6592 1690 6584
6594 10   6593 1695 6604 1694 6601 1693 6598 1692 6595 1691 6593
6595 6   6594 1692 6596 1937 6591 1691 6594
6596 6   6597 1936 6954 1937 6595 1692 6597
6597 6   6598 1934 6952 1936 6596 1692 6598
6598 6   6594 1693 6599 1934 6597 1692 6594
6599 6   6600 1933 6951 1934 6598 1693 6600
6600 6   6601 1703 6615 1933 6599 1693 6601
6601 6   6594 1694 6602 1703 6600 1693 6594
6602 6   6603 1702 6612 1703 6601 1694 6603
6603 6   6604 1696 6607 1702 6602 1694 6604
6604 6   6594 1695 6605 1696 6603 1694 6594
6605 6   6584 1700 6606 1696 6604 1695 6584
6606 10   6605 1700 6581 1699 6578 1698 6610 1697 6607 1696 6605
6607 6   6606 1697 6608 1702 6603 1696 6606
6608 6   6609 1701 6612 1702 6607 1697 6609
6609 6   6610 1724 6614 1701 6608 1697 6610
6610 6   6606 1698 6611 1724 6609 1697 6606
6611 6   6552 1723 6657 1724 6610 1698 6552
6612 10   6613 1705 6618 1704 6615 1703 6602 1702 6608 1701 6613
6613 6   6614 1725 6620 1705 6612 1701 6614
6614 6   6609 1724 6657 1725 6613 1701 6609
6615 6   6612 1704 6616 1933 6600 1703 6612
6616 6   6617 1932 6951 1933 6615 1704 6617
6617 6   6618 1706 6622 1932 6616 1704 6618
6618 6   6612 1705 6619 1706 6617 1704 6612
6619 6   6620 1710 6621 1706 6618 1705 6620
6620 10   6613 1725 6656 1720 6644 1715 6632 1710 6619 1705 6613
6621 10   6619 1710 6631 1709 6628 1708 6625 1707 6622 1706 6619
6622 6   6621 1707 6623 1932 6617 1706 6621
6623 6   6624 1931 6951 1932 6622 1707 6624
6624 6   6625 1929 6948 1931 6623 1707 6625
6625 6   6621 1708 6626 1929 6624 1707 6621
6626 6   6627 1928 6945 1929 6625 1708 6627
6627 6   6628 1918 6934 1928 6626 1708 6628
6628 6   6621 1709 6629 1918 6627 1708 6621
6629 6   6630 1917 6933 1918 6628 1709 6630
6630 6   6631 1711 6634 1917 6629 1709 6631
6631 6   6621 1710 6632 1711 6630 1709 6621
6632 6   6620 1715 6633 1711 6631 1710 6620
6633 10   6632 1715 6643 1714 6640 1713 6637 1712 6634 1711 6632
6634 6   6633 1712 6635 1917 6630 1711 6633
6635 6   6636 1916 6933 1917 6634 1712 6636
6636 6   6637 1914 6931 1916 6635 1712 6637
6637 6   6633 1713 6638 1914 6636 1712 6633
6638 6   6639 1913 6930 1914 6637 1713 6639
6639 6   6640 1763 6712 1913 6638 1713 6640
6640 6   6633 1714 6641 1763 6639 1713 6633
6641 6   6642 1762 6711 1763 6640 1714 6642
6642 6   6643 1716 6646 1762 6641 1714 6643
6643 6   6633 1715 6644 1716 6642 1714 6633
6644 6   6620 1720 6645 1716 6643 1715 6620
6645 10   6644 1720 6655 1719 6652 1718 6649 1717 6646 1716 6644
6646 6   6645 1717 6647 1762 6642 1716 6645
6647 6   6648 1761 6711 1762 6646 1717 6648
6648 6   6649 1759 6709 1761 6647 1717 6649
6649 6   6645 1718 6650 1759 6648 1717 6645
6650 6   6651 1758 6708 1759 6649 1718 6651
6651 6   6652 1728 6666 1758 6650 1718 6652
6652 6   6645 1719 6653 1728 6651 1718 6645
6653 6   6654 1727 6663 1728 6652 1719 6654
6654 6   6655 1721 6658 1727 6653 1719 6655
6655 6   6645 1720 6656 1721 6654 1719 6645
6656 6   6620 1725 6657 1721 6655 1720 6620
6657 10   6656 1725 6614 1724 6611 1723 6661 1722 6658 1721 6656
6658 6   6657 1722 6659 1727 6654 1721 6657
6659 6   6660 1726 6663 1727 6658 1722 6660
6660 6   6661 1749 6665 1726 6659 1722 6661
6661 6   6657 1723 6662 1749 6660 1722 6657
6662 6   6552 1748 6695 1749 6661 1723 6552
6663 10   6664 1730 6669 1729 6666 1728 6653 1727 6659 1726 6664
6664 6   6665 1750 6671 1730 6663 1726 6665
6665 6   6660 1749 6695 1750 6664 1726 6660
6666 6   6663 1729 6667 1758 6651 1728 6663
6667 6   6668 1757 6708 1758 6666 1729 6668
6668 6   6669 1731 6673 1757 6667 1729 6669
6669 6   6663 1730 6670 1731 6668 1729 6663
6670 6   6671 1735 6672 1731 6669 1730 6671
6671 10   6664 1750 6694 1745 6691 1740 6683 1735 6670 1730 6664
6672 10   6670 1735 6682 1734 6679 1733 6676 1732 6673 1731 6670
6673 6   6672 1732 6674 1757 6668 1731 6672
6674 6   6675 1756 6708 1757 6673 1732 6675
6675 6   6676 1754 6705 1756 6674 1732 6676
6676 6   6672 1733 6677 1754 6675 1732 6672
6677 6   6678 1753 6696 1754 6676 1733 6678
6678 6   6679 1868 6704 1753 6677 1733 6679
6679 6   6672 1734 6680 1868 6678 1733 6672
6680 6   6681 1867 6866 1868 6679 1734 6681
6681 6   6682 1736 6685 1867 6680 1734 6682
6682 6   6672 1735 6683 1736 6681 1734 6672
6683 6   6671 1740 6684 1736 6682 1735 6671
6684 10   6683 1740 6690 1739 6515 1738 6688 1737 6685 1736 6683
6685 6   6684 1737 6686 1867 6681 1736 6684
6686 6   6687 1866 6866 1867 6685 1737 6687
6687 6   6688 1864 6864 1866 6686 1737 6688
6688 6   6684 1738 6689 1864 6687 1737 6684
6689 6   6213 1863 6863 1864 6688 1738 6213
6690 6   6684 1740 6691 1741 6513 1739 6684
6691 6   6671 1745 6692 1741 6690 1740 6671
6692 10   6691 1745 6693 1744 6530 1743 6506 1742 6512 1741 6691
6693 6   6692 1745 6694 1746 6528 1744 6692
6694 6   6671 1750 6695 1746 6693 1745 6671
6695 10   6694 1750 6665 1749 6662 1748 6554 1747 6527 1746 6694
6696 10   6697 1755 6705 1754 6677 1753 6703 1752 6700 1751 6697
6697 6   6698 1775 6707 1755 6696 1751 6698
6698 6   6699 1774 6729 1775 6697 1751 6699
6699 6   6700 1872 6737 1774 6698 1751 6700
6700 6   6696 1752 6701 1872 6699 1751 6696
6701 6   6702 1871 6869 1872 6700 1752 6702
6702 6   6703 1869 6867 1871 6701 1752 6703
6703 6   6696 1753 6704 1869 6702 1752 6696
6704 6   6678 1868 6866 1869 6703 1753 6678
6705 6   6696 1755 6706 1756 6675 1754 6696
6706 6   6707 1760 6708 1756 6705 1755 6707
6707 10   6697 1775 6728 1770 6716 1765 6710 1760 6706 1755 6697
6708 10   6706 1760 6709 1759 6650 1758 6667 1757 6674 1756 6706
6709 6   6708 1760 6710 1761 6648 1759 6708
6710 6   6707 1765 6711 1761 6709 1760 6707
6711 10   6710 1765 6715 1764 6712 1763 6641 1762 6647 1761 6710
6712 6   6711 1764 6713 1913 6639 1763 6711
6713 6   6714 1912 6930 1913 6712 1764 6714
6714 6   6715 1766 6718 1912 6713 1764 6715
6715 6   6711 1765 6716 1766 6714 1764 6711
6716 6   6707 1770 6717 1766 6715 1765 6707
6717 10   6716 1770 6727 1769 6724 1768 6721 1767 6718 1766 6716
6718 6   6717 1767 6719 1912 6714 1766 6717
6719 6   6720 1911 6930 1912 6718 1767 6720
6720 6   6721 1909 6928 1911 6719 1767 6721
6721 6   6717 1768 6722 1909 6720 1767 6717
6722 6   6723 1908 6927 1909 6721 1768 6723
6723 6   6724 1778 6741 1908 6722 1768 6724
6724 6   6717 1769 6725 1778 6723 1768 6717
6725 6   6726 1777 6738 1778 6724 1769 6726
6726 6   6727 1771 6730 1777 6725 1769 6727
6727 6   6717 1770 6728 1771 6726 1769 6717
6728 6   6707 1775 6729 1771 6727 1770 6707
6729 10   6728 1775 6698 1774 6736 1773 6733 1772 6730 1771 6728
6730 6   6729 1772 6731 1777 6726 1771 6729
6731 6   6732 1776 6738 1777 6730 1772 6732
6732 6   6733 1799 6740 1776 6731 1772 6733
6733 6   6729 1773 6734 1799 6732 1772 6729
6734 6   6735 1798 6783 1799 6733 1773 6735
6735 10   6736 1873 6853 1848 6829 1823 6788 1798 6734 1773 6736
6736 6   6729 1774 6737 1873 6735 1773 6729
6737 6   6699 1872 6869 1873 6736 1774 6699
6738 10   6739 1780 6744 1779 6741 1778 6725 1777 6731 1776 6739
6739 6   6740 1800 6746 1780 6738 1776 6740
6740 6   6732 1799 6783 1800 6739 1776 6732
6741 6   6738 1779 6742 1908 6723 1778 6738
6742 6   6743 1907 6927 1908 6741 1779 6743
6743 6   6744 1781 6748 1907 6742 1779 6744
6744 6   6738 1780 6745 1781 6743 1779 6738
6745 6   6746 1785 6747 1781 6744 1780 6746
6746 10   6739 1800 6782 1795 6770 1790 6758 1785 6745 1780 6739
6747 10   6745 1785 6757 1784 6754 1783 6751 1782 6748 1781 6745
6748 6   6747 1782 6749 1907 6743 1781 6747
6749 6   6750 1906 6927 1907 6748 1782 6750
6750 6   6751 1904 6924 1906 6749 1782 6751
6751 6   6747 1783 6752 1904 6750 1782 6747
6752 6   6753 1903 6921 1904 6751 1783 6753
6753 6   6754 1893 6907 1903 6752 1783 6754
6754 6   6747 1784 6755 1893 6753 1783 6747
6755 6   6756 1892 6906 1893 6754 1784 6756
6756 6   6757 1786 6760 1892 6755 1784 6757
6757 6   6747 1785 6758 1786 6756 1784 6747
6758 6   6746 1790 6759 1786 6757 1785 6746
6759 10   6758 1790 6769 1789 6766 1788 6763 1787 6760 1786 6758
6760 6   6759 1787 6761 1892 6756 1786 6759
6761 6   6762 1891 6906 1892 6760 1787 6762
6762 6   6763 1889 6904 1891 6761 1787 6763
6763 6   6759 1788 6764 1889 6762 1787 6759
6764 6   6765 1888 6898 1889 6763 1788 6765
6765 6   6766 2463 6903 1888 6764 1788 6766
6766 6   6759 1789 6767 2463 6765 1788 6759
6767 6   6768 2462 7655 2463 6766 1789 6768
6768 6   6769 1791 6772 2462 6767 1789 6769
6769 6   6759 1790 6770 1791 6768 1789 6759
6770 6   6746 1795 6771 1791 6769 1790 6746
6771 10   6770 1795 6781 1794 6778 1793 6775 1792 6772 1791 6770
6772 6   6771 1792 6773 2462 6768 1791 6771
6773 6   6774 2461 7655 2462 6772 1792 6774
6774 6   6775 2459 7653 2461 6773 1792 6775
6775 6   6771 1793 6776 2459 6774 1792 6771
6776 6   6777 2458 7652 2459 6775 1793 6777
6777 6   6778 1803 6792 2458 6776 1793 6778
6778 6   6771 1794 6779 1803 6777 1793 6771
6779 6   6780 1802 6789 1803 6778 1794 6780
6780 6   6781 1796 6784 1802 6779 1794 6781
6781 6   6771 1795 6782 1796 6780 1794 6771
6782 6   6746 1800 6783 1796 6781 1795 6746
6783 10   6782 1800 6740 1799 6734 1798 6787 1797 6784 1796 6782
6784 6   6783 1797 6785 1802 6780 1796 6783
6785 6   6786 1801 6789 1802 6784 1797 6786
6786 6   6787 1824 6791 1801 6785 1797 6787
6787 6   6783 1798 6788 1824 6786 1797 6783
6788 6   6735 1823 6824 1824 6787 1798 6735
6789 10   6790 1805 6795 1804 6792 1803 6779 1802 6785 1801 6790
6790 6   6791 1825 6797 1805 6789 1801 6791
6791 6   6786 1824 6824 1825 6790 1801 6786
6792 6   6789 1804 6793 2458 6777 1803 6789
6793 6   6794 2457 7652 2458 6792 1804 6794
6794 6   6795 1806 6799 2457 6793 1804 6795
6795 6   6789 1805 6796 1806 6794 1804 6789
6796 6   6797 1810 6798 1806 6795 1805 6797
6797 10   6790 1825 6823 1820 6817 1815 6809 1810 6796 1805 6790
6798 10   6796 1810 6808 1809 6805 1808 6802 1807 6799 1806 6796
6799 6   6798 1807 6800 2457 6794 1806 6798
6800 6   6801 2456 7652 2457 6799 1807 6801
6801 6   6802 2454 7649 2456 6800 1807 6802
6802 6   6798 1808 6803 2454 6801 1807 6798
6803 6   6804 2453 7646 2454 6802 1808 6804
6804 6   6805 2443 7635 2453 6803 1808 6805
6805 6   6798 1809 6806 2443 6804 1808 6798
6806 6   6807 2442 7634 2443 6805 1809 6807
6807 6   6808 1811 6811 2442 6806 1809 6808
6808 6   6798 1810 6809 1811 6807 1809 6798
6809 6   6797 1815 6810 1811 6808 1810 6797
6810 10   6809 1815 6816 1814 5999 1813 6814 1812 6811 1811 6809
6811 6   6810 1812 6812 2442 6807 1811 6810
6812 6   6813 2441 7634 2442 6811 1812 6813
6813 6   6814 2439 7632 2441 6812 1812 6814
6814 6   6810 1813 6815 2439 6813 1812 6810
6815 6   5157 2438 7626 2439 6814 1813 5157
6816 6   6810 1815 6817 1816 5997 1814 6810
6817 6   6797 1820 6818 1816 6816 1815 6797
6818 10   6817 1820 6822 1819 6819 1818 5990 1817 5996 1816 6817
6819 6   6818 1819 6820 1828 5988 1818 6818
6820 6   6821 1827 6830 1828 6819 1819 6821
6821 6   6822 1821 6825 1827 6820 1819 6822
6822 6   6818 1820 6823 1821 6821 1819 6818
6823 6   6797 1825 6824 1821 6822 1820 6797
6824 10   6823 1825 6791 1824 6788 1823 6828 1822 6825 1821 6823
6825 6   6824 1822 6826 1827 6821 1821 6824
6826 6   6827 1826 6830 1827 6825 1822 6827
6827 6   6828 1849 6832 1826 6826 1822 6828
6828 6   6824 1823 6829 1849 6827 1822 6824
6829 6   6735 1848 6848 1849 6828 1823 6735
6830 10   6831 1830 6833 1829 5987 1828 6820 1827 6826 1826 6831
6831 6   6832 1850 6835 1830 6830 1826 6832
6832 6   6827 1849 6848 1850 6831 1826 6827
6833 6   6830 1830 6834 1831 5985 1829 6830
6834 6   6835 1835 6836 1831 6833 1830 6835
6835 10   6831 1850 6847 1845 6841 1840 6838 1835 6834 1830 6831
6836 10   6834 1835 6837 1834 5960 1833 5977 1832 5984 1831 6834
6837 6   6836 1835 6838 1836 5958 1834 6836
6838 6   6835 1840 6839 1836 6837 1835 6835
6839 10   6838 1840 6840 1839 6087 1838 5951 1837 5957 1836 6838
6840 6   6839 1840 6841 1841 6085 1839 6839
6841 6   6835 1845 6842 1841 6840 1840 6835
6842 10   6841 1845 6846 1844 6843 1843 6078 1842 6084 1841 6841
6843 6   6842 1844 6844 1853 6076 1843 6842
6844 6   6845 1852 6854 1853 6843 1844 6845
6845 6   6846 1846 6849 1852 6844 1844 6846
6846 6   6842 1845 6847 1846 6845 1844 6842
6847 6   6835 1850 6848 1846 6846 1845 6835
6848 10   6847 1850 6832 1849 6829 1848 6852 1847 6849 1846 6847
6849 6   6848 1847 6850 1852 6845 1846 6848
6850 6   6851 1851 6854 1852 6849 1847 6851
6851 6   6852 1874 6856 1851 6850 1847 6852
6852 6   6848 1848 6853 1874 6851 1847 6848
6853 6   6735 1873 6869 1874 6852 1848 6735
6854 10   6855 1855 6857 1854 6075 1853 6844 1852 6850 1851 6855
6855 6   6856 1875 6859 1855 6854 1851 6856
6856 6   6851 1874 6869 1875 6855 1851 6851
6857 6   6854 1855 6858 1856 6073 1854 6854
6858 6   6859 1860 6860 1856 6857 1855 6859
6859 10   6855 1875 6868 1870 6865 1865 6862 1860 6858 1855 6855
6860 10   6858 1860 6861 1859 6224 1858 6065 1857 6072 1856 6858
6861 6   6860 1860 6862 1861 6222 1859 6860
6862 6   6859 1865 6863 1861 6861 1860 6859
6863 10   6862 1865 6864 1864 6689 1863 6215 1862 6221 1861 6862
6864 6   6863 1865 6865 1866 6687 1864 6863
6865 6   6859 1870 6866 1866 6864 1865 6859
6866 10   6865 1870 6867 1869 6704 1868 6680 1867 6686 1866 6865
6867 6   6866 1870 6868 1871 6702 1869 6866
6868 6   6859 1875 6869 1871 6867 1870 6859
6869 10   6868 1875 6856 1874 6853 1873 6737 1872 6701 1871 6868
6870 10   6871 1880 6883 1879 6880 1878 6877 1877 6874 1876 6871
6871 6   6872 1900 6885 1880 6870 1876 6872
6872 6   6873 1899 6912 1900 6871 1876 6873
6873 6   6874 1997 6920 1899 6872 1876 6874
6874 6   6870 1877 6875 1997 6873 1876 6870
6875 6   6876 1996 7043 1997 6874 1877 6876
6876 6   6877 1994 7041 1996 6875 1877 6877
6877 6   6870 1878 6878 1994 6876 1877 6870
6878 6   6879 1993 7035 1994 6877 1878 6879
6879 6   6880 2483 7040 1993 6878 1878 6880
6880 6   6870 1879 6881 2483 6879 1878 6870
6881 6   6882 2482 7676 2483 6880 1879 6882
6882 6   6883 1881 6887 2482 6881 1879 6883
6883 6   6870 1880 6884 1881 6882 1879 6870
6884 6   6885 1885 6886 1881 6883 1880 6885
6885 10   6871 1900 6911 1895 6905 1890 6897 1885 6884 1880 6871
6886 10   6884 1885 6896 1884 6893 1883 6890 1882 6887 1881 6884
6887 6   6886 1882 6888 2482 6882 1881 6886
6888 6   6889 2481 7676 2482 6887 1882 6889
6889 6   6890 2479 7673 2481 6888 1882 6890
6890 6   6886 1883 6891 2479 6889 1882 6886
6891 6   6892 2478 7670 2479 6890 1883 6892
6892 6   6893 2468 7659 2478 6891 1883 6893
6893 6   6886 1884 6894 2468 6892 1883 6886
6894 6   6895 2467 7658 2468 6893 1884 6895
6895 6   6896 1886 6899 2467 6894 1884 6896
6896 6   6886 1885 6897 1886 6895 1884 6886
6897 6   6885 1890 6898 1886 6896 1885 6885
6898 10   6897 1890 6904 1889 6764 1888 6902 1887 6899 1886 6897
6899 6   6898 1887 6900 2467 6895 1886 6898
6900 6   6901 2466 7658 2467 6899 1887 6901
6901 6   6902 2464 7656 2466 6900 1887 6902
6902 6   6898 1888 6903 2464 6901 1887 6898
6903 6   6765 2463 7655 2464 6902 1888 6765
6904 6   6898 1890 6905 1891 6762 1889 6898
6905 6   6885 1895 6906 1891 6904 1890 6885
6906 10   6905 1895 6910 1894 6907 1893 6755 1892 6761 1891 6905
6907 6   6906 1894 6908 1903 6753 1893 6906
6908 6   6909 1902 6921 1903 6907 1894 6909
6909 6   6910 1896 6913 1902 6908 1894 6910
6910 6   6906 1895 6911 1896 6909 1894 6906
6911 6   6885 1900 6912 1896 6910 1895 6885
6912 10   6911 1900 6872 1899 6919 1898 6916 1897 6913 1896 6911
6913 6   6912 1897 6914 1902 6909 1896 6912
6914 6   6915 1901 6921 1902 6913 1897 6915
6915 6   6916 1924 6923 1901 6914 1897 6916
6916 6   6912 1898 6917 1924 6915 1897 6912
6917 6   6918 1923 6939 1924 6916 1898 6918
6918 10   6919 1998 7001 1973 6968 1948 6944 1923 6917 1898 6919
6919 6   6912 1899 6920 1998 6918 1898 6912
6920 6   6873 1997 7043 1998 6919 1899 6873
6921 10   6922 1905 6924 1904 6752 1903 6908 1902 6914 1901 6922
6922 6   6923 1925 6926 1905 6921 1901 6923
6923 6   6915 1924 6939 1925 6922 1901 6915
6924 6   6921 1905 6925 1906 6750 1904 6921
6925 6   6926 1910 6927 1906 6924 1905 6926
6926 10   6922 1925 6938 1920 6932 1915 6929 1910 6925 1905 6922
6927 10   6925 1910 6928 1909 6722 1908 6742 1907 6749 1906 6925
6928 6   6927 1910 6929 1911 6720 1909 6927
6929 6   6926 1915 6930 1911 6928 1910 6926
6930 10   6929 1915 6931 1914 6638 1913 6713 1912 6719 1911 6929
6931 6   6930 1915 6932 1916 6636 1914 6930
6932 6   6926 1920 6933 1916 6931 1915 6926
6933 10   6932 1920 6937 1919 6934 1918 6629 1917 6635 1916 6932
6934 6   6933 1919 6935 1928 6627 1918 6933
6935 6   6936 1927 6945 1928 6934 1919 6936
6936 6   6937 1921 6940 1927 6935 1919 6937
6937 6   6933 1920 6938 1921 6936 1919 6933
6938 6   6926 1925 6939 1921 6937 1920 6926
6939 10   6938 1925 6923 1924 6917 1923 6943 1922 6940 1921 6938
6940 6   6939 1922 6941 1927 6936 1921 6939
6941 6   6942 1926 6945 1927 6940 1922 6942
6942 6   6943 1949 6947 1926 6941 1922 6943
6943 6   6939 1923 6944 1949 6942 1922 6939
6944 6   6918 1948 6963 1949 6943 1923 6918
6945 10   6946 1930 6948 1929 6626 1928 6935 1927 6941 1926 6946
6946 6   6947 1950 6950 1930 6945 1926 6947
6947 6   6942 1949 6963 1950 6946 1926 6942
6948 6   6945 1930 6949 1931 6624 1929 6945
6949 6   6950 1935 6951 1931 6948 1930 6950
6950 10   6946 1950 6962 1945 6956 1940 6953 1935 6949 1930 6946
6951 10   6949 1935 6952 1934 6599 1933 6616 1932 6623 1931 6949
6952 6   6951 1935 6953 1936 6597 1934 6951
6953 6   6950 1940 6954 1936 6952 1935 6950
6954 10   6953 1940 6955 1939 3773 1938 6590 1937 6596 1936 6953
6955 6   6954 1940 6956 1941 3771 1939 6954
6956 6   6950 1945 6957 1941 6955 1940 6950
6957 10   6956 1945 6961 1944 6958 1943 3767 1942 3770 1941 6956
6958 6   6957 1944 6959 1953 3765 1943 6957
6959 6   6960 1952 6969 1953 6958 1944 6960
6960 6   6961 1946 6964 1952 6959 1944 6961
6961 6   6957 1945 6962 1946 6960 1944 6957
6962 6   6950 1950 6963 1946 6961 1945 6950
6963 10   6962 1950 6947 1949 6944 1948 6967 1947 6964 1946 6962
6964 6   6963 1947 6965 1952 6960 1946 6963
6965 6   6966 1951 6969 1952 6964 1947 6966
6966 6   6967 1974 6971 1951 6965 1947 6967
6967 6   6963 1948 6968 1974 6966 1947 6963
6968 6   6918 1973 6996 1974 6967 1948 6918
6969 10   6970 1955 6972 1954 3764 1953 6959 1952 6965 1951 6970
6970 6   6971 1975 6974 1955 6969 1951 6971
6971 6   6966 1974 6996 1975 6970 1951 6966
6972 6   6969 1955 6973 1956 3762 1954 6969
6973 6   6974 1960 6975 1956 6972 1955 6974
6974 10   6970 1975 6995 1970 6983 1965 6977 1960 6973 1955 6970
6975 10   6973 1960 6976 1959 3755 1958 3758 1957 3761 1956 6973
6976 6   6975 1960 6977 1961 3753 1959 6975
6977 6   6974 1965 6978 1961 6976 1960 6974
6978 10   6977 1965 6982 1964 6979 1963 3749 1962 3752 1961 6977
6979 6   6978 1964 6980 2013 3747 1963 6978
6980 6   6981 2012 7059 2013 6979 1964 6981
6981 6   6982 1966 6985 2012 6980 1964 6982
6982 6   6978 1965 6983 1966 6981 1964 6978
6983 6   6974 1970 6984 1966 6982 1965 6974
6984 10   6983 1970 6994 1969 6991 1968 6988 1967 6985 1966 6983
6985 6   6984 1967 6986 2012 6981 1966 6984
6986 6   6987 2011 7059 2012 6985 1967 6987
6987 6   6988 2009 7057 2011 6986 1967 6988
6988 6   6984 1968 6989 2009 6987 1967 6984
6989 6   6990 2008 7056 2009 6988 1968 6990
6990 6   6991 1978 7005 2008 6989 1968 6991
6991 6   6984 1969 6992 1978 6990 1968 6984
6992 6   6993 1977 7002 1978 6991 1969 6993
6993 6   6994 1971 6997 1977 6992 1969 6994
6994 6   6984 1970 6995 1971 6993 1969 6984
6995 6   6974 1975 6996 1971 6994 1970 6974
6996 10   6995 1975 6971 1974 6968 1973 7000 1972 6997 1971 6995
6997 6   6996 1972 6998 1977 6993 1971 6996
6998 6   6999 1976 7002 1977 6997 1972 6999
6999 6   7000 1999 7004 1976 6998 1972 7000
7000 6   6996 1973 7001 1999 6999 1972 6996
7001 6   6918 1998 7043 1999 7000 1973 6918
7002 10   7003 1980 7008 1979 7005 1978 6992 1977 6998 1976 7003
7003 6   7004 2000 7010 1980 7002 1976 7004
7004 6   6999 1999 7043 2000 7003 1976 6999
7005 6   7002 1979 7006 2008 6990 1978 7002
7006 6   7007 2007 7056 2008 7005 1979 7007
7007 6   7008 1981 7012 2007 7006 1979 7008
7008 6   7002 1980 7009 1981 7007 1979 7002
7009 6   7010 1985 7011 1981 7008 1980 7010
7010 10   7003 2000 7042 1995 7034 1990 7022 1985 7009 1980 7003
7011 10   7009 1985 7021 1984 7018 1983 7015 1982 7012 1981 7009
7012 6   7011 1982 7013 2007 7007 1981 7011
7013 6   7014 2006 7056 2007 7012 1982 7014
7014 6   7015 2004 7053 2006 7013 1982 7015
7015 6   7011 1983 7016 2004 7014 1982 7011
7016 6   7017 2003 7044 2004 7015 1983 7017
7017 6   7018 2118 7052 2003 7016 1983 7018
7018 6   7011 1984 7019 2118 7017 1983 7011
7019 6   7020 2117 7187 2118 7018 1984 7020
7020 6   7021 1986 7024 2117 7019 1984 7021
7021 6   7011 1985 7022 1986 7020 1984 7011
7022 6   7010 1990 7023 1986 7021 1985 7010
7023 10   7022 1990 7033 1989 7030 1988 7027 1987 7024 1986 7022
7024 6   7023 1987 7025 2117 7020 1986 7023
7025 6   7026 2116 7187 2117 7024 1987 7026
7026 6   7027 2114 7185 2116 7025 1987 7027
7027 6   7023 1988 7028 2114 7026 1987 7023
7028 6   7029 2113 7179 2114 7027 1988 7029
7029 10   7030 2488 7505 2363 7331 2238 7184 2113 7028 1988 7030
7030 6   7023 1989 7031 2488 7029 1988 7023
7031 6   7032 2487 7679 2488 7030 1989 7032
7032 6   7033 1991 7036 2487 7031 1989 7033
7033 6   7023 1990 7034 1991 7032 1989 7023
7034 6   7010 1995 7035 1991 7033 1990 7010
7035 10   7034 1995 7041 1994 6878 1993 7039 1992 7036 1991 7034
7036 6   7035 1992 7037 2487 7032 1991 7035
7037 6   7038 2486 7679 2487 7036 1992 7038
7038 6   7039 2484 7677 2486 7037 1992 7039
7039 6   7035 1993 7040 2484 7038 1992 7035
7040 6   6879 2483 7676 2484 7039 1993 6879
7041 6   7035 1995 7042 1996 6876 1994 7035
7042 6   7010 2000 7043 1996 7041 1995 7010
7043 10   7042 2000 7004 1999 7001 1998 6920 1997 6875 1996 7042
7044 10   7045 2005 7053 2004 7016 2003 7051 2002 7048 2001 7045
7045 6   7046 2025 7055 2005 7044 2001 7046
7046 6   7047 2024 7068 2025 7045 2001 7047
7047 6   7048 2122 7076 2024 7046 2001 7048
7048 6   7044 2002 7049 2122 7047 2001 7044
7049 6   7050 2121 7190 2122 7048 2002 7050
7050 6   7051 2119 7188 2121 7049 2002 7051
7051 6   7044 2003 7052 2119 7050 2002 7044
7052 6   7017 2118 7187 2119 7051 2003 7017
7053 6   7044 2005 7054 2006 7014 2004 7044
7054 6   7055 2010 7056 2006 7053 2005 7055
7055 10   7045 2025 7067 2020 7061 2015 7058 2010 7054 2005 7045
7056 10   7054 2010 7057 2009 6989 2008 7006 2007 7013 2006 7054
7057 6   7056 2010 7058 2011 6987 2009 7056
7058 6   7055 2015 7059 2011 7057 2010 7055
7059 10   7058 2015 7060 2014 3746 2013 6980 2012 6986 2011 7058
7060 6   7059 2015 7061 2016 3744 2014 7059
7061 6   7055 2020 7062 2016 7060 2015 7055
7062 10   7061 2020 7066 2019 7063 2018 3740 2017 3743 2016 7061
7063 6   7062 2019 7064 2028 3738 2018 7062
7064 6   7065 2027 7077 2028 7063 2019 7065
7065 6   7066 2021 7069 2027 7064 2019 7066
7066 6   7062 2020 7067 2021 7065 2019 7062
7067 6   7055 2025 7068 2021 7066 2020 7055
7068 10   7067 2025 7046 2024 7075 2023 7072 2022 7069 2021 7067
7069 6   7068 2022 7070 2027 7065 2021 7068
7070 6   7071 2026 7077 2027 7069 2022 7071
7071 6   7072 2049 7079 2026 7070 2022 7072
7072 6   7068 2023 7073 2049 7071 2022 7068
7073 6   7074 2048 7095 2049 7072 2023 7074
7074 10   7075 2123 7157 2098 7124 2073 7100 2048 7073 2023 7075
7075 6   7068 2024 7076 2123 7074 2023 7068
7076 6   7047 2122 7190 2123 7075 2024 7047
7077 10   7078 2030 7080 2029 3737 2028 7064 2027 7070 2026 7078
7078 6   7079 2050 7082 2030 7077 2026 7079
7079 6   7071 2049 7095 2050 7078 2026 7071
7080 6   7077 2030 7081 2031 3735 2029 7077
7081 6   7082 2035 7083 2031 7080 2030 7082
7082 10   7078 2050 7094 2045 7088 2040 7085 2035 7081 2030 7078
7083 10   7081 2035 7084 2034 3728 2033 3731 2032 3734 2031 7081
7084 6   7083 2035 7085 2036 3726 2034 7083
7085 6   7082 2040 7086 2036 7084 2035 7082
7086 10   7085 2040 7087 2039 3719 2038 3722 2037 3725 2036 7085
7087 6   7086 2040 7088 2041 3717 2039 7086
7088 6   7082 2045 7089 2041 7087 2040 7082
7089 10   7088 2045 7093 2044 7090 2043 3713 2042 3716 2041 7088
7090 6   7089 2044 7091 2053 3711 2043 7089
7091 6   7092 2052 7101 2053 7090 2044 7092
7092 6   7093 2046 7096 2052 7091 2044 7093
7093 6   7089 2045 7094 2046 7092 2044 7089
7094 6   7082 2050 7095 2046 7093 2045 7082
7095 10   7094 2050 7079 2049 7073 2048 7099 2047 7096 2046 7094
7096 6   7095 2047 7097 2052 7092 2046 7095
7097 6   7098 2051 7101 2052 7096 2047 7098
7098 6   7099 2074 7103 2051 7097 2047 7099
7099 6   7095 2048 7100 2074 7098 2047 7095
7100 6   7074 2073 7119 2074 7099 2048 7074
7101 10   7102 2055 7104 2054 3710 2053 7091 2052 7097 2051 7102
7102 6   7103 2075 7106 2055 7101 2051 7103
7103 6   7098 2074 7119 2075 7102 2051 7098
7104 6   7101 2055 7105 2056 3708 2054 7101
7105 6   7106 2060 7107 2056 7104 2055 7106
7106 10   7102 2075 7118 2070 7112 2065 7109 2060 7105 2055 7102
7107 10   7105 2060 7108 2059 3701 2058 3704 2057 3707 2056 7105
7108 6   7107 2060 7109 2061 3699 2059 7107
7109 6   7106 2065 7110 2061 7108 2060 7106
7110 10   7109 2065 7111 2064 3692 2063 3695 2062 3698 2061 7109
7111 6   7110 2065 7112 2066 3690 2064 7110
7112 6   7106 2070 7113 2066 7111 2065 7106
7113 10   7112 2070 7117 2069 7114 2068 3686 2067 3689 2066 7112
7114 6   7113 2069 7115 2078 3684 2068 7113
7115 6   7116 2077 7125 2078 7114 2069 7116
7116 6   7117 2071 7120 2077 7115 2069 7117
7117 6   7113 2070 7118 2071 7116 2069 7113
7118 6   7106 2075 7119 2071 7117 2070 7106
7119 10   7118 2075 7103 2074 7100 2073 7123 2072 7120 2071 7118
7120 6   7119 2072 7121 2077 7116 2071 7119
7121 6   7122 2076 7125 2077 7120 2072 7122
7122 6   7123 2099 7127 2076 7121 2072 7123
7123 6   7119 2073 7124 2099 7122 2072 7119
7124 6   7074 2098 7152 2099 7123 2073 7074
7125 10   7126 2080 7128 2079 3683 2078 7115 2077 7121 2076 7126
7126 6   7127 2100 7130 2080 7125 2076 7127
7127 6   7122 2099 7152 2100 7126 2076 7122
7128 6   7125 2080 7129 2081 3681 2079 7125
7129 6   7130 2085 7131 2081 7128 2080 7130
7130 10   7126 2100 7151 2095 7139 2090 7133 2085 7129 2080 7126
7131 10   7129 2085 7132 2084 3674 2083 3677 2082 3680 2081 7129
7132 6   7131 2085 7133 2086 3672 2084 7131
7133 6   7130 2090 7134 2086 7132 2085 7130
7134 10   7133 2090 7138 2089 7135 2088 3668 2087 3671 2086 7133
7135 6   7134 2089 7136 2138 3666 2088 7134
7136 6   7137 2137 7206 2138 7135 2089 7137
7137 6   7138 2091 7141 2137 7136 2089 7138
7138 6   7134 2090 7139 2091 7137 2089 7134
7139 6   7130 2095 7140 2091 7138 2090 7130
7140 10   7139 2095 7150 2094 7147 2093 7144 2092 7141 2091 7139
7141 6   7140 2092 7142 2137 7137 2091 7140
7142 6   7143 2136 7206 2137 7141 2092 7143
7143 6   7144 2134 7204 2136 7142 2092 7144
7144 6   7140 2093 7145 2134 7143 2092 7140
7145 6   7146 2133 7203 2134 7144 2093 7146
7146 6   7147 2103 7161 2133 7145 2093 7147
7147 6   7140 2094 7148 2103 7146 2093 7140
7148 6   7149 2102 7158 2103 7147 2094 7149
7149 6   7150 2096 7153 2102 7148 2094 7150
7150 6   7140 2095 7151 2096 7149 2094 7140
7151 6   7130 2100 7152 2096 7150 2095 7130
7152 10   7151 2100 7127 2099 7124 2098 7156 2097 7153 2096 7151
7153 6   7152 2097 7154 2102 7149 2096 7152
7154 6   7155 2101 7158 2102 7153 2097 7155
7155 6   7156 2124 7160 2101 7154 2097 7156
7156 6   7152 2098 7157 2124 7155 2097 7152
7157 6   7074 2123 7190 2124 7156 2098 7074
7158 10   7159 2105 7164 2104 7161 2103 7148 2102 7154 2101 7159
7159 6   7160 2125 7166 2105 7158 2101 7160
7160 6   7155 2124 7190 2125 7159 2101 7155
7161 6   7158 2104 7162 2133 7146 2103 7158
7162 6   7163 2132 7203 2133 7161 2104 7163
7163 6   7164 2106 7168 2132 7162 2104 7164
7164 6   7158 2105 7165 2106 7163 2104 7158
7165 6   7166 2110 7167 2106 7164 2105 7166
7166 10   7159 2125 7189 2120 7186 2115 7178 2110 7165 2105 7159
7167 10   7165 2110 7177 2109 7174 2108 7171 2107 7168 2106 7165
7168 6   7167 2107 7169 2132 7163 2106 7167
7169 6   7170 2131 7203 2132 7168 2107 7170
7170 6   7171 2129 7200 2131 7169 2107 7171
7171 6   7167 2108 7172 2129 7170 2107 7167
7172 6   7173 2128 7191 2129 7171 2108 7173
7173 6   7174 2243 7199 2128 7172 2108 7174
7174 6   7167 2109 7175 2243 7173 2108 7167
7175 6   7176 2242 7334 2243 7174 2109 7176
7176 6   7177 2111 7180 2242 7175 2109 7177
7177 6   7167 2110 7178 2111 7176 2109 7167
7178 6   7166 2115 7179 2111 7177 2110 7166
7179 10   7178 2115 7185 2114 7028 2113 7183 2112 7180 2111 7178
7180 6   7179 2112 7181 2242 7176 2111 7179
7181 6   7182 2241 7334 2242 7180 2112 7182
7182 6   7183 2239 7332 2241 7181 2112 7183
7183 6   7179 2113 7184 2239 7182 2112 7179
7184 6   7029 2238 7326 2239 7183 2113 7029
7185 6   7179 2115 7186 2116 7026 2114 7179
7186 6   7166 2120 7187 2116 7185 2115 7166
7187 10   7186 2120 7188 2119 7052 2118 7019 2117 7025 2116 7186
7188 6   7187 2120 7189 2121 7050 2119 7187
7189 6   7166 2125 7190 2121 7188 2120 7166
7190 10   7189 2125 7160 2124 7157 2123 7076 2122 7049 2121 7189
7191 10   7192 2130 7200 2129 7172 2128 7198 2127 7195 2126 7192
7192 6   7193 2150 7202 2130 7191 2126 7193
7193 6   7194 2149 7215 2150 7192 2126 7194
7194 6   7195 2247 7223 2149 7193 2126 7195
7195 6   7191 2127 7196 2247 7194 2126 7191
7196 6   7197 2246 7337 2247 7195 2127 7197
7197 6   7198 2244 7335 2246 7196 2127 7198
7198 6   7191 2128 7199 2244 7197 2127 7191
7199 6   7173 2243 7334 2244 7198 2128 7173
7200 6   7191 2130 7201 2131 7170 2129 7191
7201 6   7202 2135 7203 2131 7200 2130 7202
7202 10   7192 2150 7214 2145 7208 2140 7205 2135 7201 2130 7192
7203 10   7201 2135 7204 2134 7145 2133 7162 2132 7169 2131 7201
7204 6   7203 2135 7205 2136 7143 2134 7203
7205 6   7202 2140 7206 2136 7204 2135 7202
7206 10   7205 2140 7207 2139 3665 2138 7136 2137 7142 2136 7205
7207 6   7206 2140 7208 2141 3663 2139 7206
7208 6   7202 2145 7209 2141 7207 2140 7202
7209 10   7208 2145 7213 2144 7210 2143 3659 2142 3662 2141 7208
7210 6   7209 2144 7211 2153 3657 2143 7209
7211 6   7212 2152 7224 2153 7210 2144 7212
7212 6   7213 2146 7216 2152 7211 2144 7213
7213 6   7209 2145 7214 2146 7212 2144 7209
7214 6   7202 2150 7215 2146 7213 2145 7202
7215 10   7214 2150 7193 2149 7222 2148 7219 2147 7216 2146 7214
7216 6   7215 2147 7217 2152 7212 2146 7215
7217 6   7218 2151 7224 2152 7216 2147 7218
7218 6   7219 2174 7226 2151 7217 2147 7219
7219 6   7215 2148 7220 2174 7218 2147 7215
7220 6   7221 2173 7242 2174 7219 2148 7221
7221 10   7222 2248 7304 2223 7271 2198 7247 2173 7220 2148 7222
7222 6   7215 2149 7223 2248 7221 2148 7215
7223 6   7194 2247 7337 2248 7222 2149 7194
7224 10   7225 2155 7227 2154 3656 2153 7211 2152 7217 2151 7225
7225 6   7226 2175 7229 2155 7224 2151 7226
7226 6   7218 2174 7242 2175 7225 2151 7218
7227 6   7224 2155 7228 2156 3654 2154 7224
7228 6   7229 2160 7230 2156 7227 2155 7229
7229 10   7225 2175 7241 2170 7235 2165 7232 2160 7228 2155 7225
7230 10   7228 2160 7231 2159 3647 2158 3650 2157 3653 2156 7228
7231 6   7230 2160 7232 2161 3645 2159 7230
7232 6   7229 2165 7233 2161 7231 2160 7229
7233 10   7232 2165 7234 2164 3638 2163 3641 2162 3644 2161 7232
7234 6   7233 2165 7235 2166 3636 2164 7233
7235 6   7229 2170 7236 2166 7234 2165 7229
7236 10   7235 2170 7240 2169 7237 2168 3632 2167 3635 2166 7235
7237 6   7236 2169 7238 2178 3630 2168 7236
7238 6   7239 2177 7248 2178 7237 2169 7239
7239 6   7240 2171 7243 2177 7238 2169 7240
7240 6   7236 2170 7241 2171 7239 2169 7236
7241 6   7229 2175 7242 2171 7240 2170 7229
7242 10   7241 2175 7226 2174 7220 2173 7246 2172 7243 2171 7241
7243 6   7242 2172 7244 2177 7239 2171 7242
7244 6   7245 2176 7248 2177 7243 2172 7245
7245 6   7246 2199 7250 2176 7244 2172 7246
7246 6   7242 2173 7247 2199 7245 2172 7242
7247 6   7221 2198 7266 2199 7246 2173 7221
7248 10   7249 2180 7251 2179 3629 2178 7238 2177 7244 2176 7249
7249 6   7250 2200 7253 2180 7248 2176 7250
7250 6   7245 2199 7266 2200 7249 2176 7245
7251 6   7248 2180 7252 2181 3627 2179 7248
7252 6   7253 2185 7254 2181 7251 2180 7253
7253 10   7249 2200 7265 2195 7259 2190 7256 2185 7252 2180 7249
7254 10   7252 2185 7255 2184 3620 2183 3623 2182 3626 2181 7252
7255 6   7254 2185 7256 2186 3618 2184 7254
7256 6   7253 2190 7257 2186 7255 2185 7253
7257 10   7256 2190 7258 2189 4340 2188 3614 2187 3617 2186 7256
7258 6   7257 2190 7259 2191 4338 2189 7257
7259 6   7253 2195 7260 2191 7258 2190 7253
7260 10   7259 2195 7264 2194 7261 2193 4334 2192 4337 2191 7259
7261 6   7260 2194 7262 2203 4332 2193 7260
7262 6   7263 2202 7272 2203 7261 2194 7263
7263 6   7264 2196 7267 2202 7262 2194 7264
7264 6   7260 2195 7265 2196 7263 2194 7260
7265 6   7253 2200 7266 2196 7264 2195 7253
7266 10   7265 2200 7250 2199 7247 2198 7270 2197 7267 2196 7265
7267 6   7266 2197 7268 2202 7263 2196 7266
7268 6   7269 2201 7272 2202 7267 2197 7269
7269 6   7270 2224 7274 2201 7268 2197 7270
7270 6   7266 2198 7271 2224 7269 2197 7266
7271 6   7221 2223 7299 2224 7270 2198 7221
7272 10   7273 2205 7275 2204 4331 2203 7262 2202 7268 2201 7273
7273 6   7274 2225 7277 2205 7272 2201 7274
7274 6   7269 2224 7299 2225 7273 2201 7269
7275 6   7272 2205 7276 2206 4329 2204 7272
7276 6   7277 2210 7278 2206 7275 2205 7277
7277 10   7273 2225 7298 2220 7286 2215 7280 2210 7276 2205 7273
7278 10   7276 2210 7279 2209 4322 2208 4325 2207 4328 2206 7276
7279 6   7278 2210 7280 2211 4320 2209 7278
7280 6   7277 2215 7281 2211 7279 2210 7277
7281 10   7280 2215 7285 2214 7282 2213 4316 2212 4319 2211 7280
7282 6   7281 2214 7283 2263 4314 2213 7281
7283 6   7284 2262 7353 2263 7282 2214 7284
7284 6   7285 2216 7288 2262 7283 2214 7285
7285 6   7281 2215 7286 2216 7284 2214 7281
7286 6   7277 2220 7287 2216 7285 2215 7277
7287 10   7286 2220 7297 2219 7294 2218 7291 2217 7288 2216 7286
7288 6   7287 2217 7289 2262 7284 2216 7287
7289 6   7290 2261 7353 2262 7288 2217 7290
7290 6   7291 2259 7351 2261 7289 2217 7291
7291 6   7287 2218 7292 2259 7290 2217 7287
7292 6   7293 2258 7350 2259 7291 2218 7293
7293 6   7294 2228 7308 2258 7292 2218 7294
7294 6   7287 2219 7295 2228 7293 2218 7287
7295 6   7296 2227 7305 2228 7294 2219 7296
7296 6   7297 2221 7300 2227 7295 2219 7297
7297 6   7287 2220 7298 2221 7296 2219 7287
7298 6   7277 2225 7299 2221 7297 2220 7277
7299 10   7298 2225 7274 2224 7271 2223 7303 2222 7300 2221 7298
7300 6   7299 2222 7301 2227 7296 2221 7299
7301 6   7302 2226 7305 2227 7300 2222 7302
7302 6   7303 2249 7307 2226 7301 2222 7303
7303 6   7299 2223 7304 2249 7302 2222 7299
7304 6   7221 2248 7337 2249 7303 2223 7221
7305 10   7306 2230 7311 2229 7308 2228 7295 2227 7301 2226 7306
7306 6   7307 2250 7313 2230 7305 2226 7307
7307 6   7302 2249 7337 2250 7306 2226 7302
7308 6   7305 2229 7309 2258 7293 2228 7305
7309 6   7310 2257 7350 2258 7308 2229 7310
7310 6   7311 2231 7315 2257 7309 2229 7311
7311 6   7305 2230 7312 2231 7310 2229 7305
7312 6   7313 2235 7314 2231 7311 2230 7313
7313 10   7306 2250 7336 2245 7333 2240 7325 2235 7312 2230 7306
7314 10   7312 2235 7324 2234 7321 2233 7318 2232 7315 2231 7312
7315 6   7314 2232 7316 2257 7310 2231 7314
7316 6   7317 2256 7350 2257 7315 2232 7317
7317 6   7318 2254 7347 2256 7316 2232 7318
7318 6   7314 2233 7319 2254 7317 2232 7314
7319 6   7320 2253 7338 2254 7318 2233 7320
7320 6   7321 2368 7346 2253 7319 2233 7321
7321 6   7314 2234 7322 2368 7320 2233 7314
7322 6   7323 2367 7508 2368 7321 2234 7323
7323 6   7324 2236 7327 2367 7322 2234 7324
7324 6   7314 2235 7325 2236 7323 2234 7314
7325 6   7313 2240 7326 2236 7324 2235 7313
7326 10   7325 2240 7332 2239 7184 2238 7330 2237 7327 2236 7325
7327 6   7326 2237 7328 2367 7323 2236 7326
7328 6   7329 2366 7508 2367 7327 2237 7329
7329 6   7330 2364 7506 2366 7328 2237 7330
7330 6   7326 2238 7331 2364 7329 2237 7326
7331 6   7029 2363 7500 2364 7330 2238 7029
7332 6   7326 2240 7333 2241 7182 2239 7326
7333 6   7313 2245 7334 2241 7332 2240 7313
7334 10   7333 2245 7335 2244 7199 2243 7175 2242 7181 2241 7333
7335 6   7334 2245 7336 2246 7197 2244 7334
7336 6   7313 2250 7337 2246 7335 2245 7313
7337 10   7336 2250 7307 2249 7304 2248 7223 2247 7196 2246 7336
7338 10   7339 2255 7347 2254 7319 2253 7345 2252 7342 2251 7339
7339 6   7340 2275 7349 2255 7338 2251 7340
7340 6   7341 2274 7362 2275 7339 2251 7341
7341 6   7342 2372 7370 2274 7340 2251 7342
7342 6   7338 2252 7343 2372 7341 2251 7338
7343 6   7344 2371 7511 2372 7342 2252 7344
7344 6   7345 2369 7509 2371 7343 2252 7345
7345 6   7338 2253 7346 2369 7344 2252 7338
7346 6   7320 2368 7508 2369 7345 2253 7320
7347 6   7338 2255 7348 2256 7317 2254 7338
7348 6   7349 2260 7350 2256 7347 2255 7349
7349 10   7339 2275 7361 2270 7355 2265 7352 2260 7348 2255 7339
7350 10   7348 2260 7351 2259 7292 2258 7309 2257 7316 2256 7348
7351 6   7350 2260 7352 2261 7290 2259 7350
7352 6   7349 2265 7353 2261 7351 2260 7349
7353 10   7352 2265 7354 2264 4313 2263 7283 2262 7289 2261 7352
7354 6   7353 2265 7355 2266 4311 2264 7353
7355 6   7349 2270 7356 2266 7354 2265 7349
7356 10   7355 2270 7360 2269 7357 2268 4307 2267 4310 2266 7355
7357 6   7356 2269 7358 2278 4305 2268 7356
7358 6   7359 2277 7371 2278 7357 2269 7359
7359 6   7360 2271 7363 2277 7358 2269 7360
7360 6   7356 2270 7361 2271 7359 2269 7356
7361 6   7349 2275 7362 2271 7360 2270 7349
7362 10   7361 2275 7340 2274 7369 2273 7366 2272 7363 2271 7361
7363 6   7362 2272 7364 2277 7359 2271 7362
7364 6   7365 2276 7371 2277 7363 2272 7365
7365 6   7366 2299 7373 2276 7364 2272 7366
7366 6   7362 2273 7367 2299 7365 2272 7362
7367 6   7368 2298 7389 2299 7366 2273 7368
7368 10   7369 2373 7478 2348 7427 2323 7394 2298 7367 2273 7369
7369 6   7362 2274 7370 2373 7368 2273 7362
7370 6   7341 2372 7511 2373 7369 2274 7341
7371 10   7372 2280 7374 2279 4304 2278 7358 2277 7364 2276 7372
7372 6   7373 2300 7376 2280 7371 2276 7373
7373 6   7365 2299 7389 2300 7372 2276 7365
7374 6   7371 2280 7375 2281 4302 2279 7371
7375 6   7376 2285 7377 2281 7374 2280 7376
7376 10   7372 2300 7388 2295 7382 2290 7379 2285 7375 2280 7372
7377 10   7375 2285 7378 2284 4295 2283 4298 2282 4301 2281 7375
7378 6   7377 2285 7379 2286 4293 2284 7377
7379 6   7376 2290 7380 2286 7378 2285 7376
7380 10   7379 2290 7381 2289 4286 2288 4289 2287 4292 2286 7379
7381 6   7380 2290 7382 2291 4284 2289 7380
7382 6   7376 2295 7383 2291 7381 2290 7376
7383 10   7382 2295 7387 2294 7384 2293 4280 2292 4283 2291 7382
7384 6   7383 2294 7385 2303 4278 2293 7383
7385 6   7386 2302 7395 2303 7384 2294 7386
7386 6   7387 2296 7390 2302 7385 2294 7387
7387 6   7383 2295 7388 2296 7386 2294 7383
7388 6   7376 2300 7389 2296 7387 2295 7376
7389 10   7388 2300 7373 2299 7367 2298 7393 2297 7390 2296 7388
7390 6   7389 2297 7391 2302 7386 2296 7389
7391 6   7392 2301 7395 2302 7390 2297 7392
7392 6   7393 2324 7397 2301 7391 2297 7393
7393 6   7389 2298 7394 2324 7392 2297 7389
7394 6   7368 2323 7422 2324 7393 2298 7368
7395 10   7396 2305 7398 2304 4277 2303 7385 2302 7391 2301 7396
7396 6   7397 2325 7400 2305 7395 2301 7397
7397 6   7392 2324 7422 2325 7396 2301 7392
7398 6   7395 2305 7399 2306 4275 2304 7395
7399 6   7400 2310 7401 2306 7398 2305 7400
7400 10   7396 2325 7421 2320 7409 2315 7403 2310 7399 2305 7396
7401 10   7399 2310 7402 2309 4268 2308 4271 2307 4274 2306 7399
7402 6   7401 2310 7403 2311 4266 2309 7401
7403 6   7400 2315 7404 2311 7402 2310 7400
7404 10   7403 2315 7408 2314 7405 2313 4262 2312 4265 2311 7403
7405 6   7404 2314 7406 2563 4260 2313 7404
7406 6   7407 2562 7770 2563 7405 2314 7407
7407 6   7408 2316 7411 2562 7406 2314 7408
7408 6   7404 2315 7409 2316 7407 2314 7404
7409 6   7400 2320 7410 2316 7408 2315 7400
7410 10   7409 2320 7420 2319 7417 2318 7414 2317 7411 2316 7409
7411 6   7410 2317 7412 2562 7407 2316 7410
7412 6   7413 2561 7770 2562 7411 2317 7413
7413 6   7414 2559 7768 2561 7412 2317 7414
7414 6   7410 2318 7415 2559 7413 2317 7410
7415 6   7416 2558 7767 2559 7414 2318 7416
7416 6   7417 2328 7431 2558 7415 2318 7417
7417 6   7410 2319 7418 2328 7416 2318 7410
7418 6   7419 2327 7428 2328 7417 2319 7419
7419 6   7420 2321 7423 2327 7418 2319 7420
7420 6   7410 2320 7421 2321 7419 2319 7410
7421 6   7400 2325 7422 2321 7420 2320 7400
7422 10   7421 2325 7397 2324 7394 2323 7426 2322 7423 2321 7421
7423 6   7422 2322 7424 2327 7419 2321 7422
7424 6   7425 2326 7428 2327 7423 2322 7425
7425 6   7426 2349 7430 2326 7424 2322 7426
7426 6   7422 2323 7427 2349 7425 2322 7422
7427 6   7368 2348 7473 2349 7426 2323 7368
7428 10   7429 2330 7434 2329 7431 2328 7418 2327 7424 2326 7429
7429 6   7430 2350 7436 2330 7428 2326 7430
7430 6   7425 2349 7473 2350 7429 2326 7425
7431 6   7428 2329 7432 2558 7416 2328 7428
7432 6   7433 2557 7767 2558 7431 2329 7433
7433 6   7434 2331 7438 2557 7432 2329 7434
7434 6   7428 2330 7435 2331 7433 2329 7428
7435 6   7436 2335 7437 2331 7434 2330 7436
7436 10   7429 2350 7472 2345 7460 2340 7448 2335 7435 2330 7429
7437 10   7435 2335 7447 2334 7444 2333 7441 2332 7438 2331 7435
7438 6   7437 2332 7439 2557 7433 2331 7437
7439 6   7440 2556 7767 2557 7438 2332 7440
7440 6   7441 2554 7764 2556 7439 2332 7441
7441 6   7437 2333 7442 2554 7440 2332 7437
7442 6   7443 2553 7761 2554 7441 2333 7443
7443 6   7444 2543 7750 2553 7442 2333 7444
7444 6   7437 2334 7445 2543 7443 2333 7437
7445 6   7446 2542 7749 2543 7444 2334 7446
7446 6   7447 2336 7450 2542 7445 2334 7447
7447 6   7437 2335 7448 2336 7446 2334 7437
7448 6   7436 2340 7449 2336 7447 2335 7436
7449 10   7448 2340 7459 2339 7456 2338 7453 2337 7450 2336 7448
7450 6   7449 2337 7451 2542 7446 2336 7449
7451 6   7452 2541 7749 2542 7450 2337 7452
7452 6   7453 2539 7747 2541 7451 2337 7453
7453 6   7449 2338 7454 2539 7452 2337 7449
7454 6   7455 2538 7746 2539 7453 2338 7455
7455 6   7456 2388 7528 2538 7454 2338 7456
7456 6   7449 2339 7457 2388 7455 2338 7449
7457 6   7458 2387 7527 2388 7456 2339 7458
7458 6   7459 2341 7462 2387 7457 2339 7459
7459 6   7449 2340 7460 2341 7458 2339 7449
7460 6   7436 2345 7461 2341 7459 2340 7436
7461 10   7460 2345 7471 2344 7468 2343 7465 2342 7462 2341 7460
7462 6   7461 2342 7463 2387 7458 2341 7461
7463 6   7464 2386 7527 2387 7462 2342 7464
7464 6   7465 2384 7525 2386 7463 2342 7465
7465 6   7461 2343 7466 2384 7464 2342 7461
7466 6   7467 2383 7524 2384 7465 2343 7467
7467 6   7468 2353 7482 2383 7466 2343 7468
7468 6   7461 2344 7469 2353 7467 2343 7461
7469 6   7470 2352 7479 2353 7468 2344 7470
7470 6   7471 2346 7474 2352 7469 2344 7471
7471 6   7461 2345 7472 2346 7470 2344 7461
7472 6   7436 2350 7473 2346 7471 2345 7436
7473 10   7472 2350 7430 2349 7427 2348 7477 2347 7474 2346 7472
7474 6   7473 2347 7475 2352 7470 2346 7473
7475 6   7476 2351 7479 2352 7474 2347 7476
7476 6   7477 2374 7481 2351 7475 2347 7477
7477 6   7473 2348 7478 2374 7476 2347 7473
7478 6   7368 2373 7511 2374 7477 2348 7368
7479 10   7480 2355 7485 2354 7482 2353 7469 2352 7475 2351 7480
7480 6   7481 2375 7487 2355 7479 2351 7481
7481 6   7476 2374 7511 2375 7480 2351 7476
7482 6   7479 2354 7483 2383 7467 2353 7479
7483 6   7484 2382 7524 2383 7482 2354 7484
7484 6   7485 2356 7489 2382 7483 2354 7485
7485 6   7479 2355 7486 2356 7484 2354 7479
7486 6   7487 2360 7488 2356 7485 2355 7487
7487 10   7480 2375 7510 2370 7507 2365 7499 2360 7486 2355 7480
7488 10   7486 2360 7498 2359 7495 2358 7492 2357 7489 2356 7486
7489 6   7488 2357 7490 2382 7484 2356 7488
7490 6   7491 2381 7524 2382 7489 2357 7491
7491 6   7492 2379 7521 2381 7490 2357 7492
7492 6   7488 2358 7493 2379 7491 2357 7488
7493 6   7494 2378 7512 2379 7492 2358 7494
7494 6   7495 2493 7520 2378 7493 2358 7495
7495 6   7488 2359 7496 2493 7494 2358 7488
7496 6   7497 2492 7682 2493 7495 2359 7497
7497 6   7498 2361 7501 2492 7496 2359 7498
7498 6   7488 2360 7499 2361 7497 2359 7488
7499 6   7487 2365 7500 2361 7498 2360 7487
7500 10   7499 2365 7506 2364 7331 2363 7504 2362 7501 2361 7499
7501 6   7500 2362 7502 2492 7497 2361 7500
7502 6   7503 2491 7682 2492 7501 2362 7503
7503 6   7504 2489 7680 2491 7502 2362 7504
7504 6   7500 2363 7505 2489 7503 2362 7500
7505 6   7029 2488 7679 2489 7504 2363 7029
7506 6   7500 2365 7507 2366 7329 2364 7500
7507 6   7487 2370 7508 2366 7506 2365 7487
7508 10   7507 2370 7509 2369 7346 2368 7322 2367 7328 2366 7507
7509 6   7508 2370 7510 2371 7344 2369 7508
7510 6   7487 2375 7511 2371 7509 2370 7487
7511 10   7510 2375 7481 2374 7478 2373 7370 2372 7343 2371 7510
7512 10   7513 2380 7521 2379 7493 2378 7519 2377 7516 2376 7513
7513 6   7514 2400 7523 2380 7512 2376 7514
7514 6   7515 2399 7545 2400 7513 2376 7515
7515 6   7516 2497 7553 2399 7514 2376 7516
7516 6   7512 2377 7517 2497 7515 2376 7512
7517 6   7518 2496 7685 2497 7516 2377 7518
7518 6   7519 2494 7683 2496 7517 2377 7519
7519 6   7512 2378 7520 2494 7518 2377 7512
7520 6   7494 2493 7682 2494 7519 2378 7494
7521 6   7512 2380 7522 2381 7491 2379 7512
7522 6   7523 2385 7524 2381 7521 2380 7523
7523 10   7513 2400 7544 2395 7532 2390 7526 2385 7522 2380 7513
7524 10   7522 2385 7525 2384 7466 2383 7483 2382 7490 2381 7522
7525 6   7524 2385 7526 2386 7464 2384 7524
7526 6   7523 2390 7527 2386 7525 2385 7523
7527 10   7526 2390 7531 2389 7528 2388 7457 2387 7463 2386 7526
7528 6   7527 2389 7529 2538 7455 2388 7527
7529 6   7530 2537 7746 2538 7528 2389 7530
7530 6   7531 2391 7534 2537 7529 2389 7531
7531 6   7527 2390 7532 2391 7530 2389 7527
7532 6   7523 2395 7533 2391 7531 2390 7523
7533 10   7532 2395 7543 2394 7540 2393 7537 2392 7534 2391 7532
7534 6   7533 2392 7535 2537 7530 2391 7533
7535 6   7536 2536 7746 2537 7534 2392 7536
7536 6   7537 2534 7744 2536 7535 2392 7537
7537 6   7533 2393 7538 2534 7536 2392 7533
7538 6   7539 2533 7743 2534 7537 2393 7539
7539 6   7540 2403 7557 2533 7538 2393 7540
7540 6   7533 2394 7541 2403 7539 2393 7533
7541 6   7542 2402 7554 2403 7540 2394 7542
7542 6   7543 2396 7546 2402 7541 2394 7543
7543 6   7533 2395 7544 2396 7542 2394 7533
7544 6   7523 2400 7545 2396 7543 2395 7523
7545 10   7544 2400 7514 2399 7552 2398 7549 2397 7546 2396 7544
7546 6   7545 2397 7547 2402 7542 2396 7545
7547 6   7548 2401 7554 2402 7546 2397 7548
7548 6   7549 2424 7556 2401 7547 2397 7549
7549 6   7545 2398 7550 2424 7548 2397 7545
7550 6   7551 2423 7599 2424 7549 2398 7551
7551 10   7552 2498 7669 2473 7645 2448 7604 2423 7550 2398 7552
7552 6   7545 2399 7553 2498 7551 2398 7545
7553 6   7515 2497 7685 2498 7552 2399 7515
7554 10   7555 2405 7560 2404 7557 2403 7541 2402 7547 2401 7555
7555 6   7556 2425 7562 2405 7554 2401 7556
7556 6   7548 2424 7599 2425 7555 2401 7548
7557 6   7554 2404 7558 2533 7539 2403 7554
7558 6   7559 2532 7743 2533 7557 2404 7559
7559 6   7560 2406 7564 2532 7558 2404 7560
7560 6   7554 2405 7561 2406 7559 2404 7554
7561 6   7562 2410 7563 2406 7560 2405 7562
7562 10   7555 2425 7598 2420 7586 2415 7574 2410 7561 2405 7555
7563 10   7561 2410 7573 2409 7570 2408 7567 2407 7564 2406 7561
7564 6   7563 2407 7565 2532 7559 2406 7563
7565 6   7566 2531 7743 2532 7564 2407 7566
7566 6   7567 2529 7740 2531 7565 2407 7567
7567 6   7563 2408 7568 2529 7566 2407 7563
7568 6   7569 2528 7737 2529 7567 2408 7569
7569 6   7570 2518 7723 2528 7568 2408 7570
7570 6   7563 2409 7571 2518 7569 2408 7563
7571 6   7572 2517 7722 2518 7570 2409 7572
7572 6   7573 2411 7576 2517 7571 2409 7573
7573 6   7563 2410 7574 2411 7572 2409 7563
7574 6   7562 2415 7575 2411 7573 2410 7562
7575 10   7574 2415 7585 2414 7582 2413 7579 2412 7576 2411 7574
7576 6   7575 2412 7577 2517 7572 2411 7575
7577 6   7578 2516 7722 2517 7576 2412 7578
7578 6   7579 2514 7720 2516 7577 2412 7579
7579 6   7575 2413 7580 2514 7578 2412 7575
7580 6   7581 2513 7714 2514 7579 2413 7581
7581 6   7582 3088 7719 2513 7580 2413 7582
7582 6   7575 2414 7583 3088 7581 2413 7575
7583 6   7584 3087 8391 3088 7582 2414 7584
7584 6   7585 2416 7588 3087 7583 2414 7585
7585 6   7575 2415 7586 2416 7584 2414 7575
7586 6   7562 2420 7587 2416 7585 2415 7562
7587 10   7586 2420 7597 2419 7594 2418 7591 2417 7588 2416 7586
7588 6   7587 2417 7589 3087 7584 2416 7587
7589 6   7590 3086 8391 3087 7588 2417 7590
7590 6   7591 3084 8389 3086 7589 2417 7591
7591 6   7587 2418 7592 3084 7590 2417 7587
7592 6   7593 3083 8388 3084 7591 2418 7593
7593 6   7594 2428 7608 3083 7592 2418 7594
7594 6   7587 2419 7595 2428 7593 2418 7587
7595 6   7596 2427 7605 2428 7594 2419 7596
7596 6   7597 2421 7600 2427 7595 2419 7597
7597 6   7587 2420 7598 2421 7596 2419 7587
7598 6   7562 2425 7599 2421 7597 2420 7562
7599 10   7598 2425 7556 2424 7550 2423 7603 2422 7600 2421 7598
7600 6   7599 2422 7601 2427 7596 2421 7599
7601 6   7602 2426 7605 2427 7600 2422 7602
7602 6   7603 2449 7607 2426 7601 2422 7603
7603 6   7599 2423 7604 2449 7602 2422 7599
7604 6   7551 2448 7640 2449 7603 2423 7551
7605 10   7606 2430 7611 2429 7608 2428 7595 2427 7601 2426 7606
7606 6   7607 2450 7613 2430 7605 2426 7607
7607 6   7602 2449 7640 2450 7606 2426 7602
7608 6   7605 2429 7609 3083 7593 2428 7605
7609 6   7610 3082 8388 3083 7608 2429 7610
7610 6   7611 2431 7615 3082 7609 2429 7611
7611 6   7605 2430 7612 2431 7610 2429 7605
7612 6   7613 2435 7614 2431 7611 2430 7613
7613 10   7606 2450 7639 2445 7633 2440 7625 2435 7612 2430 7606
7614 10   7612 2435 7624 2434 7621 2433 7618 2432 7615 2431 7612
7615 6   7614 2432 7616 3082 7610 2431 7614
7616 6   7617 3081 8388 3082 7615 2432 7617
7617 6   7618 3079 8385 3081 7616 2432 7618
7618 6   7614 2433 7619 3079 7617 2432 7614
7619 6   7620 3078 8382 3079 7618 2433 7620
7620 6   7621 3068 8371 3078 7619 2433 7621
7621 6   7614 2434 7622 3068 7620 2433 7614
7622 6   7623 3067 8370 3068 7621 2434 7623
7623 6   7624 2436 7627 3067 7622 2434 7624
7624 6   7614 2435 7625 2436 7623 2434 7614
7625 6   7613 2440 7626 2436 7624 2435 7613
7626 10   7625 2440 7632 2439 6815 2438 7630 2437 7627 2436 7625
7627 6   7626 2437 7628 3067 7623 2436 7626
7628 6   7629 3066 8370 3067 7627 2437 7629
7629 6   7630 3064 8368 3066 7628 2437 7630
7630 6   7626 2438 7631 3064 7629 2437 7626
7631 6   5157 3063 8367 3064 7630 2438 5157
7632 6   7626 2440 7633 2441 6813 2439 7626
7633 6   7613 2445 7634 2441 7632 2440 7613
7634 10   7633 2445 7638 2444 7635 2443 6806 2442 6812 2441 7633
7635 6   7634 2444 7636 2453 6804 2443 7634
7636 6   7637 2452 7646 2453 7635 2444 7637
7637 6   7638 2446 7641 2452 7636 2444 7638
7638 6   7634 2445 7639 2446 7637 2444 7634
7639 6   7613 2450 7640 2446 7638 2445 7613
7640 10   7639 2450 7607 2449 7604 2448 7644 2447 7641 2446 7639
7641 6   7640 2447 7642 2452 7637 2446 7640
7642 6   7643 2451 7646 2452 7641 2447 7643
7643 6   7644 2474 7648 2451 7642 2447 7644
7644 6   7640 2448 7645 2474 7643 2447 7640
7645 6   7551 2473 7664 2474 7644 2448 7551
7646 10   7647 2455 7649 2454 6803 2453 7636 2452 7642 2451 7647
7647 6   7648 2475 7651 2455 7646 2451 7648
7648 6   7643 2474 7664 2475 7647 2451 7643
7649 6   7646 2455 7650 2456 6801 2454 7646
7650 6   7651 2460 7652 2456 7649 2455 7651
7651 10   7647 2475 7663 2470 7657 2465 7654 2460 7650 2455 7647
7652 10   7650 2460 7653 2459 6776 2458 6793 2457 6800 2456 7650
7653 6   7652 2460 7654 2461 6774 2459 7652
7654 6   7651 2465 7655 2461 7653 2460 7651
7655 10   7654 2465 7656 2464 6903 2463 6767 2462 6773 2461 7654
7656 6   7655 2465 7657 2466 6901 2464 7655
7657 6   7651 2470 7658 2466 7656 2465 7651
7658 10   7657 2470 7662 2469 7659 2468 6894 2467 6900 2466 7657
7659 6   7658 2469 7660 2478 6892 2468 7658
7660 6   7661 2477 7670 2478 7659 2469 7661
7661 6   7662 2471 7665 2477 7660 2469 7662
7662 6   7658 2470 7663 2471 7661 2469 7658
7663 6   7651 2475 7664 2471 7662 2470 7651
7664 10   7663 2475 7648 2474 7645 2473 7668 2472 7665 2471 7663
7665 6   7664 2472 7666 2477 7661 2471 7664
7666 6   7667 2476 7670 2477 7665 2472 7667
7667 6   7668 2499 7672 2476 7666 2472 7668
7668 6   7664 2473 7669 2499 7667 2472 7664
7669 6   7551 2498 7685 2499 7668 2473 7551
7670 10   7671 2480 7673 2479 6891 2478 7660 2477 7666 2476 7671
7671 6   7672 2500 7675 2480 7670 2476 7672
7672 6   7667 2499 7685 2500 7671 2476 7667
7673 6   7670 2480 7674 2481 6889 2479 7670
7674 6   7675 2485 7676 2481 7673 2480 7675
7675 10   7671 2500 7684 2495 7681 2490 7678 2485 7674 2480 7671
7676 10   7674 2485 7677 2484 7040 2483 6881 2482 6888 2481 7674
7677 6   7676 2485 7678 2486 7038 2484 7676
7678 6   7675 2490 7679 2486 7677 2485 7675
7679 10   7678 2490 7680 2489 7505 2488 7031 2487 7037 2486 7678
7680 6   7679 2490 7681 2491 7503 2489 7679
7681 6   7675 2495 7682 2491 7680 2490 7675
7682 10   7681 2495 7683 2494 7520 2493 7496 2492 7502 2491 7681
7683 6   7682 2495 7684 2496 7518 2494 7682
7684 6   7675 2500 7685 2496 7683 2495 7675
7685 10   7684 2500 7672 2499 7669 2498 7553 2497 7517 2496 7684
7686 10   7687 2505 7699 2504 7696 2503 7693 2502 7690 2501 7687
7687 6   7688 2525 7701 2505 7686 2501 7688
7688 6   7689 2524 7728 2525 7687 2501 7689
7689 6   7690 2622 7736 2524 7688 2501 7690
7690 6   7686 2502 7691 2622 7689 2501 7686
7691 6   7692 2621 7859 2622 7690 2502 7692
7692 6   7693 2619 7857 2621 7691 2502 7693
7693 6   7686 2503 7694 2619 7692 2502 7686
7694 6   7695 2618 7851 2619 7693 2503 7695
7695 6   7696 3108 7856 2618 7694 2503 7696
7696 6   7686 2504 7697 3108 7695 2503 7686
7697 6   7698 3107 8412 3108 7696 2504 7698
7698 6   7699 2506 7703 3107 7697 2504 7699
7699 6   7686 2505 7700 2506 7698 2504 7686
7700 6   7701 2510 7702 2506 7699 2505 7701
7701 10   7687 2525 7727 2520 7721 2515 7713 2510 7700 2505 7687
7702 10   7700 2510 7712 2509 7709 2508 7706 2507 7703 2506 7700
7703 6   7702 2507 7704 3107 7698 2506 7702
7704 6   7705 3106 8412 3107 7703 2507 7705
7705 6   7706 3104 8409 3106 7704 2507 7706
7706 6   7702 2508 7707 3104 7705 2507 7702
7707 6   7708 3103 8406 3104 7706 2508 7708
7708 6   7709 3093 8395 3103 7707 2508 7709
7709 6   7702 2509 7710 3093 7708 2508 7702
7710 6   7711 3092 8394 3093 7709 2509 7711
7711 6   7712 2511 7715 3092 7710 2509 7712
7712 6   7702 2510 7713 2511 7711 2509 7702
7713 6   7701 2515 7714 2511 7712 2510 7701
7714 10   7713 2515 7720 2514 7580 2513 7718 2512 7715 2511 7713
7715 6   7714 2512 7716 3092 7711 2511 7714
7716 6   7717 3091 8394 3092 7715 2512 7717
7717 6   7718 3089 8392 3091 7716 2512 7718
7718 6   7714 2513 7719 3089 7717 2512 7714
7719 6   7581 3088 8391 3089 7718 2513 7581
7720 6   7714 2515 7721 2516 7578 2514 7714
7721 6   7701 2520 7722 2516 7720 2515 7701
7722 10   7721 2520 7726 2519 7723 2518 7571 2517 7577 2516 7721
7723 6   7722 2519 7724 2528 7569 2518 7722
7724 6   7725 2527 7737 2528 7723 2519 7725
7725 6   7726 2521 7729 2527 7724 2519 7726
7726 6   7722 2520 7727 2521 7725 2519 7722
7727 6   7701 2525 7728 2521 7726 2520 7701
7728 10   7727 2525 7688 2524 7735 2523 7732 2522 7729 2521 7727
7729 6   7728 2522 7730 2527 7725 2521 7728
7730 6   7731 2526 7737 2527 7729 2522 7731
7731 6   7732 2549 7739 2526 7730 2522 7732
7732 6   7728 2523 7733 2549 7731 2522 7728
7733 6   7734 2548 7755 2549 7732 2523 7734
7734 10   7735 2623 7817 2598 7784 2573 7760 2548 7733 2523 7735
7735 6   7728 2524 7736 2623 7734 2523 7728
7736 6   7689 2622 7859 2623 7735 2524 7689
7737 10   7738 2530 7740 2529 7568 2528 7724 2527 7730 2526 7738
7738 6   7739 2550 7742 2530 7737 2526 7739
7739 6   7731 2549 7755 2550 7738 2526 7731
7740 6   7737 2530 7741 2531 7566 2529 7737
7741 6   7742 2535 7743 2531 7740 2530 7742
7742 10   7738 2550 7754 2545 7748 2540 7745 2535 7741 2530 7738
7743 10   7741 2535 7744 2534 7538 2533 7558 2532 7565 2531 7741
7744 6   7743 2535 7745 2536 7536 2534 7743
7745 6   7742 2540 7746 2536 7744 2535 7742
7746 10   7745 2540 7747 2539 7454 2538 7529 2537 7535 2536 7745
7747 6   7746 2540 7748 2541 7452 2539 7746
7748 6   7742 2545 7749 2541 7747 2540 7742
7749 10   7748 2545 7753 2544 7750 2543 7445 2542 7451 2541 7748
7750 6   7749 2544 7751 2553 7443 2543 7749
7751 6   7752 2552 7761 2553 7750 2544 7752
7752 6   7753 2546 7756 2552 7751 2544 7753
7753 6   7749 2545 7754 2546 7752 2544 7749
7754 6   7742 2550 7755 2546 7753 2545 7742
7755 10   7754 2550 7739 2549 7733 2548 7759 2547 7756 2546 7754
7756 6   7755 2547 7757 2552 7752 2546 7755
7757 6   7758 2551 7761 2552 7756 2547 7758
7758 6   7759 2574 7763 2551 7757 2547 7759
7759 6   7755 2548 7760 2574 7758 2547 7755
7760 6   7734 2573 7779 2574 7759 2548 7734
7761 10   7762 2555 7764 2554 7442 2553 7751 2552 7757 2551 7762
7762 6   7763 2575 7766 2555 7761 2551 7763
7763 6   7758 2574 7779 2575 7762 2551 7758
7764 6   7761 2555 7765 2556 7440 2554 7761
7765 6   7766 2560 7767 2556 7764 2555 7766
7766 10   7762 2575 7778 2570 7772 2565 7769 2560 7765 2555 7762
7767 10   7765 2560 7768 2559 7415 2558 7432 2557 7439 2556 7765
7768 6   7767 2560 7769 2561 7413 2559 7767
7769 6   7766 2565 7770 2561 7768 2560 7766
7770 10   7769 2565 7771 2564 4259 2563 7406 2562 7412 2561 7769
7771 6   7770 2565 7772 2566 4257 2564 7770
7772 6   7766 2570 7773 2566 7771 2565 7766
7773 10   7772 2570 7777 2569 7774 2568 4253 2567 4256 2566 7772
7774 6   7773 2569 7775 2578 4251 2568 7773
7775 6   7776 2577 7785 2578 7774 2569 7776
7776 6   7777 2571 7780 2577 7775 2569 7777
7777 6   7773 2570 7778 2571 7776 2569 7773
7778 6   7766 2575 7779 2571 7777 2570 7766
7779 10   7778 2575 7763 2574 7760 2573 7783 2572 7780 2571 7778
7780 6   7779 2572 7781 2577 7776 2571 7779
7781 6   7782 2576 7785 2577 7780 2572 7782
7782 6   7783 2599 7787 2576 7781 2572 7783
7783 6   7779 2573 7784 2599 7782 2572 7779
7784 6   7734 2598 7812 2599 7783 2573 7734
7785 10   7786 2580 7788 2579 4250 2578 7775 2577 7781 2576 7786
7786 6   7787 2600 7790 2580 7785 2576 7787
7787 6   7782 2599 7812 2600 7786 2576 7782
7788 6   7785 2580 7789 2581 4248 2579 7785
7789 6   7790 2585 7791 2581 7788 2580 7790
7790 10   7786 2600 7811 2595 7799 2590 7793 2585 7789 2580 7786
7791 10   7789 2585 7792 2584 4241 2583 4244 2582 4247 2581 7789
7792 6   7791 2585 7793 2586 4239 2584 7791
7793 6   7790 2590 7794 2586 7792 2585 7790
7794 10   7793 2590 7798 2589 7795 2588 4235 2587 4238 2586 7793
7795 6   7794 2589 7796 2638 4233 2588 7794
7796 6   7797 2637 7875 2638 7795 2589 7797
7797 6   7798 2591 7801 2637 7796 2589 7798
7798 6   7794 2590 7799 2591 7797 2589 7794
7799 6   7790 2595 7800 2591 7798 2590 7790
7800 10   7799 2595 7810 2594 7807 2593 7804 2592 7801 2591 7799
7801 6   7800 2592 7802 2637 7797 2591 7800
7802 6   7803 2636 7875 2637 7801 2592 7803
7803 6   7804 2634 7873 2636 7802 2592 7804
7804 6   7800 2593 7805 2634 7803 2592 7800
7805 6   7806 2633 7872 2634 7804 2593 7806
7806 6   7807 2603 7821 2633 7805 2593 7807
7807 6   7800 2594 7808 2603 7806 2593 7800
7808 6   7809 2602 7818 2603 7807 2594 7809
7809 6   7810 2596 7813 2602 7808 2594 7810
7810 6   7800 2595 7811 2596 7809 2594 7800
7811 6   7790 2600 7812 2596 7810 2595 7790
7812 10   7811 2600 7787 2599 7784 2598 7816 2597 7813 2596 7811
7813 6   7812 2597 7814 2602 7809 2596 7812
7814 6   7815 2601 7818 2602 7813 2597 7815
7815 6   7816 2624 7820 2601 7814 2597 7816
7816 6   7812 2598 7817 2624 7815 2597 7812
7817 6   7734 2623 7859 2624 7816 2598 7734
7818 10   7819 2605 7824 2604 7821 2603 7808 2602 7814 2601 7819
7819 6   7820 2625 7826 2605 7818 2601 7820
7820 6   7815 2624 7859 2625 7819 2601 7815
7821 6   7818 2604 7822 2633 7806 2603 7818
7822 6   7823 2632 7872 2633 7821 2604 7823
7823 6   7824 2606 7828 2632 7822 2604 7824
7824 6   7818 2605 7825 2606 7823 2604 7818
7825 6   7826 2610 7827 2606 7824 2605 7826
7826 10   7819 2625 7858 2620 7850 2615 7838 2610 7825 2605 7819
7827 10   7825 2610 7837 2609 7834 2608 7831 2607 7828 2606 7825
7828 6   7827 2607 7829 2632 7823 2606 7827
7829 6   7830 2631 7872 2632 7828 2607 7830
7830 6   7831 2629 7869 2631 7829 2607 7831
7831 6   7827 2608 7832 2629 7830 2607 7827
7832 6   7833 2628 7860 2629 7831 2608 7833
7833 6   7834 2743 7868 2628 7832 2608 7834
7834 6   7827 2609 7835 2743 7833 2608 7827
7835 6   7836 2742 8003 2743 7834 2609 7836
7836 6   7837 2611 7840 2742 7835 2609 7837
7837 6   7827 2610 7838 2611 7836 2609 7827
7838 6   7826 2615 7839 2611 7837 2610 7826
7839 10   7838 2615 7849 2614 7846 2613 7843 2612 7840 2611 7838
7840 6   7839 2612 7841 2742 7836 2611 7839
7841 6   7842 2741 8003 2742 7840 2612 7842
7842 6   7843 2739 8001 2741 7841 2612 7843
7843 6   7839 2613 7844 2739 7842 2612 7839
7844 6   7845 2738 7995 2739 7843 2613 7845
7845 10   7846 3113 8294 2988 8147 2863 8000 2738 7844 2613 7846
7846 6   7839 2614 7847 3113 7845 2613 7839
7847 6   7848 3112 8415 3113 7846 2614 7848
7848 6   7849 2616 7852 3112 7847 2614 7849
7849 6   7839 2615 7850 2616 7848 2614 7839
7850 6   7826 2620 7851 2616 7849 2615 7826
7851 10   7850 2620 7857 2619 7694 2618 7855 2617 7852 2616 7850
7852 6   7851 2617 7853 3112 7848 2616 7851
7853 6   7854 3111 8415 3112 7852 2617 7854
7854 6   7855 3109 8413 3111 7853 2617 7855
7855 6   7851 2618 7856 3109 7854 2617 7851
7856 6   7695 3108 8412 3109 7855 2618 7695
7857 6   7851 2620 7858 2621 7692 2619 7851
7858 6   7826 2625 7859 2621 7857 2620 7826
7859 10   7858 2625 7820 2624 7817 2623 7736 2622 7691 2621 7858
7860 10   7861 2630 7869 2629 7832 2628 7867 2627 7864 2626 7861
7861 6   7862 2650 7871 2630 7860 2626 7862
7862 6   7863 2649 7884 2650 7861 2626 7863
7863 6   7864 2747 7892 2649 7862 2626 7864
7864 6   7860 2627 7865 2747 7863 2626 7860
7865 6   7866 2746 8006 2747 7864 2627 7866
7866 6   7867 2744 8004 2746 7865 2627 7867
7867 6   7860 2628 7868 2744 7866 2627 7860
7868 6   7833 2743 8003 2744 7867 2628 7833
7869 6   7860 2630 7870 2631 7830 2629 7860
7870 6   7871 2635 7872 2631 7869 2630 7871
7871 10   7861 2650 7883 2645 7877 2640 7874 2635 7870 2630 7861
7872 10   7870 2635 7873 2634 7805 2633 7822 2632 7829 2631 7870
7873 6   7872 2635 7874 2636 7803 2634 7872
7874 6   7871 2640 7875 2636 7873 2635 7871
7875 10   7874 2640 7876 2639 4232 2638 7796 2637 7802 2636 7874
7876 6   7875 2640 7877 2641 4230 2639 7875
7877 6   7871 2645 7878 2641 7876 2640 7871
7878 10   7877 2645 7882 2644 7879 2643 4226 2642 4229 2641 7877
7879 6   7878 2644 7880 2653 4224 2643 7878
7880 6   7881 2652 7893 2653 7879 2644 7881
7881 6   7882 2646 7885 2652 7880 2644 7882
7882 6   7878 2645 7883 2646 7881 2644 7878
7883 6   7871 2650 7884 2646 7882 2645 7871
7884 10   7883 2650 7862 2649 7891 2648 7888 2647 7885 2646 7883
7885 6   7884 2647 7886 2652 7881 2646 7884
7886 6   7887 2651 7893 2652 7885 2647 7887
7887 6   7888 2674 7895 2651 7886 2647 7888
7888 6   7884 2648 7889 2674 7887 2647 7884
7889 6   7890 2673 7911 2674 7888 2648 7890
7890 10   7891 2748 7973 2723 7940 2698 7916 2673 7889 2648 7891
7891 6   7884 2649 7892 2748 7890 2648 7884
7892 6   7863 2747 8006 2748 7891 2649 7863
7893 10   7894 2655 7896 2654 4223 2653 7880 2652 7886 2651 7894
7894 6   7895 2675 7898 2655 7893 2651 7895
7895 6   7887 2674 7911 2675 7894 2651 7887
7896 6   7893 2655 7897 2656 4221 2654 7893
7897 6   7898 2660 7899 2656 7896 2655 7898
7898 10   7894 2675 7910 2670 7904 2665 7901 2660 7897 2655 7894
7899 10   7897 2660 7900 2659 4214 2658 4217 2657 4220 2656 7897
7900 6   7899 2660 7901 2661 4212 2659 7899
7901 6   7898 2665 7902 2661 7900 2660 7898
7902 10   7901 2665 7903 2664 4205 2663 4208 2662 4211 2661 7901
7903 6   7902 2665 7904 2666 4203 2664 7902
7904 6   7898 2670 7905 2666 7903 2665 7898
7905 10   7904 2670 7909 2669 7906 2668 4199 2667 4202 2666 7904
7906 6   7905 2669 7907 2678 4197 2668 7905
7907 6   7908 2677 7917 2678 7906 2669 7908
7908 6   7909 2671 7912 2677 7907 2669 7909
7909 6   7905 2670 7910 2671 7908 2669 7905
7910 6   7898 2675 7911 2671 7909 2670 7898
7911 10   7910 2675 7895 2674 7889 2673 7915 2672 7912 2671 7910
7912 6   7911 2672 7913 2677 7908 2671 7911
7913 6   7914 2676 7917 2677 7912 2672 7914
7914 6   7915 2699 7919 2676 7913 2672 7915
7915 6   7911 2673 7916 2699 7914 2672 7911
7916 6   7890 2698 7935 2699 7915 2673 7890
7917 10   7918 2680 7920 2679 4196 2678 7907 2677 7913 2676 7918
7918 6   7919 2700 7922 2680 7917 2676 7919
7919 6   7914 2699 7935 2700 7918 2676 7914
7920 6   7917 2680 7921 2681 4194 2679 7917
7921 6   7922 2685 7923 2681 7920 2680 7922
7922 10   7918 2700 7934 2695 7928 2690 7925 2685 7921 2680 7918
7923 10   7921 2685 7924 2684 4187 2683 4190 2682 4193 2681 7921
7924 6   7923 2685 7925 2686 4185 2684 7923
7925 6   7922 2690 7926 2686 7924 2685 7922
7926 10   7925 2690 7927 2689 4178 2688 4181 2687 4184 2686 7925
7927 6   7926 2690 7928 2691 4176 2689 7926
7928 6   7922 2695 7929 2691 7927 2690 7922
7929 10   7928 2695 7933 2694 7930 2693 4172 2692 4175 2691 7928
7930 6   7929 2694 7931 2703 4170 2693 7929
7931 6   7932 2702 7941 2703 7930 2694 7932
7932 6   7933 2696 7936 2702 7931 2694 7933
7933 6   7929 2695 7934 2696 7932 2694 7929
7934 6   7922 2700 7935 2696 7933 2695 7922
7935 10   7934 2700 7919 2699 7916 2698 7939 2697 7936 2696 7934
7936 6   7935 2697 7937 2702 7932 2696 7935
7937 6   7938 2701 7941 2702 7936 2697 7938
7938 6   7939 2724 7943 2701 7937 2697 7939
7939 6   7935 2698 7940 2724 7938 2697 7935
7940 6   7890 2723 7968 2724 7939 2698 7890
7941 10   7942 2705 7944 2704 4169 2703 7931 2702 7937 2701 7942
7942 6   7943 2725 7946 2705 7941 2701 7943
7943 6   7938 2724 7968 2725 7942 2701 7938
7944 6   7941 2705 7945 2706 4167 2704 7941
7945 6   7946 2710 7947 2706 7944 2705 7946
7946 10   7942 2725 7967 2720 7955 2715 7949 2710 7945 2705 7942
7947 10   7945 2710 7948 2709 4160 2708 4163 2707 4166 2706 7945
7948 6   7947 2710 7949 2711 4158 2709 7947
7949 6   7946 2715 7950 2711 7948 2710 7946
7950 10   7949 2715 7954 2714 7951 2713 4154 2712 4157 2711 7949
7951 6   7950 2714 7952 2763 4152 2713 7950
7952 6   7953 2762 8022 2763 7951 2714 7953
7953 6   7954 2716 7957 2762 7952 2714 7954
7954 6   7950 2715 7955 2716 7953 2714 7950
7955 6   7946 2720 7956 2716 7954 2715 7946
7956 10   7955 2720 7966 2719 7963 2718 7960 2717 7957 2716 7955
7957 6   7956 2717 7958 2762 7953 2716 7956
7958 6   7959 2761 8022 2762 7957 2717 7959
7959 6   7960 2759 8020 2761 7958 2717 7960
7960 6   7956 2718 7961 2759 7959 2717 7956
7961 6   7962 2758 8019 2759 7960 2718 7962
7962 6   7963 2728 7977 2758 7961 2718 7963
7963 6   7956 2719 7964 2728 7962 2718 7956
7964 6   7965 2727 7974 2728 7963 2719 7965
7965 6   7966 2721 7969 2727 7964 2719 7966
7966 6   7956 2720 7967 2721 7965 2719 7956
7967 6   7946 2725 7968 2721 7966 2720 7946
7968 10   7967 2725 7943 2724 7940 2723 7972 2722 7969 2721 7967
7969 6   7968 2722 7970 2727 7965 2721 7968
7970 6   7971 2726 7974 2727 7969 2722 7971
7971 6   7972 2749 7976 2726 7970 2722 7972
7972 6   7968 2723 7973 2749 7971 2722 7968
7973 6   7890 2748 8006 2749 7972 2723 7890
7974 10   7975 2730 7980 2729 7977 2728 7964 2727 7970 2726 7975
7975 6   7976 2750 7982 2730 7974 2726 7976
7976 6   7971 2749 8006 2750 7975 2726 7971
7977 6   7974 2729 7978 2758 7962 2728 7974
7978 6   7979 2757 8019 2758 7977 2729 7979
7979 6   7980 2731 7984 2757 7978 2729 7980
7980 6   7974 2730 7981 2731 7979 2729 7974
7981 6   7982 2735 7983 2731 7980 2730 7982
7982 10   7975 2750 8005 2745 8002 2740 7994 2735 7981 2730 7975
7983 10   7981 2735 7993 2734 7990 2733 7987 2732 7984 2731 7981
7984 6   7983 2732 7985 2757 7979 2731 7983
7985 6   7986 2756 8019 2757 7984 2732 7986
7986 6   7987 2754 8016 2756 7985 2732 7987
7987 6   7983 2733 7988 2754 7986 2732 7983
7988 6   7989 2753 8007 2754 7987 2733 7989
7989 6   7990 2868 8015 2753 7988 2733 7990
7990 6   7983 2734 7991 2868 7989 2733 7983
7991 6   7992 2867 8150 2868 7990 2734 7992
7992 6   7993 2736 7996 2867 7991 2734 7993
7993 6   7983 2735 7994 2736 7992 2734 7983
7994 6   7982 2740 7995 2736 7993 2735 7982
7995 10   7994 2740 8001 2739 7844 2738 7999 2737 7996 2736 7994
7996 6   7995 2737 7997 2867 7992 2736 7995
7997 6   7998 2866 8150 2867 7996 2737 7998
7998 6   7999 2864 8148 2866 7997 2737 7999
7999 6   7995 2738 8000 2864 7998 2737 7995
8000 6   7845 2863 8142 2864 7999 2738 7845
8001 6   7995 2740 8002 2741 7842 2739 7995
8002 6   7982 2745 8003 2741 8001 2740 7982
8003 10   8002 2745 8004 2744 7868 2743 7835 2742 7841 2741 8002
8004 6   8003 2745 8005 2746 7866 2744 8003
8005 6   7982 2750 8006 2746 8004 2745 7982
8006 10   8005 2750 7976 2749 7973 2748 7892 2747 7865 2746 8005
8007 10   8008 2755 8016 2754 7988 2753 8014 2752 8011 2751 8008
8008 6   8009 2775 8018 2755 8007 2751 8009
8009 6   8010 2774 8031 2775 8008 2751 8010
8010 6   8011 2872 8039 2774 8009 2751 8011
8011 6   8007 2752 8012 2872 8010 2751 8007
8012 6   8013 2871 8153 2872 8011 2752 8013
8013 6   8014 2869 8151 2871 8012 2752 8014
8014 6   8007 2753 8015 2869 8013 2752 8007
8015 6   7989 2868 8150 2869 8014 2753 7989
8016 6   8007 2755 8017 2756 7986 2754 8007
8017 6   8018 2760 8019 2756 8016 2755 8018
8018 10   8008 2775 8030 2770 8024 2765 8021 2760 8017 2755 8008
8019 10   8017 2760 8020 2759 7961 2758 7978 2757 7985 2756 8017
8020 6   8019 2760 8021 2761 7959 2759 8019
8021 6   8018 2765 8022 2761 8020 2760 8018
8022 10   8021 2765 8023 2764 4151 2763 7952 2762 7958 2761 8021
8023 6   8022 2765 8024 2766 4149 2764 8022
8024 6   8018 2770 8025 2766 8023 2765 8018
8025 10   8024 2770 8029 2769 8026 2768 4145 2767 4148 2766 8024
8026 6   8025 2769 8027 2778 4143 2768 8025
8027 6   8028 2777 8040 2778 8026 2769 8028
8028 6   8029 2771 8032 2777 8027 2769 8029
8029 6   8025 2770 8030 2771 8028 2769 8025
8030 6   8018 2775 8031 2771 8029 2770 8018
8031 10   8030 2775 8009 2774 8038 2773 8035 2772 8032 2771 8030
8032 6   8031 2772 8033 2777 8028 2771 8031
8033 6   8034 2776 8040 2777 8032 2772 8034
8034 6   8035 2799 8042 2776 8033 2772 8035
8035 6   8031 2773 8036 2799 8034 2772 8031
8036 6   8037 2798 8058 2799 8035 2773 8037
8037 10   8038 2873 8120 2848 8087 2823 8063 2798 8036 2773 8038
8038 6   8031 2774 8039 2873 8037 2773 8031
8039 6   8010 2872 8153 2873 8038 2774 8010
8040 10   8041 2780 8043 2779 4142 2778 8027 2777 8033 2776 8041
8041 6   8042 2800 8045 2780 8040 2776 8042
8042 6   8034 2799 8058 2800 8041 2776 8034
8043 6   8040 2780 8044 2781 4140 2779 8040
8044 6   8045 2785 8046 2781 8043 2780 8045
8045 10   8041 2800 8057 2795 8051 2790 8048 2785 8044 2780 8041
8046 10   8044 2785 8047 2784 4133 2783 4136 2782 4139 2781 8044
8047 6   8046 2785 8048 2786 4131 2784 8046
8048 6   8045 2790 8049 2786 8047 2785 8045
8049 10   8048 2790 8050 2789 4124 2788 4127 2787 4130 2786 8048
8050 6   8049 2790 8051 2791 4122 2789 8049
8051 6   8045 2795 8052 2791 8050 2790 8045
8052 10   8051 2795 8056 2794 8053 2793 4118 2792 4121 2791 8051
8053 6   8052 2794 8054 2803 4116 2793 8052
8054 6   8055 2802 8064 2803 8053 2794 8055
8055 6   8056 2796 8059 2802 8054 2794 8056
8056 6   8052 2795 8057 2796 8055 2794 8052
8057 6   8045 2800 8058 2796 8056 2795 8045
8058 10   8057 2800 8042 2799 8036 2798 8062 2797 8059 2796 8057
8059 6   8058 2797 8060 2802 8055 2796 8058
8060 6   8061 2801 8064 2802 8059 2797 8061
8061 6   8062 2824 8066 2801 8060 2797 8062
8062 6   8058 2798 8063 2824 8061 2797 8058
8063 6   8037 2823 8082 2824 8062 2798 8037
8064 10   8065 2805 8067 2804 4115 2803 8054 2802 8060 2801 8065
8065 6   8066 2825 8069 2805 8064 2801 8066
8066 6   8061 2824 8082 2825 8065 2801 8061
8067 6   8064 2805 8068 2806 4113 2804 8064
8068 6   8069 2810 8070 2806 8067 2805 8069
8069 10   8065 2825 8081 2820 8075 2815 8072 2810 8068 2805 8065
8070 10   8068 2810 8071 2809 4106 2808 4109 2807 4112 2806 8068
8071 6   8070 2810 8072 2811 4104 2809 8070
8072 6   8069 2815 8073 2811 8071 2810 8069
8073 10   8072 2815 8074 2814 3368 2813 4100 2812 4103 2811 8072
8074 6   8073 2815 8075 2816 3366 2814 8073
8075 6   8069 2820 8076 2816 8074 2815 8069
8076 10   8075 2820 8080 2819 8077 2818 3362 2817 3365 2816 8075
8077 6   8076 2819 8078 2828 3360 2818 8076
8078 6   8079 2827 8088 2828 8077 2819 8079
8079 6   8080 2821 8083 2827 8078 2819 8080
8080 6   8076 2820 8081 2821 8079 2819 8076
8081 6   8069 2825 8082 2821 8080 2820 8069
8082 10   8081 2825 8066 2824 8063 2823 8086 2822 8083 2821 8081
8083 6   8082 2822 8084 2827 8079 2821 8082
8084 6   8085 2826 8088 2827 8083 2822 8085
8085 6   8086 2849 8090 2826 8084 2822 8086
8086 6   8082 2823 8087 2849 8085 2822 8082
8087 6   8037 2848 8115 2849 8086 2823 8037
8088 10   8089 2830 8091 2829 3359 2828 8078 2827 8084 2826 8089
8089 6   8090 2850 8093 2830 8088 2826 8090
8090 6   8085 2849 8115 2850 8089 2826 8085
8091 6   8088 2830 8092 2831 3357 2829 8088
8092 6   8093 2835 8094 2831 8091 2830 8093
8093 10   8089 2850 8114 2845 8102 2840 8096 2835 8092 2830 8089
8094 10   8092 2835 8095 2834 3350 2833 3353 2832 3356 2831 8092
8095 6   8094 2835 8096 2836 3348 2834 8094
8096 6   8093 2840 8097 2836 8095 2835 8093
8097 10   8096 2840 8101 2839 8098 2838 3344 2837 3347 2836 8096
8098 6   8097 2839 8099 2888 3342 2838 8097
8099 6   8100 2887 8169 2888 8098 2839 8100
8100 6   8101 2841 8104 2887 8099 2839 8101
8101 6   8097 2840 8102 2841 8100 2839 8097
8102 6   8093 2845 8103 2841 8101 2840 8093
8103 10   8102 2845 8113 2844 8110 2843 8107 2842 8104 2841 8102
8104 6   8103 2842 8105 2887 8100 2841 8103
8105 6   8106 2886 8169 2887 8104 2842 8106
8106 6   8107 2884 8167 2886 8105 2842 8107
8107 6   8103 2843 8108 2884 8106 2842 8103
8108 6   8109 2883 8166 2884 8107 2843 8109
8109 6   8110 2853 8124 2883 8108 2843 8110
8110 6   8103 2844 8111 2853 8109 2843 8103
8111 6   8112 2852 8121 2853 8110 2844 8112
8112 6   8113 2846 8116 2852 8111 2844 8113
8113 6   8103 2845 8114 2846 8112 2844 8103
8114 6   8093 2850 8115 2846 8113 2845 8093
8115 10   8114 2850 8090 2849 8087 2848 8119 2847 8116 2846 8114
8116 6   8115 2847 8117 2852 8112 2846 8115
8117 6   8118 2851 8121 2852 8116 2847 8118
8118 6   8119 2874 8123 2851 8117 2847 8119
8119 6   8115 2848 8120 2874 8118 2847 8115
8120 6   8037 2873 8153 2874 8119 2848 8037
8121 10   8122 2855 8127 2854 8124 2853 8111 2852 8117 2851 8122
8122 6   8123 2875 8129 2855 8121 2851 8123
8123 6   8118 2874 8153 2875 8122 2851 8118
8124 6   8121 2854 8125 2883 8109 2853 8121
8125 6   8126 2882 8166 2883 8124 2854 8126
8126 6   8127 2856 8131 2882 8125 2854 8127
8127 6   8121 2855 8128 2856 8126 2854 8121
8128 6   8129 2860 8130 2856 8127 2855 8129
8129 10   8122 2875 8152 2870 8149 2865 8141 2860 8128 2855 8122
8130 10   8128 2860 8140 2859 8137 2858 8134 2857 8131 2856 8128
8131 6   8130 2857 8132 2882 8126 2856 8130
8132 6   8133 2881 8166 2882 8131 2857 8133
8133 6   8134 2879 8163 2881 8132 2857 8134
8134 6   8130 2858 8135 2879 8133 2857 8130
8135 6   8136 2878 8154 2879 8134 2858 8136
8136 6   8137 2993 8162 2878 8135 2858 8137
8137 6   8130 2859 8138 2993 8136 2858 8130
8138 6   8139 2992 8297 2993 8137 2859 8139
8139 6   8140 2861 8143 2992 8138 2859 8140
8140 6   8130 2860 8141 2861 8139 2859 8130
8141 6   8129 2865 8142 2861 8140 2860 8129
8142 10   8141 2865 8148 2864 8000 2863 8146 2862 8143 2861 8141
8143 6   8142 2862 8144 2992 8139 2861 8142
8144 6   8145 2991 8297 2992 8143 2862 8145
8145 6   8146 2989 8295 2991 8144 2862 8146
8146 6   8142 2863 8147 2989 8145 2862 8142
8147 6   7845 2988 8289 2989 8146 2863 7845
8148 6   8142 2865 8149 2866 7998 2864 8142
8149 6   8129 2870 8150 2866 8148 2865 8129
8150 10   8149 2870 8151 2869 8015 2868 7991 2867 7997 2866 8149
8151 6   8150 2870 8152 2871 8013 2869 8150
8152 6   8129 2875 8153 2871 8151 2870 8129
8153 10   8152 2875 8123 2874 8120 2873 8039 2872 8012 2871 8152
8154 10   8155 2880 8163 2879 8135 2878 8161 2877 8158 2876 8155
8155 6   8156 2900 8165 2880 8154 2876 8156
8156 6   8157 2899 8178 2900 8155 2876 8157
8157 6   8158 2997 8186 2899 8156 2876 8158
8158 6   8154 2877 8159 2997 8157 2876 8154
8159 6   8160 2996 8300 2997 8158 2877 8160
8160 6   8161 2994 8298 2996 8159 2877 8161
8161 6   8154 2878 8162 2994 8160 2877 8154
8162 6   8136 2993 8297 2994 8161 2878 8136
8163 6   8154 2880 8164 2881 8133 2879 8154
8164 6   8165 2885 8166 2881 8163 2880 8165
8165 10   8155 2900 8177 2895 8171 2890 8168 2885 8164 2880 8155
8166 10   8164 2885 8167 2884 8108 2883 8125 2882 8132 2881 8164
8167 6   8166 2885 8168 2886 8106 2884 8166
8168 6   8165 2890 8169 2886 8167 2885 8165
8169 10   8168 2890 8170 2889 3341 2888 8099 2887 8105 2886 8168
8170 6   8169 2890 8171 2891 3339 2889 8169
8171 6   8165 2895 8172 2891 8170 2890 8165
8172 10   8171 2895 8176 2894 8173 2893 3335 2892 3338 2891 8171
8173 6   8172 2894 8174 2903 3333 2893 8172
8174 6   8175 2902 8187 2903 8173 2894 8175
8175 6   8176 2896 8179 2902 8174 2894 8176
8176 6   8172 2895 8177 2896 8175 2894 8172
8177 6   8165 2900 8178 2896 8176 2895 8165
8178 10   8177 2900 8156 2899 8185 2898 8182 2897 8179 2896 8177
8179 6   8178 2897 8180 2902 8175 2896 8178
8180 6   8181 2901 8187 2902 8179 2897 8181
8181 6   8182 2924 8189 2901 8180 2897 8182
8182 6   8178 2898 8183 2924 8181 2897 8178
8183 6   8184 2923 8205 2924 8182 2898 8184
8184 10   8185 2998 8267 2973 8234 2948 8210 2923 8183 2898 8185
8185 6   8178 2899 8186 2998 8184 2898 8178
8186 6   8157 2997 8300 2998 8185 2899 8157
8187 10   8188 2905 8190 2904 3332 2903 8174 2902 8180 2901 8188
8188 6   8189 2925 8192 2905 8187 2901 8189
8189 6   8181 2924 8205 2925 8188 2901 8181
8190 6   8187 2905 8191 2906 3330 2904 8187
8191 6   8192 2910 8193 2906 8190 2905 8192
8192 10   8188 2925 8204 2920 8198 2915 8195 2910 8191 2905 8188
8193 10   8191 2910 8194 2909 3323 2908 3326 2907 3329 2906 8191
8194 6   8193 2910 8195 2911 3321 2909 8193
8195 6   8192 2915 8196 2911 8194 2910 8192
8196 10   8195 2915 8197 2914 3314 2913 3317 2912 3320 2911 8195
8197 6   8196 2915 8198 2916 3312 2914 8196
8198 6   8192 2920 8199 2916 8197 2915 8192
8199 10   8198 2920 8203 2919 8200 2918 3308 2917 3311 2916 8198
8200 6   8199 2919 8201 2928 3306 2918 8199
8201 6   8202 2927 8211 2928 8200 2919 8202
8202 6   8203 2921 8206 2927 8201 2919 8203
8203 6   8199 2920 8204 2921 8202 2919 8199
8204 6   8192 2925 8205 2921 8203 2920 8192
8205 10   8204 2925 8189 2924 8183 2923 8209 2922 8206 2921 8204
8206 6   8205 2922 8207 2927 8202 2921 8205
8207 6   8208 2926 8211 2927 8206 2922 8208
8208 6   8209 2949 8213 2926 8207 2922 8209
8209 6   8205 2923 8210 2949 8208 2922 8205
8210 6   8184 2948 8229 2949 8209 2923 8184
8211 10   8212 2930 8214 2929 3305 2928 8201 2927 8207 2926 8212
8212 6   8213 2950 8216 2930 8211 2926 8213
8213 6   8208 2949 8229 2950 8212 2926 8208
8214 6   8211 2930 8215 2931 3303 2929 8211
8215 6   8216 2935 8217 2931 8214 2930 8216
8216 10   8212 2950 8228 2945 8222 2940 8219 2935 8215 2930 8212
8217 10   8215 2935 8218 2934 3296 2933 3299 2932 3302 2931 8215
8218 6   8217 2935 8219 2936 3294 2934 8217
8219 6   8216 2940 8220 2936 8218 2935 8216
8220 10   8219 2940 8221 2939 4479 2938 3290 2937 3293 2936 8219
8221 6   8220 2940 8222 2941 4477 2939 8220
8222 6   8216 2945 8223 2941 8221 2940 8216
8223 10   8222 2945 8227 2944 8224 2943 4470 2942 4476 2941 8222
8224 6   8223 2944 8225 2953 4468 2943 8223
8225 6   8226 2952 8235 2953 8224 2944 8226
8226 6   8227 2946 8230 2952 8225 2944 8227
8227 6   8223 2945 8228 2946 8226 2944 8223
8228 6   8216 2950 8229 2946 8227 2945 8216
8229 10   8228 2950 8213 2949 8210 2948 8233 2947 8230 2946 8228
8230 6   8229 2947 8231 2952 8226 2946 8229
8231 6   8232 2951 8235 2952 8230 2947 8232
8232 6   8233 2974 8237 2951 8231 2947 8233
8233 6   8229 2948 8234 2974 8232 2947 8229
8234 6   8184 2973 8262 2974 8233 2948 8184
8235 10   8236 2955 8238 2954 4467 2953 8225 2952 8231 2951 8236
8236 6   8237 2975 8240 2955 8235 2951 8237
8237 6   8232 2974 8262 2975 8236 2951 8232
8238 6   8235 2955 8239 2956 4465 2954 8235
8239 6   8240 2960 8241 2956 8238 2955 8240
8240 10   8236 2975 8261 2970 8249 2965 8243 2960 8239 2955 8236
8241 10   8239 2960 8242 2959 4440 2958 4457 2957 4464 2956 8239
8242 6   8241 2960 8243 2961 4438 2959 8241
8243 6   8240 2965 8244 2961 8242 2960 8240
8244 10   8243 2965 8248 2964 8245 2963 4431 2962 4437 2961 8243
8245 6   8244 2964 8246 3013 4429 2963 8244
8246 6   8247 3012 8316 3013 8245 2964 8247
8247 6   8248 2966 8251 3012 8246 2964 8248
8248 6   8244 2965 8249 2966 8247 2964 8244
8249 6   8240 2970 8250 2966 8248 2965 8240
8250 10   8249 2970 8260 2969 8257 2968 8254 2967 8251 2966 8249
8251 6   8250 2967 8252 3012 8247 2966 8250
8252 6   8253 3011 8316 3012 8251 2967 8253
8253 6   8254 3009 8314 3011 8252 2967 8254
8254 6   8250 2968 8255 3009 8253 2967 8250
8255 6   8256 3008 8313 3009 8254 2968 8256
8256 6   8257 2978 8271 3008 8255 2968 8257
8257 6   8250 2969 8258 2978 8256 2968 8250
8258 6   8259 2977 8268 2978 8257 2969 8259
8259 6   8260 2971 8263 2977 8258 2969 8260
8260 6   8250 2970 8261 2971 8259 2969 8250
8261 6   8240 2975 8262 2971 8260 2970 8240
8262 10   8261 2975 8237 2974 8234 2973 8266 2972 8263 2971 8261
8263 6   8262 2972 8264 2977 8259 2971 8262
8264 6   8265 2976 8268 2977 8263 2972 8265
8265 6   8266 2999 8270 2976 8264 2972 8266
8266 6   8262 2973 8267 2999 8265 2972 8262
8267 6   8184 2998 8300 2999 8266 2973 8184
8268 10   8269 2980 8274 2979 8271 2978 8258 2977 8264 2976 8269
8269 6   8270 3000 8276 2980 8268 2976 8270
8270 6   8265 2999 8300 3000 8269 2976 8265
8271 6   8268 2979 8272 3008 8256 2978 8268
8272 6   8273 3007 8313 3008 8271 2979 8273
8273 6   8274 2981 8278 3007 8272 2979 8274
8274 6   8268 2980 8275 2981 8273 2979 8268
8275 6   8276 2985 8277 2981 8274 2980 8276
8276 10   8269 3000 8299 2995 8296 2990 8288 2985 8275 2980 8269
8277 10   8275 2985 8287 2984 8284 2983 8281 2982 8278 2981 8275
8278 6   8277 2982 8279 3007 8273 2981 8277
8279 6   8280 3006 8313 3007 8278 2982 8280
8280 6   8281 3004 8310 3006 8279 2982 8281
8281 6   8277 2983 8282 3004 8280 2982 8277
8282 6   8283 3003 8301 3004 8281 2983 8283
8283 6   8284 3118 8309 3003 8282 2983 8284
8284 6   8277 2984 8285 3118 8283 2983 8277
8285 6   8286 3117 8418 3118 8284 2984 8286
8286 6   8287 2986 8290 3117 8285 2984 8287
8287 6   8277 2985 8288 2986 8286 2984 8277
8288 6   8276 2990 8289 2986 8287 2985 8276
8289 10   8288 2990 8295 2989 8147 2988 8293 2987 8290 2986 8288
8290 6   8289 2987 8291 3117 8286 2986 8289
8291 6   8292 3116 8418 3117 8290 2987 8292
8292 6   8293 3114 8416 3116 8291 2987 8293
8293 6   8289 2988 8294 3114 8292 2987 8289
8294 6   7845 3113 8415 3114 8293 2988 7845
8295 6   8289 2990 8296 2991 8145 2989 8289
8296 6   8276 2995 8297 2991 8295 2990 8276
8297 10   8296 2995 8298 2994 8162 2993 8138 2992 8144 2991 8296
8298 6   8297 2995 8299 2996 8160 2994 8297
8299 6   8276 3000 8300 2996 8298 2995 8276
8300 10   8299 3000 8270 2999 8267 2998 8186 2997 8159 2996 8299
8301 10   8302 3005 8310 3004 8282 3003 8308 3002 8305 3001 8302
8302 6   8303 3025 8312 3005 8301 3001 8303
8303 6   8304 3024 8325 3025 8302 3001 8304
8304 6   8305 3122 8333 3024 8303 3001 8305
8305 6   8301 3002 8306 3122 8304 3001 8301
8306 6   8307 3121 8421 3122 8305 3002 8307
8307 6   8308 3119 8419 3121 8306 3002 8308
8308 6   8301 3003 8309 3119 8307 3002 8301
8309 6   8283 3118 8418 3119 8308 3003 8283
8310 6   8301 3005 8311 3006 8280 3004 8301
8311 6   8312 3010 8313 3006 8310 3005 8312
8312 10   8302 3025 8324 3020 8318 3015 8315 3010 8311 3005 8302
8313 10   8311 3010 8314 3009 8255 3008 8272 3007 8279 3006 8311
8314 6   8313 3010 8315 3011 8253 3009 8313
8315 6   8312 3015 8316 3011 8314 3010 8312
8316 10   8315 3015 8317 3014 4428 3013 8246 3012 8252 3011 8315
8317 6   8316 3015 8318 3016 4426 3014 8316
8318 6   8312 3020 8319 3016 8317 3015 8312
8319 10   8318 3020 8323 3019 8320 3018 4419 3017 4425 3016 8318
8320 6   8319 3019 8321 3028 4417 3018 8319
8321 6   8322 3027 8334 3028 8320 3019 8322
8322 6   8323 3021 8326 3027 8321 3019 8323
8323 6   8319 3020 8324 3021 8322 3019 8319
8324 6   8312 3025 8325 3021 8323 3020 8312
8325 10   8324 3025 8303 3024 8332 3023 8329 3022 8326 3021 8324
8326 6   8325 3022 8327 3027 8322 3021 8325
8327 6   8328 3026 8334 3027 8326 3022 8328
8328 6   8329 3049 8336 3026 8327 3022 8329
8329 6   8325 3023 8330 3049 8328 3022 8325
8330 6   8331 3048 8352 3049 8329 3023 8331
8331 10   8332 3123 8405 3098 8381 3073 8357 3048 8330 3023 8332
8332 6   8325 3024 8333 3123 8331 3023 8325
8333 6   8304 3122 8421 3123 8332 3024 8304
8334 10   8335 3030 8337 3029 4416 3028 8321 3027 8327 3026 8335
8335 6   8336 3050 8339 3030 8334 3026 8336
8336 6   8328 3049 8352 3050 8335 3026 8328
8337 6   8334 3030 8338 3031 4414 3029 8334
8338 6   8339 3035 8340 3031 8337 3030 8339
8339 10   8335 3050 8351 3045 8345 3040 8342 3035 8338 3030 8335
8340 10   8338 3035 8341 3034 4386 3033 4406 3032 4413 3031 8338
8341 6   8340 3035 8342 3036 4384 3034 8340
8342 6   8339 3040 8343 3036 8341 3035 8339
8343 10   8342 3040 8344 3039 5207 3038 4377 3037 4383 3036 8342
8344 6   8343 3040 8345 3041 5205 3039 8343
8345 6   8339 3045 8346 3041 8344 3040 8339
8346 10   8345 3045 8350 3044 8347 3043 5198 3042 5204 3041 8345
8347 6   8346 3044 8348 3053 5196 3043 8346
8348 6   8349 3052 8358 3053 8347 3044 8349
8349 6   8350 3046 8353 3052 8348 3044 8350
8350 6   8346 3045 8351 3046 8349 3044 8346
8351 6   8339 3050 8352 3046 8350 3045 8339
8352 10   8351 3050 8336 3049 8330 3048 8356 3047 8353 3046 8351
8353 6   8352 3047 8354 3052 8349 3046 8352
8354 6   8355 3051 8358 3052 8353 3047 8355
8355 6   8356 3074 8360 3051 8354 3047 8356
8356 6   8352 3048 8357 3074 8355 3047 8352
8357 6   8331 3073 8376 3074 8356 3048 8331
8358 10   8359 3055 8361 3054 5195 3053 8348 3052 8354 3051 8359
8359 6   8360 3075 8363 3055 8358 3051 8360
8360 6   8355 3074 8376 3075 8359 3051 8355
8361 6   8358 3055 8362 3056 5193 3054 8358
8362 6   8363 3060 8364 3056 8361 3055 8363
8363 10   8359 3075 8375 3070 8369 3065 8366 3060 8362 3055 8359
8364 10   8362 3060 8365 3059 5168 3058 5185 3057 5192 3056 8362
8365 6   8364 3060 8366 3061 5166 3059 8364
8366 6   8363 3065 8367 3061 8365 3060 8363
8367 10   8366 3065 8368 3064 7631 3063 5159 3062 5165 3061 8366
8368 6   8367 3065 8369 3066 7629 3064 8367
8369 6   8363 3070 8370 3066 8368 3065 8363
8370 10   8369 3070 8374 3069 8371 3068 7622 3067 7628 3066 8369
8371 6   8370 3069 8372 3078 7620 3068 8370
8372 6   8373 3077 8382 3078 8371 3069 8373
8373 6   8374 3071 8377 3077 8372 3069 8374
8374 6   8370 3070 8375 3071 8373 3069 8370
8375 6   8363 3075 8376 3071 8374 3070 8363
8376 10   8375 3075 8360 3074 8357 3073 8380 3072 8377 3071 8375
8377 6   8376 3072 8378 3077 8373 3071 8376
8378 6   8379 3076 8382 3077 8377 3072 8379
8379 6   8380 3099 8384 3076 8378 3072 8380
8380 6   8376 3073 8381 3099 8379 3072 8376
8381 6   8331 3098 8400 3099 8380 3073 8331
8382 10   8383 3080 8385 3079 7619 3078 8372 3077 8378 3076 8383
8383 6   8384 3100 8387 3080 8382 3076 8384
8384 6   8379 3099 8400 3100 8383 3076 8379
8385 6   8382 3080 8386 3081 7617 3079 8382
8386 6   8387 3085 8388 3081 8385 3080 8387
8387 10   8383 3100 8399 3095 8393 3090 8390 3085 8386 3080 8383
8388 10   8386 3085 8389 3084 7592 3083 7609 3082 7616 3081 8386
8389 6   8388 3085 8390 3086 7590 3084 8388
8390 6   8387 3090 8391 3086 8389 3085 8387
8391 10   8390 3090 8392 3089 7719 3088 7583 3087 7589 3086 8390
8392 6   8391 3090 8393 3091 7717 3089 8391
8393 6   8387 3095 8394 3091 8392 3090 8387
8394 10   8393 3095 8398 3094 8395 3093 7710 3092 7716 3091 8393
8395 6   8394 3094 8396 3103 7708 3093 8394
8396 6   8397 3102 8406 3103 8395 3094 8397
8397 6   8398 3096 8401 3102 8396 3094 8398
8398 6   8394 3095 8399 3096 8397 3094 8394
8399 6   8387 3100 8400 3096 8398 3095 8387
8400 10   8399 3100 8384 3099 8381 3098 8404 3097 8401 3096 8399
8401 6   8400 3097 8402 3102 8397 3096 8400
8402 6   8403 3101 8406 3102 8401 3097 8403
8403 6   8404 3124 8408 3101 8402 3097 8404
8404 6   8400 3098 8405 3124 8403 3097 8400
8405 6   8331 3123 8421 3124 8404 3098 8331
8406 10   8407 3105 8409 3104 7707 3103 8396 3102 8402 3101 8407
8407 6   8408 3125 8411 3105 8406 3101 8408
8408 6   8403 3124 8421 3125 8407 3101 8403
8409 6   8406 3105 8410 3106 7705 3104 8406
8410 6   8411 3110 8412 3106 8409 3105 8411
8411 10   8407 3125 8420 3120 8417 3115 8414 3110 8410 3105 8407
8412 10   8410 3110 8413 3109 7856 3108 7697 3107 7704 3106 8410
8413 6   8412 3110 8414 3111 7854 3109 8412
8414 6   8411 3115 8415 3111 8413 3110 8411
8415 10   8414 3115 8416 3114 8294 3113 7847 3112 7853 3111 8414
8416 6   8415 3115 8417 3116 8292 3114 8415
8417 6   8411 3120 8418 3116 8416 3115 8411
8418 10   8417 3120 8419 3119 8309 3118 8285 3117 8291 3116 8417
8419 6   8418 3120 8420 3121 8307 3119 8418
8420 6   8411 3125 8421 3121 8419 3120 8411
8421 10   8420 3125 8408 3124 8405 3123 8333 3122 8306 3121 8420

RADII:
9.107027178e-03   7.973704634e-03   7.262166411e-03   7.389116994e-03
1.065235270e-02   7.788703241e-03   7.105528875e-03   6.800761147e-03
6.856629852e-03   9.947148876e-03   7.239454110e-03   6.460685414e-03
6.052776863e-03   6.326558055e-03   9.544066526e-03   6.980840744e-03
6.176823076e-03   6.031862485e-03   6.815552893e-03   1.002791170e-02
8.348468542e-03   8.465343215e-03   1.279033888e-02   1.008372392e-02
1.157214553e-02   8.327968578e-03   7.135107174e-03   6.201435092e-03
6.350795139e-03   9.449856653e-03   6.739325690e-03   6.074067086e-03
5.883071091e-03   5.963904843e-03   8.741542101e-03   6.326485066e-03
5.602103386e-03   5.236379595e-03   5.549014207e-03   8.468763540e-03
6.234495730e-03   5.530152939e-03   5.555436915e-03   6.395717921e-03
9.175596521e-03   7.912797141e-03   8.358344888e-03   1.267395155e-02
9.583746251e-03   1.069763033e-02   8.481597892e-03   6.921440563e-03
5.894303817e-03   6.133447968e-03   9.791336066e-03   6.609123057e-03
5.625357405e-03   5.369342765e-03   5.861501105e-03   9.328784248e-03
6.990533905e-03   5.953390668e-03   7.536529414e-03   8.101108714e-03
1.096863267e-02   1.013835686e-02   3.214217567e-03   6.467861456e-03
8.324791214e-03   1.126947127e-02   9.281086922e-03   9.094891807e-03
1.297337996e-02   9.859810744e-03   1.169778810e-02   8.983445278e-03
8.412259332e-03   9.825451912e-03   7.128061004e-03   9.214132172e-03
5.676840567e-03   9.491975085e-04   7.737908729e-04   2.771047445e-03
6.187618462e-03   5.255524625e-03   1.862147757e-03   4.046506404e-03
5.284479327e-03   7.227223481e-03   5.845027155e-03   5.304462221e-03
5.260389838e-03   6.102169666e-03   8.529592479e-03   7.626199354e-03
8.219223890e-03   1.265286367e-02   9.826903601e-03   1.044387907e-02
8.342548846e-03   6.705846716e-03   5.635391121e-03   5.880113568e-03
9.663940366e-03   6.408776770e-03   5.254873326e-03   5.117236395e-03
6.077992690e-03   9.554658388e-03   7.768537699e-03   7.719987088e-03
1.219036102e-02   1.009158463e-02   1.157195042e-02   9.350417522e-03
8.223751448e-03   7.390928441e-03   7.926463539e-03   1.145776543e-02
9.128102392e-03   9.037466664e-03   1.301537883e-02   9.777136029e-03
1.166174663e-02   5.073362466e-03   4.813024924e-03   4.856805995e-03
5.049477484e-03   6.839030780e-03   5.508316301e-03   5.339517351e-03
5.219233556e-03   5.283207075e-03   7.193282458e-03   5.822053433e-03
5.435584221e-03   6.644345098e-03   5.754679022e-03   7.405048587e-03
5.767462777e-03   1.524943336e-03   2.610471185e-03   3.283642283e-03
5.752507593e-03   3.798741036e-03   2.977138927e-03   4.520412843e-03
4.732438186e-03   6.150020004e-03   2.342169940e-03   2.761057558e-03
3.160874938e-03   1.624187515e-03   1.818796087e-03   9.795029170e-04
1.420770406e-04   1.084381438e-04   3.435623594e-04   8.463814452e-04
4.994901808e-04   9.937928687e-05   8.758427339e-05   3.510039614e-04
8.014531900e-04   8.101169823e-04   3.263478887e-04   7.620388769e-04
1.089575791e-03   1.351637354e-03   1.452974503e-03   1.684489325e-03
3.251290278e-03   2.662202937e-03   2.136958937e-03   1.493908265e-03
1.276697634e-03   1.306990188e-03   9.367605384e-04   1.246481501e-03
6.727745777e-04   1.032192707e-04   8.067641132e-05   2.651462636e-04
6.555716979e-04   4.103761223e-04   8.501169473e-05   7.637288406e-05
3.170058805e-04   7.036244614e-04   7.937620167e-04   3.564089616e-04
9.311227020e-04   1.318373586e-03   1.327468092e-03   1.603738213e-03
2.162518494e-03   3.475331924e-03   2.037218315e-03   1.779093848e-03
2.508090303e-03   1.759987040e-03   1.922742420e-03   1.942658395e-03
2.954166378e-03   1.890933846e-03   3.415514796e-04   2.881506319e-04
1.091132139e-03   2.403769891e-03   2.309153226e-03   9.118401407e-04
2.182858965e-03   2.891242325e-03   3.358994117e-03   3.143782219e-03
3.257540533e-03   3.175710304e-03   3.219461981e-03   3.962050236e-03
3.469253769e-03   3.783140404e-03   4.776640784e-03   3.011222917e-03
3.802582327e-03   4.503196318e-03   3.480632903e-03   3.335174679e-03
3.892099290e-03   6.299040648e-03   4.685842915e-03   4.263103998e-03
4.549303162e-03   5.313418720e-03   7.379652538e-03   6.707034481e-03
7.353239506e-03   1.163822074e-02   8.604319662e-03   9.040076463e-03
7.243588291e-03   6.327254047e-03   5.282488548e-03   5.214153465e-03
7.790680173e-03   5.447878639e-03   4.783277138e-03   5.589218443e-03
4.661794391e-03   6.838970789e-03   5.566106856e-03   5.197775069e-03
4.723139844e-03   4.517877486e-03   6.388105905e-03   4.518673766e-03
3.921428788e-03   3.446953187e-03   3.566945766e-03   5.719659222e-03
4.070112527e-03   3.326795317e-03   4.126639623e-03   4.423763843e-03
6.149531956e-03   5.330174082e-03   1.592614773e-03   3.006196940e-03
3.902130312e-03   5.948555410e-03   4.604913406e-03   4.190784384e-03
6.699527863e-03   5.920763455e-03   6.748547445e-03   3.564055423e-03
3.679906739e-03   4.112074169e-03   2.416547432e-03   2.909579917e-03
1.574282238e-03   2.343388339e-04   1.808207329e-04   5.827933537e-04
1.436832773e-03   8.727748108e-04   1.770993309e-04   1.575551701e-04
6.425267504e-04   1.445207820e-03   1.544843723e-03   6.585725786e-04
1.634491624e-03   2.313279170e-03   2.568878232e-03   2.902603231e-03
3.579508048e-03   5.977845048e-03   4.291452891e-03   3.695832163e-03
3.726720499e-03   2.890765175e-03   3.107962386e-03   2.752643420e-03
3.944688298e-03   2.418254192e-03   4.158855924e-04   3.429941726e-04
1.247522588e-03   2.821895662e-03   2.418955819e-03   8.140714734e-04
1.531954490e-03   2.390217199e-03   3.642321914e-03   3.669162866e-03
1.312569295e-03   2.908584878e-03   3.845157701e-03   4.577162349e-03
4.328482101e-03   4.802879433e-03   6.831775587e-03   4.531801102e-03
5.033812736e-03   5.231466454e-03   4.322991260e-03   5.000969344e-03
4.232827259e-03   5.903319727e-03   3.744063076e-03   6.538989142e-04
5.435121895e-04   2.010903089e-03   4.437406755e-03   4.073358534e-03
1.547885203e-03   3.591653599e-03   4.710084825e-03   5.755361081e-03
5.082022787e-03   5.010083356e-03   4.783732272e-03   5.005284617e-03
6.622662042e-03   5.642425978e-03   5.838662808e-03   7.803559937e-03
5.779763502e-03   6.947988721e-03   6.375049150e-03   5.265148175e-03
4.912077417e-03   5.430249070e-03   8.348522115e-03   6.236017398e-03
5.695158780e-03   5.877034379e-03   6.588843914e-03   9.138622764e-03
7.920827368e-03   8.423113620e-03   1.239084188e-02   8.856573601e-03
1.019537011e-02   7.458970487e-03   5.956973875e-03   5.016042659e-03
5.468115853e-03   8.742440490e-03   6.318543280e-03   5.735057250e-03
7.878067115e-03   6.690671933e-03   8.768545307e-03   7.538517429e-03
6.807861438e-03   6.123579321e-03   6.032221814e-03   8.812310487e-03
6.230009786e-03   5.412611348e-03   4.975511525e-03   5.274962882e-03
8.224862578e-03   6.102270714e-03   5.211938182e-03   6.513995195e-03
6.668658378e-03   9.048558504e-03   7.820360596e-03   2.314867192e-03
4.349628750e-03   5.617599068e-03   8.548457870e-03   6.559704180e-03
5.972787903e-03   9.394264228e-03   8.105994866e-03   9.436960896e-03
5.140630410e-03   5.284068753e-03   5.939022552e-03   3.505819479e-03
4.234247737e-03   2.294758016e-03   3.422656286e-04   2.643227015e-04
8.531209143e-04   2.102824157e-03   1.280903644e-03   2.604055335e-04
2.318816946e-04   9.473137418e-04   2.126858295e-03   2.287545594e-03
9.818388769e-04   2.456501335e-03   3.465927577e-03   3.796605394e-03
4.298502515e-03   5.300987322e-03   8.575268611e-03   6.160303865e-03
5.389122351e-03   5.660642217e-03   4.356578272e-03   4.740622026e-03
4.360164135e-03   6.309357591e-03   3.993549574e-03   7.049894748e-04
5.887948064e-04   2.194384265e-03   4.841352067e-03   4.505750820e-03
1.734343664e-03   4.074475110e-03   5.335274502e-03   6.404941085e-03
5.708002981e-03   5.634748920e-03   5.270057635e-03   5.540542206e-03
7.369383651e-03   6.334336069e-03   6.676216694e-03   9.613116422e-03
6.659636065e-03   7.729928512e-03   7.035932989e-03   5.822043062e-03
5.334895786e-03   5.684951853e-03   8.466647880e-03   6.185369673e-03
5.691399895e-03   5.541009527e-03   5.631669178e-03   8.164875116e-03
6.033429493e-03   5.414610702e-03   5.169226518e-03   5.499040849e-03
8.121836734e-03   6.165434606e-03   5.668315442e-03   5.694436052e-03
6.254681678e-03   8.728016804e-03   7.356155735e-03   7.596447238e-03
1.053073188e-02   7.903040527e-03   9.513620493e-03   8.071831342e-03
6.658321013e-03   5.985713924e-03   6.530488641e-03   1.018807713e-02
7.439923320e-03   6.716620738e-03   6.944603883e-03   7.712525851e-03
1.084401781e-02   9.154656394e-03   9.435377970e-03   1.327346372e-02
9.980331120e-03   1.197110750e-02   8.805713417e-03   7.161855325e-03
6.304205253e-03   6.943805790e-03   1.076636349e-02   8.103705258e-03
7.624675058e-03   1.063601331e-02   8.734881323e-03   1.105388628e-02
9.381615006e-03   8.316456464e-03   7.294537874e-03   7.137846193e-03
1.034746272e-02   7.263023644e-03   6.380357056e-03   5.884605960e-03
5.981106307e-03   9.120034449e-03   6.380302337e-03   5.503758378e-03
5.221266615e-03   5.673950017e-03   8.777661863e-03   6.494479959e-03
5.803742297e-03   5.879279873e-03   6.798718045e-03   9.751579571e-03
8.518500077e-03   9.047680401e-03   1.418286293e-02   1.077474575e-02
1.169365836e-02   8.985337135e-03   7.382660988e-03   6.244357647e-03
6.476962887e-03   1.009507606e-02   6.955170179e-03   6.086599642e-03
5.957242115e-03   6.263370635e-03   9.396967170e-03   6.884794321e-03
6.160104414e-03   5.979207630e-03   6.476831956e-03   9.613047696e-03
7.418331030e-03   6.882895637e-03   7.076919353e-03   7.911897389e-03
1.078609723e-02   9.486003048e-03   1.020462029e-02   1.489374983e-02
1.070460638e-02   1.207012369e-02   1.084813073e-02   8.670768492e-03
7.613022298e-03   8.353213785e-03   1.347953601e-02   9.549874495e-03
8.391724090e-03   8.660163322e-03   9.904300111e-03   1.432026837e-02
1.215873119e-02   1.256535183e-02   1.873352440e-02   1.438318372e-02
1.658482829e-02   1.269823509e-02   1.063177756e-02   9.245112411e-03
9.994269328e-03   1.520113416e-02   1.153756791e-02   1.100359443e-02
1.563113177e-02   1.215512191e-02   1.527098481e-02   1.083284322e-02
9.776337652e-03   8.875503931e-03   8.717141923e-03   1.230026243e-02
8.885768661e-03   8.003769684e-03   7.364922745e-03   7.313637209e-03
1.095828330e-02   7.649875349e-03   6.558367979e-03   6.109060056e-03
6.608845381e-03   1.031113389e-02   7.529922610e-03   6.680560997e-03
6.770400485e-03   7.790744597e-03   1.126185683e-02   9.663334929e-03
1.002975756e-02   1.507717278e-02   1.198790249e-02   1.340773518e-02
1.009375261e-02   8.385115198e-03   7.186499194e-03   7.551019902e-03
1.188873729e-02   8.295898727e-03   7.204149192e-03   7.163773898e-03
7.980047439e-03   1.186085451e-02   9.541779498e-03   9.335544169e-03
1.329811557e-02   1.077017733e-02   1.317368741e-02   9.917785609e-03
8.251323121e-03   7.408124250e-03   8.280565942e-03   1.259472042e-02
9.922440837e-03   9.720693468e-03   1.466137782e-02   1.148495162e-02
1.350815306e-02   9.107031348e-03   7.973706904e-03   7.262167845e-03
7.389118216e-03   1.065235747e-02   7.788706021e-03   7.105529809e-03
6.800762272e-03   6.856631409e-03   9.947152520e-03   7.239456689e-03
6.460688269e-03   6.052779928e-03   6.326562575e-03   9.544071040e-03
6.980845438e-03   6.176827851e-03   6.031868586e-03   6.815559338e-03
1.002791929e-02   8.348475417e-03   8.465351422e-03   1.279034956e-02
1.008373066e-02   1.157215211e-02   8.327978119e-03   7.135113622e-03
6.201441139e-03   6.350802174e-03   9.449868192e-03   6.739334647e-03
6.074075008e-03   5.883079603e-03   5.963913494e-03   8.741554687e-03
6.326495429e-03   5.602113189e-03   5.236388660e-03   5.549024448e-03
8.468776610e-03   6.234505893e-03   5.530162455e-03   5.555446827e-03
6.395728555e-03   9.175610209e-03   7.912808661e-03   8.358356154e-03
1.267396518e-02   9.583757216e-03   1.069764404e-02   8.481610155e-03
6.921450856e-03   5.894313407e-03   6.133458223e-03   9.791351798e-03
6.609135662e-03   5.625368636e-03   5.369354181e-03   5.861512889e-03
9.328801777e-03   6.990547741e-03   5.953403532e-03   7.536544046e-03
8.101124248e-03   1.096865105e-02   1.013837293e-02   3.214222242e-03
6.467869978e-03   8.324802127e-03   1.126948772e-02   9.281098942e-03
9.094901326e-03   1.297339290e-02   9.859823805e-03   1.169780523e-02
8.983453687e-03   8.412268480e-03   9.825463357e-03   7.128067641e-03
9.214139534e-03   5.676845216e-03   9.491982161e-04   7.737914332e-04
2.771049293e-03   6.187622785e-03   5.255527979e-03   1.862148721e-03
4.046508328e-03   5.284481700e-03   7.227227111e-03   5.845030004e-03
5.304463825e-03   5.260391901e-03   6.102172260e-03   8.529596783e-03
7.626203854e-03   8.219228705e-03   1.265287256e-02   9.826912605e-03
1.044388703e-02   8.342552180e-03   6.705849667e-03   5.635393084e-03
5.880114600e-03   9.663942401e-03   6.408777911e-03   5.254873849e-03
5.117236435e-03   6.077992481e-03   9.554659004e-03   7.768536408e-03
7.719985299e-03   1.219035562e-02   1.009158362e-02   1.157194962e-02
9.350417276e-03   8.223750246e-03   7.390929848e-03   7.926465178e-03
1.145776712e-02   9.128105160e-03   9.037471492e-03   1.301538740e-02
9.777141255e-03   1.166175057e-02   5.073361530e-03   4.813024603e-03
4.856805383e-03   5.049477266e-03   6.839030825e-03   5.508316612e-03
5.339518035e-03   5.219235111e-03   5.283208259e-03   7.193283723e-03
5.822054563e-03   5.435586498e-03   6.644346690e-03   5.754680415e-03
7.405049999e-03   5.767463102e-03   1.524943363e-03   2.610471099e-03
3.283641750e-03   5.752507558e-03   3.798740778e-03   2.977138619e-03
4.520412318e-03   4.732437172e-03   6.150019989e-03   2.342169480e-03
2.761057216e-03   3.160874945e-03   1.624187199e-03   1.818795971e-03
9.795026594e-04   1.420770167e-04   1.084381224e-04   3.435622976e-04
8.463813599e-04   4.994900456e-04   9.937926734e-05   8.758425447e-05
3.510038932e-04   8.014530289e-04   8.101167810e-04   3.263478135e-04
7.620387018e-04   1.089575521e-03   1.351637064e-03   1.452974170e-03
1.684488867e-03   3.251289419e-03   2.662202278e-03   2.136958412e-03
1.493907852e-03   1.276697343e-03   1.306989772e-03   9.367602897e-04
1.246481112e-03   6.727743755e-04   1.032192382e-04   8.067638588e-05
2.651461795e-04   6.555714709e-04   4.103759993e-04   8.501166631e-05
7.637285895e-05   3.170057752e-04   7.036242211e-04   7.937617397e-04
3.564088380e-04   9.311223535e-04   1.318373137e-03   1.327467678e-03
1.603737641e-03   2.162517728e-03   3.475330944e-03   2.037217704e-03
1.779093316e-03   2.508089373e-03   1.759986341e-03   1.922741753e-03
1.942657561e-03   2.954165197e-03   1.890933004e-03   3.415513244e-04
2.881504984e-04   1.091131627e-03   2.403768795e-03   2.309152075e-03
9.118396696e-04   2.182857740e-03   2.891240773e-03   3.358992442e-03
3.143780522e-03   3.257538839e-03   3.175708684e-03   3.219460547e-03
3.962048438e-03   3.469252189e-03   3.783138822e-03   4.776639131e-03
3.011221855e-03   3.802580699e-03   4.503194719e-03   3.480631409e-03
3.335172948e-03   3.892097302e-03   6.299037782e-03   4.685840527e-03
4.263101383e-03   4.549300383e-03   5.313415741e-03   7.379648814e-03
6.707030900e-03   7.353235394e-03   1.163821456e-02   8.604316583e-03
9.040073044e-03   7.243586729e-03   6.327253031e-03   5.282487787e-03
5.214152453e-03   7.790677204e-03   5.447877560e-03   4.783276170e-03
5.589217085e-03   4.661792868e-03   6.838968393e-03   5.566102675e-03
5.197771130e-03   4.723136603e-03   4.517874395e-03   6.388101769e-03
4.518671076e-03   3.921426714e-03   3.446951215e-03   3.566943825e-03
5.719655623e-03   4.070110008e-03   3.326793347e-03   4.126637534e-03
4.423760866e-03   6.149527779e-03   5.330170482e-03   1.592613578e-03
3.006194572e-03   3.902127259e-03   5.948551102e-03   4.604909679e-03
4.190780879e-03   6.699522082e-03   5.920758660e-03   6.748542351e-03
3.564052332e-03   3.679903679e-03   4.112070845e-03   2.416545326e-03
2.909577317e-03   1.574280831e-03   2.343386208e-04   1.808205677e-04
5.827928187e-04   1.436831476e-03   8.727740043e-04   1.770991663e-04
1.575550232e-04   6.425261530e-04   1.445206484e-03   1.544842276e-03
6.585719586e-04   1.634490076e-03   2.313277003e-03   2.568875854e-03
2.902600537e-03   3.579504673e-03   5.977839574e-03   4.291449140e-03
3.695828794e-03   3.726716913e-03   2.890762432e-03   3.107959394e-03
2.752640750e-03   3.944684429e-03   2.418251802e-03   4.158851769e-04
3.429938292e-04   1.247521340e-03   2.821892844e-03   2.418953403e-03
8.140706523e-04   1.531952946e-03   2.390214798e-03   3.642318263e-03
3.669159174e-03   1.312567975e-03   2.908581936e-03   3.845153875e-03
4.577157811e-03   4.328477808e-03   4.802874721e-03   6.831769148e-03
4.531796809e-03   5.033807841e-03   5.231461246e-03   4.322986922e-03
5.000964357e-03   4.232822909e-03   5.903313704e-03   3.744059220e-03
6.538982287e-04   5.435116180e-04   2.010900973e-03   4.437402129e-03
4.073354182e-03   1.547883540e-03   3.591649698e-03   4.710079777e-03
5.755355037e-03   5.082017427e-03   5.010077966e-03   4.783727281e-03
5.005279547e-03   6.622655159e-03   5.642420455e-03   5.838657313e-03
7.803552627e-03   5.779757931e-03   6.947981735e-03   6.375043225e-03
5.265143123e-03   4.912072446e-03   5.430243709e-03   8.348514316e-03
6.236011399e-03   5.695152983e-03   5.877028595e-03   6.588837846e-03
9.138614771e-03   7.920820777e-03   8.423106960e-03   1.239083374e-02
8.856568227e-03   1.019536210e-02   7.458965276e-03   5.956969994e-03
5.016039596e-03   5.468111863e-03   8.742433797e-03   6.318538523e-03
5.735052768e-03   7.878060338e-03   6.690665915e-03   8.768537979e-03
7.538508583e-03   6.807853859e-03   6.123572991e-03   6.032215397e-03
8.812300614e-03   6.230003094e-03   5.412605903e-03   4.975506468e-03
5.274957306e-03   8.224853551e-03   6.102263971e-03   5.211932498e-03
6.513987877e-03   6.668650774e-03   9.048547928e-03   7.820351114e-03
2.314864280e-03   4.349623082e-03   5.617591789e-03   8.548447278e-03
6.559695671e-03   5.972779849e-03   9.394251575e-03   8.105984768e-03
9.436949539e-03   5.140623154e-03   5.284061595e-03   5.939014688e-03
3.505814505e-03   4.234241585e-03   2.294754693e-03   3.422651231e-04
2.643223097e-04   8.531196447e-04   2.102821053e-03   1.280901730e-03
2.604051400e-04   2.318813438e-04   9.473123118e-04   2.126855088e-03
2.287542077e-03   9.818373704e-04   2.456497500e-03   3.465922269e-03
3.796599771e-03   4.298495934e-03   5.300979264e-03   8.575256061e-03
6.160295204e-03   5.389114476e-03   5.660633381e-03   4.356571382e-03
4.740614678e-03   4.360156982e-03   6.309347187e-03   3.993542929e-03
7.049882739e-04   5.887937976e-04   2.194380486e-03   4.841343812e-03
4.505742967e-03   1.734340561e-03   4.074467609e-03   5.335264806e-03
6.404929766e-03   5.707992812e-03   5.634738773e-03   5.270048767e-03
5.540532973e-03   7.369371277e-03   6.334325439e-03   6.676206362e-03
9.613101969e-03   6.659625901e-03   7.729915806e-03   7.035922087e-03
5.822033353e-03   5.334886570e-03   5.684942096e-03   8.466634215e-03
6.185359568e-03   5.691389736e-03   5.540999829e-03   5.631659544e-03
8.164861655e-03   6.033419656e-03   5.414602205e-03   5.169218382e-03
5.499032925e-03   8.121824611e-03   6.165426123e-03   5.668307863e-03
5.694428931e-03   6.254673719e-03   8.728004243e-03   7.356145577e-03
7.596437324e-03   1.053071731e-02   7.903028944e-03   9.513605792e-03
8.071821434e-03   6.658312608e-03   5.985706185e-03   6.530481153e-03
1.018806593e-02   7.439915935e-03   6.716613705e-03   6.944598031e-03
7.712519281e-03   1.084400765e-02   9.154649281e-03   9.435372376e-03
1.327345566e-02   9.980323807e-03   1.197109717e-02   8.805705711e-03
7.161848814e-03   6.304199054e-03   6.943798593e-03   1.076635266e-02
8.103696425e-03   7.624665980e-03   1.063599965e-02   8.734870480e-03
1.105387389e-02   9.381606961e-03   8.316450164e-03   7.294532163e-03
7.137839345e-03   1.034745246e-02   7.263015945e-03   6.380350314e-03
5.884598739e-03   5.981099222e-03   9.120024127e-03   6.380293904e-03
5.503750456e-03   5.221259216e-03   5.673942508e-03   8.777650387e-03
6.494471111e-03   5.803734052e-03   5.879272117e-03   6.798709836e-03
9.751568108e-03   8.518490746e-03   9.047670788e-03   1.418285099e-02
1.077473664e-02   1.169364623e-02   8.985326837e-03   7.382652063e-03
6.244349194e-03   6.476953993e-03   1.009506322e-02   6.955160498e-03
6.086590067e-03   5.957232515e-03   6.263360723e-03   9.396953572e-03
6.884783813e-03   6.160094565e-03   5.979198377e-03   6.476822996e-03
9.613034341e-03   7.418321196e-03   6.882887166e-03   7.076912195e-03
7.911889292e-03   1.078608437e-02   9.485992973e-03   1.020461196e-02
1.489373884e-02   1.070459634e-02   1.207011005e-02   1.084812286e-02
8.670760418e-03   7.613014567e-03   8.353205989e-03   1.347952704e-02
9.549867219e-03   8.391716084e-03   8.660155380e-03   9.904292875e-03
1.432025811e-02   1.215872436e-02   1.256534590e-02   1.873352171e-02
1.438318341e-02   1.658482258e-02   1.269823271e-02   1.063177779e-02
9.245112300e-03   9.994268477e-03   1.520112988e-02   1.153756495e-02
1.100359101e-02   1.563112423e-02   1.215511395e-02   1.527097650e-02
1.083284217e-02   9.776336405e-03   8.875503802e-03   8.717143971e-03
1.230026397e-02   8.885771183e-03   8.003772781e-03   7.364927262e-03
7.313640311e-03   1.095828681e-02   7.649879790e-03   6.558372344e-03
6.109063112e-03   6.608847788e-03   1.031113766e-02   7.529925325e-03
6.680563490e-03   6.770401376e-03   7.790745013e-03   1.126185784e-02
9.663334623e-03   1.002975561e-02   1.507716719e-02   1.198789995e-02
1.340773491e-02   1.009374994e-02   8.385114863e-03   7.186499558e-03
7.551020098e-03   1.188873527e-02   8.295898355e-03   7.204149533e-03
7.163774465e-03   7.980047528e-03   1.186085340e-02   9.541777366e-03
9.335542531e-03   1.329811108e-02   1.077017196e-02   1.317368283e-02
9.917780120e-03   8.251317281e-03   7.408118620e-03   8.280559885e-03
1.259471413e-02   9.922434889e-03   9.720686927e-03   1.466136845e-02
1.148494697e-02   1.350814806e-02   9.107011305e-03   7.973688254e-03
7.262150995e-03   7.389102443e-03   1.065233532e-02   7.788689775e-03
7.105515413e-03   6.800749413e-03   6.856618814e-03   9.947133424e-03
7.239444043e-03   6.460677489e-03   6.052770139e-03   6.326551835e-03
9.544054388e-03   6.980833858e-03   6.176818036e-03   6.031858434e-03
6.815546984e-03   1.002790074e-02   8.348459468e-03   8.465335051e-03
1.279032266e-02   1.008370862e-02   1.157212858e-02   8.327962757e-03
7.135100791e-03   6.201430556e-03   6.350791813e-03   9.449852371e-03
6.739323924e-03   6.074065991e-03   5.883071271e-03   5.963905075e-03
8.741540994e-03   6.326485768e-03   5.602105148e-03   5.236381167e-03
5.549015602e-03   8.468763079e-03   6.234495969e-03   5.530153414e-03
5.555437070e-03   6.395716849e-03   9.175594161e-03   7.912793950e-03
8.358339742e-03   1.267393884e-02   9.583738174e-03   1.069762447e-02
8.481593131e-03   6.921437834e-03   5.894302680e-03   6.133446991e-03
9.791333127e-03   6.609123321e-03   5.625358633e-03   5.369344480e-03
5.861502171e-03   9.328784033e-03   6.990534368e-03   5.953392374e-03
7.536530510e-03   8.101107857e-03   1.096862976e-02   1.013835183e-02
3.214215228e-03   6.467855282e-03   8.324783123e-03   1.126946395e-02
9.281077957e-03   9.094880047e-03   1.297336338e-02   9.859802918e-03
1.169778063e-02   8.983431358e-03   8.412248678e-03   9.825440123e-03
7.128049372e-03   9.214115401e-03   5.676829965e-03   9.491956117e-04
7.737892898e-04   2.771041550e-03   6.187605689e-03   5.255512804e-03
1.862143235e-03   4.046496086e-03   5.284465726e-03   7.227206411e-03
5.845012584e-03   5.304447683e-03   5.260376168e-03   6.102154713e-03
8.529572757e-03   7.626182828e-03   8.219206985e-03   1.265284155e-02
9.826888370e-03   1.044385930e-02   8.342529485e-03   6.705830976e-03
5.635376487e-03   5.880097108e-03   9.663914633e-03   6.408758431e-03
5.254857082e-03   5.117219762e-03   6.077973199e-03   9.554630148e-03
7.768512586e-03   7.719960927e-03   1.219031910e-02   1.009155509e-02
1.157191691e-02   9.350392169e-03   8.223729702e-03   7.390911769e-03
7.926445742e-03   1.145773716e-02   9.128082639e-03   9.037450307e-03
1.301535711e-02   9.777116188e-03   1.166171948e-02   5.073343729e-03
4.813007792e-03   4.856789048e-03   5.049460679e-03   6.839007782e-03
5.508298778e-03   5.339501450e-03   5.219219105e-03   5.283191849e-03
7.193260157e-03   5.822036084e-03   5.435569567e-03   6.644326257e-03
5.754661410e-03   7.405025357e-03   5.767443205e-03   1.524937939e-03
2.610461581e-03   3.283629791e-03   5.752487372e-03   3.798726857e-03
2.977127366e-03   4.520395152e-03   4.732419899e-03   6.149998087e-03
2.342160475e-03   2.761046866e-03   3.160863087e-03   1.624180931e-03
1.818788834e-03   9.794988058e-04   1.420764504e-04   1.084376891e-04
3.435609231e-04   8.463779855e-04   4.994880439e-04   9.937886594e-05
8.758390042e-05   3.510024766e-04   8.014498133e-04   8.101135180e-04
3.263464926e-04   7.620356139e-04   1.089571126e-03   1.351631649e-03
1.452968360e-03   1.684482127e-03   3.251276682e-03   2.662192018e-03
2.136950005e-03   1.493901803e-03   1.276692188e-03   1.306984466e-03
9.367564495e-04   1.246476006e-03   6.727715967e-04   1.032188087e-04
8.067604967e-05   2.651450766e-04   6.555687562e-04   4.103742910e-04
8.501131139e-05   7.637254005e-05   3.170044567e-04   7.036213098e-04
7.937584601e-04   3.564073666e-04   9.311185330e-04   1.318367734e-03
1.327462224e-03   1.603731124e-03   2.162509044e-03   3.475317192e-03
2.037209548e-03   1.779086081e-03   2.508079291e-03   1.759979210e-03
1.922733897e-03   1.942649666e-03   2.954153267e-03   1.890925317e-03
3.415499310e-04   2.881493227e-04   1.091127194e-03   2.403759069e-03
2.309142720e-03   9.118359822e-04   2.182848950e-03   2.891229166e-03
3.358978965e-03   3.143767995e-03   3.257525921e-03   3.175696230e-03
3.219447926e-03   3.962032681e-03   3.469238602e-03   3.783124287e-03
4.776620708e-03   3.011209893e-03   3.802565557e-03   4.503177657e-03
3.480617974e-03   3.335160056e-03   3.892082482e-03   6.299014381e-03
4.685822974e-03   4.263085315e-03   4.549283512e-03   5.313396523e-03
7.379622246e-03   6.707007458e-03   7.353210450e-03   1.163817746e-02
8.604288614e-03   9.040041965e-03   7.243562620e-03   6.327232755e-03
5.282470474e-03   5.214134577e-03   7.790650306e-03   5.447858251e-03
4.783259017e-03   5.589196184e-03   4.661775296e-03   6.838943420e-03
5.566081240e-03   5.197751599e-03   4.723119038e-03   4.517857317e-03
6.388077005e-03   4.518653695e-03   3.921411734e-03   3.446937895e-03
3.566929825e-03   5.719633224e-03   4.070093912e-03   3.326780075e-03
4.126620918e-03   4.423743174e-03   6.149503300e-03   5.330149020e-03
1.592607131e-03   3.006182356e-03   3.902111445e-03   5.948527289e-03
4.604891184e-03   4.190763920e-03   6.699495382e-03   5.920735585e-03
6.748515773e-03   3.564037727e-03   3.679888700e-03   4.112054000e-03
2.416535316e-03   2.909565218e-03   1.574274243e-03   2.343376319e-04
1.808198034e-04   5.827903580e-04   1.436825432e-03   8.727703191e-04
1.770984149e-04   1.575543547e-04   6.425234362e-04   1.445200399e-03
1.544835775e-03   6.585691875e-04   1.634483221e-03   2.313267342e-03
2.568865117e-03   2.902588493e-03   3.579489965e-03   5.977815436e-03
4.291431690e-03   3.695813526e-03   3.726701545e-03   2.890750424e-03
3.107946428e-03   2.752629258e-03   3.944668044e-03   2.418241691e-03
4.158834294e-04   3.429923871e-04   1.247516111e-03   2.821881074e-03
2.418943281e-03   8.140672445e-04   1.531946543e-03   2.390204843e-03
3.642303149e-03   3.669144029e-03   1.312562590e-03   2.908570123e-03
3.845138289e-03   4.577139032e-03   4.328460286e-03   4.802855614e-03
6.831741969e-03   4.531778367e-03   5.033787199e-03   5.231440742e-03
4.322969654e-03   5.000944319e-03   4.232806311e-03   5.903290862e-03
3.744044764e-03   6.538957096e-04   5.435095310e-04   2.010893324e-03
4.437385252e-03   4.073338926e-03   1.547877828e-03   3.591636657e-03
4.710062783e-03   5.755333720e-03   5.081999000e-03   5.010060242e-03
4.783710311e-03   5.005261330e-03   6.622630635e-03   5.642399433e-03
5.838635479e-03   7.803522588e-03   5.779735352e-03   6.947955176e-03
6.375019910e-03   5.265123841e-03   4.912054910e-03   5.430224801e-03
8.348485085e-03   6.235990215e-03   5.695134179e-03   5.877009804e-03
6.588816719e-03   9.138584132e-03   7.920795332e-03   8.423081182e-03
1.239079590e-02   8.856539087e-03   1.019532782e-02   7.458939670e-03
5.956949032e-03   5.016021292e-03   5.468091824e-03   8.742402720e-03
6.318515140e-03   5.735030924e-03   7.878029950e-03   6.690640825e-03
8.768506104e-03   7.538485878e-03   6.807833559e-03   6.123554050e-03
6.032196139e-03   8.812272587e-03   6.229982548e-03   5.412587486e-03
4.975489114e-03   5.274939045e-03   8.224826103e-03   6.102242973e-03
5.211914025e-03   6.513964928e-03   6.668628209e-03   9.048517979e-03
7.820325787e-03   2.314856957e-03   4.349609644e-03   5.617574606e-03
8.548420415e-03   6.559675885e-03   5.972762526e-03   9.394225308e-03
8.105961267e-03   9.436920648e-03   5.140608389e-03   5.284045916e-03
5.938996811e-03   3.505804242e-03   4.234229422e-03   2.294748052e-03
3.422641331e-04   2.643215462e-04   8.531171951e-04   2.102815037e-03
1.280898075e-03   2.604043986e-04   2.318806851e-04   9.473096398e-04
2.126849100e-03   2.287535735e-03   9.818346829e-04   2.456490910e-03
3.465912960e-03   3.796589274e-03   4.298484345e-03   5.300965424e-03
8.575233329e-03   6.160277953e-03   5.389099410e-03   5.660619115e-03
4.356560018e-03   4.740602283e-03   4.360146131e-03   6.309331870e-03
3.993533331e-03   7.049866012e-04   5.887924114e-04   2.194375405e-03
4.841332546e-03   4.505732821e-03   1.734336793e-03   4.074459050e-03
5.335253665e-03   6.404915666e-03   5.707980702e-03   5.634727386e-03
5.270037852e-03   5.540520902e-03   7.369354821e-03   6.334310995e-03
6.676190820e-03   9.613078116e-03   6.659609068e-03   7.729897306e-03
7.035906301e-03   5.822020455e-03   5.334875348e-03   5.684930628e-03
8.466616555e-03   6.185347376e-03   5.691379217e-03   5.540989935e-03
5.631649198e-03   8.164845665e-03   6.033408430e-03   5.414592381e-03
5.169208863e-03   5.499022178e-03   8.121808427e-03   6.165413472e-03
5.668296119e-03   5.694416480e-03   6.254659576e-03   8.727985461e-03
7.356128648e-03   7.596418734e-03   1.053069074e-02   7.903010246e-03
9.513584570e-03   8.071801269e-03   6.658296862e-03   5.985692487e-03
6.530465930e-03   1.018804058e-02   7.439898231e-03   6.716598558e-03
6.944582146e-03   7.712500649e-03   1.084398027e-02   9.154625835e-03
9.435347966e-03   1.327341872e-02   9.980294781e-03   1.197106437e-02
8.805679912e-03   7.161826741e-03   6.304179476e-03   6.943777898e-03
1.076632219e-02   8.103673229e-03   7.624643985e-03   1.063597058e-02
8.734847789e-03   1.105384446e-02   9.381588870e-03   8.316433053e-03
7.294516169e-03   7.137823895e-03   1.034743161e-02   7.263000277e-03
6.380335863e-03   5.884585628e-03   5.981086537e-03   9.120005431e-03
6.380281079e-03   5.503739518e-03   5.221249466e-03   5.673932153e-03
8.777633961e-03   6.494459666e-03   5.803724568e-03   5.879262948e-03
6.798698849e-03   9.751551109e-03   8.518476615e-03   9.047657085e-03
1.418282927e-02   1.077471762e-02   1.169362520e-02   8.985314460e-03
7.382640821e-03   6.244339859e-03   6.476945021e-03   1.009505039e-02
6.955151449e-03   6.086582236e-03   5.957225262e-03   6.263353681e-03
9.396942379e-03   6.884776538e-03   6.160088561e-03   5.979193114e-03
6.476816907e-03   9.613024563e-03   7.418314374e-03   6.882881378e-03
7.076905979e-03   7.911881508e-03   1.078607294e-02   9.485982585e-03
1.020460078e-02   1.489371932e-02   1.070458139e-02   1.207009496e-02
1.084811220e-02   8.670752045e-03   7.613007777e-03   8.353199562e-03
1.347951624e-02   9.549860627e-03   8.391711125e-03   8.660151261e-03
9.904288195e-03   1.432024974e-02   1.215871930e-02   1.256534273e-02
1.873351828e-02   1.438317656e-02   1.658481381e-02   1.269822520e-02
1.063177174e-02   9.245105512e-03   9.994259407e-03   1.520111842e-02
1.153755339e-02   1.100357854e-02   1.563110428e-02   1.215510015e-02
1.527096214e-02   1.083282898e-02   9.776326173e-03   8.875495277e-03
8.717135146e-03   1.230024987e-02   8.885761959e-03   8.003764904e-03
7.364918855e-03   7.313631895e-03   1.095827299e-02   7.649869422e-03
6.558363081e-03   6.109054453e-03   6.608837530e-03   1.031112306e-02
7.529913565e-03   6.680552156e-03   6.770389098e-03   7.790731762e-03
1.126184088e-02   9.663319017e-03   1.002973854e-02   1.507714379e-02
1.198788377e-02   1.340771590e-02   1.009373133e-02   8.385100234e-03
7.186486437e-03   7.551005617e-03   1.188871081e-02   8.295880697e-03
7.204134039e-03   7.163758226e-03   7.980028616e-03   1.186082636e-02
9.541754322e-03   9.335517717e-03   1.329807412e-02   1.077014399e-02
1.317365129e-02   9.917755876e-03   8.251297125e-03   7.408101494e-03
8.280541865e-03   1.259468621e-02   9.922414544e-03   9.720668273e-03
1.466134363e-02   1.148492663e-02   1.350812109e-02   9.107004520e-03
7.973683193e-03   7.262147003e-03   7.389098157e-03   1.065232786e-02
7.788684866e-03   7.105511656e-03   6.800745526e-03   6.856614534e-03
9.947126455e-03   7.239438861e-03   6.460672620e-03   6.052765401e-03
6.326546213e-03   9.544046457e-03   6.980827154e-03   6.176811798e-03
6.031851791e-03   6.815539749e-03   1.002789145e-02   8.348450887e-03
8.465325560e-03   1.279030932e-02   1.008369976e-02   1.157211854e-02
8.327952439e-03   7.135092681e-03   6.201423266e-03   6.350783887e-03
9.449839581e-03   6.739314767e-03   6.074057523e-03   5.883062475e-03
5.963895817e-03   8.741527716e-03   6.326475544e-03   5.602095399e-03
5.236371820e-03   5.549005824e-03   8.468749441e-03   6.234485396e-03
5.530143656e-03   5.555427398e-03   6.395706583e-03   9.175579933e-03
7.912782107e-03   8.358327861e-03   1.267392343e-02   9.583726598e-03
1.069760967e-02   8.481580479e-03   6.921427133e-03   5.894292861e-03
6.133436433e-03   9.791316838e-03   6.609111329e-03   5.625347780e-03
5.369333737e-03   5.861490740e-03   9.328767137e-03   6.990521129e-03
5.953380370e-03   7.536515580e-03   8.101093335e-03   1.096861081e-02
1.013833557e-02   3.214210491e-03   6.467846502e-03   8.324772027e-03
1.126944707e-02   9.281065693e-03   9.094869535e-03   1.297334873e-02
9.859789711e-03   1.169776352e-02   8.983422098e-03   8.412238633e-03
9.825428166e-03   7.128042087e-03   9.214106888e-03   5.676824854e-03
9.491948049e-04   7.737886491e-04   2.771039362e-03   6.187600694e-03
5.255508991e-03   1.862142030e-03   4.046493729e-03   5.284462725e-03
7.227201508e-03   5.845009146e-03   5.304445031e-03   5.260373400e-03
6.102150991e-03   8.529566771e-03   7.626177348e-03   8.219200921e-03
1.265283024e-02   9.826878492e-03   1.044385025e-02   8.342524234e-03
6.705826790e-03   5.635373484e-03   5.880094483e-03   9.663910070e-03
6.408756007e-03   5.254855530e-03   5.117218680e-03   6.077971846e-03
9.554627054e-03   7.768510912e-03   7.719960025e-03   1.219031799e-02
1.009155266e-02   1.157191328e-02   9.350388895e-03   8.223726743e-03
7.390908230e-03   7.926441369e-03   1.145773181e-02   9.128077144e-03
9.037443677e-03   1.301534592e-02   9.777108977e-03   1.166171283e-02
5.073343297e-03   4.813007363e-03   4.856788351e-03   5.049459560e-03
6.839006369e-03   5.508297198e-03   5.339499526e-03   5.219216766e-03
5.283189610e-03   7.193257893e-03   5.822033737e-03   5.435566835e-03
6.644322961e-03   5.754659452e-03   7.405023067e-03   5.767441878e-03
1.524937703e-03   2.610461328e-03   3.283629556e-03   5.752486447e-03
3.798726617e-03   2.977127383e-03   4.520395308e-03   4.732419799e-03
6.149997380e-03   2.342160577e-03   2.761046811e-03   3.160862955e-03
1.624181004e-03   1.818788946e-03   9.794988881e-04   1.420764646e-04
1.084377007e-04   3.435609607e-04   8.463780688e-04   4.994881054e-04
9.937887894e-05   8.758391221e-05   3.510025229e-04   8.014499121e-04
8.101136308e-04   3.263465412e-04   7.620357322e-04   1.089571291e-03
1.351631820e-03   1.452968554e-03   1.684482377e-03   3.251277067e-03
2.662192211e-03   2.136950213e-03   1.493902065e-03   1.276692389e-03
1.306984695e-03   9.367566313e-04   1.246476261e-03   6.727717427e-04
1.032188326e-04   8.067606866e-05   2.651451387e-04   6.555689058e-04
4.103743876e-04   8.501133228e-05   7.637255884e-05   3.170045331e-04
7.036214741e-04   7.937586478e-04   3.564074516e-04   9.311187539e-04
1.318368033e-03   1.327462518e-03   1.603731467e-03   2.162509479e-03
3.475317734e-03   2.037209882e-03   1.779086432e-03   2.508079836e-03
1.759979606e-03   1.922734347e-03   1.942650151e-03   2.954153992e-03
1.890925814e-03   3.415500256e-04   2.881494034e-04   1.091127498e-03
2.403759717e-03   2.309143376e-03   9.118362518e-04   2.182849614e-03
2.891230022e-03   3.358979890e-03   3.143768878e-03   3.257526838e-03
3.175697038e-03   3.219448667e-03   3.962033651e-03   3.469239341e-03
3.783124920e-03   4.776621370e-03   3.011210462e-03   3.802566403e-03
4.503178287e-03   3.480618652e-03   3.335160815e-03   3.892083311e-03
6.299015333e-03   4.685823913e-03   4.263086356e-03   4.549284587e-03
5.313397521e-03   7.379623312e-03   6.707008324e-03   7.353211338e-03
1.163817785e-02   8.604288357e-03   9.040042328e-03   7.243562192e-03
6.327231805e-03   5.282469690e-03   5.214134147e-03   7.790650334e-03
5.447858158e-03   4.783258915e-03   5.589196457e-03   4.661775805e-03
6.838943957e-03   5.566083173e-03   5.197753234e-03   4.723120327e-03
4.517858572e-03   6.388079036e-03   4.518654948e-03   3.921412675e-03
3.446938758e-03   3.566930817e-03   5.719634993e-03   4.070095169e-03
3.326781086e-03   4.126622192e-03   4.423744713e-03   6.149505433e-03
5.330151038e-03   1.592607788e-03   3.006183664e-03   3.902113140e-03
5.948529611e-03   4.604893148e-03   4.190765837e-03   6.699498376e-03
5.920737903e-03   6.748518323e-03   3.564039471e-03   3.679890391e-03
4.112055904e-03   2.416536536e-03   2.909566732e-03   1.574275081e-03
2.343377612e-04   1.808199040e-04   5.827906821e-04   1.436826217e-03
8.727708072e-04   1.770985158e-04   1.575544447e-04   6.425237992e-04
1.445201202e-03   1.544836640e-03   6.585695581e-04   1.634484137e-03
2.313268617e-03   2.568866517e-03   2.902590051e-03   3.579491849e-03
5.977818365e-03   4.291433763e-03   3.695815443e-03   3.726703564e-03
2.890752007e-03   3.107948158e-03   2.752630815e-03   3.944670255e-03
2.418243083e-03   4.158836735e-04   3.429925892e-04   1.247516839e-03
2.821882695e-03   2.418944694e-03   8.140677207e-04   1.531947434e-03
2.390206226e-03   3.642305214e-03   3.669146090e-03   1.312563318e-03
2.908571692e-03   3.845140350e-03   4.577141549e-03   4.328462571e-03
4.802858005e-03   6.831745282e-03   4.531780711e-03   5.033789921e-03
5.231443281e-03   4.322971862e-03   5.000946926e-03   4.232808417e-03
5.903293699e-03   3.744046563e-03   6.538960265e-04   5.435097926e-04
2.010894268e-03   4.437387326e-03   4.073340778e-03   1.547878510e-03
3.591638188e-03   4.710064735e-03   5.755336227e-03   5.082001105e-03
5.010062189e-03   4.783712127e-03   5.005263323e-03   6.622633451e-03
5.642401774e-03   5.838637819e-03   7.803525944e-03   5.779738073e-03
6.947958341e-03   6.375022257e-03   5.265125885e-03   4.912056741e-03
5.430226600e-03   8.348487694e-03   6.235992091e-03   5.695135866e-03
5.877011300e-03   6.588818226e-03   9.138586439e-03   7.920796847e-03
8.423082308e-03   1.239079670e-02   8.856540179e-03   1.019532992e-02
7.458941051e-03   5.956950106e-03   5.016022430e-03   5.468093320e-03
8.742404977e-03   6.318517087e-03   5.735032942e-03   7.878033118e-03
6.690643386e-03   8.768508972e-03   7.538487915e-03   6.807835193e-03
6.123555534e-03   6.032197780e-03   8.812275225e-03   6.229984491e-03
5.412589253e-03   4.975490872e-03   5.274940949e-03   8.224828896e-03
6.102245229e-03   5.211916115e-03   6.513967526e-03   6.668630695e-03
9.048521155e-03   7.820328477e-03   2.314857746e-03   4.349611078e-03
5.617576433e-03   8.548423225e-03   6.559677911e-03   5.972764306e-03
9.394227855e-03   8.105963388e-03   9.436923490e-03   5.140609967e-03
5.284047556e-03   5.938998751e-03   3.505805365e-03   4.234230748e-03
2.294748797e-03   3.422642455e-04   2.643216332e-04   8.531174724e-04
2.102815716e-03   1.280898492e-03   2.604044836e-04   2.318807606e-04
9.473099442e-04   2.126849772e-03   2.287536447e-03   9.818349845e-04
2.456491644e-03   3.465913995e-03   3.796590431e-03   4.298485615e-03
5.300966853e-03   8.575235613e-03   6.160279756e-03   5.389101034e-03
5.660620643e-03   4.356561262e-03   4.740603624e-03   4.360147324e-03
6.309333564e-03   3.993534406e-03   7.049867881e-04   5.887925668e-04
2.194375976e-03   4.841333771e-03   4.505733947e-03   1.734337218e-03
4.074460002e-03   5.335254997e-03   6.404917229e-03   5.707982049e-03
5.634728608e-03   5.270039077e-03   5.540522170e-03   7.369356512e-03
6.334312502e-03   6.676192348e-03   9.613080444e-03   6.659610809e-03
7.729899294e-03   7.035907774e-03   5.822021789e-03   5.334876503e-03
5.684931750e-03   8.466618314e-03   6.185348650e-03   5.691380353e-03
5.540990979e-03   5.631650195e-03   8.164847097e-03   6.033409459e-03
5.414593316e-03   5.169209666e-03   5.499023058e-03   8.121809681e-03
6.165414338e-03   5.668296812e-03   5.694417074e-03   6.254660514e-03
8.727986928e-03   7.356129973e-03   7.596420043e-03   1.053069304e-02
7.903011904e-03   9.513586483e-03   8.071802570e-03   6.658297874e-03
5.985693326e-03   6.530466676e-03   1.018804178e-02   7.439898739e-03
6.716598911e-03   6.944582244e-03   7.712500642e-03   1.084398098e-02
9.154625985e-03   9.435347463e-03   1.327341823e-02   9.980295513e-03
1.197106538e-02   8.805681073e-03   7.161828031e-03   6.304180888e-03
6.943779362e-03   1.076632388e-02   8.103674884e-03   7.624645814e-03
1.063597310e-02   8.734849526e-03   1.105384631e-02   9.381588441e-03
8.316432432e-03   7.294515927e-03   7.137824018e-03   1.034743167e-02
7.263000570e-03   6.380336327e-03   5.884586298e-03   5.981087175e-03
9.120006248e-03   6.380281875e-03   5.503740298e-03   5.221250123e-03
5.673932693e-03   8.777634618e-03   6.494460355e-03   5.803725222e-03
5.879263494e-03   6.798699365e-03   9.751551917e-03   8.518476995e-03
9.047657273e-03   1.418282851e-02   1.077471704e-02   1.169362549e-02
8.985315173e-03   7.382641150e-03   6.244340614e-03   6.476945772e-03
1.009505140e-02   6.955152359e-03   6.086583316e-03   5.957226428e-03
6.263355021e-03   9.396944155e-03   6.884777912e-03   6.160089983e-03
5.979194518e-03   6.476818357e-03   9.613026132e-03   7.418315920e-03
6.882882799e-03   7.076907380e-03   7.911882656e-03   1.078607425e-02
9.485983307e-03   1.020460094e-02   1.489371827e-02   1.070458167e-02
1.207009593e-02   1.084811232e-02   8.670752712e-03   7.613008757e-03
8.353200512e-03   1.347951682e-02   9.549862374e-03   8.391713194e-03
8.660153925e-03   9.904290607e-03   1.432025147e-02   1.215872100e-02
1.256534582e-02   1.873352011e-02   1.438317532e-02   1.658481330e-02
1.269822287e-02   1.063176819e-02   9.245101999e-03   9.994256535e-03
1.520111611e-02   1.153755082e-02   1.100357555e-02   1.563110143e-02
1.215509939e-02   1.527096124e-02   1.083282493e-02   9.776322853e-03
8.875491932e-03   8.717130764e-03   1.230024343e-02   8.885756526e-03
8.003759522e-03   7.364913086e-03   7.313626234e-03   1.095826564e-02
7.649863528e-03   6.558357309e-03   6.109049219e-03   6.608832572e-03
1.031111609e-02   7.529908492e-03   6.680547736e-03   6.770385270e-03
7.790727853e-03   1.126183474e-02   9.663314596e-03   1.002973505e-02
1.507713999e-02   1.198788015e-02   1.340770988e-02   1.009372798e-02
8.385096674e-03   7.186482833e-03   7.551002080e-03   1.188870644e-02
8.295877101e-03   7.204130231e-03   7.163754677e-03   7.980025313e-03
1.186082203e-02   9.541751422e-03   9.335515205e-03   1.329807214e-02
1.077014267e-02   1.317364845e-02   9.917754770e-03   8.251296761e-03
7.408101145e-03   8.280541183e-03   1.259468408e-02   9.922413210e-03
9.720667297e-03   1.466134163e-02   1.148492372e-02   1.350811766e-02
9.107007045e-03   7.973685445e-03   7.262149392e-03   7.389100680e-03
1.065233118e-02   7.788687599e-03   7.105514441e-03   6.800748318e-03
6.856617115e-03   9.947129640e-03   7.239441153e-03   6.460674697e-03
6.052767045e-03   6.326548052e-03   9.544049068e-03   6.980828893e-03
6.176812958e-03   6.031852952e-03   6.815541284e-03   1.002789385e-02
8.348452898e-03   8.465327314e-03   1.279031202e-02   1.008370221e-02
1.157212155e-02   8.327954052e-03   7.135094199e-03   6.201424459e-03
6.350784956e-03   9.449841180e-03   6.739315823e-03   6.074058375e-03
5.883063331e-03   5.963896381e-03   8.741529147e-03   6.326476509e-03
5.602096296e-03   5.236372499e-03   5.549006656e-03   8.468750805e-03
6.234486343e-03   5.530144663e-03   5.555428434e-03   6.395707759e-03
9.175581448e-03   7.912783596e-03   8.358329475e-03   1.267392595e-02
9.583728549e-03   1.069761173e-02   8.481582087e-03   6.921428453e-03
5.894293977e-03   6.133437594e-03   9.791318766e-03   6.609112672e-03
5.625348916e-03   5.369334853e-03   5.861492058e-03   9.328769109e-03
6.990522586e-03   5.953381723e-03   7.536517243e-03   8.101095098e-03
1.096861308e-02   1.013833761e-02   3.214211109e-03   6.467847704e-03
8.324773530e-03   1.126944927e-02   9.281067421e-03   9.094871192e-03
1.297335119e-02   9.859791602e-03   1.169776583e-02   8.983423642e-03
8.412240114e-03   9.825429929e-03   7.128043201e-03   9.214108330e-03
5.676825674e-03   9.491949359e-04   7.737887531e-04   2.771039727e-03
6.187601558e-03   5.255509631e-03   1.862142241e-03   4.046494153e-03
5.284463295e-03   7.227202410e-03   5.845009839e-03   5.304445604e-03
5.260374044e-03   6.102151893e-03   8.529567919e-03   7.626178564e-03
8.219202395e-03   1.265283267e-02   9.826880232e-03   1.044385188e-02
8.342525765e-03   6.705827898e-03   5.635374279e-03   5.880095340e-03
9.663911804e-03   6.408757012e-03   5.254856193e-03   5.117219384e-03
6.077972858e-03   9.554628946e-03   7.768512551e-03   7.719961808e-03
1.219032161e-02   1.009155589e-02   1.157191631e-02   9.350391874e-03
8.223729708e-03   7.390910729e-03   7.926443721e-03   1.145773495e-02
9.128079530e-03   9.037445961e-03   1.301534882e-02   9.777110994e-03
1.166171548e-02   5.073343541e-03   4.813007715e-03   4.856788892e-03
5.049460061e-03   6.839006867e-03   5.508297757e-03   5.339500257e-03
5.219217438e-03   5.283190185e-03   7.193258528e-03   5.822034255e-03
5.435567375e-03   6.644323533e-03   5.754659828e-03   7.405023464e-03
5.767442038e-03   1.524937707e-03   2.610461284e-03   3.283629498e-03
5.752486552e-03   3.798726575e-03   2.977127261e-03   4.520395151e-03
4.732419859e-03   6.149997552e-03   2.342160423e-03   2.761046696e-03
3.160862824e-03   1.624180878e-03   1.818788780e-03   9.794987893e-04
1.420764481e-04   1.084376877e-04   3.435609193e-04   8.463779747e-04
4.994880441e-04   9.937886583e-05   8.758390055e-05   3.510024778e-04
8.014498145e-04   8.101135298e-04   3.263464992e-04   7.620356341e-04
1.089571162e-03   1.351631664e-03   1.452968396e-03   1.684482205e-03
3.251276839e-03   2.662192047e-03   2.136950017e-03   1.493901889e-03
1.276692238e-03   1.306984530e-03   9.367565036e-04   1.246476094e-03
6.727716455e-04   1.032188164e-04   8.067605589e-05   2.651450977e-04
6.555688091e-04   4.103743249e-04   8.501131882e-05   7.637254681e-05
3.170044858e-04   7.036213730e-04   7.937585358e-04   3.564074046e-04
9.311186399e-04   1.318367883e-03   1.327462355e-03   1.603731291e-03
2.162509295e-03   3.475317493e-03   2.037209689e-03   1.779086225e-03
2.508079653e-03   1.759979428e-03   1.922734153e-03   1.942649977e-03
2.954153778e-03   1.890925671e-03   3.415499982e-04   2.881493809e-04
1.091127422e-03   2.403759568e-03   2.309143250e-03   9.118362096e-04
2.182849546e-03   2.891229950e-03   3.358979745e-03   3.143768824e-03
3.257526832e-03   3.175697069e-03   3.219448666e-03   3.962033525e-03
3.469239287e-03   3.783124911e-03   4.776621232e-03   3.011210287e-03
3.802566205e-03   4.503178412e-03   3.480618684e-03   3.335160879e-03
3.892083504e-03   6.299015756e-03   4.685824327e-03   4.263086761e-03
4.549285238e-03   5.313398379e-03   7.379624322e-03   6.707009587e-03
7.353213258e-03   1.163818141e-02   8.604290421e-03   9.040043859e-03
7.243563521e-03   6.327232922e-03   5.282470431e-03   5.214134697e-03
7.790651257e-03   5.447858594e-03   4.783259129e-03   5.589196459e-03
4.661775884e-03   6.838944427e-03   5.566083814e-03   5.197754004e-03
4.723121010e-03   4.517859033e-03   6.388079571e-03   4.518655262e-03
3.921412942e-03   3.446938889e-03   3.566930897e-03   5.719635270e-03
4.070095221e-03   3.326781063e-03   4.126622101e-03   4.423744767e-03
6.149505584e-03   5.330151151e-03   1.592607822e-03   3.006183741e-03
3.902113260e-03   5.948529831e-03   4.604893384e-03   4.190766070e-03
6.699498951e-03   5.920738554e-03   6.748518863e-03   3.564039601e-03
3.679890537e-03   4.112056005e-03   2.416536570e-03   2.909566762e-03
1.574275089e-03   2.343377588e-04   1.808199018e-04   5.827906759e-04
1.436826214e-03   8.727708040e-04   1.770985132e-04   1.575544425e-04
6.425237958e-04   1.445201196e-03   1.544836641e-03   6.585695633e-04
1.634484155e-03   2.313268687e-03   2.568866570e-03   2.902590141e-03
3.579492054e-03   5.977818901e-03   4.291434011e-03   3.695815561e-03
3.726703766e-03   2.890752090e-03   3.107948279e-03   2.752630907e-03
3.944670443e-03   2.418243173e-03   4.158836863e-04   3.429925995e-04
1.247516885e-03   2.821882832e-03   2.418944783e-03   8.140677558e-04
1.531947505e-03   2.390206348e-03   3.642305436e-03   3.669146342e-03
1.312563429e-03   2.908572006e-03   3.845140756e-03   4.577141930e-03
4.328463019e-03   4.802858663e-03   6.831746075e-03   4.531781104e-03
5.033790286e-03   5.231444233e-03   4.322972465e-03   5.000947579e-03
4.232809184e-03   5.903294932e-03   3.744047424e-03   6.538961761e-04
5.435099223e-04   2.010894788e-03   4.437388409e-03   4.073341950e-03
1.547879011e-03   3.591639455e-03   4.710066538e-03   5.755338000e-03
5.082002890e-03   5.010064148e-03   4.783713962e-03   5.005264942e-03
6.622635360e-03   5.642403306e-03   5.838639260e-03   7.803527374e-03
5.779739045e-03   6.947959880e-03   6.375023920e-03   5.265127429e-03
4.912058408e-03   5.430228694e-03   8.348490605e-03   6.235994741e-03
5.695138519e-03   5.877014389e-03   6.588821353e-03   9.138590084e-03
7.920800309e-03   8.423086426e-03   1.239080179e-02   8.856543075e-03
1.019533331e-02   7.458943074e-03   5.956951316e-03   5.016023290e-03
5.468094324e-03   8.742407200e-03   6.318518372e-03   5.735033805e-03
7.878034302e-03   6.690644858e-03   8.768511171e-03   7.538493056e-03
6.807839736e-03   6.123559144e-03   6.032201126e-03   8.812280454e-03
6.229987633e-03   5.412591563e-03   4.975492838e-03   5.274943277e-03
8.224833125e-03   6.102247961e-03   5.211918168e-03   6.513970256e-03
6.668634071e-03   9.048526153e-03   7.820333362e-03   2.314859291e-03
4.349614293e-03   5.617580477e-03   8.548428830e-03   6.559682933e-03
5.972769398e-03   9.394236184e-03   8.105969745e-03   9.436929980e-03
5.140614487e-03   5.284051902e-03   5.939003342e-03   3.505808414e-03
4.234234656e-03   2.294750827e-03   3.422645602e-04   2.643218764e-04
8.531182738e-04   2.102817691e-03   1.280899683e-03   2.604047334e-04
2.318809833e-04   9.473108611e-04   2.126851853e-03   2.287538734e-03
9.818359881e-04   2.456494246e-03   3.465917572e-03   3.796594189e-03
4.298490003e-03   5.300972675e-03   8.575244346e-03   6.160285324e-03
5.389106153e-03   5.660627086e-03   4.356566031e-03   4.740608888e-03
4.360152512e-03   6.309341286e-03   3.993539372e-03   7.049876971e-04
5.887933328e-04   2.194378895e-03   4.841340166e-03   4.505740024e-03
1.734339702e-03   4.074465986e-03   5.335262819e-03   6.404926247e-03
5.707990199e-03   5.634737226e-03   5.270046683e-03   5.540529695e-03
7.369366694e-03   6.334320592e-03   6.676200459e-03   9.613091013e-03
6.659618198e-03   7.729908654e-03   7.035916616e-03   5.822029380e-03
5.334883926e-03   5.684940273e-03   8.466629583e-03   6.185357600e-03
5.691388933e-03   5.540999728e-03   5.631658412e-03   8.164858287e-03
6.033418152e-03   5.414601024e-03   5.169216432e-03   5.499030010e-03
8.121820465e-03   6.165421858e-03   5.668303329e-03   5.694423315e-03
6.254667225e-03   8.727997196e-03   7.356138062e-03   7.596427779e-03
1.053070371e-02   7.903021074e-03   9.513597699e-03   8.071809976e-03
6.658304738e-03   5.985699219e-03   6.530472743e-03   1.018805055e-02
7.439905225e-03   6.716604594e-03   6.944587684e-03   7.712506302e-03
1.084398920e-02   9.154631963e-03   9.435352935e-03   1.327342478e-02
9.980300658e-03   1.197107298e-02   8.805686054e-03   7.161831747e-03
6.304184323e-03   6.943783715e-03   1.076633114e-02   8.103680729e-03
7.624651566e-03   1.063598239e-02   8.734857405e-03   1.105385525e-02
9.381596685e-03   8.316438779e-03   7.294521635e-03   7.137830112e-03
1.034744183e-02   7.263007558e-03   6.380342280e-03   5.884592196e-03
5.981093711e-03   9.120015627e-03   6.380288871e-03   5.503746781e-03
5.221256898e-03   5.673940162e-03   8.777644713e-03   6.494468334e-03
5.803732772e-03   5.879271513e-03   6.798707575e-03   9.751562994e-03
8.518486303e-03   9.047667143e-03   1.418284118e-02   1.077472668e-02
1.169363705e-02   8.985325755e-03   7.382649866e-03   6.244348347e-03
6.476954334e-03   1.009506440e-02   6.955162526e-03   6.086592460e-03
5.957235953e-03   6.263364523e-03   9.396957256e-03   6.884788522e-03
6.160100017e-03   5.979203233e-03   6.476828027e-03   9.613039389e-03
7.418325771e-03   6.882891207e-03   7.076915724e-03   7.911891447e-03
1.078608711e-02   9.485994007e-03   1.020461070e-02   1.489373130e-02
1.070459270e-02   1.207010984e-02   1.084812140e-02   8.670761485e-03
7.613016524e-03   8.353208272e-03   1.347952807e-02   9.549871206e-03
8.391721507e-03   8.660162008e-03   9.904297345e-03   1.432026246e-02
1.215872811e-02   1.256535258e-02   1.873352328e-02   1.438317975e-02
1.658482168e-02   1.269822744e-02   1.063177086e-02   9.245105251e-03
9.994260807e-03   1.520112365e-02   1.153755735e-02   1.100358200e-02
1.563111237e-02   1.215510928e-02   1.527097205e-02   1.083283007e-02
9.776327564e-03   8.875495298e-03   8.717133232e-03   1.230024817e-02
8.885759141e-03   8.003761405e-03   7.364914422e-03   7.313627803e-03
1.095826912e-02   7.649865361e-03   6.558358990e-03   6.109050747e-03
6.608834624e-03   1.031111949e-02   7.529911055e-03   6.680550050e-03
6.770387956e-03   7.790731160e-03   1.126183912e-02   9.663319333e-03
1.002974067e-02   1.507714972e-02   1.198788688e-02   1.340771603e-02
1.009373341e-02   8.385100882e-03   7.186485881e-03   7.551005334e-03
1.188871231e-02   8.295880683e-03   7.204132877e-03   7.163757246e-03
7.980028380e-03   1.186082749e-02   9.541755443e-03   9.335518716e-03
1.329807741e-02   1.077014818e-02   1.317365499e-02   9.917760417e-03
8.251302122e-03   7.408106686e-03   8.280547136e-03   1.259469195e-02
9.922420237e-03   9.720675036e-03   1.466135317e-02   1.148493097e-02
1.350812586e-02   1.868277438e-03   7.190754791e-04   2.126536339e-03
3.106823989e-04   3.222193908e-04   3.066942509e-03   3.005570406e-03
6.298856389e-04   1.327320409e-03   1.347048342e-04   1.267908861e-04
7.447854841e-04   1.501951547e-04   1.686667090e-04   2.407387955e-03
4.236104577e-03   1.479627812e-03   5.787667779e-03   3.961922569e-03
8.528331697e-04   1.979575705e-03   2.554653606e-04   2.577313943e-04
2.163561046e-03   1.752867901e-03   3.259572560e-04   6.444543949e-04
6.216955902e-05   5.798116540e-05   3.300492896e-04   6.425793079e-05
7.125005464e-05   9.199389585e-04   1.210513034e-03   2.913994525e-04
6.609601025e-04   7.063160383e-05   6.709528601e-05   4.061450774e-04
8.427172569e-05   9.558539023e-05   1.480320596e-03   3.181836529e-03
1.303847850e-03   6.375717345e-03   6.008560270e-03   1.563651185e-03
4.156491909e-03   6.095444704e-04   6.360132377e-04   6.428984052e-03
8.084749901e-03   2.410351233e-03   8.279930804e-03   5.297003955e-03
1.143087171e-03   2.682001905e-03   3.532134058e-04   3.585302720e-04
3.119959351e-03   2.767272388e-03   5.525797513e-04   1.136620824e-03
1.133627453e-04   1.063777511e-04   6.186633046e-04   1.235257823e-04
1.382341813e-04   1.919419070e-03   3.157186321e-03   1.042728212e-03
3.807778053e-03   2.371450165e-03   4.867063717e-04   1.098635723e-03
1.385982959e-04   1.390965043e-04   1.139002579e-03   8.854353800e-04
1.610096406e-04   3.150275515e-04   3.015787801e-05   2.808939578e-05
1.592191332e-04   3.086389326e-05   3.417095165e-05   4.363812929e-04
5.606683625e-04   1.326680929e-04   2.976610248e-04   3.154070879e-05
2.991375842e-05   1.800808775e-04   3.714937887e-05   4.204708679e-05
6.391884766e-04   1.299133475e-03   5.025861263e-04   2.220913005e-03
1.735186480e-03   3.964069634e-04   9.526505451e-04   1.262038398e-04
1.280831024e-04   1.105493158e-03   9.351443799e-04   1.778358951e-04
3.552976862e-04   3.453464021e-05   3.224933093e-05   1.843336851e-04
3.603728077e-05   4.001540910e-05   5.220554091e-04   7.022945701e-04
1.716633205e-04   3.931627677e-04   4.232533138e-05   4.026201621e-05
2.448766234e-04   5.105750364e-05   5.801523462e-05   9.126482053e-04
2.053729514e-03   8.782406232e-04   4.619887728e-03   4.869469483e-03
1.355158992e-03   3.794277696e-03   5.805716197e-04   6.126048542e-04
6.606957851e-03   9.514981386e-03   3.139759097e-03   1.208038965e-02
9.030118587e-03   2.113270817e-03   5.221653419e-03   7.178419513e-04
7.363111275e-04   6.758720707e-03   6.604846206e-03   1.399446492e-03
2.971929943e-03   3.036995464e-04   2.862346361e-04   1.689292125e-03
3.425524882e-04   3.854744660e-04   5.598660496e-03   1.039994498e-02
3.857386745e-03   1.662899673e-02   1.375423626e-02   3.376014021e-03
8.640266465e-03   1.234538280e-03   1.280337809e-03   1.255240180e-02
1.510549695e-02   4.427511278e-03   1.509411558e-02   9.768158592e-03
2.133944127e-03   5.051712525e-03   6.712265177e-04   6.828946838e-04
6.015926155e-03   5.470733512e-03   1.110561075e-03   2.304854387e-03
2.314857467e-04   2.174958579e-04   1.270295679e-03   2.548066327e-04
2.856210212e-04   4.019306044e-03   6.856710214e-03   2.345311931e-03
8.971901567e-03   6.009624573e-03   1.282388958e-03   2.962560530e-03
3.810170148e-04   3.841092618e-04   3.213633517e-03   2.590908605e-03
4.806467210e-04   9.492677748e-04   9.150450396e-05   8.532885078e-05
4.855234248e-04   9.448951139e-05   1.047569516e-04   1.351227995e-03
1.774457858e-03   4.265922242e-04   9.668253564e-04   1.032550544e-04
9.807449818e-05   5.934483978e-04   1.230900635e-04   1.395965466e-04
2.159428406e-03   4.627326500e-03   1.891821489e-03   9.224735839e-03
8.685006011e-03   2.262966820e-03   6.025387486e-03   8.857860339e-04
9.249687877e-04   9.398147013e-03   1.200410703e-02   3.638958132e-03
1.277544623e-02   8.505327620e-03   1.880004194e-03   4.481332552e-03
5.986885894e-04   6.098837502e-04   5.407366681e-03   4.974652353e-03
1.017394869e-03   2.120119807e-03   2.136171329e-04   2.008249626e-04
1.175286149e-03   2.362700497e-04   2.650553872e-04   3.754409843e-03
6.530207282e-03   2.284955809e-03   9.084546040e-03   6.649327809e-03
1.520678111e-03   3.704225460e-03   5.065929700e-04   5.194480997e-04
4.781870057e-03   5.000849392e-03   1.289870929e-03   3.762339969e-03
1.868275556e-03   7.190747536e-04   2.126534194e-03   3.106820851e-04
3.222190659e-04   3.066939437e-03   3.005567401e-03   6.298850083e-04
1.327319080e-03   1.347046994e-04   1.267907592e-04   7.447847392e-04
1.501950047e-04   1.686665406e-04   2.407385567e-03   4.236100432e-03
1.479626377e-03   5.787662180e-03   3.961918780e-03   8.528323620e-04
1.979573839e-03   2.554651197e-04   2.577311514e-04   2.163559015e-03
1.752866264e-03   3.259569531e-04   6.444537953e-04   6.216950099e-05
5.798111133e-05   3.300489827e-04   6.425787110e-05   7.124998838e-05
9.199381040e-04   1.210511919e-03   2.913991843e-04   6.609594979e-04
7.063153921e-05   6.709522471e-05   4.061447077e-04   8.427164884e-05
9.558530320e-05   1.480319266e-03   3.181833713e-03   1.303846717e-03
6.375712013e-03   6.008555461e-03   1.563649940e-03   4.156488707e-03
6.095440055e-04   6.360127627e-04   6.428979547e-03   8.084744367e-03
2.410349625e-03   8.279925964e-03   5.297001160e-03   1.143086504e-03
2.682000435e-03   3.532132268e-04   3.585300903e-04   3.119957769e-03
2.767271043e-03   5.525794918e-04   1.136620296e-03   1.133626925e-04
1.063777018e-04   6.186630215e-04   1.235257264e-04   1.382341185e-04
1.919418195e-03   3.157184928e-03   1.042727763e-03   3.807776598e-03
2.371449313e-03   4.867061831e-04   1.098635327e-03   1.385982478e-04
1.390964561e-04   1.139002184e-03   8.854350737e-04   1.610095881e-04
3.150274488e-04   3.015786812e-05   2.808938644e-05   1.592190795e-04
3.086388276e-05   3.417094035e-05   4.363811613e-04   5.606681894e-04
1.326680510e-04   2.976609298e-04   3.154069900e-05   2.991374903e-05
1.800808201e-04   3.714936721e-05   4.204707369e-05   6.391882851e-04
1.299133114e-03   5.025859913e-04   2.220912342e-03   1.735185992e-03
3.964068790e-04   9.526503337e-04   1.262038108e-04   1.280830719e-04
1.105492885e-03   9.351441725e-04   1.778358622e-04   3.552976123e-04
3.453463258e-05   3.224932409e-05   1.843336491e-04   3.603727453e-05
4.001540117e-05   5.220552655e-04   7.022944156e-04   1.716632892e-04
3.931626939e-04   4.232532232e-05   4.026200835e-05   2.448765842e-04
5.105749604e-05   5.801522420e-05   9.126479418e-04   2.053729027e-03
8.782404492e-04   4.619887493e-03   4.869469375e-03   1.355158957e-03
3.794277623e-03   5.805716495e-04   6.126048764e-04   6.606957990e-03
9.514982944e-03   3.139759801e-03   1.208039243e-02   9.030121657e-03
2.113271880e-03   5.221656046e-03   7.178423083e-04   7.363115082e-04
6.758724684e-03   6.604850518e-03   1.399447398e-03   2.971932001e-03
3.036997664e-04   2.862348446e-04   1.689293367e-03   3.425527389e-04
3.854747525e-04   5.598664995e-03   1.039995401e-02   3.857390377e-03
1.662901428e-02   1.375425321e-02   3.376018434e-03   8.640278412e-03
1.234540074e-03   1.280339686e-03   1.255242121e-02   1.510552336e-02
4.427519821e-03   1.509414462e-02   9.768178746e-03   2.133948972e-03
5.051724032e-03   6.712280333e-04   6.828962376e-04   6.015940283e-03
5.470746743e-03   1.110563787e-03   2.304860079e-03   2.314863269e-04
2.174964035e-04   1.270298869e-03   2.548072758e-04   2.856217425e-04
4.019316258e-03   6.856728112e-03   2.345318181e-03   8.971925955e-03
6.009641512e-03   1.282392664e-03   2.962569161e-03   3.810181339e-04
3.841103940e-04   3.213643082e-03   2.590916421e-03   4.806481815e-04
9.492706738e-04   9.150478471e-05   8.532911259e-05   4.855249142e-04
9.448980130e-05   1.047572736e-04   1.351232169e-03   1.774463346e-03
4.265935442e-04   9.668283597e-04   1.032553770e-04   9.807480449e-05
5.934502485e-04   1.230904475e-04   1.395969827e-04   2.159435177e-03
4.627341044e-03   1.891827465e-03   9.224765313e-03   8.685034441e-03
2.262974335e-03   6.025407793e-03   8.857890568e-04   9.249719488e-04
9.398179433e-03   1.200414970e-02   3.638971413e-03   1.277549412e-02
8.505360554e-03   1.880011604e-03   4.481350329e-03   5.986909841e-04
6.098861937e-04   5.407388508e-03   4.974672742e-03   1.017399064e-03
2.120128594e-03   2.136180243e-04   2.008258013e-04   1.175291063e-03
2.362710402e-04   2.650564976e-04   3.754425527e-03   6.530234872e-03
2.284965578e-03   9.084585222e-03   6.649356957e-03   1.520684842e-03
3.704241930e-03   5.065952333e-04   5.194504232e-04   4.781891521e-03
5.000871997e-03   1.289876784e-03   3.762357092e-03   1.868268834e-03
7.190721659e-04   2.126526541e-03   3.106809661e-04   3.222179053e-04
3.066928394e-03   3.005556570e-03   6.298827352e-04   1.327314288e-03
1.347042123e-04   1.267903007e-04   7.447820469e-04   1.501944615e-04
1.686659308e-04   2.407376880e-03   4.236085149e-03   1.479621035e-03
5.787641280e-03   3.961904425e-03   8.528292623e-04   1.979566635e-03
2.554641885e-04   2.577302118e-04   2.163551126e-03   1.752859857e-03
3.259557586e-04   6.444514322e-04   6.216927268e-05   5.798089837e-05
3.300477706e-04   6.425763498e-05   7.124972666e-05   9.199347321e-04
1.210507482e-03   2.913981158e-04   6.609570737e-04   7.063127994e-05
6.709497839e-05   4.061432173e-04   8.427133963e-05   9.558495260e-05
1.480313853e-03   3.181822117e-03   1.303841973e-03   6.375688839e-03
6.008533641e-03   1.563644268e-03   4.156473617e-03   6.095417904e-04
6.360104492e-04   6.428956121e-03   8.084714884e-03   2.410340820e-03
8.279895449e-03   5.296981452e-03   1.143082256e-03   2.681990427e-03
3.532119023e-04   3.585287447e-04   3.119946039e-03   2.767260598e-03
5.525774010e-04   1.136615987e-03   1.133622616e-04   1.063772974e-04
6.186606703e-04   1.235252566e-04   1.382335926e-04   1.919410895e-03
3.157172908e-03   1.042723784e-03   3.807762004e-03   2.371440164e-03
4.867043035e-04   1.098631067e-03   1.385977087e-04   1.390959149e-04
1.138997750e-03   8.854316168e-04   1.610089567e-04   3.150262126e-04
3.015774960e-05   2.808927606e-05   1.592184541e-04   3.086376147e-05
3.417080604e-05   4.363794467e-04   5.606659877e-04   1.326675302e-04
2.976597609e-04   3.154057495e-05   2.991363138e-05   1.800801123e-04
3.714922121e-05   4.204690847e-05   6.391857793e-04   1.299128034e-03
5.025840277e-04   2.220903696e-03   1.735179241e-03   3.964053329e-04
9.526466201e-04   1.262033186e-04   1.280825727e-04   1.105488583e-03
9.351405294e-04   1.778351674e-04   3.552962250e-04   3.453449763e-05
3.224919804e-05   1.843329286e-04   3.603713354e-05   4.001524475e-05
5.220532348e-04   7.022916846e-04   1.716626209e-04   3.931611646e-04
4.232515776e-05   4.026185176e-05   2.448756317e-04   5.105729738e-05
5.801499876e-05   9.126444236e-04   2.053721160e-03   8.782370999e-04
4.619869899e-03   4.869451015e-03   1.355153881e-03   3.794263503e-03
5.805694910e-04   6.126026005e-04   6.606933584e-03   9.514948051e-03
3.139748380e-03   1.208034896e-02   9.030089252e-03   2.113264236e-03
5.221637248e-03   7.178397349e-04   7.363088623e-04   6.758700288e-03
6.604826734e-03   1.399442390e-03   2.971921343e-03   3.036986724e-04
2.862338139e-04   1.689287295e-03   3.425515083e-04   3.854733669e-04
5.598644864e-03   1.039991670e-02   3.857376531e-03   1.662895479e-02
1.375420362e-02   3.376006176e-03   8.640246955e-03   1.234535564e-03
1.280335002e-03   1.255237495e-02   1.510546668e-02   4.427502897e-03
1.509408742e-02   9.768141190e-03   2.133940516e-03   5.051704009e-03
6.712253819e-04   6.828935380e-04   6.015916357e-03   5.470724785e-03
1.110559301e-03   2.304850746e-03   2.314853850e-04   2.174955180e-04
1.270293696e-03   2.548062357e-04   2.856205776e-04   4.019299915e-03
6.856699997e-03   2.345308496e-03   8.971888767e-03   6.009616283e-03
1.282387211e-03   2.962556553e-03   3.810165071e-04   3.841087514e-04
3.213629284e-03   2.590905226e-03   4.806461026e-04   9.492665557e-04
9.150438623e-05   8.532874082e-05   4.855227987e-04   9.448938950e-05
1.047568171e-04   1.351226291e-03   1.774455620e-03   4.265916835e-04
9.668241418e-04   1.032549256e-04   9.807437560e-05   5.934476547e-04
1.230899092e-04   1.395963727e-04   2.159425787e-03   4.627320929e-03
1.891819244e-03   9.224725299e-03   8.684996576e-03   2.262964381e-03
6.025381231e-03   8.857851422e-04   9.249678585e-04   9.398137745e-03
1.200409589e-02   3.638954945e-03   1.277543547e-02   8.505320787e-03
1.880002735e-03   4.481329097e-03   5.986881320e-04   6.098832845e-04
5.407362599e-03   4.974648696e-03   1.017394126e-03   2.120118270e-03
2.136169790e-04   2.008248183e-04   1.175285309e-03   2.362698814e-04
2.650551981e-04   3.754407160e-03   6.530202743e-03   2.284954262e-03
9.084540008e-03   6.649323487e-03   1.520677123e-03   3.704223072e-03
5.065926458e-04   5.194477682e-04   4.781867027e-03   5.000846240e-03
1.289870116e-03   3.762337604e-03   1.868267745e-03   7.190717479e-04
2.126525304e-03   3.106807842e-04   3.222177164e-04   3.066926600e-03
3.005554814e-03   6.298823675e-04   1.327313511e-03   1.347041328e-04
1.267902258e-04   7.447816091e-04   1.501943732e-04   1.686658317e-04
2.407375483e-03   4.236082729e-03   1.479620196e-03   5.787638038e-03
3.961902212e-03   8.528287832e-04   1.979565524e-03   2.554640446e-04
2.577300666e-04   2.163549913e-03   1.752858871e-03   3.259555743e-04
6.444510667e-04   6.216923713e-05   5.798086521e-05   3.300475823e-04
6.425759829e-05   7.124968602e-05   9.199342137e-04   1.210506807e-03
2.913979534e-04   6.609567067e-04   7.063124058e-05   6.709494103e-05
4.061429923e-04   8.427129299e-05   9.558489984e-05   1.480313055e-03
3.181820463e-03   1.303841315e-03   6.375685772e-03   6.008530930e-03
1.563643585e-03   4.156471858e-03   6.095415374e-04   6.360101874e-04
6.428953595e-03   8.084711928e-03   2.410339980e-03   8.279892747e-03
5.296979824e-03   1.143081905e-03   2.681989621e-03   3.532117978e-04
3.585286390e-04   3.119945137e-03   2.767259817e-03   5.525772466e-04
1.136615670e-03   1.133622298e-04   1.063772676e-04   6.186604981e-04
1.235252223e-04   1.382335544e-04   1.919410381e-03   3.157172097e-03
1.042723523e-03   3.807761089e-03   2.371439604e-03   4.867041873e-04
1.098630806e-03   1.385976755e-04   1.390958816e-04   1.138997480e-03
8.854314054e-04   1.610089178e-04   3.150261362e-04   3.015774216e-05
2.808926913e-05   1.592184149e-04   3.086375386e-05   3.417079764e-05
4.363793426e-04   5.606658560e-04   1.326674991e-04   2.976596912e-04
3.154056751e-05   2.991362433e-05   1.800800703e-04   3.714921257e-05
4.204689873e-05   6.391856375e-04   1.299127767e-03   5.025839300e-04
2.220903289e-03   1.735178952e-03   3.964052716e-04   9.526464765e-04
1.262032997e-04   1.280825535e-04   1.105488424e-03   9.351404020e-04
1.778351440e-04   3.552961779e-04   3.453449295e-05   3.224919369e-05
1.843329042e-04   3.603712884e-05   4.001523952e-05   5.220531681e-04
7.022916027e-04   1.716626020e-04   3.931611226e-04   4.232515317e-05
4.026184745e-05   2.448756067e-04   5.105729231e-05   5.801499299e-05
9.126443390e-04   2.053721023e-03   8.782370607e-04   4.619869933e-03
4.869451330e-03   1.355154010e-03   3.794263979e-03   5.805695804e-04
6.126026980e-04   6.606934874e-03   9.514950717e-03   3.139749441e-03
1.208035411e-02   9.030094047e-03   2.113265462e-03   5.221640451e-03
7.178401976e-04   7.363093429e-04   6.758704952e-03   6.604831716e-03
1.399443488e-03   2.971923748e-03   3.036989234e-04   2.862340513e-04
1.689288712e-03   3.425517985e-04   3.854736951e-04   5.598649805e-03
1.039992665e-02   3.857380491e-03   1.662897354e-02   1.375422118e-02
3.376010743e-03   8.640259184e-03   1.234537379e-03   1.280336899e-03
1.255239437e-02   1.510549220e-02   4.427510837e-03   1.509411599e-02
9.768161011e-03   2.133945000e-03   5.051714799e-03   6.712268383e-04
6.828950257e-04   6.015929687e-03   5.470737260e-03   1.110561867e-03
2.304856125e-03   2.314859298e-04   2.174960307e-04   1.270296699e-03
2.548068399e-04   2.856212556e-04   4.019309524e-03   6.856716746e-03
2.345314338e-03   8.971911694e-03   6.009632162e-03   1.282390646e-03
2.962564581e-03   3.810175499e-04   3.841098040e-04   3.213638141e-03
2.590912460e-03   4.806474594e-04   9.492692431e-04   9.150464615e-05
8.532898327e-05   4.855241790e-04   9.448965856e-05   1.047571155e-04
1.351230142e-03   1.774460699e-03   4.265929083e-04   9.668269255e-04
1.032552240e-04   9.807465903e-05   5.934493698e-04   1.230902652e-04
1.395967766e-04   2.159432038e-03   4.627334391e-03   1.891824789e-03
9.224752711e-03   8.685023021e-03   2.262971368e-03   6.025400061e-03
8.857879435e-04   9.249707897e-04   9.398167875e-03   1.200413557e-02
3.638967267e-03   1.277547965e-02   8.505351126e-03   1.880009566e-03
4.481345504e-03   5.986903399e-04   6.098855371e-04   5.407382709e-03
4.974667458e-03   1.017397994e-03   2.120126369e-03   2.136177992e-04
2.008255899e-04   1.175289830e-03   2.362707919e-04   2.650562195e-04
3.754421635e-03   6.530228143e-03   2.284963227e-03   9.084576042e-03
6.649350283e-03   1.520683297e-03   3.704238192e-03   5.065947244e-04
5.194499011e-04   4.781886713e-03   5.000866967e-03   1.289875490e-03
3.762353309e-03   1.868268919e-03   7.190721998e-04   2.126526640e-03
3.106809797e-04   3.222179187e-04   3.066928509e-03   3.005556680e-03
6.298827586e-04   1.327314335e-03   1.347042162e-04   1.267903043e-04
7.447820699e-04   1.501944660e-04   1.686659359e-04   2.407376963e-03
4.236085294e-03   1.479621085e-03   5.787641492e-03   3.961904534e-03
8.528292675e-04   1.979566653e-03   2.554641906e-04   2.577302138e-04
2.163551138e-03   1.752859852e-03   3.259557573e-04   6.444514271e-04
6.216927181e-05   5.798089750e-05   3.300477655e-04   6.425763393e-05
7.124972561e-05   9.199347260e-04   1.210507474e-03   2.913981123e-04
6.609570666e-04   7.063127909e-05   6.709497756e-05   4.061432126e-04
8.427133859e-05   9.558495160e-05   1.480313855e-03   3.181822145e-03
1.303841991e-03   6.375688972e-03   6.008533791e-03   1.563644308e-03
4.156473715e-03   6.095418037e-04   6.360104628e-04   6.428956261e-03
8.084715032e-03   2.410340846e-03   8.279895398e-03   5.296981315e-03
1.143082222e-03   2.681990326e-03   3.532118857e-04   3.585287275e-04
3.119945882e-03   2.767260429e-03   5.525773621e-04   1.136615904e-03
1.133622527e-04   1.063772890e-04   6.186606216e-04   1.235252465e-04
1.382335815e-04   1.919410748e-03   3.157172646e-03   1.042723689e-03
3.807761644e-03   2.371439903e-03   4.867042432e-04   1.098630928e-03
1.385976905e-04   1.390958964e-04   1.138997594e-03   8.854314886e-04
1.610089327e-04   3.150261646e-04   3.015774483e-05   2.808927161e-05
1.592184289e-04   3.086375657e-05   3.417080062e-05   4.363793794e-04
5.606659014e-04   1.326675097e-04   2.976597146e-04   3.154056994e-05
2.991362663e-05   1.800800840e-04   3.714921536e-05   4.204690189e-05
6.391856845e-04   1.299127851e-03   5.025839590e-04   2.220903406e-03
1.735179021e-03   3.964052812e-04   9.526464975e-04   1.262033023e-04
1.280825562e-04   1.105488444e-03   9.351404111e-04   1.778351445e-04
3.552961787e-04   3.453449302e-05   3.224919373e-05   1.843329042e-04
3.603712876e-05   4.001523946e-05   5.220531687e-04   7.022915991e-04
1.716626000e-04   3.931611176e-04   4.232515265e-05   4.026184693e-05
2.448756029e-04   5.105729139e-05   5.801499202e-05   9.126443270e-04
2.053720976e-03   8.782370324e-04   4.619869638e-03   4.869450864e-03
1.355153857e-03   3.794263478e-03   5.805694920e-04   6.126026028e-04
6.606933702e-03   9.514948487e-03   3.139748586e-03   1.208034989e-02
9.030090098e-03   2.113264458e-03   5.221637823e-03   7.178398159e-04
7.363089454e-04   6.758701079e-03   6.604827568e-03   1.399442573e-03
2.971921740e-03   3.036987128e-04   2.862338523e-04   1.689287526e-03
3.425515554e-04   3.854734199e-04   5.598645651e-03   1.039991825e-02
3.857377133e-03   1.662895762e-02   1.375420612e-02   3.376006803e-03
8.640248587e-03   1.234535802e-03   1.280335249e-03   1.255237743e-02
1.510546985e-02   4.427503858e-03   1.509409068e-02   9.768143401e-03
2.133941013e-03   5.051705223e-03   6.712255455e-04   6.828937054e-04
6.015917855e-03   5.470726174e-03   1.110559591e-03   2.304851351e-03
2.314854461e-04   2.174955755e-04   1.270294032e-03   2.548063032e-04
2.856206534e-04   4.019300991e-03   6.856701861e-03   2.345309134e-03
8.971891259e-03   6.009618022e-03   1.282387596e-03   2.962557452e-03
3.810166241e-04   3.841088696e-04   3.213630279e-03   2.590906043e-03
4.806462574e-04   9.492668627e-04   9.150441601e-05   8.532876861e-05
4.855229569e-04   9.448942033e-05   1.047568513e-04   1.351226730e-03
1.774456197e-03   4.265918221e-04   9.668244578e-04   1.032549597e-04
9.807440793e-05   5.934478496e-04   1.230899496e-04   1.395964185e-04
2.159426494e-03   4.627322418e-03   1.891819852e-03   9.224728281e-03
8.684999426e-03   2.262965125e-03   6.025383246e-03   8.857854451e-04
9.249681745e-04   9.398140961e-03   1.200410018e-02   3.638956307e-03
1.277544041e-02   8.505324276e-03   1.880003539e-03   4.481331039e-03
5.986883956e-04   6.098835540e-04   5.407365021e-03   4.974650993e-03
1.017394603e-03   2.120119275e-03   2.136170819e-04   2.008249152e-04
1.175285877e-03   2.362699961e-04   2.650553266e-04   3.754408965e-03
6.530205935e-03   2.284955402e-03   9.084544637e-03   6.649327006e-03
1.520677943e-03   3.704225099e-03   5.065929270e-04   5.194480571e-04
4.781869701e-03   5.000849088e-03   1.289870864e-03   3.762339793e-03
2.096506506e-02   1.357320671e-02   1.230513461e-02   1.052302549e-02
1.054777885e-02   1.063520835e-02   9.301619884e-03   9.465214396e-03
9.229760015e-03   8.114539595e-03   8.921685588e-03   8.933386166e-03
8.331891781e-03   1.029884041e-02   1.228793866e-02   2.527269424e-02
1.903410938e-02   8.951114081e-03   9.168829087e-03   8.531847303e-03
8.771561332e-03   8.825802672e-03   7.719016612e-03   8.339149088e-03
8.342064692e-03   7.734362652e-03   9.570353411e-03   1.160206723e-02
1.756099894e-02   8.253085120e-03   8.400755985e-03   7.652756094e-03
7.831366687e-03   7.671771450e-03   6.748978146e-03   7.499172174e-03
7.572840057e-03   7.238280380e-03   9.083511482e-03   1.147227311e-02
1.771575419e-02   7.843075536e-03   7.796727587e-03   7.189073389e-03
7.583303455e-03   7.452299592e-03   6.765589781e-03   7.765509883e-03
8.233289075e-03   8.272066943e-03   1.001552832e-02   1.311759579e-02
2.516018718e-02   9.760875164e-03   9.639618221e-03   9.826455509e-03
1.232792434e-02   1.517362661e-02   3.137164562e-02   1.558640143e-02
1.287312120e-02   1.850823963e-02   1.230789163e-02   1.145334988e-02
7.580407765e-03   7.539819582e-03   7.137037037e-03   8.971952105e-03
1.078336521e-02   2.271312969e-02   1.650218983e-02   7.655342347e-03
7.742080940e-03   7.256211517e-03   7.540052093e-03   7.628908311e-03
6.695422696e-03   7.236447648e-03   7.248377346e-03   6.735430904e-03
8.361956928e-03   1.021818764e-02   1.535483639e-02   7.180743153e-03
7.277800526e-03   6.601396634e-03   6.767005025e-03   6.589282500e-03
5.813781251e-03   6.517533238e-03   6.610234859e-03   6.391195259e-03
8.045712777e-03   1.030999204e-02   1.616585967e-02   6.981522214e-03
6.882367562e-03   6.399490771e-03   6.865940020e-03   6.824644569e-03
6.317825723e-03   7.266260591e-03   7.860121911e-03   7.874090998e-03
9.340995662e-03   1.218979714e-02   2.415419411e-02   9.450795421e-03
9.552894073e-03   9.942313136e-03   1.233077919e-02   1.545682022e-02
1.831865210e-02   1.294375135e-02   1.198412316e-02   7.204161769e-03
7.100794587e-03   6.855298398e-03   8.916150615e-03   1.109831006e-02
2.592299445e-02   1.608935292e-02   7.256425530e-03   7.095070097e-03
6.510255250e-03   6.849999541e-03   6.706793825e-03   5.942578603e-03
6.740039548e-03   6.845146917e-03   6.849753656e-03   8.779573773e-03
1.182531958e-02   2.020761123e-02   7.594513162e-03   7.015662573e-03
6.343042142e-03   7.542939862e-03   7.007852685e-03   1.225620944e-02
1.384084475e-02   2.032777002e-02   1.046638943e-02   1.059302334e-02
9.714702722e-03   1.144250411e-02   1.410472660e-02   2.604905296e-02
1.089808860e-02   1.075511564e-02   1.040322544e-02   1.277826728e-02
1.534575401e-02   2.245317932e-02   1.253127372e-02   1.172979299e-02
9.276368766e-03   8.616752650e-03   2.019679790e-02   7.727219811e-03
5.679113477e-03   8.034270605e-03   1.217884845e-02   6.719890945e-03
6.945407116e-03   6.183297784e-03   7.263949192e-03   9.369140452e-03
1.526796004e-02   6.741518435e-03   6.761374942e-03   6.100597372e-03
6.505649877e-03   6.420697220e-03   5.991820584e-03   6.916994565e-03
7.548311930e-03   7.573591885e-03   8.877795515e-03   1.158944463e-02
2.392139590e-02   9.200650676e-03   9.343064710e-03   9.806476426e-03
1.222153258e-02   1.540459167e-02   1.779905815e-02   1.281569665e-02
1.187012709e-02   6.864834011e-03   6.708617996e-03   6.549389490e-03
8.670075168e-03   1.101094095e-02   2.629253871e-02   1.584444482e-02
6.887251002e-03   6.538712067e-03   5.882180641e-03   6.349807610e-03
6.115239648e-03   5.672093634e-03   6.720921885e-03   7.208123844e-03
7.469373699e-03   9.247933574e-03   1.266567981e-02   2.415709448e-02
8.894849261e-03   8.558526353e-03   8.776485728e-03   1.136865926e-02
1.401288870e-02   3.070974257e-02   1.541892064e-02   1.313303104e-02
1.073224257e-02   1.239772333e-02   1.401534645e-02   2.190566390e-02
1.088117355e-02   1.103731452e-02   9.558885739e-03   9.652432635e-03
9.190564045e-03   1.137630221e-02   1.409815203e-02   2.589466148e-02
1.316537849e-02   7.890527996e-03   6.321366001e-03   5.441231261e-03
5.959640537e-03   6.092032922e-03   5.758579746e-03   6.083754822e-03
6.291005222e-03   6.962504421e-03   8.464951035e-03   1.627594786e-02
1.413443872e-02   7.325305900e-03   8.899435554e-03   1.601072955e-02
7.996267005e-03   8.015151916e-03   9.561814979e-03   3.928873786e-03
3.627478575e-03   3.650504455e-03   5.002246247e-03   6.782437562e-03
1.080923312e-02   3.870515882e-03   3.253620576e-03   2.966181379e-03
4.047080607e-03   4.425892109e-03   1.045501394e-02   6.425539281e-03
6.123854274e-03   5.952707939e-03   2.736341370e-03   2.848080449e-03
1.856064864e-03   1.442571037e-03   3.267844515e-03   1.118762605e-03
6.703279906e-04   8.897200810e-04   8.625724857e-04   7.727883437e-04
1.259672656e-03   2.215096133e-03   1.319412327e-03   1.463737262e-03
1.416521420e-03   1.540882942e-03   2.131251039e-03   5.408904511e-03
1.808999816e-03   1.787621802e-03   1.931546522e-03   2.715271557e-03
3.760804818e-03   3.221142527e-03   1.937393885e-03   2.134013020e-03
1.190400119e-03   1.036779860e-03   2.692647732e-03   8.266802167e-04
5.285949775e-04   7.337543671e-04   7.463680492e-04   7.102598804e-04
1.190509711e-03   2.424185213e-03   1.696512425e-03   1.997768380e-03
1.737033420e-03   1.682864053e-03   2.051948587e-03   5.342449535e-03
2.242021216e-03   2.591366905e-03   2.840739323e-03   3.406863506e-03
4.886326474e-03   5.672314875e-03   3.990342434e-03   3.720951722e-03
2.828193711e-03   3.003322601e-03   8.011502136e-03   2.847657748e-03
2.307419871e-03   3.460635522e-03   6.018931628e-03   3.792479747e-03
4.144793406e-03   3.491256984e-03   3.737076662e-03   4.547453063e-03
8.319632585e-03   3.949638342e-03   4.345929261e-03   4.038918884e-03
4.072625509e-03   4.168962426e-03   3.702670954e-03   3.955747050e-03
4.130775609e-03   3.783659973e-03   4.285409413e-03   4.905948054e-03
9.262425349e-03   4.347749547e-03   4.750442051e-03   4.812306668e-03
5.311246992e-03   6.537925719e-03   1.050995347e-02   7.615133273e-03
6.329501097e-03   4.363031700e-03   4.608694709e-03   4.636558812e-03
5.871891597e-03   7.929896006e-03   1.817917181e-02   1.285108334e-02
5.238685994e-03   5.130730399e-03   4.952194752e-03   5.474910288e-03
5.633250250e-03   5.310937158e-03   6.043497069e-03   6.668566010e-03
6.662593345e-03   7.718283875e-03   1.015217588e-02   2.121713599e-02
8.162063062e-03   8.348231118e-03   8.805007455e-03   1.107185230e-02
1.428144303e-02   9.973977026e-03   1.038765205e-02   1.574697701e-02
7.346594462e-03   8.707750506e-03   1.346406754e-02   1.307734935e-02
8.149016711e-03   7.271737547e-03   6.427498787e-03   6.664723316e-03
7.012307580e-03   6.305957055e-03   6.268073663e-03   6.233855853e-03
6.159044743e-03   7.167594685e-03   1.513961224e-02   1.042150740e-02
5.292489388e-03   6.900423273e-03   1.129401396e-02   6.666622325e-03
7.453432390e-03   1.011258949e-02   4.732494676e-03   4.638488037e-03
4.535120043e-03   5.697081147e-03   7.532711043e-03   1.380362966e-02
5.085509643e-03   4.613332416e-03   4.481150084e-03   6.034103167e-03
7.274884765e-03   1.717051645e-02   8.882902719e-03   7.862343888e-03
8.549477241e-03   4.404836564e-03   4.636943199e-03   2.889765768e-03
2.364346443e-03   5.687064201e-03   1.859261912e-03   1.148446384e-03
1.556362852e-03   1.545539139e-03   1.426586253e-03   2.355580695e-03
4.467593886e-03   2.906465602e-03   3.321150906e-03   3.011295620e-03
3.086008314e-03   3.976850364e-03   9.949321581e-03   3.826380922e-03
4.114886593e-03   4.395161213e-03   5.556554258e-03   7.532044791e-03
8.447928089e-03   5.497383190e-03   5.326850523e-03   3.811827225e-03
3.780029582e-03   9.724281799e-03   3.420715706e-03   2.589584905e-03
3.785241076e-03   5.692358627e-03   4.012913670e-03   5.087506092e-03
8.449276533e-03   4.918933645e-03   5.265746039e-03   4.663483191e-03
5.070934228e-03   6.097055751e-03   1.252998459e-02   5.467593967e-03
5.823962881e-03   5.882803452e-03   6.959708718e-03   8.873277689e-03
1.271235105e-02   7.876783434e-03   7.187579018e-03   5.823686683e-03
5.806817628e-03   1.445182795e-02   5.391692872e-03   4.194362544e-03
6.128393261e-03   1.016250298e-02   6.146138804e-03   6.584835287e-03
5.600217757e-03   6.177291092e-03   7.594525041e-03   1.312418966e-02
6.210821242e-03   6.666610875e-03   6.078265748e-03   6.153100863e-03
6.145113945e-03   5.457661390e-03   5.987165244e-03   6.232010704e-03
5.916418203e-03   6.928804319e-03   8.372587904e-03   1.577780918e-02
6.811686045e-03   7.064433214e-03   7.044697821e-03   8.175048051e-03
9.729561823e-03   1.490935094e-02   1.018959673e-02   8.678733217e-03
6.262588789e-03   6.483293811e-03   6.344811792e-03   7.943471634e-03
1.024555043e-02   2.206384932e-02   1.651609388e-02   7.052810650e-03
7.014625549e-03   6.684268078e-03   7.220417060e-03   7.373659955e-03
6.806221882e-03   7.637045721e-03   8.219828179e-03   8.047178576e-03
9.422067064e-03   1.198608370e-02   2.345625164e-02   9.566762634e-03
9.834318152e-03   1.012827042e-02   1.231310285e-02   1.548595392e-02
1.060278502e-02   1.135482577e-02   1.604328664e-02   8.130651676e-03
1.038137810e-02   1.740788546e-02   1.746853861e-02   1.122413286e-02
9.997566896e-03   8.683370385e-03   8.871192974e-03   9.167336353e-03
8.116246208e-03   8.109793607e-03   7.931201557e-03   8.399135323e-03
1.003600006e-02   2.156057329e-02   1.482438695e-02   7.777521925e-03
1.014543773e-02   1.718389487e-02   9.891617328e-03   1.085429209e-02
1.465152401e-02   6.833576395e-03   6.680716457e-03   6.501068161e-03
8.167774765e-03   1.069507445e-02   1.935842457e-02   7.257647195e-03
6.619317411e-03   6.426494708e-03   8.572573927e-03   1.035475000e-02
2.381539832e-02   1.221895373e-02   1.059621897e-02   1.235661902e-02
6.395707448e-03   6.705090679e-03   4.202032998e-03   3.450053364e-03
8.330709320e-03   2.717011719e-03   1.682473030e-03   2.283933341e-03
2.273678734e-03   2.104952302e-03   3.479092444e-03   6.657612435e-03
4.382423340e-03   5.021651487e-03   4.502911094e-03   4.584582517e-03
5.850473730e-03   1.448966807e-02   5.695329114e-03   6.188630350e-03
6.547513739e-03   8.117276554e-03   1.081131040e-02   1.306792768e-02
8.547034106e-03   8.016385325e-03   6.136832024e-03   6.248734123e-03
1.589748631e-02   5.834353930e-03   4.596620112e-03   6.768050643e-03
1.139464235e-02   7.007867526e-03   7.542955681e-03   6.343056146e-03
6.936389764e-03   8.466015536e-03   1.461956767e-02   7.015677817e-03
7.594528874e-03   6.849767452e-03   6.845160913e-03   6.740053519e-03
5.942591369e-03   6.578726589e-03   6.840835697e-03   6.578629606e-03
7.720204523e-03   9.360803373e-03   1.818715320e-02   7.660283438e-03
7.883424784e-03   8.046430463e-03   9.682076739e-03   1.218565527e-02
1.595641825e-02   1.080005580e-02   9.780166998e-03   6.706808195e-03
6.850013586e-03   6.510268148e-03   8.083129581e-03   9.892848810e-03
2.100778242e-02   1.542149841e-02   7.095084005e-03   7.256439676e-03
6.855310915e-03   7.100807350e-03   7.204173929e-03   6.317836673e-03
6.824656968e-03   6.865952359e-03   6.399502576e-03   7.895017981e-03
9.688715464e-03   1.490630406e-02   6.882379831e-03   6.981534141e-03
6.391206549e-03   6.610247258e-03   6.517545224e-03   5.813791925e-03
6.485316529e-03   6.658867666e-03   6.382361687e-03   7.876499778e-03
9.958116259e-03   1.603189795e-02   7.046733438e-03   7.107059064e-03
6.708991041e-03   7.107659993e-03   7.180839404e-03   6.532579626e-03
7.303476526e-03   7.749579685e-03   7.530462670e-03   8.908252965e-03
1.122464777e-02   2.110964278e-02   8.793984552e-03   9.011403444e-03
9.093775392e-03   1.078786210e-02   1.299474800e-02   1.840766197e-02
1.270020557e-02   1.109296278e-02   7.530555723e-03   7.690684678e-03
7.560886850e-03   9.583143413e-03   1.229551992e-02   2.678166238e-02
1.952843629e-02   8.345592300e-03   8.231057907e-03   7.862749348e-03
8.530853188e-03   8.749207697e-03   8.049040865e-03   8.981886704e-03
9.583472247e-03   9.330537943e-03   1.103345810e-02   1.404429733e-02
2.646593941e-02   1.092447295e-02   1.115341077e-02   1.122413988e-02
1.343418337e-02   1.622432946e-02   1.229816504e-02   1.358898607e-02
1.967132143e-02   1.024161082e-02   1.306516012e-02   2.271195724e-02
2.102562817e-02   1.360009695e-02   1.275627890e-02   1.113395169e-02
1.104862271e-02   1.138502037e-02   9.842226044e-03   9.741735825e-03
9.398911205e-03   9.865738244e-03   1.153742012e-02   2.422695876e-02
1.709020873e-02   8.520454094e-03   1.052321862e-02   1.550998239e-02
6.589294146e-03   6.767016723e-03   6.601408324e-03   8.307260537e-03
1.081041490e-02   1.705597059e-02   7.277813124e-03   7.180755275e-03
6.735441447e-03   7.248388190e-03   7.236458077e-03   6.695432467e-03
7.701396986e-03   8.350257694e-03   8.414992412e-03   9.970302392e-03
1.313509609e-02   2.656483921e-02   1.017168403e-02   1.021462942e-02
1.069352901e-02   1.351828656e-02   1.723978836e-02   3.642337189e-02
1.716168419e-02   1.405098482e-02   1.931015897e-02   1.342230583e-02
1.271149004e-02   7.628919217e-03   7.540062371e-03   7.256220417e-03
9.330558000e-03   1.142753778e-02   2.535020486e-02   1.708034285e-02
7.742090148e-03   7.655352090e-03   7.137045694e-03   7.539827967e-03
7.580415639e-03   6.765596597e-03   7.452307000e-03   7.583310394e-03
7.189079678e-03   8.947314461e-03   1.124907271e-02   1.728412635e-02
7.796733512e-03   7.843081215e-03   7.238285402e-03   7.572845558e-03
7.499177098e-03   6.748982119e-03   7.573155790e-03   7.855474312e-03
7.599456960e-03   9.353686252e-03   1.202944014e-02   1.975341225e-02
8.487318858e-03   8.533800600e-03   8.131243621e-03   8.720169584e-03
8.893010580e-03   8.200690532e-03   9.192688049e-03   9.923850887e-03
9.679149504e-03   1.124474473e-02   1.419976838e-02   2.817247963e-02
1.154646793e-02   1.197168023e-02   1.236659645e-02   1.488975935e-02
1.860063869e-02   2.403380625e-02   1.712537420e-02   1.523270016e-02
9.557634987e-03   9.692139197e-03   9.621141814e-03   1.241499855e-02
1.610507171e-02   3.654352629e-02   2.496113971e-02   1.053892546e-02
1.022309482e-02   9.680140926e-03   1.058573378e-02   1.073182771e-02
9.957891154e-03   1.132194396e-02   1.219016952e-02   1.213074853e-02
1.445454330e-02   1.891813360e-02   3.653531393e-02   1.440567151e-02
1.447460342e-02   1.476936764e-02   1.826750678e-02   2.249817836e-02
4.584643283e-02   2.249817927e-02   1.826750689e-02   1.476936898e-02
1.747048954e-02   1.919048342e-02   2.847179497e-02   1.447460445e-02
1.440567036e-02   1.213074604e-02   1.219016844e-02   1.132194260e-02
9.957890797e-03   1.151016712e-02   1.168340559e-02   1.163177554e-02
1.460381620e-02   1.835384098e-02   3.227102110e-02   1.313912409e-02
1.276665464e-02   1.261002568e-02   1.551066997e-02   1.848375608e-02
2.502022742e-02   1.583550697e-02   1.450967681e-02   1.073182647e-02
1.058573120e-02   9.680138204e-03   1.193877939e-02   1.389694475e-02
2.841248170e-02   2.101662686e-02   1.022309151e-02   1.053892183e-02
9.621137413e-03   9.692133834e-03   9.557628372e-03   8.200685378e-03
8.893005970e-03   8.720164901e-03   8.131239233e-03   1.029740680e-02
1.252298645e-02   1.830556346e-02   8.533795210e-03   8.487313062e-03
7.599451989e-03   7.855469634e-03   7.573151093e-03   9.691994985e-03
1.257505597e-02   1.965975467e-02   8.853598950e-03   9.559244777e-03
9.581321265e-03   1.141751488e-02   1.503449902e-02   2.953869617e-02
1.145081227e-02   1.147497812e-02   1.177986664e-02   1.462156577e-02
1.790797503e-02   2.220593480e-02   1.536836241e-02   1.399373780e-02
1.099981332e-02   1.381209473e-02   3.078697458e-02   2.089826981e-02
1.166483482e-02   1.516637627e-02   2.758969160e-02   1.352108717e-02
1.540530364e-02   2.285881792e-02   1.223632924e-02   1.575876156e-02
2.912776521e-02   2.096507165e-02   1.357321310e-02   1.230514173e-02
1.052303142e-02   1.054778328e-02   1.063521230e-02   9.301622313e-03
9.465216743e-03   9.229761892e-03   8.114540852e-03   8.921686753e-03
8.933386956e-03   8.331893513e-03   1.029884400e-02   1.228794362e-02
2.527270725e-02   1.903411407e-02   8.951115578e-03   9.168829492e-03
8.531847626e-03   8.771562394e-03   8.825803286e-03   7.719017440e-03
8.339150565e-03   8.342066666e-03   7.734365134e-03   9.570356242e-03
1.160207181e-02   1.756100772e-02   8.253088588e-03   8.400759219e-03
7.652758980e-03   7.831369934e-03   7.671775025e-03   9.083517046e-03
1.147228057e-02   1.771576902e-02   7.765517362e-03   8.233296799e-03
8.272074339e-03   1.001553676e-02   1.311760510e-02   2.516020645e-02
9.760883880e-03   9.639628030e-03   9.826466302e-03   1.232793630e-02
1.517364191e-02   3.137167241e-02   1.558641293e-02   1.287312923e-02
1.850825944e-02   1.230790659e-02   1.145336360e-02   8.971963041e-03
1.078337957e-02   2.271316124e-02   1.650221277e-02   8.361969530e-03
1.021820337e-02   1.535486238e-02   8.045726149e-03   1.031000807e-02
1.616588652e-02   7.266272880e-03   7.860134441e-03   7.874103105e-03
9.341010033e-03   1.218981422e-02   2.415422433e-02   9.450808809e-03
9.552907706e-03   9.942326891e-03   1.233079461e-02   1.545683761e-02
1.831868067e-02   1.294377095e-02   1.198414007e-02   8.916166028e-03
1.109833004e-02   2.592303618e-02   1.608938478e-02   8.779590931e-03
1.182534127e-02   2.020764995e-02   1.225623048e-02   1.384086641e-02
2.032779916e-02   1.046640275e-02   1.059303582e-02   9.714714675e-03
1.144251976e-02   1.410474654e-02   2.604908475e-02   1.089810100e-02
1.075512663e-02   1.040323556e-02   1.277827999e-02   1.534576729e-02
2.245320144e-02   1.253128419e-02   1.172980322e-02   9.276376689e-03
8.616759234e-03   2.019681114e-02   7.727225529e-03   5.679117284e-03
8.034275475e-03   1.217885464e-02   6.719893574e-03   6.945409816e-03
6.183300626e-03   7.263952641e-03   9.369145094e-03   1.526796658e-02
6.741521146e-03   6.761376873e-03   6.100598793e-03   6.505651949e-03
6.420699242e-03   5.991822663e-03   6.916997240e-03   7.548314909e-03
7.573595577e-03   8.877800024e-03   1.158945189e-02   2.392141307e-02
9.200655734e-03   9.343069070e-03   9.806481399e-03   1.222153998e-02
1.540460142e-02   1.779906372e-02   1.281570057e-02   1.187013220e-02
6.864835864e-03   6.708619280e-03   6.549390550e-03   8.670076899e-03
1.101094273e-02   2.629254224e-02   1.584444591e-02   6.887251888e-03
6.538712681e-03   5.882180839e-03   6.349807731e-03   6.115239281e-03
5.672093124e-03   6.720921548e-03   7.208122930e-03   7.469372783e-03
9.247933075e-03   1.266567894e-02   2.415708958e-02   8.894847738e-03
8.558524704e-03   8.776483376e-03   1.136865520e-02   1.401288225e-02
3.070972689e-02   1.541891632e-02   1.313302857e-02   1.073224146e-02
1.239772248e-02   1.401534685e-02   2.190566539e-02   1.088117214e-02
1.103731223e-02   9.558884719e-03   9.652432937e-03   9.190564900e-03
1.137630465e-02   1.409815587e-02   2.589467378e-02   1.316537742e-02
7.890527537e-03   6.321365106e-03   5.441230141e-03   5.959639746e-03
6.092032069e-03   5.758578838e-03   6.083754017e-03   6.291004216e-03
6.962504480e-03   8.464951822e-03   1.627594917e-02   1.413444117e-02
7.325307356e-03   8.899437251e-03   1.601073365e-02   7.996268336e-03
8.015152439e-03   9.561814680e-03   3.928873519e-03   3.627478198e-03
3.650504012e-03   5.002245907e-03   6.782437522e-03   1.080923210e-02
3.870515489e-03   3.253620127e-03   2.966180811e-03   4.047080005e-03
4.425891180e-03   1.045501133e-02   6.425538043e-03   6.123852887e-03
5.952707289e-03   2.736340891e-03   2.848079768e-03   1.856064587e-03
1.442570856e-03   3.267843953e-03   1.118762401e-03   6.703278673e-04
8.897199119e-04   8.625722931e-04   7.727881744e-04   1.259672381e-03
2.215095603e-03   1.319411973e-03   1.463736883e-03   1.416521095e-03
1.540882582e-03   2.131250542e-03   5.408903151e-03   1.808999385e-03
1.787621335e-03   1.931545970e-03   2.715270795e-03   3.760803759e-03
3.221141624e-03   1.937393313e-03   2.134012393e-03   1.190399766e-03
1.036779525e-03   2.692646875e-03   8.266799511e-04   5.285948065e-04
7.337541244e-04   7.463678041e-04   7.102596385e-04   1.190509317e-03
2.424184392e-03   1.696511830e-03   1.997767647e-03   1.737032780e-03
1.682863490e-03   2.051947929e-03   5.342447835e-03   2.242020383e-03
2.591365944e-03   2.840738315e-03   3.406862393e-03   4.886324856e-03
5.672312684e-03   3.990340839e-03   3.720950274e-03   2.828192521e-03
3.003321300e-03   8.011498532e-03   2.847656447e-03   2.307418773e-03
3.460633844e-03   6.018928510e-03   3.792477751e-03   4.144791097e-03
3.491255024e-03   3.737074698e-03   4.547450839e-03   8.319628503e-03
3.949636160e-03   4.345926759e-03   4.038916636e-03   4.072623381e-03
4.168960133e-03   3.702668953e-03   3.955745109e-03   4.130773706e-03
3.783658287e-03   4.285407462e-03   4.905945848e-03   9.262421601e-03
4.347747681e-03   4.750440145e-03   4.812304904e-03   5.311245045e-03
6.537923756e-03   1.050994871e-02   7.615130314e-03   6.329498964e-03
4.363029382e-03   4.608692253e-03   4.636556432e-03   5.871888703e-03
7.929892063e-03   1.817916426e-02   1.285107620e-02   5.238683129e-03
5.130727400e-03   4.952191605e-03   5.474906781e-03   5.633246542e-03
5.310933832e-03   6.043493508e-03   6.668561894e-03   6.662589438e-03
7.718279777e-03   1.015217115e-02   2.121712618e-02   8.162058299e-03
8.348225818e-03   8.805002030e-03   1.107184617e-02   1.428143451e-02
9.973973808e-03   1.038764861e-02   1.574697343e-02   7.346592509e-03
8.707747719e-03   1.346406397e-02   1.307734015e-02   8.149010858e-03
7.271731928e-03   6.427493761e-03   6.664718258e-03   7.012302201e-03
6.305952330e-03   6.268069128e-03   6.233851624e-03   6.159040816e-03
7.167590241e-03   1.513960179e-02   1.042150137e-02   5.292486188e-03
6.900418795e-03   1.129400701e-02   6.666617856e-03   7.453427242e-03
1.011258201e-02   4.732490945e-03   4.638484267e-03   4.535116373e-03
5.697076744e-03   7.532705291e-03   1.380361842e-02   5.085505446e-03
4.613328526e-03   4.481146240e-03   6.034098007e-03   7.274878309e-03
1.717050092e-02   8.882895216e-03   7.862337475e-03   8.549469944e-03
4.404832640e-03   4.636939091e-03   2.889763213e-03   2.364344323e-03
5.687059019e-03   1.859260230e-03   1.148445335e-03   1.556361425e-03
1.545537706e-03   1.426584926e-03   2.355578509e-03   4.467589702e-03
2.906462846e-03   3.321147754e-03   3.011292797e-03   3.086005442e-03
3.976846700e-03   9.949312493e-03   3.826377327e-03   4.114882673e-03
4.395157037e-03   5.556549068e-03   7.532037749e-03   8.447919937e-03
5.497377850e-03   5.326845404e-03   3.811823490e-03   3.780025839e-03
9.724272185e-03   3.420712296e-03   2.589582317e-03   3.785237293e-03
5.692352911e-03   4.012909639e-03   5.087501009e-03   8.449268082e-03
4.918928728e-03   5.265740772e-03   4.663478537e-03   5.070929194e-03
6.097049751e-03   1.252997248e-02   5.467588542e-03   5.823957096e-03
5.882797693e-03   6.959702022e-03   8.873269293e-03   1.271233823e-02
7.876775488e-03   7.187571927e-03   5.823680718e-03   5.806811640e-03
1.445181304e-02   5.391687248e-03   4.194358121e-03   6.128386808e-03
1.016249211e-02   6.146132080e-03   6.584828079e-03   5.600211763e-03
6.177284552e-03   7.594517077e-03   1.312417592e-02   6.210814573e-03
6.666603589e-03   6.078259194e-03   6.153094360e-03   6.145107553e-03
5.457655793e-03   5.987159117e-03   6.232004519e-03   5.916412395e-03
6.928797299e-03   8.372579468e-03   1.577779397e-02   6.811679518e-03
7.064426523e-03   7.044691311e-03   8.175040452e-03   9.729553117e-03
1.490933657e-02   1.018958755e-02   8.678725538e-03   6.262582517e-03
6.483287309e-03   6.344805534e-03   7.943463996e-03   1.024554100e-02
2.206383083e-02   1.651607822e-02   7.052803632e-03   7.014618281e-03
6.684261034e-03   7.220409717e-03   7.373652368e-03   6.806215074e-03
7.637038350e-03   8.219820440e-03   8.047171446e-03   9.422058803e-03
1.198607382e-02   2.345623443e-02   9.566754593e-03   9.834309685e-03
1.012826234e-02   1.231309389e-02   1.548594371e-02   1.060277755e-02
1.135481719e-02   1.604327554e-02   8.130645647e-03   1.038136996e-02
1.740787105e-02   1.746851932e-02   1.122411983e-02   9.997554793e-03
8.683359909e-03   8.871182706e-03   9.167325966e-03   8.116237455e-03
8.109784986e-03   7.931193495e-03   8.399126195e-03   1.003598906e-02
2.156054812e-02   1.482437136e-02   7.777513480e-03   1.014542630e-02
1.718387549e-02   9.891605704e-03   1.085427898e-02   1.465150558e-02
6.833567493e-03   6.680707569e-03   6.501059594e-03   8.167764344e-03
1.069506115e-02   1.935839968e-02   7.257637516e-03   6.619308329e-03
6.426485799e-03   8.572562239e-03   1.035473539e-02   2.381536508e-02
1.221893788e-02   1.059620586e-02   1.235660183e-02   6.395698238e-03
6.705081093e-03   4.202026951e-03   3.450048332e-03   8.330697049e-03
2.717007723e-03   1.682470529e-03   2.283929928e-03   2.273675304e-03
2.104949106e-03   3.479087213e-03   6.657602294e-03   4.382416567e-03
5.021643639e-03   4.502904113e-03   4.584575579e-03   5.850465021e-03
1.448964669e-02   5.695320329e-03   6.188620759e-03   6.547503709e-03
8.117264355e-03   1.081129418e-02   1.306790681e-02   8.547020259e-03
8.016372675e-03   6.136821907e-03   6.248723667e-03   1.589745945e-02
5.834344035e-03   4.596612182e-03   6.768038846e-03   1.139462197e-02
7.007854852e-03   7.542941828e-03   6.343044528e-03   6.936377368e-03
8.466000914e-03   1.461954257e-02   7.015665019e-03   7.594514668e-03
6.849754819e-03   6.845148826e-03   6.740041537e-03   5.942581023e-03
6.578715433e-03   6.840824120e-03   6.578618587e-03   7.720191545e-03
9.360787764e-03   1.818712449e-02   7.660270993e-03   7.883412304e-03
8.046418258e-03   9.682062135e-03   1.218563760e-02   1.595639185e-02
1.080003876e-02   9.780152181e-03   6.706796432e-03   6.850001482e-03
6.510257097e-03   8.083116266e-03   9.892832669e-03   2.100774985e-02
1.542147210e-02   7.095071680e-03   7.256426480e-03   6.855298388e-03
7.100794684e-03   7.204160946e-03   6.317825437e-03   6.824645113e-03
6.865940643e-03   6.399491947e-03   7.895004808e-03   9.688700018e-03
1.490628112e-02   6.882368855e-03   6.981522971e-03   6.391196376e-03
6.610236763e-03   6.517535189e-03   5.813783414e-03   6.485306912e-03
6.658858139e-03   6.382352653e-03   7.876488505e-03   9.958102049e-03
1.603187649e-02   7.046723595e-03   7.107049348e-03   6.708982521e-03
7.107651062e-03   7.180830607e-03   6.532571359e-03   7.303467241e-03
7.749569866e-03   7.530452843e-03   8.908240716e-03   1.122463134e-02
2.110961289e-02   8.793972959e-03   9.011392023e-03   9.093763978e-03
1.078784792e-02   1.299473110e-02   1.840763975e-02   1.270019100e-02
1.109294954e-02   7.530546508e-03   7.690676003e-03   7.560878840e-03
9.583133081e-03   1.229550753e-02   2.678163552e-02   1.952841800e-02
8.345583681e-03   8.231049116e-03   7.862741279e-03   8.530845138e-03
8.749200247e-03   8.049034475e-03   8.981879289e-03   9.583464829e-03
9.330530689e-03   1.103344862e-02   1.404428530e-02   2.646592058e-02
1.092446544e-02   1.115340386e-02   1.122413369e-02   1.343417565e-02
1.622432165e-02   1.229815495e-02   1.358897352e-02   1.967130256e-02
1.024160017e-02   1.306514612e-02   2.271193030e-02   2.102560985e-02
1.360008371e-02   1.275626721e-02   1.113394294e-02   1.104861430e-02
1.138501266e-02   9.842219141e-03   9.741728346e-03   9.398904116e-03
9.865728466e-03   1.153740792e-02   2.422693138e-02   1.709018944e-02
8.520443739e-03   1.052320542e-02   1.550996142e-02   6.589285093e-03
6.767007284e-03   6.601399185e-03   8.307249424e-03   1.081040115e-02
1.705594860e-02   7.277802843e-03   7.180744727e-03   6.735431710e-03
7.248378261e-03   7.236448021e-03   6.695423297e-03   7.701386979e-03
8.350247230e-03   8.414982597e-03   9.970290828e-03   1.313508166e-02
2.656481336e-02   1.017167262e-02   1.021461772e-02   1.069351786e-02
1.351827384e-02   1.723977402e-02   3.642334949e-02   1.716167084e-02
1.405097483e-02   1.931013456e-02   1.342228986e-02   1.271147653e-02
7.628908677e-03   7.540051635e-03   7.256210195e-03   9.330545539e-03
1.142752211e-02   2.535017223e-02   1.708031687e-02   7.742078592e-03
7.655340225e-03   7.137034288e-03   7.539815916e-03   7.580403120e-03
6.765585289e-03   7.452294934e-03   7.583298081e-03   7.189068418e-03
8.947300818e-03   1.124905638e-02   1.728410073e-02   7.796721373e-03
7.843068487e-03   7.238273404e-03   7.572833254e-03   7.499164931e-03
6.748971906e-03   7.573144881e-03   7.855463244e-03   7.599446444e-03
9.353673427e-03   1.202942472e-02   1.975338949e-02   8.487307576e-03
8.533789173e-03   8.131233588e-03   8.720159761e-03   8.893000752e-03
8.200681814e-03   9.192678664e-03   9.923841129e-03   9.679139673e-03
1.124473234e-02   1.419975239e-02   2.817245331e-02   1.154645717e-02
1.197167038e-02   1.236658741e-02   1.488974828e-02   1.860062710e-02
2.403378594e-02   1.712536296e-02   1.523269043e-02   9.557625035e-03
9.692129284e-03   9.621133430e-03   1.241498888e-02   1.610506015e-02
3.654350759e-02   2.496111926e-02   1.053891604e-02   1.022308464e-02
9.680131232e-03   1.058572356e-02   1.073181732e-02   9.957882536e-03
1.132193517e-02   1.219016132e-02   1.213074085e-02   1.445453340e-02
1.891812372e-02   3.653530326e-02   1.440566402e-02   1.447459524e-02
1.476935994e-02   1.826750002e-02   2.249817242e-02   1.747048620e-02
1.919047815e-02   2.847179168e-02   1.151016663e-02   1.168340489e-02
1.163177378e-02   1.460381325e-02   1.835383412e-02   3.227100636e-02
1.313912082e-02   1.276665245e-02   1.261002310e-02   1.551066478e-02
1.848374955e-02   2.502022799e-02   1.583550718e-02   1.450967528e-02
1.193878182e-02   1.389694803e-02   2.841248667e-02   2.101663514e-02
1.029741143e-02   1.252299164e-02   1.830557250e-02   9.691998548e-03
1.257505922e-02   1.965975845e-02   8.853599736e-03   9.559244957e-03
9.581321213e-03   1.141751529e-02   1.503449918e-02   2.953869124e-02
1.145081123e-02   1.147497617e-02   1.177986321e-02   1.462156106e-02
1.790796645e-02   2.220593273e-02   1.536835839e-02   1.399373286e-02
1.099981265e-02   1.381209334e-02   3.078696547e-02   2.089826983e-02
1.166483370e-02   1.516637291e-02   2.758968276e-02   1.352108090e-02
1.540529637e-02   2.285880320e-02   1.223632182e-02   1.575875401e-02
2.912774965e-02   2.096502530e-02   1.357318461e-02   1.230511544e-02
1.052300778e-02   1.054775911e-02   1.063518693e-02   9.301599821e-03
9.465194309e-03   9.229739579e-03   8.114521854e-03   8.921666846e-03
8.933367441e-03   8.331875784e-03   1.029882227e-02   1.228791876e-02
2.527265859e-02   1.903407688e-02   8.951096891e-03   9.168810173e-03
8.531830417e-03   8.771545409e-03   8.825786695e-03   7.719003148e-03
8.339135096e-03   8.342051894e-03   7.734351530e-03   9.570338696e-03
1.160205084e-02   1.756097794e-02   8.253074550e-03   8.400745382e-03
7.652746753e-03   7.831357286e-03   7.671763318e-03   9.083501661e-03
1.147226040e-02   1.771573840e-02   7.765503903e-03   8.233282230e-03
8.272059109e-03   1.001551815e-02   1.311757969e-02   2.516015523e-02
9.760865496e-03   9.639610145e-03   9.826447344e-03   1.232791152e-02
1.517361070e-02   3.137160190e-02   1.558637865e-02   1.287309970e-02
1.850822736e-02   1.230788467e-02   1.145334198e-02   8.971948386e-03
1.078336226e-02   2.271312292e-02   1.650218806e-02   8.361956948e-03
1.021818735e-02   1.535483909e-02   8.045713367e-03   1.030999103e-02
1.616585875e-02   7.266259804e-03   7.860119928e-03   7.874088493e-03
9.340993114e-03   1.218979212e-02   2.415417742e-02   9.450790835e-03
9.552889087e-03   9.942306667e-03   1.233076933e-02   1.545680418e-02
1.831864597e-02   1.294374505e-02   1.198411509e-02   8.916149397e-03
1.109830905e-02   2.592298450e-02   1.608935516e-02   8.779574426e-03
1.182531858e-02   2.020761138e-02   1.225620592e-02   1.384083813e-02
2.032775479e-02   1.046637869e-02   1.059301100e-02   9.714692325e-03
1.144249434e-02   1.410471613e-02   2.604902703e-02   1.089807581e-02
1.075510089e-02   1.040321026e-02   1.277824988e-02   1.534573047e-02
2.245314583e-02   1.253125174e-02   1.172977342e-02   9.276352437e-03
8.616736054e-03   2.019675580e-02   7.727204294e-03   5.679101300e-03
8.034252675e-03   1.217881878e-02   6.719873169e-03   6.945388395e-03
6.183281818e-03   7.263931201e-03   9.369118131e-03   1.526792172e-02
6.741500617e-03   6.761355844e-03   6.100579847e-03   6.505632165e-03
6.420679570e-03   5.991804669e-03   6.916976924e-03   7.548293249e-03
7.573574315e-03   8.877774957e-03   1.158942016e-02   2.392135120e-02
9.200630718e-03   9.343043649e-03   9.806455474e-03   1.222150878e-02
1.540456383e-02   1.779901291e-02   1.281566518e-02   1.187010079e-02
6.864815335e-03   6.708598802e-03   6.549370667e-03   8.670051233e-03
1.101090992e-02   2.629246878e-02   1.584439629e-02   6.887230443e-03
6.538691912e-03   5.882161801e-03   6.349787152e-03   6.115219066e-03
5.672074411e-03   6.720899856e-03   7.208099717e-03   7.469349251e-03
9.247904529e-03   1.266564145e-02   2.415701795e-02   8.894819824e-03
8.558496986e-03   8.776454882e-03   1.136861967e-02   1.401283821e-02
3.070963607e-02   1.541887191e-02   1.313299238e-02   1.073221222e-02
1.239768798e-02   1.401530892e-02   2.190560966e-02   1.088114378e-02
1.103728442e-02   9.558861514e-03   9.652409343e-03   9.190543207e-03
1.137627608e-02   1.409811939e-02   2.589460972e-02   1.316533262e-02
7.890500127e-03   6.321342497e-03   5.441210659e-03   5.959618742e-03
6.092010440e-03   5.758558740e-03   6.083733169e-03   6.290983103e-03
6.962481493e-03   8.464923922e-03   1.627589374e-02   1.413439648e-02
7.325284018e-03   8.899408216e-03   1.601068242e-02   7.996241536e-03
8.015124965e-03   9.561780727e-03   3.928859088e-03   3.627464711e-03
3.650490563e-03   5.002227873e-03   6.782413246e-03   1.080919226e-02
3.870501054e-03   3.253607792e-03   2.966169467e-03   4.047064605e-03
4.425874100e-03   1.045497109e-02   6.425514070e-03   6.123830489e-03
5.952684552e-03   2.736330223e-03   2.848068720e-03   1.856057342e-03
1.442565156e-03   3.267830987e-03   1.118757953e-03   6.703251877e-04
8.897163515e-04   8.625688232e-04   7.727850641e-04   1.259667325e-03
2.215086673e-03   1.319406633e-03   1.463730963e-03   1.416515395e-03
1.540876399e-03   2.131242066e-03   5.408881867e-03   1.808992131e-03
1.787614128e-03   1.931538210e-03   2.715260008e-03   3.760788878e-03
3.221128524e-03   1.937385425e-03   2.134003774e-03   1.190394877e-03
1.036775250e-03   2.692635818e-03   8.266765222e-04   5.285926106e-04
7.337510823e-04   7.463647012e-04   7.102566965e-04   1.190504406e-03
2.424174420e-03   1.696504879e-03   1.997759500e-03   1.737025708e-03
1.682856605e-03   2.051939561e-03   5.342426374e-03   2.242011324e-03
2.591355499e-03   2.840726938e-03   3.406848822e-03   4.886305684e-03
5.672289706e-03   3.990324815e-03   3.720935436e-03   2.828181051e-03
3.003309141e-03   8.011466412e-03   2.847644876e-03   2.307409420e-03
3.460619882e-03   6.018904261e-03   3.792462486e-03   4.144774481e-03
3.491241075e-03   3.737059736e-03   4.547432686e-03   8.319595594e-03
3.949620448e-03   4.345909500e-03   4.038900686e-03   4.072607341e-03
4.168943864e-03   3.702654576e-03   3.955729666e-03   4.130757683e-03
3.783643536e-03   4.285390579e-03   4.905926434e-03   9.262385378e-03
4.347730835e-03   4.750421946e-03   4.812286616e-03   5.311224729e-03
6.537899010e-03   1.050990873e-02   7.615102013e-03   6.329475327e-03
4.363012614e-03   4.608674586e-03   4.636538848e-03   5.871866643e-03
7.929862884e-03   1.817909944e-02   1.285102884e-02   5.238663348e-03
5.130707833e-03   4.952172794e-03   5.474886267e-03   5.633225478e-03
5.310914211e-03   6.043471385e-03   6.668537930e-03   6.662565833e-03
7.718252196e-03   1.015213555e-02   2.121705515e-02   8.162030047e-03
8.348196989e-03   8.804972337e-03   1.107180970e-02   1.428138925e-02
9.973940495e-03   1.038761321e-02   1.574692087e-02   7.346567026e-03
8.707716777e-03   1.346401474e-02   1.307729045e-02   8.148979188e-03
7.271703576e-03   6.427468999e-03   6.664692892e-03   7.012275856e-03
6.305928955e-03   6.268045826e-03   6.233828734e-03   6.159017197e-03
7.167562409e-03   1.513954210e-02   1.042146100e-02   5.292465397e-03
6.900391530e-03   1.129396194e-02   6.666591167e-03   7.453397412e-03
1.011254119e-02   4.732471684e-03   4.638465368e-03   4.535098023e-03
5.697053824e-03   7.532675281e-03   1.380356357e-02   5.085484893e-03
4.613309733e-03   4.481128001e-03   6.034073681e-03   7.274849000e-03
1.717043329e-02   8.882860422e-03   7.862307200e-03   8.549434798e-03
4.404814453e-03   4.636920088e-03   2.889751189e-03   2.364334431e-03
5.687035287e-03   1.859252407e-03   1.148440492e-03   1.556354869e-03
1.545531175e-03   1.426578912e-03   2.355568620e-03   4.467570977e-03
2.906450694e-03   3.321133911e-03   3.011280268e-03   3.085992577e-03
3.976830190e-03   9.949271751e-03   3.826361502e-03   4.114865679e-03
4.395139014e-03   5.556526438e-03   7.532007434e-03   8.447884836e-03
5.497355158e-03   5.326823587e-03   3.811807596e-03   3.780010086e-03
9.724231989e-03   3.420697977e-03   2.589571488e-03   3.785221520e-03
5.692329169e-03   4.012892997e-03   5.087480019e-03   8.449233529e-03
4.918908840e-03   5.265719629e-03   4.663459734e-03   5.070908558e-03
6.097024853e-03   1.252992194e-02   5.467566634e-03   5.823934013e-03
5.882774539e-03   6.959674481e-03   8.873234613e-03   1.271228814e-02
7.876745001e-03   7.187544041e-03   5.823658082e-03   5.806789328e-03
1.445175842e-02   5.391666600e-03   4.194342247e-03   6.128363835e-03
1.016245478e-02   6.146110015e-03   6.584804676e-03   5.600191636e-03
6.177262022e-03   7.594489139e-03   1.312412851e-02   6.210792391e-03
6.666580222e-03   6.078238047e-03   6.153072706e-03   6.145086075e-03
5.457636497e-03   5.987137637e-03   6.231981952e-03   5.916390645e-03
6.928771754e-03   8.372548040e-03   1.577773386e-02   6.811654215e-03
7.064400513e-03   7.044665133e-03   8.175009552e-03   9.729515946e-03
1.490928329e-02   1.018955095e-02   8.678693574e-03   6.262560495e-03
6.483264909e-03   6.344783788e-03   7.943436493e-03   1.024550601e-02
2.206375405e-02   1.651602382e-02   7.052779902e-03   7.014594875e-03
6.684239227e-03   7.220386385e-03   7.373629076e-03   6.806193745e-03
7.637014101e-03   8.219794763e-03   8.047145961e-03   9.422028091e-03
1.198603412e-02   2.345615950e-02   9.566724754e-03   9.834279949e-03
1.012823228e-02   1.231305678e-02   1.548589868e-02   1.060274198e-02
1.135477797e-02   1.604321845e-02   8.130616065e-03   1.038133228e-02
1.740780581e-02   1.746846532e-02   1.122408515e-02   9.997524901e-03
8.683334457e-03   8.871156402e-03   9.167299346e-03   8.116213580e-03
8.109760476e-03   7.931169261e-03   8.399099150e-03   1.003595619e-02
2.156047902e-02   1.482432106e-02   7.777486942e-03   1.014539223e-02
1.718381648e-02   9.891572924e-03   1.085424397e-02   1.465145956e-02
6.833546600e-03   6.680687467e-03   6.501039996e-03   8.167739231e-03
1.069502828e-02   1.935834288e-02   7.257616042e-03   6.619289037e-03
6.426467430e-03   8.572537921e-03   1.035470700e-02   2.381530229e-02
1.221890358e-02   1.059617582e-02   1.235656561e-02   6.395680012e-03
6.705062199e-03   4.202014765e-03   3.450038417e-03   8.330673557e-03
2.716999899e-03   1.682465714e-03   2.283923438e-03   2.273668864e-03
2.104943208e-03   3.479077526e-03   6.657584130e-03   4.382404889e-03
5.021630424e-03   4.502892122e-03   4.584563122e-03   5.850448914e-03
1.448960742e-02   5.695305295e-03   6.188604802e-03   6.547486983e-03
8.117243250e-03   1.081126661e-02   1.306787376e-02   8.546999351e-03
8.016352817e-03   6.136806909e-03   6.248708777e-03   1.589742264e-02
5.834330295e-03   4.596601618e-03   6.768023571e-03   1.139459735e-02
7.007840401e-03   7.542926560e-03   6.343031361e-03   6.936362540e-03
8.465982383e-03   1.461951146e-02   7.015650602e-03   7.594499703e-03
6.849741436e-03   6.845135006e-03   6.740028026e-03   5.942568791e-03
6.578701492e-03   6.840809321e-03   6.578603955e-03   7.720174352e-03
9.360766173e-03   1.818708077e-02   7.660253516e-03   7.883394506e-03
8.046399642e-03   9.682038979e-03   1.218560762e-02   1.595635780e-02
1.080001521e-02   9.780129848e-03   6.706782732e-03   6.849987932e-03
6.510244246e-03   8.083099861e-03   9.892812839e-03   2.100770605e-02
1.542144304e-02   7.095058089e-03   7.256412944e-03   6.855286102e-03
7.100782004e-03   7.204148555e-03   6.317814481e-03   6.824632869e-03
6.865928471e-03   6.399480304e-03   7.894989939e-03   9.688681201e-03
1.490625286e-02   6.882356360e-03   6.981510702e-03   6.391185130e-03
6.610224793e-03   6.517523532e-03   5.813772779e-03   6.485294665e-03
6.658845239e-03   6.382339899e-03   7.876472778e-03   9.958081443e-03
1.603184211e-02   7.046709210e-03   7.107035017e-03   6.708968642e-03
7.107635948e-03   7.180814972e-03   6.532556762e-03   7.303450859e-03
7.749551966e-03   7.530435456e-03   8.908220815e-03   1.122460633e-02
2.110956276e-02   8.793952104e-03   9.011370092e-03   9.093741098e-03
1.078782075e-02   1.299469700e-02   1.840759558e-02   1.270015865e-02
1.109292078e-02   7.530529284e-03   7.690658532e-03   7.560861253e-03
9.583110071e-03   1.229547716e-02   2.678156454e-02   1.952837158e-02
8.345564469e-03   8.231030817e-03   7.862724056e-03   8.530826010e-03
8.749180912e-03   8.049016241e-03   8.981858272e-03   9.583441976e-03
9.330507613e-03   1.103342106e-02   1.404424858e-02   2.646584861e-02
1.092443769e-02   1.115337614e-02   1.122410514e-02   1.343413995e-02
1.622427749e-02   1.229811986e-02   1.358893505e-02   1.967124396e-02
1.024157054e-02   1.306510983e-02   2.271186798e-02   2.102556641e-02
1.360005765e-02   1.275624392e-02   1.113392209e-02   1.104859248e-02
1.138498987e-02   9.842198530e-03   9.741707513e-03   9.398883150e-03
9.865707614e-03   1.153738401e-02   2.422688550e-02   1.709015249e-02
8.520426151e-03   1.052318470e-02   1.550993176e-02   6.589273029e-03
6.766995213e-03   6.601387449e-03   8.307234297e-03   1.081038180e-02
1.705592018e-02   7.277790403e-03   7.180732786e-03   6.735420940e-03
7.248366767e-03   7.236436924e-03   6.695413143e-03   7.701374947e-03
8.350234373e-03   8.414969107e-03   9.970274151e-03   1.313505886e-02
2.656476941e-02   1.017165668e-02   1.021460275e-02   1.069350254e-02
1.351825373e-02   1.723974976e-02   3.642329593e-02   1.716164246e-02
1.405094960e-02   1.931010745e-02   1.342227240e-02   1.271145952e-02
7.628897547e-03   7.540040850e-03   7.256200347e-03   9.330533204e-03
1.142750780e-02   2.535014284e-02   1.708029592e-02   7.742068354e-03
7.655329910e-03   7.137025052e-03   7.539806488e-03   7.580393885e-03
6.765577400e-03   7.452286392e-03   7.583289972e-03   7.189060757e-03
8.947290716e-03   1.124904414e-02   1.728408387e-02   7.796713474e-03
7.843060732e-03   7.238266574e-03   7.572826353e-03   7.499158606e-03
6.748966229e-03   7.573138032e-03   7.855456240e-03   7.599439538e-03
9.353664510e-03   1.202941268e-02   1.975337087e-02   8.487300085e-03
8.533782122e-03   8.131227129e-03   8.720152471e-03   8.892993549e-03
8.200674814e-03   9.192670215e-03   9.923831762e-03   9.679129871e-03
1.124472055e-02   1.419973613e-02   2.817241862e-02   1.154644499e-02
1.197165830e-02   1.236657410e-02   1.488973065e-02   1.860060398e-02
2.403376467e-02   1.712534757e-02   1.523267486e-02   9.557617263e-03
9.692122134e-03   9.621126565e-03   1.241497944e-02   1.610504906e-02
3.654348144e-02   2.496110517e-02   1.053890923e-02   1.022307820e-02
9.680125729e-03   1.058571805e-02   1.073181251e-02   9.957878438e-03
1.132193005e-02   1.219015655e-02   1.213073594e-02   1.445452634e-02
1.891811402e-02   3.653528979e-02   1.440565921e-02   1.447459155e-02
1.476935735e-02   1.826749676e-02   2.249817139e-02   1.747047709e-02
1.919046620e-02   2.847177142e-02   1.151015667e-02   1.168339345e-02
1.163176230e-02   1.460380032e-02   1.835381757e-02   3.227097106e-02
1.313910690e-02   1.276663809e-02   1.261000752e-02   1.551064544e-02
1.848372364e-02   2.502020103e-02   1.583548717e-02   1.450965584e-02
1.193876918e-02   1.389693197e-02   2.841244831e-02   2.101661163e-02
1.029739848e-02   1.252297473e-02   1.830554639e-02   9.691984009e-03
1.257504048e-02   1.965972597e-02   8.853584023e-03   9.559228113e-03
9.581305060e-03   1.141749691e-02   1.503447648e-02   2.953864627e-02
1.145079199e-02   1.147495590e-02   1.177984234e-02   1.462153666e-02
1.790793649e-02   2.220589093e-02   1.536832811e-02   1.399370666e-02
1.099979024e-02   1.381206345e-02   3.078689812e-02   2.089822307e-02
1.166480631e-02   1.516633705e-02   2.758961186e-02   1.352104735e-02
1.540526026e-02   2.285875022e-02   1.223629549e-02   1.575872119e-02
2.912769484e-02   2.096501178e-02   1.357317420e-02   1.230510512e-02
1.052299951e-02   1.054775172e-02   1.063517990e-02   9.301594265e-03
9.465188781e-03   9.229734750e-03   8.114517747e-03   8.921661986e-03
8.933362672e-03   8.331870930e-03   1.029881569e-02   1.228791038e-02
2.527263825e-02   1.903406521e-02   8.951091869e-03   9.168805665e-03
8.531826359e-03   8.771540766e-03   8.825782177e-03   7.718998940e-03
8.339130205e-03   8.342046791e-03   7.734346367e-03   9.570332219e-03
1.160204212e-02   1.756096395e-02   8.253068617e-03   8.400739545e-03
7.652741217e-03   7.831351315e-03   7.671757218e-03   9.083493562e-03
1.147225005e-02   1.771572054e-02   7.765495290e-03   8.233272941e-03
8.272050208e-03   1.001550809e-02   1.311756739e-02   2.516013045e-02
9.760854838e-03   9.639598900e-03   9.826435670e-03   1.232789775e-02
1.517359314e-02   3.137156964e-02   1.558636408e-02   1.287308915e-02
1.850820454e-02   1.230786833e-02   1.145332731e-02   8.971936553e-03
1.078334695e-02   2.271308930e-02   1.650216391e-02   8.361943905e-03
1.021817118e-02   1.535481302e-02   8.045699801e-03   1.030997440e-02
1.616583180e-02   7.266247677e-03   7.860107300e-03   7.874076281e-03
9.340978585e-03   1.218977418e-02   2.415414504e-02   9.450776833e-03
9.552874842e-03   9.942292582e-03   1.233075299e-02   1.545678528e-02
1.831861640e-02   1.294372504e-02   1.198409799e-02   8.916133946e-03
1.109828947e-02   2.592294229e-02   1.608932466e-02   8.779557884e-03
1.182529722e-02   2.020757351e-02   1.225618493e-02   1.384081592e-02
2.032772518e-02   1.046636497e-02   1.059299786e-02   9.714679864e-03
1.144247848e-02   1.410469596e-02   2.604899363e-02   1.089806246e-02
1.075508878e-02   1.040319918e-02   1.277823578e-02   1.534571508e-02
2.245312163e-02   1.253123994e-02   1.172976214e-02   9.276343583e-03
8.616728525e-03   2.019673967e-02   7.727197822e-03   5.679096899e-03
8.034246772e-03   1.217881098e-02   6.719869445e-03   6.945384799e-03
6.183278404e-03   7.263926751e-03   9.369111941e-03   1.526791272e-02
6.741497032e-03   6.761352699e-03   6.100577158e-03   6.505628985e-03
6.420676597e-03   5.991801656e-03   6.916973075e-03   7.548288836e-03
7.573569390e-03   8.877768959e-03   1.158941126e-02   2.392133087e-02
9.200624267e-03   9.343037472e-03   9.806448585e-03   1.222149911e-02
1.540455101e-02   1.779900324e-02   1.281565812e-02   1.187009311e-02
6.864812059e-03   6.708596023e-03   6.549368069e-03   8.670047444e-03
1.101090564e-02   2.629245750e-02   1.584439170e-02   6.887228092e-03
6.538689839e-03   5.882160224e-03   6.349785604e-03   6.115217911e-03
5.672073465e-03   6.720898518e-03   7.208098489e-03   7.469347785e-03
9.247902182e-03   1.266563784e-02   2.415701319e-02   8.894818375e-03
8.558496059e-03   8.776454282e-03   1.136861873e-02   1.401283786e-02
3.070963492e-02   1.541886947e-02   1.313298948e-02   1.073220914e-02
1.239768427e-02   1.401530356e-02   2.190560004e-02   1.088114022e-02
1.103728107e-02   9.558858059e-03   9.652405291e-03   9.190538965e-03
1.137626999e-02   1.409811167e-02   2.589459153e-02   1.316533064e-02
7.890499022e-03   6.321342045e-03   5.441210433e-03   5.959618327e-03
6.092010191e-03   5.758558378e-03   6.083732516e-03   6.290982333e-03
6.962479851e-03   8.464921626e-03   1.627589009e-02   1.413439132e-02
7.325281236e-03   8.899405176e-03   1.601067587e-02   7.996239144e-03
8.015123120e-03   9.561779322e-03   3.928858798e-03   3.627464561e-03
3.650490376e-03   5.002227375e-03   6.782412464e-03   1.080919188e-02
3.870500952e-03   3.253607822e-03   2.966169590e-03   4.047064747e-03
4.425874444e-03   1.045497210e-02   6.425514202e-03   6.123830514e-03
5.952684633e-03   2.736330406e-03   2.848068929e-03   1.856057453e-03
1.442565273e-03   3.267831313e-03   1.118758062e-03   6.703252617e-04
8.897164537e-04   8.625689334e-04   7.727851659e-04   1.259667487e-03
2.215086992e-03   1.319406845e-03   1.463731200e-03   1.416515603e-03
1.540876610e-03   2.131242318e-03   5.408882470e-03   1.808992393e-03
1.787614416e-03   1.931538524e-03   2.715260396e-03   3.760789425e-03
3.221129106e-03   1.937385798e-03   2.134004156e-03   1.190395120e-03
1.036775476e-03   2.692636398e-03   8.266767104e-04   5.285927335e-04
7.337512527e-04   7.463648795e-04   7.102568647e-04   1.190504679e-03
2.424174980e-03   1.696505273e-03   1.997759959e-03   1.737026095e-03
1.682856977e-03   2.051939991e-03   5.342427361e-03   2.242011800e-03
2.591356056e-03   2.840727513e-03   3.406849442e-03   4.886306465e-03
5.672291034e-03   3.990325730e-03   3.720936214e-03   2.828181764e-03
3.003309919e-03   8.011468422e-03   2.847645650e-03   2.307410060e-03
3.460620837e-03   6.018906008e-03   3.792463630e-03   4.144775744e-03
3.491242102e-03   3.737060797e-03   4.547433894e-03   8.319597743e-03
3.949621585e-03   4.345910800e-03   4.038901854e-03   4.072608442e-03
4.168944957e-03   3.702655482e-03   3.955730608e-03   4.130758575e-03
3.783644342e-03   4.285391567e-03   4.905927544e-03   9.262387099e-03
4.347731665e-03   4.750422744e-03   4.812287285e-03   5.311225472e-03
6.537899642e-03   1.050991065e-02   7.615102956e-03   6.329476000e-03
4.363013610e-03   4.608675674e-03   4.636539856e-03   5.871867749e-03
7.929864183e-03   1.817910094e-02   1.285103142e-02   5.238664537e-03
5.130709139e-03   4.952174117e-03   5.474887641e-03   5.633226965e-03
5.310915511e-03   6.043472689e-03   6.668539265e-03   6.662566942e-03
7.718253389e-03   1.015213658e-02   2.121705631e-02   8.162031188e-03
8.348198362e-03   8.804973592e-03   1.107181071e-02   1.428139028e-02
9.973940358e-03   1.038761316e-02   1.574691953e-02   7.346566788e-03
8.707717004e-03   1.346401528e-02   1.307729447e-02   8.148982009e-03
7.271706295e-03   6.427471338e-03   6.664695132e-03   7.012278145e-03
6.305930841e-03   6.268047632e-03   6.233830334e-03   6.159018991e-03
7.167564574e-03   1.513954738e-02   1.042146384e-02   5.292466977e-03
6.900393761e-03   1.129396561e-02   6.666593544e-03   7.453400183e-03
1.011254532e-02   4.732473777e-03   4.638467474e-03   4.535100019e-03
5.697056198e-03   7.532678274e-03   1.380356935e-02   5.085487164e-03
4.613311897e-03   4.481130136e-03   6.034076461e-03   7.274852448e-03
1.717044102e-02   8.882864111e-03   7.862310195e-03   8.549438954e-03
4.404816696e-03   4.636922395e-03   2.889752687e-03   2.364335692e-03
5.687038332e-03   1.859253422e-03   1.148441127e-03   1.556355730e-03
1.545532044e-03   1.426579711e-03   2.355569922e-03   4.467573456e-03
2.906452310e-03   3.321135746e-03   3.011281911e-03   3.085994257e-03
3.976832308e-03   9.949276817e-03   3.826363553e-03   4.114867898e-03
4.395141336e-03   5.556529278e-03   7.532011169e-03   8.447889519e-03
5.497358172e-03   5.326826424e-03   3.811809757e-03   3.780012239e-03
9.724237412e-03   3.420699961e-03   2.589572991e-03   3.785223694e-03
5.692332460e-03   4.012895279e-03   5.087482864e-03   8.449238163e-03
4.918911462e-03   5.265722378e-03   4.663462183e-03   5.070911290e-03
6.097028142e-03   1.252992837e-02   5.467569429e-03   5.823936913e-03
5.882777394e-03   6.959677862e-03   8.873238697e-03   1.271229448e-02
7.876748740e-03   7.187547411e-03   5.823660918e-03   5.806792090e-03
1.445176496e-02   5.391669163e-03   4.194344194e-03   6.128366602e-03
1.016245918e-02   6.146112558e-03   6.584807336e-03   5.600193933e-03
6.177264626e-03   7.594492367e-03   1.312413379e-02   6.210794887e-03
6.666582795e-03   6.078240310e-03   6.153075025e-03   6.145088314e-03
5.457638511e-03   5.987139941e-03   6.231984349e-03   5.916393013e-03
6.928774613e-03   8.372551661e-03   1.577774071e-02   6.811656962e-03
7.064403231e-03   7.044667839e-03   8.175012863e-03   9.729519878e-03
1.490928855e-02   1.018955436e-02   8.678696691e-03   6.262562701e-03
6.483267092e-03   6.344785817e-03   7.943438997e-03   1.024550895e-02
2.206376002e-02   1.651602822e-02   7.052782071e-03   7.014597068e-03
6.684241180e-03   7.220388350e-03   7.373630970e-03   6.806195387e-03
7.637015915e-03   8.219796482e-03   8.047147567e-03   9.422030215e-03
1.198603671e-02   2.345616284e-02   9.566726347e-03   9.834281426e-03
1.012823343e-02   1.231305791e-02   1.548589914e-02   1.060274380e-02
1.135478046e-02   1.604322204e-02   8.130618322e-03   1.038133538e-02
1.740781198e-02   1.746846997e-02   1.122408842e-02   9.997527678e-03
8.683336691e-03   8.871158626e-03   9.167301438e-03   8.116215348e-03
8.109762366e-03   7.931171036e-03   8.399101616e-03   1.003595939e-02
2.156048600e-02   1.482432607e-02   7.777489710e-03   1.014539581e-02
1.718382296e-02   9.891576449e-03   1.085424766e-02   1.465146445e-02
6.833548840e-03   6.680689606e-03   6.501042043e-03   8.167741857e-03
1.069503162e-02   1.935834843e-02   7.257618251e-03   6.619291063e-03
6.426469357e-03   8.572540388e-03   1.035470985e-02   2.381530817e-02
1.221890672e-02   1.059617841e-02   1.235656951e-02   6.395681980e-03
6.705064207e-03   4.202016105e-03   3.450039520e-03   8.330676145e-03
2.717000783e-03   1.682466260e-03   2.283924171e-03   2.273669596e-03
2.104943872e-03   3.479078605e-03   6.657586152e-03   4.382406177e-03
5.021631881e-03   4.502893443e-03   4.584564498e-03   5.850450670e-03
1.448961154e-02   5.695306906e-03   6.188606499e-03   6.547488730e-03
8.117245414e-03   1.081126938e-02   1.306787737e-02   8.547001621e-03
8.016354926e-03   6.136808571e-03   6.248710415e-03   1.589742661e-02
5.834331820e-03   4.596602784e-03   6.768025257e-03   1.139460015e-02
7.007842058e-03   7.542928329e-03   6.343032871e-03   6.936364220e-03
8.465984384e-03   1.461951480e-02   7.015652176e-03   7.594501340e-03
6.849742932e-03   6.845136558e-03   6.740029527e-03   5.942570084e-03
6.578702983e-03   6.840810864e-03   6.578605478e-03   7.720176140e-03
9.360768439e-03   1.818708524e-02   7.660255300e-03   7.883396244e-03
8.046401375e-03   9.682041178e-03   1.218561034e-02   1.595636118e-02
1.080001742e-02   9.780131859e-03   6.706784102e-03   6.849989314e-03
6.510245574e-03   8.083101524e-03   9.892814776e-03   2.100770986e-02
1.542144595e-02   7.095059525e-03   7.256414415e-03   6.855287450e-03
7.100783364e-03   7.204149918e-03   6.317815673e-03   6.824634134e-03
6.865929716e-03   6.399481435e-03   7.894991296e-03   9.688682826e-03
1.490625531e-02   6.882357568e-03   6.981511875e-03   6.391186133e-03
6.610225840e-03   6.517524482e-03   5.813773564e-03   6.485295640e-03
6.658846178e-03   6.382340834e-03   7.876473963e-03   9.958082955e-03
1.603184431e-02   7.046710182e-03   7.107035927e-03   6.708969433e-03
7.107636726e-03   7.180815739e-03   6.532557557e-03   7.303451824e-03
7.749553109e-03   7.530436672e-03   8.908222314e-03   1.122460840e-02
2.110956690e-02   8.793953571e-03   9.011371543e-03   9.093742719e-03
1.078782289e-02   1.299469984e-02   1.840759813e-02   1.270016053e-02
1.109292275e-02   7.530530223e-03   7.690659298e-03   7.560861883e-03
9.583111026e-03   1.229547820e-02   2.678156769e-02   1.952837238e-02
8.345564983e-03   8.231031292e-03   7.862724350e-03   8.530826278e-03
8.749180892e-03   8.049016051e-03   8.981858168e-03   9.583441656e-03
9.330507531e-03   1.103342138e-02   1.404424935e-02   2.646584906e-02
1.092443742e-02   1.115337536e-02   1.122410406e-02   1.343413903e-02
1.622427581e-02   1.229812101e-02   1.358893676e-02   1.967124746e-02
1.024157248e-02   1.306511212e-02   2.271187272e-02   2.102556581e-02
1.360005762e-02   1.275624360e-02   1.113392135e-02   1.104859169e-02
1.138498868e-02   9.842197587e-03   9.741706908e-03   9.398882625e-03
9.865707783e-03   1.153738457e-02   2.422688687e-02   1.709015396e-02
8.520427075e-03   1.052318568e-02   1.550993342e-02   6.589273802e-03
6.766996103e-03   6.601388247e-03   8.307235054e-03   1.081038271e-02
1.705592179e-02   7.277791360e-03   7.180733788e-03   6.735421702e-03
7.248367457e-03   7.236437764e-03   6.695413981e-03   7.701375685e-03
8.350235013e-03   8.414969568e-03   9.970274873e-03   1.313505953e-02
2.656476921e-02   1.017165701e-02   1.021460329e-02   1.069350302e-02
1.351825368e-02   1.723974911e-02   3.642329086e-02   1.716164109e-02
1.405094820e-02   1.931010922e-02   1.342227362e-02   1.271146031e-02
7.628898537e-03   7.540041842e-03   7.256201244e-03   9.330534253e-03
1.142750943e-02   2.535014609e-02   1.708029907e-02   7.742069531e-03
7.655331109e-03   7.137026240e-03   7.539807845e-03   7.580395276e-03
6.765578713e-03   7.452287856e-03   7.583291465e-03   7.189062209e-03
8.947292529e-03   1.124904618e-02   1.728408745e-02   7.796715061e-03
7.843062507e-03   7.238268471e-03   7.572828265e-03   7.499160581e-03
6.748967912e-03   7.573139823e-03   7.855458214e-03   7.599441292e-03
9.353666341e-03   1.202941466e-02   1.975337435e-02   8.487301957e-03
8.533784084e-03   8.131228904e-03   8.720154255e-03   8.892995357e-03
8.200676194e-03   9.192671688e-03   9.923832895e-03   9.679130825e-03
1.124472183e-02   1.419973739e-02   2.817241928e-02   1.154644564e-02
1.197165871e-02   1.236657397e-02   1.488973006e-02   1.860060196e-02
2.403376630e-02   1.712534761e-02   1.523267425e-02   9.557618570e-03
9.692123902e-03   9.621128281e-03   1.241498085e-02   1.610505092e-02
3.654348081e-02   2.496111064e-02   1.053891161e-02   1.022308079e-02
9.680128332e-03   1.058572091e-02   1.073181605e-02   9.957881943e-03
1.132193343e-02   1.219015996e-02   1.213073849e-02   1.445452875e-02
1.891811543e-02   3.653529233e-02   1.440566218e-02   1.447459579e-02
1.476936191e-02   1.826750057e-02   2.249817572e-02   1.747047543e-02
1.919046381e-02   2.847176403e-02   1.151015272e-02   1.168338946e-02
1.163175898e-02   1.460379710e-02   1.835381505e-02   3.227096594e-02
1.313910328e-02   1.276663386e-02   1.261000356e-02   1.551064162e-02
1.848371907e-02   2.502019042e-02   1.583548004e-02   1.450965040e-02
1.193876268e-02   1.389692358e-02   2.841243213e-02   2.101659692e-02
1.029739089e-02   1.252296590e-02   1.830553208e-02   9.691977225e-03
1.257503265e-02   1.965971443e-02   8.853579377e-03   9.559223593e-03
9.581300623e-03   1.141749114e-02   1.503446921e-02   2.953863565e-02
1.145078734e-02   1.147495167e-02   1.177983868e-02   1.462153246e-02
1.790793276e-02   2.220588174e-02   1.536832318e-02   1.399370279e-02
1.099978559e-02   1.381205807e-02   3.078688971e-02   2.089821377e-02
1.166480207e-02   1.516633264e-02   2.758960608e-02   1.352104531e-02
1.540525769e-02   2.285874808e-02   1.223629391e-02   1.575871820e-02
2.912768967e-02   2.096501824e-02   1.357317803e-02   1.230510831e-02
1.052300221e-02   1.054775459e-02   1.063518270e-02   9.301596871e-03
9.465191649e-03   9.229737713e-03   8.114520524e-03   8.921665024e-03
8.933365863e-03   8.331873866e-03   1.029881913e-02   1.228791442e-02
2.527264530e-02   1.903407223e-02   8.951095180e-03   9.168809302e-03
8.531829934e-03   8.771544341e-03   8.825785913e-03   7.719002119e-03
8.339133504e-03   8.342049899e-03   7.734349034e-03   9.570335434e-03
1.160204563e-02   1.756096914e-02   8.253071310e-03   8.400742383e-03
7.652743713e-03   7.831353670e-03   7.671759340e-03   9.083496022e-03
1.147225293e-02   1.771572445e-02   7.765496886e-03   8.233274679e-03
8.272052094e-03   1.001551045e-02   1.311757063e-02   2.516013629e-02
9.760856981e-03   9.639600846e-03   9.826437654e-03   1.232790032e-02
1.517359624e-02   3.137157600e-02   1.558636759e-02   1.287309223e-02
1.850820800e-02   1.230787063e-02   1.145332957e-02   8.971938038e-03
1.078334870e-02   2.271309319e-02   1.650216625e-02   8.361945081e-03
1.021817283e-02   1.535481531e-02   8.045701016e-03   1.030997604e-02
1.616583461e-02   7.266249033e-03   7.860108782e-03   7.874077754e-03
9.340980259e-03   1.218977641e-02   2.415414976e-02   9.450778636e-03
9.552876657e-03   9.942294486e-03   1.233075538e-02   1.545678828e-02
1.831861990e-02   1.294372757e-02   1.198410030e-02   8.916135701e-03
1.109829174e-02   2.592294751e-02   1.608932804e-02   8.779559764e-03
1.182529969e-02   2.020757787e-02   1.225618749e-02   1.384081869e-02
2.032772906e-02   1.046636688e-02   1.059299974e-02   9.714681620e-03
1.144248064e-02   1.410469869e-02   2.604899856e-02   1.089806444e-02
1.075509069e-02   1.040320102e-02   1.277823812e-02   1.534571793e-02
2.245312541e-02   1.253124195e-02   1.172976412e-02   9.276345009e-03
8.616729790e-03   2.019674255e-02   7.727198893e-03   5.679097645e-03
8.034247807e-03   1.217881238e-02   6.719870116e-03   6.945385474e-03
6.183279079e-03   7.263927600e-03   9.369113126e-03   1.526791465e-02
6.741497769e-03   6.761353358e-03   6.100577779e-03   6.505629722e-03
6.420677362e-03   5.991802438e-03   6.916974027e-03   7.548289989e-03
7.573570586e-03   8.877770251e-03   1.158941301e-02   2.392133502e-02
9.200625814e-03   9.343039098e-03   9.806450451e-03   1.222150146e-02
1.540455422e-02   1.779900615e-02   1.281566065e-02   1.187009556e-02
6.864813022e-03   6.708596944e-03   6.549369026e-03   8.670048837e-03
1.101090762e-02   2.629246354e-02   1.584439422e-02   6.887229061e-03
6.538690625e-03   5.882160858e-03   6.349786384e-03   6.115218617e-03
5.672074202e-03   6.720899512e-03   7.208099633e-03   7.469349166e-03
9.247903954e-03   1.266564070e-02   2.415701962e-02   8.894820236e-03
8.558497737e-03   8.776456200e-03   1.136862164e-02   1.401284183e-02
3.070964665e-02   1.541887465e-02   1.313299429e-02   1.073221278e-02
1.239768797e-02   1.401530753e-02   2.190560697e-02   1.088114404e-02
1.103728535e-02   9.558861773e-03   9.652408747e-03   9.190542297e-03
1.137627317e-02   1.409811523e-02   2.589459758e-02   1.316533169e-02
7.890499428e-03   6.321342224e-03   5.441210623e-03   5.959618664e-03
6.092010585e-03   5.758558874e-03   6.083733100e-03   6.290983089e-03
6.962480486e-03   8.464922371e-03   1.627589094e-02   1.413439291e-02
7.325281938e-03   8.899405850e-03   1.601067711e-02   7.996239536e-03
8.015123385e-03   9.561779370e-03   3.928858703e-03   3.627464434e-03
3.650490291e-03   5.002227363e-03   6.782412548e-03   1.080919180e-02
3.870500835e-03   3.253607661e-03   2.966169424e-03   4.047064567e-03
4.425874194e-03   1.045497170e-02   6.425514149e-03   6.123830640e-03
5.952684265e-03   2.736330180e-03   2.848068721e-03   1.856057289e-03
1.442565126e-03   3.267830971e-03   1.118757938e-03   6.703251828e-04
8.897163484e-04   8.625688246e-04   7.727850691e-04   1.259667336e-03
2.215086721e-03   1.319406681e-03   1.463731022e-03   1.416515440e-03
1.540876434e-03   2.131242097e-03   5.408882012e-03   1.808992195e-03
1.787614212e-03   1.931538322e-03   2.715260156e-03   3.760789135e-03
3.221128700e-03   1.937385559e-03   2.134003923e-03   1.190394956e-03
1.036775329e-03   2.692636045e-03   8.266765858e-04   5.285926533e-04
7.337511444e-04   7.463647668e-04   7.102567621e-04   1.190504519e-03
2.424174677e-03   1.696505082e-03   1.997759749e-03   1.737025906e-03
1.682856783e-03   2.051939754e-03   5.342426860e-03   2.242011579e-03
2.591355834e-03   2.840727309e-03   3.406849197e-03   4.886306217e-03
5.672290544e-03   3.990325464e-03   3.720935993e-03   2.828181539e-03
3.003309710e-03   8.011468007e-03   2.847645448e-03   2.307409918e-03
3.460620654e-03   6.018905769e-03   3.792463527e-03   4.144775678e-03
3.491242047e-03   3.737060689e-03   4.547433752e-03   8.319597670e-03
3.949621552e-03   4.345910802e-03   4.038901899e-03   4.072608480e-03
4.168945059e-03   3.702655564e-03   3.955730643e-03   4.130758619e-03
3.783644335e-03   4.285391497e-03   4.905927378e-03   9.262386815e-03
4.347731647e-03   4.750422799e-03   4.812287355e-03   5.311225441e-03
6.537899622e-03   1.050991102e-02   7.615103385e-03   6.329476246e-03
4.363013769e-03   4.608675916e-03   4.636540171e-03   5.871868146e-03
7.929864977e-03   1.817910301e-02   1.285103304e-02   5.238664983e-03
5.130709524e-03   4.952174554e-03   5.474888268e-03   5.633227698e-03
5.310916324e-03   6.043473634e-03   6.668540458e-03   6.662568169e-03
7.718254632e-03   1.015213827e-02   2.121706129e-02   8.162032975e-03
8.348200409e-03   8.804976117e-03   1.107181398e-02   1.428139529e-02
9.973942332e-03   1.038761477e-02   1.574692184e-02   7.346567548e-03
8.707717778e-03   1.346401586e-02   1.307729602e-02   8.148982771e-03
7.271707026e-03   6.427472140e-03   6.664696049e-03   7.012279326e-03
6.305931966e-03   6.268048611e-03   6.233831386e-03   6.159019522e-03
7.167565052e-03   1.513954821e-02   1.042146436e-02   5.292467130e-03
6.900393958e-03   1.129396566e-02   6.666593663e-03   7.453400394e-03
1.011254559e-02   4.732473905e-03   4.638467618e-03   4.535100203e-03
5.697056424e-03   7.532678699e-03   1.380357042e-02   5.085487422e-03
4.613312096e-03   4.481130358e-03   6.034076863e-03   7.274853022e-03
1.717044318e-02   8.882865119e-03   7.862311289e-03   8.549439171e-03
4.404816809e-03   4.636922593e-03   2.889752715e-03   2.364335703e-03
5.687038407e-03   1.859253416e-03   1.148441121e-03   1.556355726e-03
1.545532033e-03   1.426579707e-03   2.355569939e-03   4.467573531e-03
2.906452390e-03   3.321135849e-03   3.011281998e-03   3.085994341e-03
3.976832424e-03   9.949277367e-03   3.826363698e-03   4.114868091e-03
4.395141634e-03   5.556529712e-03   7.532011911e-03   8.447889865e-03
5.497358490e-03   5.326826807e-03   3.811809908e-03   3.780012413e-03
9.724238030e-03   3.420700093e-03   2.589573097e-03   3.785223882e-03
5.692332736e-03   4.012895524e-03   5.087483229e-03   8.449238920e-03
4.918912017e-03   5.265723046e-03   4.663462725e-03   5.070911780e-03
6.097028664e-03   1.252992965e-02   5.467570128e-03   5.823937812e-03
5.882778342e-03   6.959678821e-03   8.873240089e-03   1.271229663e-02
7.876750344e-03   7.187548796e-03   5.823662109e-03   5.806793408e-03
1.445176862e-02   5.391670459e-03   4.194345293e-03   6.128368328e-03
1.016246258e-02   6.146114922e-03   6.584809988e-03   5.600196034e-03
6.177266765e-03   7.594494764e-03   1.312413833e-02   6.210797210e-03
6.666585542e-03   6.078242922e-03   6.153077517e-03   6.145090820e-03
5.457640536e-03   5.987142024e-03   6.231986346e-03   5.916394766e-03
6.928776659e-03   8.372553822e-03   1.577774416e-02   6.811658782e-03
7.064405129e-03   7.044669548e-03   8.175014645e-03   9.729521667e-03
1.490929340e-02   1.018955728e-02   8.678698797e-03   6.262565015e-03
6.483269728e-03   6.344788441e-03   7.943442078e-03   1.024551297e-02
2.206376701e-02   1.651603572e-02   7.052785150e-03   7.014600321e-03
6.684244593e-03   7.220392072e-03   7.373635098e-03   6.806199145e-03
7.637019822e-03   8.219800723e-03   8.047151411e-03   9.422034318e-03
1.198604133e-02   2.345617219e-02   9.566730946e-03   9.834286611e-03
1.012823871e-02   1.231306368e-02   1.548590647e-02   1.060274712e-02
1.135478368e-02   1.604322558e-02   8.130620070e-03   1.038133786e-02
1.740781539e-02   1.746848077e-02   1.122409570e-02   9.997534888e-03
8.683343127e-03   8.871164826e-03   9.167308022e-03   8.116220797e-03
8.109767441e-03   7.931175690e-03   8.399106274e-03   1.003596479e-02
2.156049897e-02   1.482433288e-02   7.777493343e-03   1.014540095e-02
1.718383103e-02   9.891581988e-03   1.085425430e-02   1.465147435e-02
6.833553878e-03   6.680694795e-03   6.501047057e-03   8.167747671e-03
1.069503914e-02   1.935836384e-02   7.257624177e-03   6.619296688e-03
6.426474973e-03   8.572547897e-03   1.035471961e-02   2.381533144e-02
1.221891714e-02   1.059618693e-02   1.235658003e-02   6.395687828e-03
6.705070345e-03   4.202019860e-03   3.450042693e-03   8.330684102e-03
2.717003276e-03   1.682467834e-03   2.283926342e-03   2.273671779e-03
2.104945943e-03   3.479082047e-03   6.657592934e-03   4.382410842e-03
5.021637299e-03   4.502898171e-03   4.584569138e-03   5.850456440e-03
1.448962602e-02   5.695313010e-03   6.188613392e-03   6.547496021e-03
8.117254118e-03   1.081128100e-02   1.306789240e-02   8.547011806e-03
8.016364152e-03   6.136816042e-03   6.248718349e-03   1.589744744e-02
5.834339373e-03   4.596608912e-03   6.768034467e-03   1.139461640e-02
6.936374184e-03   8.465996295e-03   1.461953566e-02   6.578712153e-03
6.840820107e-03   6.578614126e-03   7.720186506e-03   9.360780468e-03
1.818710671e-02   7.660264958e-03   7.883406242e-03   8.046411116e-03
9.682052411e-03   1.218562360e-02   1.595638280e-02   1.080003101e-02
9.780143550e-03   8.083112985e-03   9.892828381e-03   2.100773670e-02
1.542146858e-02   7.895002583e-03   9.688696145e-03   1.490627542e-02
6.485303999e-03   6.658854441e-03   6.382348644e-03   7.876484013e-03
9.958095319e-03   1.603186266e-02   7.046718454e-03   7.107044087e-03
6.708976912e-03   7.107644694e-03   7.180823361e-03   6.532564229e-03
7.303459511e-03   7.749561069e-03   7.530444728e-03   8.908232236e-03
1.122462134e-02   2.110959004e-02   8.793962847e-03   9.011380427e-03
9.093751299e-03   1.078783345e-02   1.299471188e-02   1.840761544e-02
1.270017143e-02   1.109293244e-02   7.530537521e-03   7.690666662e-03
7.560868781e-03   9.583119575e-03   1.229548835e-02   2.678158768e-02
1.952838793e-02   8.345572334e-03   8.231038829e-03   7.862731328e-03
8.530833291e-03   8.749187972e-03   8.049022294e-03   8.981864988e-03
9.583448435e-03   9.330513859e-03   1.103342928e-02   1.404425892e-02
2.646586426e-02   1.092444422e-02   1.115338209e-02   1.122411028e-02
1.343414618e-02   1.622428332e-02   1.229812804e-02   1.358894530e-02
1.967125904e-02   1.024157937e-02   1.306512178e-02   2.271189121e-02
2.102558382e-02   1.360007052e-02   1.275625538e-02   1.113393088e-02
1.104860066e-02   1.138499724e-02   9.842204767e-03   9.741714326e-03
9.398889635e-03   9.865717010e-03   1.153739607e-02   2.422691231e-02
1.709017103e-02   8.520436126e-03   1.052319719e-02   1.550995217e-02
8.307245271e-03   1.081039544e-02   1.705594302e-02   7.701385431e-03
8.350245107e-03   8.414979325e-03   9.970286289e-03   1.313507350e-02
2.656479543e-02   1.017166844e-02   1.021461510e-02   1.069351475e-02
1.351826715e-02   1.723976512e-02   3.642331929e-02   1.716165593e-02
1.405095979e-02   1.931013308e-02   1.342228978e-02   1.271147455e-02
9.330546908e-03   1.142752515e-02   2.535017847e-02   1.708032444e-02
8.947305780e-03   1.124906229e-02   1.728411338e-02   9.353679444e-03
1.202943017e-02   1.975339812e-02   9.192681840e-03   9.923843276e-03
9.679141393e-03   1.124473474e-02   1.419975382e-02   2.817244824e-02
1.154645753e-02   1.197166984e-02   1.236658471e-02   1.488974328e-02
1.860061672e-02   2.403378848e-02   1.712536116e-02   1.523268623e-02
1.241499208e-02   1.610506447e-02   3.654350490e-02   2.496113182e-02
1.445453865e-02   1.891812697e-02   3.653530731e-02   1.747048220e-02
1.919047254e-02   2.847177481e-02   1.151015717e-02   1.168339445e-02
1.163176471e-02   1.460380430e-02   1.835382606e-02   3.227098782e-02
1.313911054e-02   1.276664035e-02   1.261001037e-02   1.551065117e-02
1.848373086e-02   2.502020052e-02   1.583548692e-02   1.450965765e-02
1.193876662e-02   1.389692823e-02   2.841244284e-02   2.101660218e-02
1.029739353e-02   1.252296965e-02   1.830553719e-02   9.691980368e-03
1.257503708e-02   1.965972186e-02   8.853583035e-03   9.559227926e-03
9.581305169e-03   1.141749608e-02   1.503447594e-02   2.953865179e-02
1.145079330e-02   1.147495774e-02   1.177984546e-02   1.462154140e-02
1.790794518e-02   2.220589241e-02   1.536833149e-02   1.399371114e-02
1.099979059e-02   1.381206448e-02   3.078690625e-02   2.089822220e-02
1.166480699e-02   1.516633965e-02   2.758961823e-02   1.352105235e-02
1.540526640e-02   2.285876315e-02   1.223630229e-02   1.575872842e-02
2.912771018e-02

CENTERS:
4.2503660000e-01 3.6449550000e-01  4.5859170000e-01 3.5489760000e-01
4.6120720000e-01 3.2348580000e-01  4.3511470000e-01 3.0823700000e-01
4.0563030000e-01 3.2848310000e-01  4.1050670000e-01 2.9476760000e-01
4.1336410000e-01 2.6460050000e-01  3.8768620000e-01 2.5134760000e-01
3.6576870000e-01 2.6898930000e-01  3.7422380000e-01 3.0110550000e-01
3.4616950000e-01 2.8615440000e-01  3.2104350000e-01 2.7402950000e-01
3.0160160000e-01 2.9128380000e-01  3.0854320000e-01 3.1579470000e-01
3.3955590000e-01 3.2022780000e-01  3.1563060000e-01 3.3931590000e-01
2.9433010000e-01 3.5561090000e-01  2.9957500000e-01 3.8043560000e-01
3.2508560000e-01 3.8704500000e-01  3.4408720000e-01 3.5952010000e-01
3.5238500000e-01 3.9263310000e-01  3.5678530000e-01 4.2660930000e-01
3.9653250000e-01 4.4132970000e-01  4.1776140000e-01 3.9889840000e-01
3.8670680000e-01 3.6923390000e-01  3.3118830000e-01 4.4335770000e-01
3.3173760000e-01 4.1176060000e-01  3.0600380000e-01 4.0191700000e-01
2.8670730000e-01 4.1916740000e-01  2.9488750000e-01 4.4936440000e-01
2.6860350000e-01 4.3521680000e-01  2.4525820000e-01 4.2368480000e-01
2.2651360000e-01 4.4001820000e-01  2.3368280000e-01 4.6334940000e-01
2.6249910000e-01 4.6679340000e-01  2.4121390000e-01 4.8478120000e-01
2.2317170000e-01 5.0105050000e-01  2.3048490000e-01 5.2234550000e-01
2.5248350000e-01 5.2519750000e-01  2.6677670000e-01 5.0151460000e-01
2.7407070000e-01 5.2776550000e-01  2.7947820000e-01 5.5113300000e-01
3.0187170000e-01 5.5649500000e-01  3.1743920000e-01 5.3755300000e-01
3.0101390000e-01 5.1130810000e-01  3.3243970000e-01 5.1595790000e-01
3.6448930000e-01 5.2438270000e-01  3.9191230000e-01 4.9263390000e-01
3.5956500000e-01 4.5981870000e-01  3.2371290000e-01 4.7808660000e-01
3.7006480000e-01 5.5452880000e-01  3.4156240000e-01 5.4134210000e-01
3.2258320000e-01 5.5981220000e-01  3.2894030000e-01 5.8377660000e-01
3.5945460000e-01 5.9084840000e-01  3.3385140000e-01 6.0680920000e-01
3.1271180000e-01 6.1985840000e-01  3.1524350000e-01 6.4260610000e-01
3.3674770000e-01 6.5092020000e-01  3.5761240000e-01 6.2947860000e-01
3.5866410000e-01 6.5972430000e-01  3.5578200000e-01 6.8610300000e-01
3.7622500000e-01 7.0393210000e-01  4.0714240000e-01 6.8484940000e-01
3.9382590000e-01 6.4846600000e-01  4.3183060000e-01 6.5830540000e-01
4.6243770000e-01 6.5485750000e-01  4.7740490000e-01 6.3713700000e-01
4.6325980000e-01 6.0864740000e-01  4.2523020000e-01 6.1578790000e-01
4.4403820000e-01 5.8260780000e-01  4.6348880000e-01 5.5048160000e-01
4.3953790000e-01 5.1356910000e-01  3.9668890000e-01 5.3400530000e-01
4.0050370000e-01 5.7643840000e-01  4.9652060000e-01 5.5113560000e-01
4.7620040000e-01 5.8052880000e-01  4.9622390000e-01 6.1115480000e-01
5.3266010000e-01 5.9558110000e-01  5.3312800000e-01 5.6276420000e-01
5.5374050000e-01 5.8074540000e-01  5.6756920000e-01 5.8222060000e-01
5.7139290000e-01 5.7973010000e-01  5.7568150000e-01 5.7275250000e-01
5.6364690000e-01 5.6003890000e-01  5.8440320000e-01 5.5932020000e-01
6.0095180000e-01 5.5645190000e-01  6.0977800000e-01 5.4551310000e-01
5.9973900000e-01 5.2815570000e-01  5.7637660000e-01 5.3552750000e-01
5.8587300000e-01 5.1305410000e-01  5.9527900000e-01 4.9221750000e-01
5.8118040000e-01 4.7547440000e-01  5.5859050000e-01 4.8120670000e-01
5.5670020000e-01 5.1035370000e-01  5.3484720000e-01 4.8965960000e-01
5.1415760000e-01 4.6484860000e-01  4.7369400000e-01 4.7451330000e-01
4.8121590000e-01 5.2035080000e-01  5.2145970000e-01 5.2475890000e-01
5.2724630000e-01 4.3770570000e-01  5.4199930000e-01 4.6459380000e-01
5.6726690000e-01 4.6118020000e-01  5.7635010000e-01 4.3926210000e-01
5.5717740000e-01 4.1552420000e-01  5.8653570000e-01 4.1898840000e-01
6.0996660000e-01 4.2261870000e-01  6.2289960000e-01 4.0539190000e-01
6.1359450000e-01 3.8440520000e-01  5.8281660000e-01 3.8648620000e-01
6.0285050000e-01 3.6136930000e-01  6.2650300000e-01 3.4051650000e-01
6.1899160000e-01 3.0165510000e-01  5.7279410000e-01 3.0526820000e-01
5.6514740000e-01 3.4747160000e-01  5.3945900000e-01 3.1788960000e-01
5.1244670000e-01 2.9410540000e-01  4.8372060000e-01 3.0888590000e-01
4.8386050000e-01 3.4037080000e-01  5.1934090000e-01 3.5567180000e-01
4.8477290000e-01 3.7175080000e-01  4.5048520000e-01 3.8561960000e-01
4.4754350000e-01 4.2957240000e-01  4.9404390000e-01 4.3843430000e-01
5.1602880000e-01 4.0227860000e-01  6.6342510000e-01 4.3207620000e-01
6.6052210000e-01 4.1207930000e-01  6.4110770000e-01 4.0699810000e-01
6.2886750000e-01 4.2331050000e-01  6.4159490000e-01 4.4324660000e-01
6.1885150000e-01 4.4003090000e-01  5.9685490000e-01 4.3760320000e-01
5.8671140000e-01 4.5706400000e-01  6.0067180000e-01 4.7352080000e-01
6.2429850000e-01 4.6567840000e-01  6.1506220000e-01 4.8804010000e-01
6.0596690000e-01 5.0928060000e-01  6.2135950000e-01 5.2808650000e-01
6.4708960000e-01 5.1501170000e-01  6.4270410000e-01 4.8865570000e-01
6.6440220000e-01 4.9976270000e-01  6.8057490000e-01 4.9915740000e-01
6.8748710000e-01 4.9175140000e-01  6.8402960000e-01 4.7959570000e-01
6.6670200000e-01 4.7677940000e-01  6.8121080000e-01 4.6692850000e-01
6.9378910000e-01 4.6130540000e-01  6.9751900000e-01 4.4694410000e-01
6.8073270000e-01 4.3711660000e-01  6.6626050000e-01 4.5283690000e-01
7.0145100000e-01 4.6725480000e-01  6.9203410000e-01 4.7182810000e-01
6.9524000000e-01 4.8320450000e-01  7.0579280000e-01 4.8027050000e-01
7.0752980000e-01 4.7359730000e-01  7.1034560000e-01 4.7780000000e-01
7.1257450000e-01 4.7819060000e-01  7.1313520000e-01 4.7783840000e-01
7.1373360000e-01 4.7694640000e-01  7.1252140000e-01 4.7501760000e-01
7.1486070000e-01 4.7562820000e-01  7.1617690000e-01 4.7564340000e-01
7.1658820000e-01 4.7536390000e-01  7.1707540000e-01 4.7450420000e-01
7.1528660000e-01 4.7317390000e-01  7.1814560000e-01 4.7250410000e-01
7.2083250000e-01 4.7188570000e-01  7.2240710000e-01 4.6985150000e-01
7.2026230000e-01 4.6656720000e-01  7.1598540000e-01 4.6884450000e-01
7.1668970000e-01 4.6362650000e-01  7.1884760000e-01 4.5756520000e-01
7.1277660000e-01 4.5014600000e-01  7.0379010000e-01 4.5844060000e-01
7.0972490000e-01 4.6599600000e-01  7.2465070000e-01 4.5761380000e-01
7.2149330000e-01 4.6236060000e-01  7.2462130000e-01 4.6645370000e-01
7.2950830000e-01 4.6434470000e-01  7.2991870000e-01 4.6001710000e-01
7.3224260000e-01 4.6259340000e-01  7.3381670000e-01 4.6282090000e-01
7.3422730000e-01 4.6255950000e-01  7.3467370000e-01 4.6187730000e-01
7.3365470000e-01 4.6044040000e-01  7.3554460000e-01 4.6080270000e-01
7.3664500000e-01 4.6079580000e-01  7.3699910000e-01 4.6055280000e-01
7.3742350000e-01 4.5978330000e-01  7.3576730000e-01 4.5869410000e-01
7.3836000000e-01 4.5785520000e-01  7.4110170000e-01 4.5710970000e-01
7.4284310000e-01 4.5468650000e-01  7.3969070000e-01 4.5110550000e-01
7.3574730000e-01 4.5460520000e-01  7.3469970000e-01 4.4921470000e-01
7.3329500000e-01 4.4164730000e-01  7.2226230000e-01 4.4044790000e-01
7.2232020000e-01 4.5165320000e-01  7.2958570000e-01 4.5402400000e-01
7.4024080000e-01 4.3673710000e-01  7.3951080000e-01 4.4543120000e-01
7.4538890000e-01 4.4983730000e-01  7.5330950000e-01 4.4513840000e-01
7.5163210000e-01 4.3555170000e-01  7.5926750000e-01 4.4014780000e-01
7.6404210000e-01 4.4046980000e-01  7.6543380000e-01 4.3954620000e-01
7.6703320000e-01 4.3683680000e-01  7.6191430000e-01 4.3230460000e-01
7.7039590000e-01 4.3104610000e-01  7.7797900000e-01 4.2940030000e-01
7.8236130000e-01 4.2362200000e-01  7.7588080000e-01 4.1487460000e-01
7.6516160000e-01 4.2097410000e-01  7.6653440000e-01 4.0886260000e-01
7.6725970000e-01 3.9573250000e-01  7.5495340000e-01 3.9065360000e-01
7.4601580000e-01 4.0029790000e-01  7.5258830000e-01 4.1315520000e-01
7.3903780000e-01 4.1046520000e-01  7.2440010000e-01 4.0870560000e-01
7.1739350000e-01 4.2449840000e-01  7.3118880000e-01 4.3237770000e-01
7.4270860000e-01 4.2532840000e-01  7.1807210000e-01 3.9503510000e-01
7.3382050000e-01 3.9891830000e-01  7.4325160000e-01 3.8841280000e-01
7.3865410000e-01 3.7426090000e-01  7.1871030000e-01 3.7283310000e-01
7.3380210000e-01 3.5920940000e-01  7.4861920000e-01 3.4859320000e-01
7.4622040000e-01 3.3042880000e-01  7.2687020000e-01 3.2457880000e-01
7.1314770000e-01 3.4579670000e-01  7.0513190000e-01 3.2080790000e-01
6.9976110000e-01 2.9265410000e-01  6.6336270000e-01 2.8284050000e-01
6.5090460000e-01 3.2282100000e-01  6.8015080000e-01 3.4213740000e-01
6.5129520000e-01 3.5182280000e-01  6.2786960000e-01 3.6668300000e-01
6.3396240000e-01 3.8987080000e-01  6.5507330000e-01 3.9452870000e-01
6.7199420000e-01 3.7507530000e-01  6.7415580000e-01 3.9934490000e-01
6.7666640000e-01 4.1999850000e-01  6.9663680000e-01 4.2652750000e-01
7.0886880000e-01 4.0911240000e-01  6.9789670000e-01 3.8939800000e-01
7.9332710000e-01 3.2431230000e-01  7.7712590000e-01 3.0943790000e-01
7.5915830000e-01 3.1941590000e-01  7.6107060000e-01 3.3837030000e-01
7.8129580000e-01 3.4599580000e-01  7.6324370000e-01 3.5493590000e-01
7.4864190000e-01 3.6397650000e-01  7.5140250000e-01 3.7903630000e-01
7.6512890000e-01 3.8337510000e-01  7.7788440000e-01 3.7022780000e-01
7.7826810000e-01 3.8832350000e-01  7.7692050000e-01 4.0340780000e-01
7.8838470000e-01 4.1303680000e-01  8.0536470000e-01 4.0255980000e-01
7.9850860000e-01 3.8230360000e-01  8.1888460000e-01 3.8855520000e-01
8.3460770000e-01 3.8713370000e-01  8.4196020000e-01 3.7877590000e-01
8.3647490000e-01 3.6502710000e-01  8.1714620000e-01 3.6601130000e-01
8.2967330000e-01 3.5099780000e-01  8.4302350000e-01 3.3899460000e-01
8.3980230000e-01 3.1771280000e-01  8.1340030000e-01 3.1783250000e-01
8.0774480000e-01 3.4223540000e-01  8.5617360000e-01 3.4429180000e-01
8.4452130000e-01 3.5354640000e-01  8.5085580000e-01 3.6778010000e-01
8.6522070000e-01 3.6293500000e-01  8.6717510000e-01 3.5246940000e-01
8.7211770000e-01 3.5890260000e-01  8.7574660000e-01 3.5948760000e-01
8.7667470000e-01 3.5890110000e-01  8.7767380000e-01 3.5739420000e-01
8.7553160000e-01 3.5417560000e-01  8.7958690000e-01 3.5509930000e-01
8.8190640000e-01 3.5510610000e-01  8.8264160000e-01 3.5460400000e-01
8.8351770000e-01 3.5303730000e-01  8.8020180000e-01 3.5071620000e-01
8.8544700000e-01 3.4925370000e-01  8.9067970000e-01 3.4793660000e-01
8.9387890000e-01 3.4363380000e-01  8.8875940000e-01 3.3700190000e-01
8.8082840000e-01 3.4260460000e-01  8.8045670000e-01 3.3234150000e-01
8.8117530000e-01 3.1906430000e-01  8.6435060000e-01 3.1065920000e-01
8.5582090000e-01 3.2998920000e-01  8.6881630000e-01 3.3939040000e-01
8.9365830000e-01 3.1440540000e-01  8.8978910000e-01 3.2743290000e-01
8.9847980000e-01 3.3567990000e-01  9.1079930000e-01 3.2917680000e-01
9.0973490000e-01 3.1585930000e-01  9.1910680000e-01 3.2280630000e-01
9.2507680000e-01 3.2334950000e-01  9.2675900000e-01 3.2224690000e-01
9.2866210000e-01 3.1911750000e-01  9.2307920000e-01 3.1348930000e-01
9.3259920000e-01 3.1296450000e-01  9.4014080000e-01 3.1174570000e-01
9.4400020000e-01 3.0750090000e-01  9.4062300000e-01 2.9891440000e-01
9.2875080000e-01 3.0156810000e-01  9.3388950000e-01 2.8901680000e-01
9.3564690000e-01 2.7736640000e-01  9.3013740000e-01 2.6904080000e-01
9.1610080000e-01 2.7261680000e-01  9.1737320000e-01 2.8929440000e-01
9.0330300000e-01 2.8046940000e-01  8.8735790000e-01 2.7076090000e-01
8.6912050000e-01 2.8511500000e-01  8.8262300000e-01 3.0417590000e-01
9.0118920000e-01 2.9995340000e-01  8.8796190000e-01 2.5245310000e-01
9.0324140000e-01 2.6470340000e-01  9.2033750000e-01 2.5713660000e-01
9.1707540000e-01 2.3561680000e-01  8.9734340000e-01 2.3095730000e-01
9.1165490000e-01 2.2043910000e-01  9.1528300000e-01 2.1183070000e-01
9.1444270000e-01 2.0877010000e-01  9.1059790000e-01 2.0435060000e-01
8.9949470000e-01 2.1035340000e-01  9.0273880000e-01 1.9522490000e-01
9.0429010000e-01 1.8187330000e-01  8.9747620000e-01 1.7187550000e-01
8.8037610000e-01 1.7695820000e-01  8.8311360000e-01 1.9736990000e-01
8.6554370000e-01 1.8723880000e-01  8.4712300000e-01 1.7775860000e-01
8.3208020000e-01 1.9137050000e-01  8.3871380000e-01 2.1035500000e-01
8.6200320000e-01 2.1098340000e-01  8.4696020000e-01 2.2814100000e-01
8.3145240000e-01 2.4567730000e-01  8.4344600000e-01 2.7035960000e-01
8.7008410000e-01 2.6168760000e-01  8.7195720000e-01 2.3642930000e-01
8.0967710000e-01 2.4125690000e-01  8.2729460000e-01 2.2533350000e-01
8.2098440000e-01 2.0523200000e-01  8.0005440000e-01 2.0125590000e-01
7.8487090000e-01 2.2381060000e-01  7.7886320000e-01 1.9747870000e-01
7.7479030000e-01 1.7351190000e-01  7.5172200000e-01 1.6670490000e-01
7.3508590000e-01 1.8615140000e-01  7.5133460000e-01 2.1291590000e-01
7.1997460000e-01 2.0815020000e-01  6.8749700000e-01 2.0083940000e-01
6.6260010000e-01 2.3412250000e-01  6.9561780000e-01 2.6303580000e-01
7.2879070000e-01 2.4506460000e-01  7.2187660000e-01 2.7722900000e-01
7.2150160000e-01 3.0461570000e-01  7.4241180000e-01 3.1331650000e-01
7.5974950000e-01 3.0049270000e-01  7.5498480000e-01 2.7282020000e-01
7.7786610000e-01 2.8853110000e-01  7.9684950000e-01 3.0403740000e-01
8.2224120000e-01 2.9395130000e-01  8.1732090000e-01 2.6399100000e-01
7.8738800000e-01 2.5847140000e-01  7.6670760000e-01 1.0552650000e-01
7.4085290000e-01 1.1932390000e-01  7.4488100000e-01 1.4580630000e-01
7.6893440000e-01 1.5280830000e-01  7.8882470000e-01 1.3118590000e-01
7.9076120000e-01 1.5890090000e-01  7.9367420000e-01 1.8241440000e-01
8.1443270000e-01 1.8834850000e-01  8.2883140000e-01 1.7298750000e-01
8.1867300000e-01 1.4833110000e-01  8.4340030000e-01 1.5797130000e-01
8.6398110000e-01 1.6864430000e-01  8.8456780000e-01 1.5714860000e-01
8.7785530000e-01 1.2718650000e-01  8.4599390000e-01 1.2673730000e-01
8.6457260000e-01 1.0150760000e-01  8.6980350000e-01 7.9047790000e-02
8.6159300000e-01 6.5158360000e-02  8.4026340000e-01 6.6504680000e-02
8.3277650000e-01 9.3309780000e-02  8.1813220000e-01 6.9482020000e-02
8.0764750000e-01 4.6163720000e-02  7.7753710000e-01 4.1777630000e-02
7.6698580000e-01 7.6804590000e-02  7.9654830000e-01 9.4886090000e-02
8.2049270000e-01 3.0413300000e-02  8.2814170000e-01 5.0405170000e-02
8.5046100000e-01 4.8016450000e-02  8.5018610000e-01 2.6087170000e-02
8.3656940000e-01 1.8745860000e-02  8.4768730000e-01 1.4744560000e-02
8.5013020000e-01 9.9709010000e-03  8.4973380000e-01 8.4163760000e-03
8.4808810000e-01 6.3457950000e-03  8.4264190000e-01 7.8841920000e-03
8.4575120000e-01 2.6418810000e-03  8.4681090000e-01 -5.9611580000e-04
8.4644230000e-01 -1.8529060000e-03  8.4464500000e-01 -3.7932960000e-03
8.3989470000e-01 -1.8991320000e-04  8.4019960000e-01 -8.2241880000e-03
8.4072010000e-01 -1.6221950000e-02  8.3605510000e-01 -2.2755150000e-02
8.2426260000e-01 -1.8394830000e-02  8.2876010000e-01 -4.6676700000e-03
8.1406560000e-01 -8.5386670000e-03  7.9542550000e-01 -1.4917090000e-02
7.7728550000e-01 5.5853130000e-03  8.0065370000e-01 2.4908750000e-02
8.1908390000e-01 1.0803540000e-02  7.9342010000e-01 -3.4790440000e-02
8.1091430000e-01 -2.3968880000e-02  8.2666860000e-01 -3.3028520000e-02
8.2268650000e-01 -5.4271780000e-02  8.0180920000e-01 -5.8479780000e-02
8.1676600000e-01 -7.0111800000e-02  8.2060020000e-01 -7.9357440000e-02
8.1968790000e-01 -8.2664030000e-02  8.1549450000e-01 -8.7461550000e-02
8.0345780000e-01 -8.0777200000e-02  8.0679210000e-01 -9.7442150000e-02
8.0844420000e-01 -1.1230670000e-01  8.0071550000e-01 -1.2355460000e-01
7.8141600000e-01 -1.1750090000e-01  7.8505860000e-01 -9.4680550000e-02
7.6505960000e-01 -1.0538470000e-01  7.4387900000e-01 -1.1509690000e-01
7.2798170000e-01 -9.9059490000e-02  7.3621470000e-01 -7.8451440000e-02
7.6211400000e-01 -7.8748090000e-02  7.4606450000e-01 -5.8951340000e-02
7.2894470000e-01 -3.8725330000e-02  7.4363030000e-01 -9.6754060000e-03
7.7466050000e-01 -2.2416070000e-02  7.7449100000e-01 -5.0978550000e-02
7.0451870000e-01 -4.4028440000e-02  7.2405710000e-01 -6.1538040000e-02
7.1656780000e-01 -8.3349110000e-02  6.9406790000e-01 -8.6696230000e-02
6.7883000000e-01 -6.3238450000e-02  6.7230120000e-01 -8.9489890000e-02
6.6604420000e-01 -1.1281810000e-01  6.4288060000e-01 -1.1586520000e-01
6.3101000000e-01 -9.6164670000e-02  6.4689390000e-01 -7.3995520000e-02
6.2078950000e-01 -7.7193080000e-02  5.9757390000e-01 -7.9504440000e-02
5.8691200000e-01 -6.0284350000e-02  5.9966330000e-01 -4.2417820000e-02
6.2592810000e-01 -4.8430700000e-02  6.1283260000e-01 -2.5390170000e-02
6.0038330000e-01 -4.7232180000e-03  6.1364530000e-01 1.4813140000e-02
6.3781720000e-01 1.0568910000e-02  6.4274620000e-01 -1.8843800000e-02
6.6200200000e-01 4.0200460000e-03  6.8036920000e-01 2.8327900000e-02
7.1584060000e-01 2.0153540000e-02  7.1212900000e-01 -1.7752670000e-02
6.7884790000e-01 -2.6969260000e-02  6.6854890000e-01 5.4270560000e-02
6.5371810000e-01 2.8128820000e-02  6.2770360000e-01 3.0954480000e-02
6.1777400000e-01 5.4734200000e-02  6.4014280000e-01 7.8976630000e-02
6.0755550000e-01 7.8399530000e-02  5.7881740000e-01 7.6353620000e-02
5.6448840000e-01 1.0087880000e-01  5.8200060000e-01 1.2537040000e-01
6.1729650000e-01 1.1471530000e-01  6.0240310000e-01 1.4877010000e-01
5.8502910000e-01 1.8244490000e-01  6.1311250000e-01 2.1826860000e-01
6.5435180000e-01 1.9348950000e-01  6.4652170000e-01 1.5072430000e-01
6.7986520000e-01 1.7040630000e-01  7.1012200000e-01 1.8254010000e-01
7.2974020000e-01 1.6279050000e-01  7.2243810000e-01 1.3653630000e-01
6.8783500000e-01 1.3087370000e-01  7.1551820000e-01 1.0970310000e-01
7.4243110000e-01 9.2379560000e-02  7.3941120000e-01 5.5893500000e-02
6.9929430000e-01 5.1795700000e-02  6.8248500000e-01 8.7011230000e-02
4.9765320000e-01 6.5151800000e-02  5.0632500000e-01 1.0025950000e-01
5.3849250000e-01 1.0290770000e-01  5.5343240000e-01 7.7158690000e-02
5.3478410000e-01 4.7961560000e-02  5.6666320000e-01 5.4055230000e-02
5.9422490000e-01 5.7163320000e-02  6.0629970000e-01 3.4729690000e-02
5.9196790000e-01 1.4933370000e-02  5.6270230000e-01 2.0243880000e-02
5.7856250000e-01 -3.5614330000e-03  5.9171520000e-01 -2.3852060000e-02
5.7974870000e-01 -4.2644880000e-02  5.5743770000e-01 -4.0508890000e-02
5.4886360000e-01 -1.3362680000e-02  5.3511870000e-01 -3.8101440000e-02
5.2430260000e-01 -6.0717300000e-02  5.0002460000e-01 -6.1230950000e-02
4.8822620000e-01 -3.8073350000e-02  5.1146550000e-01 -1.4758710000e-02
4.7758420000e-01 -1.2041700000e-02  4.4183780000e-01 -1.3722470000e-02
4.1902910000e-01 2.6451970000e-02  4.6223430000e-01 5.4771660000e-02
4.9616980000e-01 2.5795520000e-02  4.2975710000e-01 -4.4263500000e-02
4.6226130000e-01 -3.6559070000e-02  4.7784260000e-01 -5.9981030000e-02
4.6583380000e-01 -8.3298250000e-02  4.3313900000e-01 -8.3617940000e-02
4.5533400000e-01 -1.0578990000e-01  4.7390970000e-01 -1.2466840000e-01
4.6489520000e-01 -1.4803490000e-01  4.3978770000e-01 -1.4981280000e-01
4.2575090000e-01 -1.2233410000e-01  4.1551400000e-01 -1.5067590000e-01
4.0667470000e-01 -1.7573860000e-01  3.8154400000e-01 -1.7790170000e-01
3.6853830000e-01 -1.5583470000e-01  3.8803010000e-01 -1.3068900000e-01
3.5650140000e-01 -1.3321100000e-01  3.2756960000e-01 -1.3695070000e-01
3.1181820000e-01 -1.1259710000e-01  3.2873630000e-01 -8.6898840000e-02
3.6469620000e-01 -9.6785140000e-02  3.4927990000e-01 -6.2365080000e-02
3.3062110000e-01 -2.6847650000e-02  3.6193970000e-01 1.2315570000e-02
4.0560620000e-01 -1.7520790000e-02  3.9441410000e-01 -6.1273660000e-02
2.9231820000e-01 -2.7424770000e-02  3.1640090000e-01 -5.9103530000e-02
2.9991120000e-01 -8.8460990000e-02  2.6704050000e-01 -8.8975980000e-02
2.4780370000e-01 -5.0567760000e-02  2.3405810000e-01 -9.0787440000e-02
2.2462470000e-01 -1.2603980000e-01  1.9000000000e-01 -1.3367720000e-01
1.6660920000e-01 -1.0359770000e-01  1.9329360000e-01 -6.3635080000e-02
1.4444290000e-01 -6.9630980000e-02  9.5368650000e-02 -8.1081990000e-02
5.5518510000e-02 -3.2988870000e-02  1.0364600000e-01 1.5959390000e-02
1.5859700000e-01 -1.1347670000e-02  1.4595470000e-01 4.1863140000e-02
1.4276950000e-01 8.9455430000e-02  1.7986980000e-01 1.0710740000e-01
2.1203910000e-01 8.4086550000e-02  2.0300930000e-01 3.4897310000e-02
2.4462580000e-01 6.1501200000e-02  2.8151890000e-01 8.8713000000e-02
3.2926970000e-01 6.4976360000e-02  3.1190700000e-01 9.9259800000e-03
2.5794480000e-01 6.8424850000e-03  2.7602090000e-01 1.2814400000e-01
2.4445400000e-01 1.0027420000e-01  2.1078270000e-01 1.1914630000e-01
2.1395060000e-01 1.5529940000e-01  2.5290760000e-01 1.7018300000e-01
2.1789150000e-01 1.8760640000e-01  1.8855840000e-01 2.0548500000e-01
1.9441100000e-01 2.3687200000e-01  2.2370330000e-01 2.4434260000e-01
2.4700340000e-01 2.1685170000e-01  2.5053920000e-01 2.5101310000e-01
2.5447550000e-01 2.7965910000e-01  2.7973150000e-01 2.8700260000e-01
2.9780330000e-01 2.6808280000e-01  2.8500470000e-01 2.3731900000e-01
3.1581670000e-01 2.4921500000e-01  3.4216440000e-01 2.6121400000e-01
3.6399360000e-01 2.4374700000e-01  3.5735910000e-01 2.1462460000e-01
3.1969620000e-01 2.1093000000e-01  3.4780970000e-01 1.8401260000e-01
3.7992020000e-01 1.5990460000e-01  3.7145770000e-01 1.1052390000e-01
3.1545730000e-01 1.1420960000e-01  3.0441150000e-01 1.6344080000e-01
4.1240280000e-01 1.7680280000e-01  3.7896100000e-01 1.9427510000e-01
3.8264760000e-01 2.2624620000e-01  4.1068870000e-01 2.3786750000e-01
4.3985270000e-01 2.1298310000e-01  4.3726020000e-01 2.5011480000e-01
4.3429090000e-01 2.8149160000e-01  4.5976250000e-01 2.9710450000e-01
4.8602380000e-01 2.8043260000e-01  4.7796230000e-01 2.4199220000e-01
5.1235960000e-01 2.6183580000e-01  5.4372400000e-01 2.8414560000e-01
5.8406540000e-01 2.6356430000e-01  5.6863130000e-01 2.1596810000e-01
5.2129020000e-01 2.1532590000e-01  5.4981200000e-01 1.8303070000e-01
5.7097900000e-01 1.5251760000e-01  5.5391060000e-01 1.2497900000e-01
5.2171570000e-01 1.2650140000e-01  5.0708590000e-01 1.6527510000e-01
4.8827670000e-01 1.2808680000e-01  4.7403350000e-01 9.0733400000e-02
4.2586770000e-01 8.4498680000e-02  4.1256470000e-01 1.3723640000e-01
4.5432690000e-01 1.6353690000e-01  4.7799900000e-01 -2.9159900000e-01
4.7923990000e-01 -3.2647790000e-01  4.5017370000e-01 -3.3867210000e-01
4.2760830000e-01 -3.1856870000e-01  4.3775230000e-01 -2.8427090000e-01
4.0719390000e-01 -2.9932730000e-01  3.7938620000e-01 -3.1136710000e-01
3.5884710000e-01 -2.9104120000e-01  3.6885250000e-01 -2.6474490000e-01
4.0200950000e-01 -2.6286170000e-01  3.7912100000e-01 -2.4080070000e-01
3.5982530000e-01 -2.2065120000e-01  3.7022730000e-01 -1.9682910000e-01
3.9568390000e-01 -1.9585650000e-01  4.0948320000e-01 -2.2398170000e-01
4.2024400000e-01 -1.9532870000e-01  4.2915930000e-01 -1.7003480000e-01
4.5438940000e-01 -1.6735220000e-01  4.6855880000e-01 -1.8957170000e-01
4.4825290000e-01 -2.1614890000e-01  4.8230930000e-01 -2.1380840000e-01
5.1598250000e-01 -2.0749400000e-01  5.4226460000e-01 -2.4074710000e-01
5.0847000000e-01 -2.7404890000e-01  4.7066110000e-01 -2.5368120000e-01
5.2400120000e-01 -1.7797430000e-01  4.9412020000e-01 -1.8826080000e-01
4.7680620000e-01 -1.6682820000e-01  4.8724940000e-01 -1.4314560000e-01
5.1849630000e-01 -1.4159400000e-01  4.9691900000e-01 -1.2096830000e-01
4.7873740000e-01 -1.0232910000e-01  4.8847900000e-01 -7.9454720000e-02
5.1288390000e-01 -7.9063110000e-02  5.2506390000e-01 -1.0540490000e-01
5.3559390000e-01 -7.9602980000e-02  5.4549170000e-01 -5.7415960000e-02
5.6800420000e-01 -5.7790990000e-02  5.7751480000e-01 -7.7831500000e-02
5.5940780000e-01 -9.8743630000e-02  5.8662780000e-01 -9.7568890000e-02
6.1052290000e-01 -9.5490670000e-02  6.2254200000e-01 -1.1513150000e-01
6.0933780000e-01 -1.3579050000e-01  5.7930160000e-01 -1.2827920000e-01
5.9343490000e-01 -1.5673000000e-01  6.1135120000e-01 -1.8460780000e-01
5.8963010000e-01 -2.2049940000e-01  5.4842530000e-01 -1.9987570000e-01
5.5472030000e-01 -1.6013290000e-01  6.4174460000e-01 -1.8059480000e-01
6.2039590000e-01 -1.5756230000e-01  6.3209710000e-01 -1.3380420000e-01
6.5685360000e-01 -1.3244450000e-01  6.7300820000e-01 -1.5928080000e-01
6.8027640000e-01 -1.2999800000e-01  6.8615440000e-01 -1.0586010000e-01
7.0857110000e-01 -1.0123860000e-01  7.2312350000e-01 -1.1912140000e-01
7.0917870000e-01 -1.4559070000e-01  7.3826910000e-01 -1.3724500000e-01
7.6246690000e-01 -1.2635140000e-01  7.8573940000e-01 -1.4028500000e-01
7.7714460000e-01 -1.7558610000e-01  7.3842690000e-01 -1.7416440000e-01
7.5952870000e-01 -2.0726860000e-01  7.6570770000e-01 -2.3744320000e-01
7.5347960000e-01 -2.5715380000e-01  7.2201320000e-01 -2.5250480000e-01
7.1705250000e-01 -2.1412990000e-01  6.9130820000e-01 -2.4227050000e-01
6.6676500000e-01 -2.7069680000e-01  6.2425780000e-01 -2.5932450000e-01
6.3045290000e-01 -2.1225800000e-01  6.7198790000e-01 -2.0277310000e-01
6.7759410000e-01 -3.0190970000e-01  6.9926970000e-01 -2.7350110000e-01
7.3458440000e-01 -2.8308100000e-01  7.3103230000e-01 -3.2254640000e-01
6.9996610000e-01 -3.3313240000e-01  7.2343680000e-01 -3.4717960000e-01
7.2911300000e-01 -3.5987580000e-01  7.2792600000e-01 -3.6428190000e-01
7.2261510000e-01 -3.7051690000e-01  7.0680490000e-01 -3.6299970000e-01
7.1253530000e-01 -3.8296240000e-01  7.1492100000e-01 -3.9958760000e-01
7.0724470000e-01 -4.1136200000e-01  6.8763510000e-01 -4.0717740000e-01
6.8742670000e-01 -3.8268070000e-01  6.6898760000e-01 -3.9865700000e-01
6.5207740000e-01 -4.1404140000e-01  6.3179700000e-01 -4.0580670000e-01
6.3026810000e-01 -3.8255110000e-01  6.5740470000e-01 -3.7174640000e-01
6.3097060000e-01 -3.5735770000e-01  6.0098030000e-01 -3.4534780000e-01
5.9766830000e-01 -3.0387790000e-01  6.4358680000e-01 -2.9686710000e-01
6.6021500000e-01 -3.3377900000e-01  5.7921040000e-01 -3.6618340000e-01
6.0934140000e-01 -3.7190560000e-01  6.1390290000e-01 -3.9699140000e-01
5.9586440000e-01 -4.1240300000e-01  5.6736370000e-01 -4.0150400000e-01
5.7973050000e-01 -4.2835500000e-01  5.9042360000e-01 -4.4951730000e-01
5.7803640000e-01 -4.6714060000e-01  5.5520140000e-01 -4.6477620000e-01
5.4766970000e-01 -4.3486160000e-01  5.2997290000e-01 -4.6167640000e-01
5.1744970000e-01 -4.9061510000e-01  4.7816910000e-01 -4.9548010000e-01
4.6732970000e-01 -4.5042720000e-01  5.0510460000e-01 -4.3011320000e-01
4.6903230000e-01 -4.1482340000e-01  4.3806500000e-01 -3.9648280000e-01
4.4324540000e-01 -3.6459530000e-01  4.7323250000e-01 -3.5499900000e-01
4.9874860000e-01 -3.8401470000e-01  5.0335860000e-01 -3.4616990000e-01
5.0595330000e-01 -3.0927470000e-01  5.4684600000e-01 -2.9289470000e-01
5.6964330000e-01 -3.3438080000e-01  5.4205080000e-01 -3.6646240000e-01
6.1593770000e-01 -4.9743680000e-01  5.9602240000e-01 -5.0085510000e-01
5.8519050000e-01 -4.8396120000e-01  5.9692210000e-01 -4.6727940000e-01
6.1981550000e-01 -4.7322320000e-01  6.0972920000e-01 -4.5258670000e-01
6.0062300000e-01 -4.3241690000e-01  6.1599680000e-01 -4.1675610000e-01
6.3596220000e-01 -4.2494790000e-01  6.3580450000e-01 -4.4984170000e-01
6.5421770000e-01 -4.3414740000e-01  6.7160810000e-01 -4.1893360000e-01
6.9425000000e-01 -4.2776140000e-01  6.8976610000e-01 -4.5627250000e-01
6.6334480000e-01 -4.6024600000e-01  6.8061330000e-01 -4.7744990000e-01
6.8503520000e-01 -4.9301810000e-01  6.8012760000e-01 -5.0188060000e-01
6.6749840000e-01 -5.0234850000e-01  6.5946560000e-01 -4.8673930000e-01
6.5458020000e-01 -5.0358210000e-01  6.5311920000e-01 -5.1728240000e-01
6.4061330000e-01 -5.2526760000e-01  6.2607970000e-01 -5.1233970000e-01
6.3655840000e-01 -4.9371800000e-01  6.6114500000e-01 -5.2273080000e-01
6.6258450000e-01 -5.1236160000e-01  6.7439490000e-01 -5.1189510000e-01
6.7486540000e-01 -5.2283810000e-01  6.6905560000e-01 -5.2655220000e-01
6.7392270000e-01 -5.2793150000e-01  6.7498300000e-01 -5.2993060000e-01
6.7482130000e-01 -5.3057270000e-01  6.7415780000e-01 -5.3141740000e-01
6.7194890000e-01 -5.3086060000e-01  6.7325240000e-01 -5.3289670000e-01
6.7367360000e-01 -5.3414370000e-01  6.7353490000e-01 -5.3462130000e-01
6.7286780000e-01 -5.3535030000e-01  6.7104990000e-01 -5.3406010000e-01
6.7129630000e-01 -5.3698630000e-01  6.7153850000e-01 -5.3973270000e-01
6.7009040000e-01 -5.4185880000e-01  6.6630400000e-01 -5.4083400000e-01
6.6714830000e-01 -5.3606260000e-01  6.6240330000e-01 -5.3834490000e-01
6.5730550000e-01 -5.4227020000e-01  6.4837340000e-01 -5.3878900000e-01
6.5348510000e-01 -5.2767920000e-01  6.6250460000e-01 -5.3098880000e-01
6.5914500000e-01 -5.4777430000e-01  6.6268380000e-01 -5.4330450000e-01
6.6754310000e-01 -5.4501460000e-01  6.6704750000e-01 -5.5031410000e-01
6.6305850000e-01 -5.5204180000e-01  6.6622690000e-01 -5.5345580000e-01
6.6692960000e-01 -5.5488260000e-01  6.6680800000e-01 -5.5535380000e-01
6.6629700000e-01 -5.5598920000e-01  6.6461560000e-01 -5.5546410000e-01
6.6554420000e-01 -5.5714950000e-01  6.6587770000e-01 -5.5819820000e-01
6.6575590000e-01 -5.5861000000e-01  6.6515520000e-01 -5.5925140000e-01
6.6360760000e-01 -5.5801300000e-01  6.6361080000e-01 -5.6073780000e-01
6.6374920000e-01 -5.6357570000e-01  6.6198280000e-01 -5.6598080000e-01
6.5760280000e-01 -5.6408920000e-01  6.5971260000e-01 -5.5925750000e-01
6.5426220000e-01 -5.5992690000e-01  6.4663110000e-01 -5.6092930000e-01
6.4208120000e-01 -5.5080730000e-01  6.5275600000e-01 -5.4739980000e-01
6.5725580000e-01 -5.5357700000e-01  6.4410760000e-01 -5.6905260000e-01
6.5215070000e-01 -5.6567160000e-01  6.5815760000e-01 -5.6990070000e-01
6.5613610000e-01 -5.7888570000e-01  6.4650030000e-01 -5.8025280000e-01
6.5323080000e-01 -5.8609420000e-01  6.5501250000e-01 -5.9053560000e-01
6.5456420000e-01 -5.9214460000e-01  6.5248160000e-01 -5.9450260000e-01
6.4658950000e-01 -5.9103520000e-01  6.4801320000e-01 -5.9949000000e-01
6.4879160000e-01 -6.0721050000e-01  6.4465070000e-01 -6.1316410000e-01
6.3432830000e-01 -6.0970380000e-01  6.3681700000e-01 -5.9762480000e-01
6.2572240000e-01 -6.0267300000e-01  6.1345900000e-01 -6.0742000000e-01
6.0482600000e-01 -5.9728560000e-01  6.1123640000e-01 -5.8580520000e-01
6.2549550000e-01 -5.8808300000e-01  6.1874980000e-01 -5.7602690000e-01
6.1255300000e-01 -5.6264930000e-01  6.2540780000e-01 -5.5110540000e-01
6.3716440000e-01 -5.6179080000e-01  6.3401990000e-01 -5.7492500000e-01
5.9759620000e-01 -5.6085550000e-01  6.0615590000e-01 -5.7463310000e-01
5.9907880000e-01 -5.8684900000e-01  5.8419890000e-01 -5.8684960000e-01
5.7667800000e-01 -5.6832310000e-01  5.6838470000e-01 -5.8688620000e-01
5.6286680000e-01 -6.0425870000e-01  5.4485020000e-01 -6.0759040000e-01
5.3330690000e-01 -5.9099490000e-01  5.4924590000e-01 -5.7138740000e-01
5.2300320000e-01 -5.7148590000e-01  4.9456770000e-01 -5.7507790000e-01
4.7398670000e-01 -5.4349350000e-01  5.0816070000e-01 -5.1929050000e-01
5.3556920000e-01 -5.4113630000e-01  5.3586380000e-01 -5.1070010000e-01
5.4275780000e-01 -4.8382900000e-01  5.6669350000e-01 -4.8245820000e-01
5.7764700000e-01 -5.0109650000e-01  5.6437450000e-01 -5.2320060000e-01
5.8812430000e-01 -5.1775670000e-01  6.0854280000e-01 -5.1376220000e-01
6.2092340000e-01 -5.3073760000e-01  6.0814050000e-01 -5.4775240000e-01
5.8600050000e-01 -5.4340940000e-01  5.5358960000e-01 -6.5428180000e-01
5.3443680000e-01 -6.4347000000e-01  5.3837430000e-01 -6.2329830000e-01
5.5699200000e-01 -6.1925970000e-01  5.7049400000e-01 -6.3613880000e-01
5.7341830000e-01 -6.1620740000e-01  5.7750420000e-01 -5.9952650000e-01
5.9267990000e-01 -5.9749840000e-01  6.0104810000e-01 -6.0921200000e-01
5.9248610000e-01 -6.2540600000e-01  6.0981460000e-01 -6.2017900000e-01
6.2374430000e-01 -6.1423630000e-01  6.3644470000e-01 -6.2216450000e-01
6.3172730000e-01 -6.4155100000e-01  6.1034380000e-01 -6.4128980000e-01
6.2258580000e-01 -6.5873670000e-01  6.2609260000e-01 -6.7412960000e-01
6.2041590000e-01 -6.8370490000e-01  6.0564490000e-01 -6.8273660000e-01
6.0060820000e-01 -6.6404980000e-01  5.9020050000e-01 -6.8060310000e-01
5.8291010000e-01 -6.9700900000e-01  5.6167460000e-01 -7.0052180000e-01
5.5362980000e-01 -6.7537500000e-01  5.7509080000e-01 -6.6245550000e-01
5.9201160000e-01 -7.0787860000e-01  5.9721250000e-01 -6.9393680000e-01
6.1270710000e-01 -6.9556290000e-01  6.1253800000e-01 -7.1072200000e-01
6.0318860000e-01 -7.1581470000e-01  6.1083420000e-01 -7.1852740000e-01
6.1251190000e-01 -7.2179800000e-01  6.1224090000e-01 -7.2286190000e-01
6.1111650000e-01 -7.2427770000e-01  6.0739350000e-01 -7.2323500000e-01
6.0952510000e-01 -7.2680640000e-01  6.1024840000e-01 -7.2901030000e-01
6.0999800000e-01 -7.2986470000e-01  6.0877870000e-01 -7.3118200000e-01
6.0554660000e-01 -7.2874560000e-01  6.0577640000e-01 -7.3418600000e-01
6.0614080000e-01 -7.3956960000e-01  6.0303710000e-01 -7.4394190000e-01
5.9514780000e-01 -7.4112230000e-01  5.9802560000e-01 -7.3184810000e-01
5.8814990000e-01 -7.3466600000e-01  5.7574460000e-01 -7.3945220000e-01
5.6255190000e-01 -7.2604830000e-01  5.7830000000e-01 -7.1196280000e-01
5.9125680000e-01 -7.2141710000e-01  5.7517110000e-01 -7.5276400000e-01
5.8636540000e-01 -7.4505840000e-01  5.9689430000e-01 -7.5077540000e-01
5.9451640000e-01 -7.6450150000e-01  5.8152170000e-01 -7.6760440000e-01
5.9102480000e-01 -7.7437090000e-01  5.9338620000e-01 -7.7988090000e-01
5.9285730000e-01 -7.8182150000e-01  5.9046920000e-01 -7.8459840000e-01
5.8339130000e-01 -7.8102800000e-01  5.8583390000e-01 -7.9024430000e-01
5.8700520000e-01 -7.9779330000e-01  5.8416080000e-01 -8.0277550000e-01
5.7495100000e-01 -8.0221690000e-01  5.7380610000e-01 -7.9010580000e-01
5.6345710000e-01 -7.9887140000e-01  5.5292000000e-01 -8.0414300000e-01
5.4329930000e-01 -8.0147590000e-01  5.4236280000e-01 -7.8702120000e-01
5.5861720000e-01 -7.8307780000e-01  5.4587640000e-01 -7.7242320000e-01
5.3171580000e-01 -7.6025860000e-01  5.3973180000e-01 -7.3847820000e-01
5.6203220000e-01 -7.4542980000e-01  5.6375360000e-01 -7.6439210000e-01
5.1449080000e-01 -7.6649020000e-01  5.3086290000e-01 -7.7723650000e-01
5.2894930000e-01 -7.9583430000e-01  5.0747470000e-01 -7.9938170000e-01
4.9694590000e-01 -7.8205530000e-01  4.9136490000e-01 -7.9891650000e-01
4.8429890000e-01 -8.0502720000e-01  4.8112850000e-01 -8.0517370000e-01
4.7573730000e-01 -8.0288270000e-01  4.7801520000e-01 -7.9046820000e-01
4.6462970000e-01 -7.9822820000e-01  4.5241100000e-01 -8.0382940000e-01
4.4079700000e-01 -8.0043830000e-01  4.4034680000e-01 -7.8260460000e-01
4.6060520000e-01 -7.7890080000e-01  4.4554050000e-01 -7.6532140000e-01
4.3083230000e-01 -7.5073160000e-01  4.3912950000e-01 -7.3221900000e-01
4.5923480000e-01 -7.3266140000e-01  4.6702910000e-01 -7.5461690000e-01
4.7869850000e-01 -7.3500810000e-01  4.9058450000e-01 -7.1484030000e-01
5.1776480000e-01 -7.1861990000e-01  5.1774890000e-01 -7.4663390000e-01
4.9430560000e-01 -7.5622050000e-01  4.7965150000e-01 -6.9549670000e-01
4.6995150000e-01 -7.1717250000e-01  4.4888390000e-01 -7.1738280000e-01
4.3863460000e-01 -6.9870590000e-01  4.5539370000e-01 -6.7729580000e-01
4.2849390000e-01 -6.7971910000e-01  4.0444150000e-01 -6.8325150000e-01
3.9083940000e-01 -6.6341570000e-01  4.0419330000e-01 -6.4158460000e-01
4.3466910000e-01 -6.4876740000e-01  4.2044590000e-01 -6.2041510000e-01
4.0345670000e-01 -5.9178620000e-01  4.2741750000e-01 -5.5782280000e-01
4.6511860000e-01 -5.8028980000e-01  4.5827790000e-01 -6.1739250000e-01
4.8673150000e-01 -6.0087760000e-01  5.1266200000e-01 -5.9205800000e-01
5.2739850000e-01 -6.0925620000e-01  5.2055990000e-01 -6.2970810000e-01
4.9276940000e-01 -6.3372780000e-01  5.1478200000e-01 -6.5063440000e-01
5.3539540000e-01 -6.6389710000e-01  5.3364940000e-01 -6.9116280000e-01
5.0363500000e-01 -6.9574130000e-01  4.8913590000e-01 -6.6897900000e-01
3.3728610000e-01 -6.9657280000e-01  3.4241870000e-01 -6.6772000000e-01
3.6884970000e-01 -6.6336750000e-01  3.8294190000e-01 -6.8407990000e-01
3.6852410000e-01 -7.0967830000e-01  3.9548100000e-01 -7.0295570000e-01
4.1874370000e-01 -6.9846020000e-01  4.3080210000e-01 -7.1636910000e-01
4.2064240000e-01 -7.3480970000e-01  3.9405370000e-01 -7.3276760000e-01
4.1086320000e-01 -7.5330570000e-01  4.2737350000e-01 -7.6958110000e-01
4.2280210000e-01 -7.9271250000e-01  3.9223220000e-01 -7.9558730000e-01
3.8195940000e-01 -7.6542410000e-01  3.6370560000e-01 -7.9088990000e-01
3.4396150000e-01 -8.0280500000e-01  3.2821480000e-01 -7.9928840000e-01
3.2290400000e-01 -7.7858670000e-01  3.4608360000e-01 -7.6318320000e-01
3.1889670000e-01 -7.5661870000e-01  2.9347980000e-01 -7.5385290000e-01
2.8000390000e-01 -7.2657160000e-01  3.1005590000e-01 -7.0571290000e-01
3.3638770000e-01 -7.2824090000e-01  2.8246960000e-01 -7.7093650000e-01
3.0384670000e-01 -7.7203340000e-01  3.0847180000e-01 -7.9399850000e-01
2.8753090000e-01 -8.0051330000e-01  2.7634110000e-01 -7.8983170000e-01
2.7597130000e-01 -8.0164190000e-01  2.7218620000e-01 -8.0544030000e-01
2.7058520000e-01 -8.0554370000e-01  2.6810740000e-01 -8.0461840000e-01
2.6788760000e-01 -7.9896340000e-01  2.6386270000e-01 -8.0354050000e-01
2.6111060000e-01 -8.0554890000e-01  2.5980150000e-01 -8.0558670000e-01
2.5740070000e-01 -8.0447690000e-01  2.5935970000e-01 -7.9884570000e-01
2.5181310000e-01 -8.0161820000e-01  2.4436770000e-01 -8.0458480000e-01
2.3671260000e-01 -8.0216720000e-01  2.3721530000e-01 -7.8960420000e-01
2.5166040000e-01 -7.8963970000e-01  2.4343800000e-01 -7.7686070000e-01
2.3161170000e-01 -7.6110390000e-01  2.4550520000e-01 -7.3751620000e-01
2.7110390000e-01 -7.5376950000e-01  2.6338430000e-01 -7.7565630000e-01
2.1209120000e-01 -7.6533780000e-01  2.2778930000e-01 -7.7863180000e-01
2.2404090000e-01 -7.9641470000e-01  2.0260690000e-01 -7.9919170000e-01
1.9215380000e-01 -7.8063610000e-01  1.8571330000e-01 -7.9845550000e-01
1.7810510000e-01 -8.0495920000e-01  1.7467850000e-01 -8.0511340000e-01
1.6882020000e-01 -8.0260770000e-01  1.7145740000e-01 -7.8909470000e-01
1.5663850000e-01 -7.9741570000e-01  1.4301380000e-01 -8.0358020000e-01
1.2992790000e-01 -7.9970640000e-01  1.2972020000e-01 -7.7948050000e-01
1.5255030000e-01 -7.7589210000e-01  1.3618960000e-01 -7.6018010000e-01
1.2040720000e-01 -7.4303790000e-01  1.3074710000e-01 -7.2296240000e-01
1.5289040000e-01 -7.2442410000e-01  1.6061200000e-01 -7.4914690000e-01
1.7447980000e-01 -7.2776590000e-01  1.8842560000e-01 -7.0523400000e-01
2.2059150000e-01 -7.1022400000e-01  2.1806310000e-01 -7.4367250000e-01
1.9084620000e-01 -7.5233750000e-01  1.7583390000e-01 -6.8364220000e-01
1.6521900000e-01 -7.0763510000e-01  1.4216120000e-01 -7.0725230000e-01
1.3202510000e-01 -6.8688800000e-01  1.4962590000e-01 -6.6514700000e-01
1.2264210000e-01 -6.6704970000e-01  9.8522230000e-02 -6.6830810000e-01
8.8466000000e-02 -6.4722010000e-01  1.0353410000e-01 -6.2984240000e-01
1.2952650000e-01 -6.3809820000e-01  1.1841880000e-01 -6.1425960000e-01
1.0904660000e-01 -5.9289450000e-01  1.2403130000e-01 -5.7681510000e-01
1.4496370000e-01 -5.8342120000e-01  1.4736130000e-01 -6.1025860000e-01
1.6522740000e-01 -5.9068420000e-01  1.8103590000e-01 -5.7245790000e-01
2.0371420000e-01 -5.7903370000e-01  2.0714720000e-01 -6.0333410000e-01
1.8069720000e-01 -6.1711080000e-01  2.0839230000e-01 -6.2835880000e-01
2.3718610000e-01 -6.3831560000e-01  2.4037300000e-01 -6.7457690000e-01
2.0317520000e-01 -6.8276050000e-01  1.8412540000e-01 -6.5395630000e-01
2.5820640000e-01 -6.1905720000e-01  2.2876120000e-01 -6.1303040000e-01
2.2340970000e-01 -5.8741600000e-01  2.4295720000e-01 -5.7062420000e-01
2.7292540000e-01 -5.8440690000e-01  2.6230660000e-01 -5.5359290000e-01
2.5148030000e-01 -5.2689360000e-01  2.7037730000e-01 -5.0568720000e-01
2.9908160000e-01 -5.1477410000e-01  2.9985510000e-01 -5.5163500000e-01
3.2764070000e-01 -5.2694720000e-01  3.5429850000e-01 -5.0001760000e-01
3.9704710000e-01 -5.1565640000e-01  3.8622420000e-01 -5.6253450000e-01
3.4313240000e-01 -5.6830260000e-01  3.7215470000e-01 -5.9393220000e-01
3.9304460000e-01 -6.1895840000e-01  3.8032390000e-01 -6.4371930000e-01
3.5309820000e-01 -6.4488760000e-01  3.3702000000e-01 -6.1372790000e-01
3.2544000000e-01 -6.4659820000e-01  3.1728080000e-01 -6.7754710000e-01
2.8164730000e-01 -6.8594970000e-01  2.6535340000e-01 -6.4906260000e-01
2.9365110000e-01 -6.2219390000e-01  2.1574580000e-01 -4.5316340000e-01
2.5181490000e-01 -4.5056190000e-01  2.6427370000e-01 -4.8033660000e-01
2.4440160000e-01 -5.0250220000e-01  2.1087090000e-01 -4.9378890000e-01
2.2651740000e-01 -5.2222470000e-01  2.3799040000e-01 -5.4747700000e-01
2.2038600000e-01 -5.6589320000e-01  1.9712990000e-01 -5.5838020000e-01
1.9313700000e-01 -5.2890590000e-01  1.7539780000e-01 -5.5134600000e-01
1.6016470000e-01 -5.7012510000e-01  1.3859380000e-01 -5.6455150000e-01
1.3373080000e-01 -5.4267250000e-01  1.5689890000e-01 -5.2612950000e-01
1.2912360000e-01 -5.2070190000e-01  1.0427230000e-01 -5.1740390000e-01
9.6281470000e-02 -4.9447290000e-01  1.1465980000e-01 -4.7609590000e-01
1.4401460000e-01 -4.9099310000e-01  1.3612880000e-01 -4.5793060000e-01
1.2348410000e-01 -4.2445310000e-01  1.5464400000e-01 -3.9034630000e-01
1.9492870000e-01 -4.2268560000e-01  1.7785730000e-01 -4.6391420000e-01
9.0704690000e-02 -4.2240140000e-01  1.0807640000e-01 -4.5093390000e-01
9.0615590000e-02 -4.7299030000e-01  6.4728690000e-02 -4.6877460000e-01
5.4321450000e-02 -4.3777890000e-01  4.0093270000e-02 -4.6573900000e-01
2.7878900000e-02 -4.8923930000e-01  2.8704720000e-03 -4.8788650000e-01
-6.5790030000e-03 -4.6455730000e-01  1.5217160000e-02 -4.4271620000e-01
-1.4900770000e-02 -4.4173840000e-01  -4.1468310000e-02 -4.4107650000e-01
-5.1291280000e-02 -4.1784420000e-01  -3.4323260000e-02 -3.9865600000e-01
-4.3850400000e-03 -4.0942340000e-01  -1.6526430000e-02 -3.8021720000e-01
-2.9023450000e-02 -3.5385700000e-01  -1.0729270000e-02 -3.3135100000e-01
1.8939160000e-02 -3.3949990000e-01  2.0648890000e-02 -3.7675480000e-01
4.8620410000e-02 -3.5145670000e-01  7.6633620000e-02 -3.2273570000e-01
1.2355800000e-01 -3.4041940000e-01  1.0867550000e-01 -3.9116860000e-01
6.3605580000e-02 -3.9404460000e-01  6.4248590000e-02 -2.8648580000e-01
4.1562230000e-02 -3.1917900000e-01  8.5460560000e-03 -3.1256830000e-01
-2.1012690000e-03 -2.8146560000e-01  2.8482620000e-02 -2.5130160000e-01
-1.4016150000e-02 -2.5065720000e-01  -5.0458190000e-02 -2.5257910000e-01
-6.8421360000e-02 -2.2200920000e-01  -4.7042240000e-02 -1.9046810000e-01
-7.8963790000e-04 -2.0349740000e-01  -2.1587720000e-02 -1.5889050000e-01
-4.7643030000e-02 -1.1575670000e-01  -1.4218120000e-02 -6.2995360000e-02
4.7206630000e-02 -9.3641470000e-02  3.8216840000e-02 -1.5434140000e-01
8.4916660000e-02 -1.2587480000e-01  1.2919540000e-01 -1.0813870000e-01
1.5744800000e-01 -1.3796840000e-01  1.4549470000e-01 -1.7567710000e-01
9.5922540000e-02 -1.8228950000e-01  1.3408450000e-01 -2.1364810000e-01
1.7136500000e-01 -2.4032660000e-01  1.6354580000e-01 -2.9307530000e-01
1.0582450000e-01 -2.9357390000e-01  8.6216740000e-02 -2.4320560000e-01
2.0716720000e-01 -2.2291300000e-01  1.7090670000e-01 -2.0150330000e-01
1.7845030000e-01 -1.6364810000e-01  2.1381280000e-01 -1.5548900000e-01
2.4000630000e-01 -1.8794020000e-01  2.4575640000e-01 -1.4925370000e-01
2.5369560000e-01 -1.1583150000e-01  2.8535500000e-01 -1.1169850000e-01
3.0151180000e-01 -1.3724860000e-01  2.8256650000e-01 -1.6790350000e-01
3.1614850000e-01 -1.6070990000e-01  3.4460890000e-01 -1.5560140000e-01
3.5939750000e-01 -1.7735230000e-01  3.4698810000e-01 -2.0038610000e-01
3.1377500000e-01 -1.9772030000e-01  3.3461010000e-01 -2.2334820000e-01
3.5416370000e-01 -2.4469850000e-01  3.4429720000e-01 -2.7085690000e-01
3.1454990000e-01 -2.7354640000e-01  2.9939770000e-01 -2.3886850000e-01
2.8248530000e-01 -2.7392390000e-01  2.6947980000e-01 -3.1191260000e-01
2.1990080000e-01 -3.1912360000e-01  2.0610120000e-01 -2.6472520000e-01
2.4950950000e-01 -2.3900670000e-01  2.9558850000e-01 -3.3758350000e-01
3.0187170000e-01 -3.0037930000e-01  3.3341720000e-01 -2.9400590000e-01
3.5313490000e-01 -3.1708350000e-01  3.3848060000e-01 -3.5250980000e-01
3.7299370000e-01 -3.3856980000e-01  4.0191740000e-01 -3.2605000000e-01
4.2463720000e-01 -3.4545040000e-01  4.1689640000e-01 -3.7557830000e-01
3.7784630000e-01 -3.7978990000e-01  4.0734790000e-01 -4.0637170000e-01
4.3825790000e-01 -4.2930700000e-01  4.3114990000e-01 -4.7403390000e-01
3.8111390000e-01 -4.7406310000e-01  3.6587400000e-01 -4.2923750000e-01
3.4397310000e-01 -4.6634300000e-01  3.2149430000e-01 -4.9590300000e-01
2.9002910000e-01 -4.8817980000e-01  2.8152830000e-01 -4.5709020000e-01
3.1388350000e-01 -4.3119490000e-01  2.7270300000e-01 -4.2479790000e-01
2.3277650000e-01 -4.2279460000e-01  2.1196300000e-01 -3.7891290000e-01
2.5800870000e-01 -3.4996420000e-01  2.9592710000e-01 -3.8155510000e-01
-1.2961760000e-01 -5.4471260000e-01  -1.6240570000e-01 -5.5667080000e-01
-1.8298500000e-01 -5.3279550000e-01  -1.7083860000e-01 -5.0512220000e-01
-1.3508500000e-01 -5.0417130000e-01  -1.5884740000e-01 -4.7976110000e-01
-1.7889080000e-01 -4.5703500000e-01  -1.6590680000e-01 -4.3122020000e-01
-1.3780560000e-01 -4.3260990000e-01  -1.2576870000e-01 -4.6356220000e-01
-1.1186020000e-01 -4.3497660000e-01  -9.8659660000e-02 -4.1039880000e-01
-7.2789170000e-02 -4.1293030000e-01  -6.3997790000e-02 -4.3684030000e-01
-8.6482120000e-02 -4.5865540000e-01  -5.5906350000e-02 -4.6003520000e-01
-2.9095660000e-02 -4.6069800000e-01  -1.8747830000e-02 -4.8386420000e-01
-3.5501170000e-02 -5.0420630000e-01  -6.7052440000e-02 -4.9310700000e-01
-5.4302380000e-02 -5.2477320000e-01  -3.7891860000e-02 -5.5484700000e-01
-6.1395550000e-02 -5.9011870000e-01  -1.0351050000e-01 -5.6826900000e-01
-9.5822970000e-02 -5.2601650000e-01  -7.3390410000e-03 -5.5335130000e-01
-2.6355680000e-02 -5.2811150000e-01  -1.1322310000e-02 -5.0502200000e-01
1.4428190000e-02 -5.0763580000e-01  2.5559580000e-02 -5.3687390000e-01
3.8508070000e-02 -5.0997910000e-01  5.0616660000e-02 -4.8692750000e-01
7.5381810000e-02 -4.8912370000e-01  8.3295840000e-02 -5.1221320000e-01
6.2007040000e-02 -5.3193700000e-01  8.9800090000e-02 -5.3397850000e-01
1.1395980000e-01 -5.3653570000e-01  1.2055980000e-01 -5.5806230000e-01
1.0443910000e-01 -5.7330010000e-01  7.8955160000e-02 -5.6254160000e-01
8.8483800000e-02 -5.8806640000e-01  9.7844280000e-02 -6.1014980000e-01
8.2878470000e-02 -6.2764990000e-01  5.9150360000e-02 -6.2147570000e-01
5.7012460000e-02 -5.9058860000e-01  3.4321510000e-02 -6.1282180000e-01
1.3344720000e-02 -6.3847580000e-01  -2.7502330000e-02 -6.2890900000e-01
-2.0620830000e-02 -5.8334780000e-01  1.9121650000e-02 -5.7705370000e-01
2.6553470000e-02 -6.6614150000e-01  4.1861480000e-02 -6.3872020000e-01
6.8072230000e-02 -6.4250740000e-01  7.7016250000e-02 -6.6563240000e-01
5.6485430000e-02 -6.8928830000e-01  8.6580240000e-02 -6.8715270000e-01
1.1135420000e-01 -6.8528380000e-01  1.2267630000e-01 -7.0517520000e-01
1.1016510000e-01 -7.2454170000e-01  8.0682240000e-02 -7.1945840000e-01
9.7608910000e-02 -7.4454620000e-01  1.1544800000e-01 -7.6419380000e-01
1.0938580000e-01 -7.9063340000e-01  7.3156510000e-02 -7.9336770000e-01
6.2544550000e-02 -7.5610550000e-01  3.7581220000e-02 -7.8640420000e-01
1.0792720000e-02 -8.0160480000e-01  -1.1731730000e-02 -7.9606580000e-01
-1.7033540000e-02 -7.6470310000e-01  1.7930260000e-02 -7.4812690000e-01
-1.6788280000e-02 -7.3233840000e-01  -5.1407200000e-02 -7.1778020000e-01
-5.3726890000e-02 -6.7383960000e-01  -7.0492680000e-03 -6.6518690000e-01
1.4805830000e-02 -7.0175860000e-01  -7.7746120000e-02 -7.3772460000e-01
-4.4030250000e-02 -7.4956070000e-01  -4.2228120000e-02 -7.8610700000e-01
-8.0859560000e-02 -7.9492400000e-01  -1.0052720000e-01 -7.6864960000e-01
-1.0663410000e-01 -7.9531220000e-01  -1.1695480000e-01 -8.0463390000e-01
-1.2151210000e-01 -8.0486660000e-01  -1.2908290000e-01 -8.0174220000e-01
-1.2681940000e-01 -7.8438310000e-01  -1.4403410000e-01 -7.9600180000e-01
-1.5910810000e-01 -8.0340820000e-01  -1.7267830000e-01 -7.9974620000e-01
-1.7475860000e-01 -7.7980330000e-01  -1.5152530000e-01 -7.7203510000e-01
-1.7241700000e-01 -7.5943560000e-01  -1.9227400000e-01 -7.4810710000e-01
-1.9070920000e-01 -7.2627470000e-01  -1.6906440000e-01 -7.1763430000e-01
-1.5040340000e-01 -7.4010370000e-01  -1.4488740000e-01 -7.1051700000e-01
-1.4273230000e-01 -6.7828360000e-01  -1.0431600000e-01 -6.6231880000e-01
-8.3459040000e-02 -7.0382350000e-01  -1.1342600000e-01 -7.3104410000e-01
-1.6927540000e-01 -6.6401780000e-01  -1.6540650000e-01 -6.9444220000e-01
-1.8785490000e-01 -7.0653240000e-01  -2.0808640000e-01 -6.9413920000e-01
-2.0652800000e-01 -6.6366550000e-01  -2.2824320000e-01 -6.8372430000e-01
-2.4506530000e-01 -7.0043350000e-01  -2.6565400000e-01 -6.9409850000e-01
-2.7046160000e-01 -6.7165060000e-01  -2.4433860000e-01 -6.5524350000e-01
-2.7530960000e-01 -6.4669900000e-01  -3.0670170000e-01 -6.4373130000e-01
-3.2346680000e-01 -6.0787670000e-01  -2.8396860000e-01 -5.8364580000e-01
-2.5297590000e-01 -6.1329440000e-01  -2.4958140000e-01 -5.7426290000e-01
-2.4170780000e-01 -5.3914380000e-01  -2.0978030000e-01 -5.3421690000e-01
-1.9138720000e-01 -5.5977090000e-01  -2.1109780000e-01 -5.9300440000e-01
-1.7368080000e-01 -5.8569410000e-01  -1.3778960000e-01 -5.7676060000e-01
-1.0957510000e-01 -6.1059020000e-01  -1.4198580000e-01 -6.4509150000e-01
-1.8102360000e-01 -6.2876320000e-01  -2.8275510000e-01 -7.3950660000e-01
-2.9216030000e-01 -7.2162240000e-01  -2.7944050000e-01 -7.0610030000e-01
-2.5994990000e-01 -7.1210280000e-01  -2.5852840000e-01 -7.3571230000e-01
-2.4201880000e-01 -7.1974270000e-01  -2.2565020000e-01 -7.0484940000e-01
-2.0600530000e-01 -7.1463140000e-01  -2.0762650000e-01 -7.3615090000e-01
-2.3135050000e-01 -7.4369350000e-01  -2.1073450000e-01 -7.5635570000e-01
-1.9089140000e-01 -7.6819360000e-01  -1.9229040000e-01 -7.9245520000e-01
-2.2079160000e-01 -7.9700110000e-01  -2.3273520000e-01 -7.7310090000e-01
-2.4376080000e-01 -7.9484040000e-01  -2.5720060000e-01 -8.0385670000e-01
-2.6714580000e-01 -8.0192790000e-01  -2.7149350000e-01 -7.9006150000e-01
-2.5913050000e-01 -7.7759840000e-01  -2.7665860000e-01 -7.7815670000e-01
-2.9013970000e-01 -7.8100090000e-01  -3.0159860000e-01 -7.7157460000e-01
-2.9379460000e-01 -7.5375750000e-01  -2.7284630000e-01 -7.5796890000e-01
-2.9284140000e-01 -7.9031750000e-01  -2.8253490000e-01 -7.8848230000e-01
-2.7844170000e-01 -7.9957040000e-01  -2.8870360000e-01 -8.0339950000e-01
-2.9403120000e-01 -7.9902170000e-01  -2.9383900000e-01 -8.0407680000e-01
-2.9541260000e-01 -8.0570300000e-01  -2.9607320000e-01 -8.0574760000e-01
-2.9708170000e-01 -8.0537760000e-01  -2.9723470000e-01 -8.0310470000e-01
-2.9876840000e-01 -8.0497360000e-01  -2.9982420000e-01 -8.0575960000e-01
-3.0032120000e-01 -8.0577520000e-01  -3.0122070000e-01 -8.0536610000e-01
-3.0055540000e-01 -8.0323850000e-01  -3.0326220000e-01 -8.0437700000e-01
-3.0579940000e-01 -8.0545610000e-01  -3.0826890000e-01 -8.0473590000e-01
-3.0846420000e-01 -8.0081810000e-01  -3.0366560000e-01 -8.0014660000e-01
-3.0730230000e-01 -7.9633910000e-01  -3.1261080000e-01 -7.9270380000e-01
-3.1206020000e-01 -7.8313320000e-01  -2.9991460000e-01 -7.8456160000e-01
-3.0027500000e-01 -7.9416240000e-01  -3.1727710000e-01 -7.9615410000e-01
-3.1193260000e-01 -7.9813850000e-01  -3.1205730000e-01 -8.0328840000e-01
-3.1725060000e-01 -8.0445470000e-01  -3.2012630000e-01 -8.0119490000e-01
-3.2049210000e-01 -8.0464510000e-01  -3.2163190000e-01 -8.0575430000e-01
-3.2211770000e-01 -8.0578420000e-01  -3.2287980000e-01 -8.0549470000e-01
-3.2290000000e-01 -8.0373320000e-01  -3.2421600000e-01 -8.0513720000e-01
-3.2511030000e-01 -8.0577850000e-01  -3.2553960000e-01 -8.0578990000e-01
-3.2633520000e-01 -8.0541680000e-01  -3.2563560000e-01 -8.0356230000e-01
-3.2822610000e-01 -8.0440730000e-01  -3.3088230000e-01 -8.0541580000e-01
-3.3371560000e-01 -8.0447910000e-01  -3.3327010000e-01 -7.9972900000e-01
-3.2802280000e-01 -8.0024250000e-01  -3.3034370000e-01 -7.9526570000e-01
-3.3365520000e-01 -7.8831790000e-01  -3.2543460000e-01 -7.8086280000e-01
-3.1889520000e-01 -7.8996210000e-01  -3.2337960000e-01 -7.9615060000e-01
-3.4216070000e-01 -7.8842810000e-01  -3.3645980000e-01 -7.9503280000e-01
-3.3862560000e-01 -8.0205240000e-01  -3.4779550000e-01 -8.0290650000e-01
-3.5207320000e-01 -7.9416470000e-01  -3.5554890000e-01 -8.0237090000e-01
-3.5922230000e-01 -8.0543780000e-01  -3.6089110000e-01 -8.0550870000e-01
-3.6377740000e-01 -8.0425670000e-01  -3.6230030000e-01 -7.9758150000e-01
-3.6990140000e-01 -8.0154820000e-01  -3.7700350000e-01 -8.0467420000e-01
-3.8394530000e-01 -8.0257560000e-01  -3.8384410000e-01 -7.9168940000e-01
-3.7158720000e-01 -7.9032360000e-01  -3.7981670000e-01 -7.8133200000e-01
-3.8812100000e-01 -7.7113590000e-01  -3.8115030000e-01 -7.5979360000e-01
-3.6825100000e-01 -7.6234260000e-01  -3.6601090000e-01 -7.7660770000e-01
-3.5662950000e-01 -7.6646660000e-01  -3.4582170000e-01 -7.5643930000e-01
-3.3087040000e-01 -7.6509760000e-01  -3.3739980000e-01 -7.7958070000e-01
-3.5086290000e-01 -7.8064880000e-01  -3.4873750000e-01 -7.4166020000e-01
-3.5919570000e-01 -7.5405840000e-01  -3.7300050000e-01 -7.5110270000e-01
-3.7759920000e-01 -7.3695130000e-01  -3.6230360000e-01 -7.2407360000e-01
-3.8252090000e-01 -7.2192250000e-01  -4.0074820000e-01 -7.2204310000e-01
-4.0948420000e-01 -7.0593790000e-01  -3.9726810000e-01 -6.8983130000e-01
-3.7369490000e-01 -6.9893110000e-01  -3.8189800000e-01 -6.7400330000e-01
-3.9410120000e-01 -6.4806960000e-01  -3.7042260000e-01 -6.1873590000e-01
-3.3684400000e-01 -6.4375810000e-01  -3.4915080000e-01 -6.7657580000e-01
-3.2011330000e-01 -6.6745060000e-01  -2.9242710000e-01 -6.6570370000e-01
-2.8372690000e-01 -6.8804410000e-01  -2.9806810000e-01 -7.0422110000e-01
-3.2319170000e-01 -6.9842880000e-01  -3.1067530000e-01 -7.1933380000e-01
-3.0056660000e-01 -7.3751850000e-01  -3.1288530000e-01 -7.5453880000e-01
-3.3301750000e-01 -7.4763940000e-01  -3.3572860000e-01 -7.2524100000e-01
-4.5118960000e-01 -7.2867780000e-01  -4.4682550000e-01 -7.0712150000e-01
-4.2642440000e-01 -7.0463290000e-01  -4.1683030000e-01 -7.2109130000e-01
-4.2871090000e-01 -7.3914830000e-01  -4.0885140000e-01 -7.3577040000e-01
-3.9172450000e-01 -7.3450170000e-01  -3.8510600000e-01 -7.4830780000e-01
-3.9366050000e-01 -7.5988610000e-01  -4.1170760000e-01 -7.5674740000e-01
-4.0138170000e-01 -7.7161250000e-01  -3.9142530000e-01 -7.8302390000e-01
-3.9504070000e-01 -7.9755260000e-01  -4.1493600000e-01 -7.9905680000e-01
-4.2129550000e-01 -7.7863930000e-01  -4.3410540000e-01 -7.9567350000e-01
-4.4766120000e-01 -8.0376530000e-01  -4.5852200000e-01 -8.0132540000e-01
-4.6216560000e-01 -7.8697820000e-01  -4.4594990000e-01 -7.7641340000e-01
-4.6490910000e-01 -7.7163040000e-01  -4.8276480000e-01 -7.6976660000e-01
-4.9266780000e-01 -7.5065600000e-01  -4.7123780000e-01 -7.3523420000e-01
-4.5231890000e-01 -7.5165240000e-01  -4.9028990000e-01 -7.8178150000e-01
-4.7542330000e-01 -7.8241960000e-01  -4.7218180000e-01 -7.9765820000e-01
-4.8665110000e-01 -8.0218180000e-01  -4.9438370000e-01 -7.9486370000e-01
-4.9460100000e-01 -8.0297340000e-01  -4.9719300000e-01 -8.0557970000e-01
-4.9828860000e-01 -8.0565070000e-01  -4.9998260000e-01 -8.0501890000e-01
-5.0014130000e-01 -8.0115580000e-01  -5.0287930000e-01 -8.0428670000e-01
-5.0475170000e-01 -8.0565560000e-01  -5.0564170000e-01 -8.0568150000e-01
-5.0727130000e-01 -8.0492900000e-01  -5.0595300000e-01 -8.0110220000e-01
-5.1105600000e-01 -8.0300200000e-01  -5.1606350000e-01 -8.0501210000e-01
-5.2118090000e-01 -8.0341150000e-01  -5.2093720000e-01 -7.9503700000e-01
-5.1122770000e-01 -7.9490810000e-01  -5.1695950000e-01 -7.8638650000e-01
-5.2534480000e-01 -7.7606750000e-01  -5.1667380000e-01 -7.5937840000e-01
-4.9841130000e-01 -7.7000310000e-01  -5.0339900000e-01 -7.8524720000e-01
-5.3818220000e-01 -7.7963560000e-01  -5.2739460000e-01 -7.8790080000e-01
-5.2957810000e-01 -7.9968100000e-01  -5.4336710000e-01 -8.0166100000e-01
-5.5033380000e-01 -7.9026130000e-01  -5.5383250000e-01 -8.0139020000e-01
-5.5834300000e-01 -8.0533870000e-01  -5.6035210000e-01 -8.0543540000e-01
-5.6373100000e-01 -8.0402230000e-01  -5.6252260000e-01 -7.9618740000e-01
-5.7053290000e-01 -8.0135860000e-01  -5.7735050000e-01 -8.0480530000e-01
-5.8296780000e-01 -8.0363970000e-01  -5.8528250000e-01 -7.9470810000e-01
-5.7411800000e-01 -7.8987670000e-01  -5.8565250000e-01 -7.8274300000e-01
-5.9392230000e-01 -7.7435070000e-01  -5.9435870000e-01 -7.6437680000e-01
-5.8090090000e-01 -7.5901930000e-01  -5.7212760000e-01 -7.7325950000e-01
-5.6593170000e-01 -7.5784980000e-01  -5.5873840000e-01 -7.4062330000e-01
-5.3554700000e-01 -7.4151640000e-01  -5.3526720000e-01 -7.6487350000e-01
-5.5276940000e-01 -7.7237020000e-01  -5.6998790000e-01 -7.2616710000e-01
-5.7514890000e-01 -7.4505870000e-01  -5.9342770000e-01 -7.4898570000e-01
-6.0343740000e-01 -7.2965840000e-01  -5.9021270000e-01 -7.1429080000e-01
-6.0797330000e-01 -7.1419350000e-01  -6.1596830000e-01 -7.0936160000e-01
-6.1708740000e-01 -7.0639160000e-01  -6.1657450000e-01 -7.0055640000e-01
-6.0406370000e-01 -6.9888640000e-01  -6.1558010000e-01 -6.8855410000e-01
-6.2468300000e-01 -6.7866440000e-01  -6.2504680000e-01 -6.6657110000e-01
-6.0822510000e-01 -6.6063190000e-01  -5.9844250000e-01 -6.7875410000e-01
-5.9018300000e-01 -6.6023060000e-01  -5.8085250000e-01 -6.4173370000e-01
-5.6068200000e-01 -6.4390420000e-01  -5.5488990000e-01 -6.6316200000e-01
-5.7336220000e-01 -6.7735940000e-01  -5.5110710000e-01 -6.8239830000e-01
-5.2825350000e-01 -6.8747020000e-01  -5.2344890000e-01 -7.1448810000e-01
-5.5009660000e-01 -7.2312970000e-01  -5.6645830000e-01 -7.0379640000e-01
-5.1323520000e-01 -6.7109490000e-01  -5.3684750000e-01 -6.6856780000e-01
-5.4355770000e-01 -6.4859640000e-01  -5.2896220000e-01 -6.3307740000e-01
-5.0342120000e-01 -6.4240010000e-01  -5.1403840000e-01 -6.1756580000e-01
-5.2483050000e-01 -5.9578220000e-01  -5.1016890000e-01 -5.7671640000e-01
-4.8527980000e-01 -5.8267040000e-01  -4.8269350000e-01 -6.1387410000e-01
-4.6012410000e-01 -5.9158580000e-01  -4.3814640000e-01 -5.6658140000e-01
-3.9844120000e-01 -5.7887410000e-01  -4.0815830000e-01 -6.2167250000e-01
-4.4555880000e-01 -6.2663200000e-01  -4.2105960000e-01 -6.4858950000e-01
-4.0465870000e-01 -6.7052540000e-01  -4.1646130000e-01 -6.8985510000e-01
-4.3802540000e-01 -6.8967120000e-01  -4.5043600000e-01 -6.6448310000e-01
-4.5971280000e-01 -6.9064260000e-01  -4.6595650000e-01 -7.1434550000e-01
-4.9242710000e-01 -7.2111050000e-01  -5.0605650000e-01 -6.9398010000e-01
-4.8508460000e-01 -6.7192070000e-01  -5.5825190000e-01 -5.3603050000e-01
-5.2922530000e-01 -5.3199580000e-01  -5.1691820000e-01 -5.5578810000e-01
-5.3226210000e-01 -5.7559100000e-01  -5.6106290000e-01 -5.6978920000e-01
-5.4633920000e-01 -5.9334930000e-01  -5.3487510000e-01 -6.1408420000e-01
-5.4818120000e-01 -6.3108650000e-01  -5.6885870000e-01 -6.2712250000e-01
-5.7513290000e-01 -6.0120420000e-01  -5.8947130000e-01 -6.2353760000e-01
-5.9984810000e-01 -6.4426920000e-01  -6.2325990000e-01 -6.4706950000e-01
-6.3544060000e-01 -6.1888430000e-01  -6.0992830000e-01 -5.9979330000e-01
-6.3978830000e-01 -5.9030240000e-01  -6.5722160000e-01 -5.7520670000e-01
-6.5874320000e-01 -5.5914400000e-01  -6.4069580000e-01 -5.4769600000e-01
-6.1888330000e-01 -5.6498110000e-01  -6.2104140000e-01 -5.3709640000e-01
-6.2626520000e-01 -5.1206890000e-01  -6.0448360000e-01 -4.9082210000e-01
-5.7535920000e-01 -5.1295750000e-01  -5.8864760000e-01 -5.4496200000e-01
-6.4591500000e-01 -5.0687670000e-01  -6.4035230000e-01 -5.2754640000e-01
-6.5981300000e-01 -5.3873280000e-01  -6.7248010000e-01 -5.2083000000e-01
-6.6577910000e-01 -5.0688720000e-01  -6.7712560000e-01 -5.1018500000e-01
-6.8190770000e-01 -5.0775890000e-01  -6.8250080000e-01 -5.0626830000e-01
-6.8238640000e-01 -5.0362580000e-01  -6.7707620000e-01 -5.0166930000e-01
-6.8267300000e-01 -4.9925580000e-01  -6.8543350000e-01 -4.9725910000e-01
-6.8587410000e-01 -4.9602570000e-01  -6.8556040000e-01 -4.9339950000e-01
-6.7959950000e-01 -4.9352250000e-01  -6.8456820000e-01 -4.8720200000e-01
-6.8969050000e-01 -4.8103780000e-01  -6.8975680000e-01 -4.7301030000e-01
-6.7765340000e-01 -4.6960620000e-01  -6.7322340000e-01 -4.8335510000e-01
-6.6361070000e-01 -4.7158630000e-01  -6.5227960000e-01 -4.5546970000e-01
-6.2555320000e-01 -4.6139410000e-01  -6.3310050000e-01 -4.9076240000e-01
-6.5630150000e-01 -4.9018410000e-01  -6.6233850000e-01 -4.3821310000e-01
-6.7013080000e-01 -4.5725080000e-01  -6.8820170000e-01 -4.5918110000e-01
-6.9746630000e-01 -4.3965430000e-01  -6.8304910000e-01 -4.2397890000e-01
-7.0198650000e-01 -4.2336010000e-01  -7.1052300000e-01 -4.1813410000e-01
-7.1172850000e-01 -4.1492280000e-01  -7.1115580000e-01 -4.0857690000e-01
-6.9748920000e-01 -4.0690930000e-01  -7.0998220000e-01 -3.9538710000e-01
-7.2005550000e-01 -3.8433380000e-01  -7.2041470000e-01 -3.7069130000e-01
-7.0124320000e-01 -3.6424400000e-01  -6.9077550000e-01 -3.8484770000e-01
-6.8088830000e-01 -3.6443260000e-01  -6.6946210000e-01 -3.4412540000e-01
-6.4717400000e-01 -3.4775560000e-01  -6.4172150000e-01 -3.6926670000e-01
-6.6284820000e-01 -3.8425010000e-01  -6.3822830000e-01 -3.9083210000e-01
-6.1248970000e-01 -3.9713250000e-01  -6.0729570000e-01 -4.2926610000e-01
-6.3988830000e-01 -4.3719760000e-01  -6.5653960000e-01 -4.1399050000e-01
-5.9584580000e-01 -3.7848490000e-01  -6.2194450000e-01 -3.7580380000e-01
-6.2870570000e-01 -3.5375630000e-01  -6.1247040000e-01 -3.3782340000e-01
-5.8635460000e-01 -3.4784440000e-01  -5.9650270000e-01 -3.2276930000e-01
-6.0515290000e-01 -3.0021890000e-01  -5.8820460000e-01 -2.8413830000e-01
-5.6702110000e-01 -2.9309890000e-01  -5.6684080000e-01 -3.2037020000e-01
-5.4760140000e-01 -3.0243960000e-01  -5.3017830000e-01 -2.8692400000e-01
-5.1025540000e-01 -2.9620640000e-01  -5.1006970000e-01 -3.1815570000e-01
-5.3485260000e-01 -3.2872920000e-01  -5.1071530000e-01 -3.3967200000e-01
-4.8849600000e-01 -3.4907440000e-01  -4.8774200000e-01 -3.7267470000e-01
-5.0979210000e-01 -3.8344890000e-01  -5.3106800000e-01 -3.6255080000e-01
-5.3320720000e-01 -3.9236620000e-01  -5.3377880000e-01 -4.2282750000e-01
-5.6728040000e-01 -4.3706380000e-01  -5.8655830000e-01 -4.0421550000e-01
-5.6505060000e-01 -3.7719710000e-01  -5.0896740000e-01 -4.3686770000e-01
-5.1233470000e-01 -4.0700140000e-01  -4.8962770000e-01 -3.9399650000e-01
-4.6761730000e-01 -4.0739830000e-01  -4.7146470000e-01 -4.4015870000e-01
-4.4544030000e-01 -4.2053760000e-01  -4.2339330000e-01 -4.0199070000e-01
-3.9738540000e-01 -4.1340960000e-01  -3.9715740000e-01 -4.4351700000e-01
-4.3197510000e-01 -4.5564320000e-01  -3.9990940000e-01 -4.7443990000e-01
-3.6606020000e-01 -4.9147130000e-01  -3.6772360000e-01 -5.3696020000e-01
-4.1565160000e-01 -5.4115310000e-01  -4.3445340000e-01 -5.0195290000e-01
-4.4986020000e-01 -5.3747460000e-01  -4.6720620000e-01 -5.6507560000e-01
-4.9468600000e-01 -5.6062910000e-01  -5.0421030000e-01 -5.3509700000e-01
-4.7954420000e-01 -5.1017680000e-01  -5.1438400000e-01 -5.0932120000e-01
-5.4633940000e-01 -5.1112510000e-01  -5.6534210000e-01 -4.7983230000e-01
-5.3529560000e-01 -4.5293720000e-01  -5.0099760000e-01 -4.7154680000e-01
-3.6431450000e-01 -3.4522140000e-01  -3.5069430000e-01 -3.7872110000e-01
-3.7516180000e-01 -3.9977100000e-01  -4.0238320000e-01 -3.8772110000e-01
-4.0445800000e-01 -3.5313900000e-01  -4.2666690000e-01 -3.7680690000e-01
-4.4713790000e-01 -3.9552170000e-01  -4.7009270000e-01 -3.8446990000e-01
-4.7013400000e-01 -3.6003040000e-01  -4.4333620000e-01 -3.4712490000e-01
-4.7015970000e-01 -3.3718840000e-01  -4.9272690000e-01 -3.2850390000e-01
-4.9409190000e-01 -3.0626650000e-01  -4.7478650000e-01 -2.9488050000e-01
-4.5189390000e-01 -3.1180250000e-01  -4.5531500000e-01 -2.8370950000e-01
-4.5985790000e-01 -2.5905540000e-01  -4.4051860000e-01 -2.4436960000e-01
-4.1736180000e-01 -2.5616960000e-01  -4.2245880000e-01 -2.8869110000e-01
-3.9345130000e-01 -2.7097440000e-01  -3.6551990000e-01 -2.4860350000e-01
-3.2345340000e-01 -2.6769870000e-01  -3.4176130000e-01 -3.1600510000e-01
-3.8624720000e-01 -3.1250960000e-01  -3.7369790000e-01 -2.1679450000e-01
-3.9546580000e-01 -2.4213300000e-01  -4.2183830000e-01 -2.3234260000e-01
-4.2582850000e-01 -2.0642000000e-01  -3.9956590000e-01 -1.8694390000e-01
-4.3055420000e-01 -1.8205230000e-01  -4.5667870000e-01 -1.7769780000e-01
-4.6312020000e-01 -1.5349540000e-01  -4.4385300000e-01 -1.3729930000e-01
-4.1634540000e-01 -1.5127930000e-01  -4.2472250000e-01 -1.2233340000e-01
-4.3230280000e-01 -9.6861610000e-02  -4.1324310000e-01 -8.0340230000e-02
-3.8975060000e-01 -9.0548270000e-02  -3.9073960000e-01 -1.2234850000e-01
-3.6671470000e-01 -1.0177610000e-01  -3.4550650000e-01 -8.1745000000e-02
-3.1844880000e-01 -9.2189020000e-02  -3.1703080000e-01 -1.2292350000e-01
-3.5193400000e-01 -1.3606200000e-01  -3.1923040000e-01 -1.5484690000e-01
-2.8325850000e-01 -1.7261370000e-01  -2.8557630000e-01 -2.2270590000e-01
-3.3844060000e-01 -2.2423430000e-01  -3.5510320000e-01 -1.8225900000e-01
-2.5261020000e-01 -1.4963300000e-01  -2.9071370000e-01 -1.3815980000e-01
-2.9462910000e-01 -1.0471670000e-01  -2.6833880000e-01 -8.4979260000e-02
-2.3020030000e-01 -1.0474510000e-01  -2.4272030000e-01 -6.4127240000e-02
-2.5580930000e-01 -3.0062710000e-02  -2.3228660000e-01 -3.5321160000e-03
-1.9568270000e-01 -1.4118100000e-02  -1.9378140000e-01 -6.2133180000e-02
-1.5778480000e-01 -2.8568740000e-02  -1.2481360000e-01 9.5404150000e-03
-6.4305790000e-02 -5.9444050000e-03  -7.4470660000e-02 -7.3832970000e-02
-1.3497770000e-01 -8.4040470000e-02  -9.3473370000e-02 -1.1965800000e-01
-6.2922440000e-02 -1.5628870000e-01  -8.2561670000e-02 -1.9237640000e-01
-1.2211850000e-01 -1.9266080000e-01  -1.4372590000e-01 -1.4755830000e-01
-1.6175690000e-01 -1.9354270000e-01  -1.7560940000e-01 -2.3724270000e-01
-2.2819260000e-01 -2.4610650000e-01  -2.4650360000e-01 -1.9136430000e-01
-2.0465970000e-01 -1.5715160000e-01  -1.4798460000e-01 -2.6591140000e-01
-1.3882790000e-01 -2.2480970000e-01  -1.0049450000e-01 -2.2028620000e-01
-8.1807080000e-02 -2.5139670000e-01  -1.0457570000e-01 -2.8633600000e-01
-6.6005870000e-02 -2.7985000000e-01  -3.1766090000e-02 -2.7707270000e-01
-1.8052210000e-02 -3.0590530000e-01  -3.7359060000e-02 -3.2916670000e-01
-7.2367930000e-02 -3.2062150000e-01  -5.5149010000e-02 -3.5033690000e-01
-4.1495970000e-02 -3.7582570000e-01  -5.7612230000e-02 -3.9661190000e-01
-8.3353330000e-02 -3.9192770000e-01  -9.1081410000e-02 -3.5951640000e-01
-1.0901660000e-01 -3.8725110000e-01  -1.2327950000e-01 -4.1244530000e-01
-1.5120650000e-01 -4.1114510000e-01  -1.6295680000e-01 -3.8368490000e-01
-1.3465840000e-01 -3.5855830000e-01  -1.7322430000e-01 -3.5330630000e-01
-2.1337250000e-01 -3.5267650000e-01  -2.3555130000e-01 -3.0775250000e-01
-1.8807970000e-01 -2.7781830000e-01  -1.5020620000e-01 -3.1115460000e-01
-2.2971900000e-01 -3.8544010000e-01  -1.9239410000e-01 -3.7991900000e-01
-1.7658460000e-01 -4.0795100000e-01  -1.9243960000e-01 -4.3383500000e-01
-2.3066030000e-01 -4.3084520000e-01  -2.0673760000e-01 -4.5936140000e-01
-1.8589260000e-01 -4.8300060000e-01  -1.9732270000e-01 -5.1060340000e-01
-2.2836790000e-01 -5.1255150000e-01  -2.4444060000e-01 -4.7671420000e-01
-2.6060480000e-01 -5.1298600000e-01  -2.7286590000e-01 -5.4947040000e-01
-3.1760000000e-01 -5.5653170000e-01  -3.3308970000e-01 -5.0895380000e-01
-2.9516750000e-01 -4.8060800000e-01  -3.3722460000e-01 -4.7124520000e-01
-3.7228410000e-01 -4.5900120000e-01  -3.7466220000e-01 -4.2668960000e-01
-3.4772120000e-01 -4.0899760000e-01  -3.1309500000e-01 -4.3176710000e-01
-3.1973660000e-01 -3.9062540000e-01  -3.3016930000e-01 -3.5203400000e-01
-2.9486710000e-01 -3.1867900000e-01  -2.5310640000e-01 -3.5352540000e-01
-2.7143370000e-01 -3.9935000000e-01  -5.5810620000e-01 -4.5052180000e-02
-5.7961120000e-01 -1.7564200000e-02  -5.6326380000e-01 9.3857490000e-03
-5.3319160000e-01 6.3854610000e-03  -5.2123870000e-01 -2.7324370000e-02
-5.0536630000e-01 2.8182050000e-03  -4.8994630000e-01 2.8903360000e-02
-4.6138260000e-01 2.4532060000e-02  -4.5402050000e-01 -2.6231310000e-03
-4.7973830000e-01 -2.3635770000e-02  -4.4825390000e-01 -2.8030010000e-02
-4.2079970000e-01 -3.2989490000e-02  -4.1521290000e-01 -5.8376060000e-02
-4.3523600000e-01 -7.4125790000e-02  -4.6293140000e-01 -5.9483160000e-02
-4.5479520000e-01 -8.8988820000e-02  -4.4714050000e-01 -1.1469210000e-01
-4.6597530000e-01 -1.3169220000e-01  -4.9049880000e-01 -1.2204500000e-01
-4.8969260000e-01 -8.8608070000e-02  -5.1586900000e-01 -1.1051950000e-01
-5.3939960000e-01 -1.3542010000e-01  -5.8020800000e-01 -1.2396640000e-01
-5.7244200000e-01 -7.7160860000e-02  -5.2988200000e-01 -7.1415320000e-02
-5.2853580000e-01 -1.6401530000e-01  -5.1040780000e-01 -1.3812990000e-01
-4.8380280000e-01 -1.4529240000e-01  -4.7833130000e-01 -1.7059030000e-01
-5.0269860000e-01 -1.9021190000e-01  -4.7311880000e-01 -1.9421570000e-01
-4.4745370000e-01 -1.9860830000e-01  -4.4188960000e-01 -2.2283990000e-01
-4.6140340000e-01 -2.3750170000e-01  -4.8674040000e-01 -2.2334990000e-01
-4.8009350000e-01 -2.5041340000e-01  -4.7505970000e-01 -2.7418090000e-01
-4.9349310000e-01 -2.8710990000e-01  -5.1296680000e-01 -2.7648700000e-01
-5.1060980000e-01 -2.4892580000e-01  -5.3194070000e-01 -2.6587570000e-01
-5.5005060000e-01 -2.8160210000e-01  -5.7131900000e-01 -2.7277680000e-01
-5.7277940000e-01 -2.4830210000e-01  -5.4406470000e-01 -2.3672420000e-01
-5.7222160000e-01 -2.2201430000e-01  -6.0310220000e-01 -2.0999180000e-01
-6.0662610000e-01 -1.6818770000e-01  -5.6116840000e-01 -1.6065310000e-01
-5.4290120000e-01 -1.9650540000e-01  -6.2533200000e-01 -2.3110320000e-01
-5.9452240000e-01 -2.3718830000e-01  -5.9002460000e-01 -2.6328640000e-01
-6.0925390000e-01 -2.7893860000e-01  -6.3809640000e-01 -2.6672290000e-01
-6.2676540000e-01 -2.9468480000e-01  -6.1733240000e-01 -3.1766850000e-01
-6.3275150000e-01 -3.3458320000e-01  -6.5503620000e-01 -3.2866910000e-01
-6.5931240000e-01 -2.9905850000e-01  -6.7794170000e-01 -3.2290920000e-01
-6.9111500000e-01 -3.4594640000e-01  -7.1813330000e-01 -3.4835170000e-01
-7.3192930000e-01 -3.1474080000e-01  -6.9977040000e-01 -2.9313340000e-01
-7.3630020000e-01 -2.7875490000e-01  -7.5903500000e-01 -2.5797500000e-01
-7.6072780000e-01 -2.3484140000e-01  -7.3253840000e-01 -2.2010720000e-01
-7.0596910000e-01 -2.4823730000e-01  -7.0168210000e-01 -2.1033910000e-01
-6.9853450000e-01 -1.7291580000e-01  -6.5746140000e-01 -1.5713110000e-01
-6.3480800000e-01 -1.9885020000e-01  -6.6283580000e-01 -2.3093700000e-01
-7.2564200000e-01 -1.5402920000e-01  -7.2647980000e-01 -1.8975260000e-01
-7.6068060000e-01 -2.0275990000e-01  -7.8100390000e-01 -1.6874390000e-01
-7.6209320000e-01 -1.4191960000e-01  -7.8933790000e-01 -1.4435080000e-01
-8.0139270000e-01 -1.3741590000e-01  -8.0302230000e-01 -1.3315360000e-01
-8.0239040000e-01 -1.2498790000e-01  -7.8518140000e-01 -1.2177620000e-01
-8.0155110000e-01 -1.0899450000e-01  -8.1325310000e-01 -9.6947020000e-02
-8.1396390000e-01 -8.2909450000e-02  -7.9563990000e-01 -7.4768000000e-02
-7.8107240000e-01 -9.4463850000e-02  -7.7554550000e-01 -7.0700890000e-02
-7.7090770000e-01 -4.8315130000e-02  -7.4966030000e-01 -4.3056660000e-02
-7.3475420000e-01 -6.0972100000e-02  -7.5035710000e-01 -8.5663380000e-02
-7.2051410000e-01 -8.1766550000e-02  -6.8919240000e-01 -7.3855240000e-02
-6.6213760000e-01 -1.0545800000e-01  -6.9516550000e-01 -1.3811990000e-01
-7.3031420000e-01 -1.1803130000e-01  -6.8382710000e-01 -4.4202880000e-02
-7.1156690000e-01 -5.7284110000e-02  -7.3000230000e-01 -3.9670520000e-02
-7.2446760000e-01 -1.6599540000e-02  -6.9500380000e-01 -8.6647490000e-03
-7.2079130000e-01 5.7890420000e-03  -7.4188100000e-01 1.6624400000e-02
-7.4221830000e-01 3.8162960000e-02  -7.2235470000e-01 4.9672090000e-02
-6.9867820000e-01 2.9897800000e-02  -7.0012250000e-01 6.1993290000e-02
-7.0700080000e-01 9.2766040000e-02  -6.7808180000e-01 1.1979040000e-01
-6.4283120000e-01 8.9713120000e-02  -6.6145130000e-01 5.1075350000e-02
-6.2328120000e-01 5.9908420000e-02  -5.8744790000e-01 6.3272720000e-02
-5.7289590000e-01 3.4430330000e-02  -5.9151540000e-01 9.0408210000e-03
-6.2921330000e-01 1.7516940000e-02  -6.1069820000e-01 -1.5809710000e-02
-5.9111090000e-01 -4.7183550000e-02  -6.1456590000e-01 -8.4471060000e-02
-6.5739420000e-01 -6.4308240000e-02  -6.5392850000e-01 -2.2135360000e-02
-7.9068860000e-01 4.0395210000e-02  -7.7658610000e-01 5.4866610000e-02
-7.5789300000e-01 4.7565960000e-02  -7.5757870000e-01 2.7174460000e-02
-7.7959340000e-01 1.8526780000e-02  -7.5930360000e-01 7.7601260000e-03
-7.4008110000e-01 -3.2050690000e-03  -7.4331360000e-01 -2.4911300000e-02
-7.6428090000e-01 -3.0019390000e-02  -7.7878550000e-01 -9.7873070000e-03
-7.8445720000e-01 -3.3307170000e-02  -7.8958380000e-01 -5.5837140000e-02
-8.1309030000e-01 -6.2003880000e-02  -8.2622110000e-01 -3.6302410000e-02
-8.0718150000e-01 -1.7557820000e-02  -8.3126410000e-01 -1.3789710000e-02
-8.4399220000e-01 -3.7939380000e-03  -8.4523110000e-01 6.2605200000e-03
-8.3528900000e-01 1.4062350000e-02  -8.1961550000e-01 6.1558520000e-03
-8.2556300000e-01 2.2653450000e-02  -8.3243390000e-01 3.4595870000e-02
-8.2701000000e-01 4.8406770000e-02  -8.0765330000e-01 4.6490580000e-02
-8.0518520000e-01 2.5266200000e-02  -8.4212940000e-01 3.4286320000e-02
-8.3719910000e-01 2.5051330000e-02  -8.4647970000e-01 1.7732040000e-02
-8.5329240000e-01 2.6308490000e-02  -8.5077530000e-01 3.2728130000e-02
-8.5552360000e-01 3.0983220000e-02  -8.5755640000e-01 3.1977300000e-02
-8.5780300000e-01 3.2591790000e-02  -8.5776270000e-01 3.3665190000e-02
-8.5564840000e-01 3.4513100000e-02  -8.5789980000e-01 3.5394170000e-02
-8.5897350000e-01 3.6155430000e-02  -8.5914200000e-01 3.6623310000e-02
-8.5903090000e-01 3.7605200000e-02  -8.5680170000e-01 3.7629960000e-02
-8.5872100000e-01 3.9852410000e-02  -8.6053130000e-01 4.1931970000e-02
-8.6060940000e-01 4.4503160000e-02  -8.5694380000e-01 4.5899620000e-02
-8.5482230000e-01 4.1543310000e-02  -8.5232500000e-01 4.6178690000e-02
-8.5050810000e-01 5.2350730000e-02  -8.4123570000e-01 5.4784540000e-02
-8.3884090000e-01 4.2792010000e-02  -8.4808320000e-01 4.0167950000e-02
-8.5523150000e-01 5.5722400000e-02  -8.5546720000e-01 5.0026260000e-02
-8.6040360000e-01 4.8553490000e-02  -8.6311760000e-01 5.3132230000e-02
-8.6090590000e-01 5.6874530000e-02  -8.6430030000e-01 5.6156200000e-02
-8.6570750000e-01 5.6897440000e-02  -8.6588600000e-01 5.7350190000e-02
-8.6584620000e-01 5.8164560000e-02  -8.6417720000e-01 5.8728060000e-02
-8.6591910000e-01 5.9545780000e-02  -8.6680530000e-01 6.0198130000e-02
-8.6694890000e-01 6.0602880000e-02  -8.6683990000e-01 6.1474880000e-02
-8.6485990000e-01 6.1382570000e-02  -8.6646420000e-01 6.3585160000e-02
-8.6824410000e-01 6.5799770000e-02  -8.6822880000e-01 6.8783790000e-02
-8.6357350000e-01 6.9827940000e-02  -8.6244030000e-01 6.4678840000e-02
-8.5842430000e-01 6.8424070000e-02  -8.5283990000e-01 7.3720470000e-02
-8.4320940000e-01 6.8205990000e-02  -8.4984250000e-01 5.9174770000e-02
-8.5711390000e-01 6.1527320000e-02  -8.5557310000e-01 8.1775560000e-02
-8.6009280000e-01 7.4312750000e-02  -8.6743810000e-01 7.4203280000e-02
-8.7108400000e-01 8.2660430000e-02  -8.6409200000e-01 8.9430190000e-02
-8.7297060000e-01 9.0199880000e-02  -8.7702260000e-01 9.2745790000e-02
-8.7760570000e-01 9.4311000000e-02  -8.7730690000e-01 9.7442980000e-02
-8.7050190000e-01 9.8100870000e-02  -8.7662360000e-01 1.0410420000e-01
-8.8179120000e-01 1.0989280000e-01  -8.8194030000e-01 1.1714340000e-01
-8.7155570000e-01 1.2041110000e-01  -8.6646910000e-01 1.0917610000e-01
-8.6046070000e-01 1.1978140000e-01  -8.5332980000e-01 1.3083000000e-01
-8.4038860000e-01 1.2770550000e-01  -8.3882670000e-01 1.1464980000e-01
-8.5170130000e-01 1.0811120000e-01  -8.3915760000e-01 1.0232280000e-01
-8.2628120000e-01 9.5142510000e-02  -8.2989550000e-01 7.8247490000e-02
-8.4568750000e-01 7.9981770000e-02  -8.5086370000e-01 9.2455820000e-02
-8.1312650000e-01 1.0248260000e-01  -8.2814970000e-01 1.0859770000e-01
-8.2960460000e-01 1.2264030000e-01  -8.1756690000e-01 1.3138690000e-01
-8.0059280000e-01 1.2081940000e-01  -8.0479450000e-01 1.4071190000e-01
-8.1054180000e-01 1.5800980000e-01  -7.9792440000e-01 1.7129500000e-01
-7.7883120000e-01 1.6465400000e-01  -7.8020110000e-01 1.3942260000e-01
-7.5902820000e-01 1.5492730000e-01  -7.3813480000e-01 1.7454720000e-01
-7.0291970000e-01 1.6109220000e-01  -7.1634080000e-01 1.2142480000e-01
-7.5135530000e-01 1.2298800000e-01  -7.3370370000e-01 9.8191550000e-02
-7.2348660000e-01 7.2400300000e-02  -7.4204520000e-01 5.7222280000e-02
-7.6186200000e-01 6.5862570000e-02  -7.6411690000e-01 9.1546500000e-02
-7.8013090000e-01 7.3182610000e-02  -7.9430180000e-01 5.7949250000e-02
-8.1429580000e-01 6.4405520000e-02  -8.1395530000e-01 8.5684330000e-02
-7.9349090000e-01 9.5184250000e-02  -8.3243910000e-01 2.0393200000e-01
-8.1058920000e-01 2.0644290000e-01  -8.0191810000e-01 1.8780930000e-01
-8.1460630000e-01 1.7359900000e-01  -8.3545080000e-01 1.7931800000e-01
-8.2610130000e-01 1.6147440000e-01  -8.1960210000e-01 1.4557780000e-01
-8.3068730000e-01 1.3501690000e-01  -8.4434250000e-01 1.3957480000e-01
-8.4693420000e-01 1.5770860000e-01  -8.5788080000e-01 1.4329450000e-01
-8.6565700000e-01 1.3029900000e-01  -8.8059170000e-01 1.2924770000e-01
-8.8817040000e-01 1.4770440000e-01  -8.7071740000e-01 1.6006200000e-01
-8.9087640000e-01 1.6698110000e-01  -9.0276110000e-01 1.7737290000e-01
-9.0379680000e-01 1.8845610000e-01  -8.9127780000e-01 1.9635490000e-01
-8.7621910000e-01 1.8419750000e-01  -8.7752900000e-01 2.0370690000e-01
-8.8127410000e-01 2.2126470000e-01  -8.6615910000e-01 2.3658850000e-01
-8.4486990000e-01 2.2097300000e-01  -8.5463820000e-01 1.9790650000e-01
-8.9502630000e-01 2.2470860000e-01  -8.9103920000e-01 2.1037240000e-01
-9.0453030000e-01 2.0258050000e-01  -9.1330370000e-01 2.1494370000e-01
-9.0873340000e-01 2.2455930000e-01  -9.1651330000e-01 2.2225990000e-01
-9.1979300000e-01 2.2391960000e-01  -9.2019910000e-01 2.2493970000e-01
-9.2012160000e-01 2.2674600000e-01  -9.1649670000e-01 2.2809080000e-01
-9.2032050000e-01 2.2972720000e-01  -9.2220100000e-01 2.3108500000e-01
-9.2250070000e-01 2.3192340000e-01  -9.2228850000e-01 2.3370580000e-01
-9.1824160000e-01 2.3363460000e-01  -9.2162540000e-01 2.3790080000e-01
-9.2508460000e-01 2.4204200000e-01  -9.2514360000e-01 2.4740350000e-01
-9.1710380000e-01 2.4975960000e-01  -9.1398070000e-01 2.4056520000e-01
-9.0764740000e-01 2.4864980000e-01  -9.0042470000e-01 2.5981350000e-01
-8.8187300000e-01 2.5672410000e-01  -8.8633420000e-01 2.3607220000e-01
-9.0237350000e-01 2.3610510000e-01  -9.0778520000e-01 2.7092000000e-01
-9.1231230000e-01 2.5810620000e-01  -9.2419060000e-01 2.5654260000e-01
-9.3033490000e-01 2.6904490000e-01  -9.2164590000e-01 2.7919330000e-01
-9.3331130000e-01 2.7908170000e-01  -9.3846030000e-01 2.8215130000e-01
-9.3917310000e-01 2.8403210000e-01  -9.3887340000e-01 2.8768240000e-01
-9.3104860000e-01 2.8895420000e-01  -9.3844190000e-01 2.9497450000e-01
-9.4382670000e-01 3.0039330000e-01  -9.4445410000e-01 3.0609590000e-01
-9.3667480000e-01 3.1105740000e-01  -9.2862990000e-01 3.0193230000e-01
-9.2540980000e-01 3.1510680000e-01  -9.1998360000e-01 3.2556510000e-01
-9.1063270000e-01 3.2906230000e-01  -9.0137880000e-01 3.1791870000e-01
-9.1221090000e-01 3.0517430000e-01  -8.9564080000e-01 3.0404360000e-01
-8.7703450000e-01 3.0252560000e-01  -8.7071740000e-01 2.8019330000e-01
-8.9284480000e-01 2.7270940000e-01  -9.0538310000e-01 2.8703840000e-01
-8.6676220000e-01 3.1769180000e-01  -8.8632400000e-01 3.1676230000e-01
-8.9570730000e-01 3.3293280000e-01  -8.8041920000e-01 3.4842520000e-01
-8.6171710000e-01 3.4059650000e-01  -8.6711280000e-01 3.5751790000e-01
-8.6498810000e-01 3.6661480000e-01  -8.6250930000e-01 3.6859690000e-01
-8.5680110000e-01 3.6991240000e-01  -8.5134690000e-01 3.5852990000e-01
-8.4507910000e-01 3.7267570000e-01  -8.3848630000e-01 3.8438920000e-01
-8.2709720000e-01 3.8847250000e-01  -8.1625050000e-01 3.7430940000e-01
-8.3046280000e-01 3.5940510000e-01  -8.1029360000e-01 3.5727410000e-01
-7.8981870000e-01 3.5411620000e-01  -7.8564980000e-01 3.3426210000e-01
-8.0217520000e-01 3.2280250000e-01  -8.2138610000e-01 3.3598330000e-01
-8.1930100000e-01 3.1326050000e-01  -8.1706260000e-01 2.8995820000e-01
-8.4127340000e-01 2.7703960000e-01  -8.5772670000e-01 2.9971270000e-01
-8.4439560000e-01 3.2124800000e-01  -7.9684780000e-01 2.8073510000e-01
-8.0174100000e-01 3.0397270000e-01  -7.8482070000e-01 3.1652600000e-01
-7.6555100000e-01 3.0744040000e-01  -7.6652470000e-01 2.8026870000e-01
-7.4618680000e-01 2.9804040000e-01  -7.2880440000e-01 3.1503590000e-01
-7.0614100000e-01 3.0698360000e-01  -7.0411240000e-01 2.8147270000e-01
-7.3298960000e-01 2.6937060000e-01  -7.0481780000e-01 2.5479330000e-01
-6.7424580000e-01 2.4161800000e-01  -6.7366710000e-01 2.0005750000e-01
-7.1737360000e-01 1.9607350000e-01  -7.3364780000e-01 2.3011090000e-01
-7.4695990000e-01 2.0002550000e-01  -7.6275400000e-01 1.7764880000e-01
-7.8478480000e-01 1.8290050000e-01  -7.9127360000e-01 2.0346600000e-01
-7.7115340000e-01 2.2305270000e-01  -7.9889930000e-01 2.2379170000e-01
-8.2337150000e-01 2.2240510000e-01  -8.3798530000e-01 2.4548970000e-01
-8.1639450000e-01 2.6683590000e-01  -7.8893400000e-01 2.5370720000e-01
-6.8230490000e-01 3.6528610000e-01  -6.6949790000e-01 3.3892690000e-01
-6.8832270000e-01 3.1986980000e-01  -7.1189780000e-01 3.2834330000e-01
-7.1528010000e-01 3.5752730000e-01  -7.3313710000e-01 3.3624370000e-01
-7.4931460000e-01 3.1893330000e-01  -7.6959640000e-01 3.2633410000e-01
-7.7221630000e-01 3.4722450000e-01  -7.4950540000e-01 3.6120100000e-01
-7.7517640000e-01 3.6793620000e-01  -7.9810000000e-01 3.7139870000e-01
-8.0799800000e-01 3.9279940000e-01  -7.8495620000e-01 4.1309360000e-01
-7.5891590000e-01 3.9472940000e-01  -7.5911680000e-01 4.2606090000e-01
-7.5014710000e-01 4.4730570000e-01  -7.3534080000e-01 4.5371640000e-01
-7.1887610000e-01 4.4009010000e-01  -7.2857480000e-01 4.1400380000e-01
-7.0272170000e-01 4.2467310000e-01  -6.8053340000e-01 4.3737530000e-01
-6.5359560000e-01 4.2322540000e-01  -6.6564770000e-01 3.8868600000e-01
-7.0019210000e-01 3.9143420000e-01  -6.8166750000e-01 4.5766790000e-01
-6.9960660000e-01 4.4599000000e-01  -7.1625930000e-01 4.6104140000e-01
-7.0314710000e-01 4.7862080000e-01  -6.8781580000e-01 4.7655660000e-01
-6.9445850000e-01 4.8632860000e-01  -6.9362890000e-01 4.9162640000e-01
-6.9239450000e-01 4.9265100000e-01  -6.8984600000e-01 4.9335880000e-01
-6.8634420000e-01 4.8891310000e-01  -6.8577840000e-01 4.9498180000e-01
-6.8473250000e-01 4.9822420000e-01  -6.8369560000e-01 4.9902430000e-01
-6.8110110000e-01 4.9953750000e-01  -6.7937590000e-01 4.9383040000e-01
-6.7490020000e-01 5.0050890000e-01  -6.7062070000e-01 5.0728540000e-01
-6.6300670000e-01 5.0982920000e-01  -6.5602890000e-01 4.9937000000e-01
-6.6773590000e-01 4.9090830000e-01  -6.5357250000e-01 4.8540280000e-01
-6.3474340000e-01 4.7960650000e-01  -6.3211880000e-01 4.5235760000e-01
-6.6238200000e-01 4.5046010000e-01  -6.6900140000e-01 4.7270440000e-01
-6.2143970000e-01 4.9450580000e-01  -6.4195360000e-01 4.9603380000e-01
-6.4937360000e-01 5.1262380000e-01  -6.3366540000e-01 5.2746910000e-01
-6.1430210000e-01 5.1860160000e-01  -6.1956540000e-01 5.3680340000e-01
-6.1723300000e-01 5.4653690000e-01  -6.1455140000e-01 5.4867580000e-01
-6.0833900000e-01 5.5009220000e-01  -6.0253000000e-01 5.3760970000e-01
-5.9543220000e-01 5.5305170000e-01  -5.8803210000e-01 5.6604810000e-01
-5.7516820000e-01 5.7060500000e-01  -5.6311270000e-01 5.5436400000e-01
-5.7947320000e-01 5.3804230000e-01  -5.5700200000e-01 5.3494730000e-01
-5.3415790000e-01 5.3035540000e-01  -5.3072310000e-01 5.0803650000e-01
-5.4949650000e-01 4.9620370000e-01  -5.7027510000e-01 5.1166630000e-01
-5.6892700000e-01 4.8621730000e-01  -5.6696540000e-01 4.5979160000e-01
-5.9592130000e-01 4.4492180000e-01  -6.1353640000e-01 4.7346810000e-01
-5.9661080000e-01 4.9647590000e-01  -5.4408730000e-01 4.4972460000e-01
-5.4960230000e-01 4.7537450000e-01  -5.3072310000e-01 4.8861780000e-01
-5.1055320000e-01 4.7810050000e-01  -5.1201340000e-01 4.5016640000e-01
-4.9130160000e-01 4.6756630000e-01  -4.7252780000e-01 4.8276160000e-01
-4.5199700000e-01 4.7161190000e-01  -4.5397310000e-01 4.4869620000e-01
-4.7985380000e-01 4.4009750000e-01  -4.5685560000e-01 4.2734060000e-01
-4.3671530000e-01 4.1556480000e-01  -4.3938690000e-01 3.9374860000e-01
-4.6020450000e-01 3.8678920000e-01  -4.7791890000e-01 4.0709180000e-01
-4.8086720000e-01 3.8075430000e-01  -4.8294330000e-01 3.5671700000e-01
-5.0515550000e-01 3.4870700000e-01  -5.2221630000e-01 3.6634840000e-01
-5.0891570000e-01 3.9304090000e-01  -5.3793280000e-01 3.8586190000e-01
-5.6707980000e-01 3.7699250000e-01  -5.9097200000e-01 4.0445540000e-01
-5.6568860000e-01 4.3294040000e-01  -5.3334630000e-01 4.2083460000e-01
-5.7276570000e-01 3.4905680000e-01  -5.4540170000e-01 3.6148850000e-01
-5.2601650000e-01 3.4391160000e-01  -5.3196070000e-01 3.1883710000e-01
-5.6430660000e-01 3.1237260000e-01  -5.3760390000e-01 2.9368520000e-01
-5.1315180000e-01 2.7844860000e-01  -5.1597490000e-01 2.5018500000e-01
-5.4453830000e-01 2.4066440000e-01  -5.6683030000e-01 2.7003080000e-01
-5.7479810000e-01 2.3372590000e-01  -5.8053580000e-01 1.9627040000e-01
-6.2431230000e-01 1.8379550000e-01  -6.4311070000e-01 2.2808200000e-01
-6.1163930000e-01 2.5807720000e-01  -6.5018340000e-01 2.6175300000e-01
-6.8179360000e-01 2.6972090000e-01  -6.8605660000e-01 2.9722980000e-01
-6.6471730000e-01 3.1417780000e-01  -6.3339450000e-01 2.9841980000e-01
-6.4334690000e-01 3.3181880000e-01  -6.5493730000e-01 3.6165280000e-01
-6.3104830000e-01 3.8939550000e-01  -5.9618450000e-01 3.6913060000e-01
-6.0328470000e-01 3.3076060000e-01  -4.4090450000e-01 2.3980410000e-01
-4.6855580000e-01 2.1649850000e-01  -4.9613630000e-01 2.3326370000e-01
-4.9308810000e-01 2.6287640000e-01  -4.6083970000e-01 2.7553610000e-01
-4.9021220000e-01 2.8934430000e-01  -5.1433690000e-01 3.0303010000e-01
-5.1091950000e-01 3.2827660000e-01  -4.8768890000e-01 3.3586810000e-01
-4.6713400000e-01 3.1437000000e-01  -4.6597280000e-01 3.4295120000e-01
-4.6468700000e-01 3.6709750000e-01  -4.4395980000e-01 3.7526750000e-01
-4.2716540000e-01 3.6042540000e-01  -4.3618490000e-01 3.3342400000e-01
-4.1052400000e-01 3.4535910000e-01  -3.8848040000e-01 3.5729800000e-01
-3.6853720000e-01 3.4344340000e-01  -3.7260380000e-01 3.1777370000e-01
-4.0510870000e-01 3.1257140000e-01  -3.7929530000e-01 2.9045850000e-01
-3.4938800000e-01 2.7080710000e-01  -3.5454930000e-01 2.2489880000e-01
-4.0614880000e-01 2.2738310000e-01  -4.1657140000e-01 2.7077190000e-01
-3.2166300000e-01 2.8841450000e-01  -3.5248800000e-01 3.0128690000e-01
-3.5132640000e-01 3.2939400000e-01  -3.2790560000e-01 3.4119940000e-01
-3.0126710000e-01 3.2224070000e-01  -3.0619090000e-01 3.5322390000e-01
-3.1012240000e-01 3.7941540000e-01  -2.8909510000e-01 3.9302070000e-01
-2.6773770000e-01 3.7970130000e-01  -2.7253330000e-01 3.4922000000e-01
-2.4759260000e-01 3.6613200000e-01  -2.2570990000e-01 3.8121240000e-01
-2.0410740000e-01 3.6819090000e-01  -2.0655630000e-01 3.4269390000e-01
-2.3710580000e-01 3.3380750000e-01  -2.1011610000e-01 3.1731580000e-01
-1.8451170000e-01 3.0333560000e-01  -1.8608320000e-01 2.7437480000e-01
-2.1487530000e-01 2.6352870000e-01  -2.3815640000e-01 2.9266350000e-01
-2.4591590000e-01 2.5575570000e-01  -2.5169720000e-01 2.1605420000e-01
-3.0005400000e-01 2.0277910000e-01  -3.1784350000e-01 2.5258370000e-01
-2.8307170000e-01 2.8140190000e-01  -2.2037040000e-01 1.9400730000e-01
-2.2123340000e-01 2.3379130000e-01  -1.9063710000e-01 2.4784960000e-01
-1.6374150000e-01 2.2894530000e-01  -1.7075440000e-01 1.8656540000e-01
-1.3599340000e-01 2.1102430000e-01  -1.0764090000e-01 2.3399920000e-01
-7.5139840000e-02 2.1982620000e-01  -7.3896470000e-02 1.8174260000e-01
-1.1897400000e-01 1.6509690000e-01  -7.5928710000e-02 1.4123400000e-01
-2.9496090000e-02 1.2165300000e-01  -2.5525050000e-02 5.9321510000e-02
-9.3232030000e-02 4.8010150000e-02  -1.2163770000e-01 1.0240140000e-01
-1.4268640000e-01 5.1922070000e-02  -1.6808350000e-01 1.1546880000e-02
-2.0847370000e-01 1.9073170000e-02  -2.2096800000e-01 5.6606070000e-02
-1.8475000000e-01 9.1093360000e-02  -2.3405570000e-01 9.4031900000e-02
-2.7989750000e-01 9.3702330000e-02  -3.0457660000e-01 1.4097280000e-01
-2.5817220000e-01 1.7530390000e-01  -2.1270350000e-01 1.4608040000e-01
-2.9862650000e-01 5.8570460000e-02  -2.5670690000e-01 6.2563010000e-02
-2.4055910000e-01 2.7503650000e-02  -2.6437220000e-01 1.1720020000e-04
-3.0463740000e-01 1.0974570000e-02  -2.8655000000e-01 -2.3703210000e-02
-2.7332790000e-01 -5.5408890000e-02  -2.9651150000e-01 -7.7361330000e-02
-3.2460060000e-01 -6.6187640000e-02  -3.2729200000e-01 -3.0251640000e-02
-3.5023200000e-01 -5.5810390000e-02  -3.7025430000e-01 -7.6671660000e-02
-3.9500320000e-01 -6.7767480000e-02  -3.9850280000e-01 -4.1838770000e-02
-3.7006600000e-01 -2.4473280000e-02  -4.0198550000e-01 -1.5986450000e-02
-4.3035410000e-01 -1.0207080000e-02  -4.3774740000e-01 1.6754880000e-02
-4.1526230000e-01 3.6415700000e-02  -3.8262090000e-01 1.7266980000e-02
-3.8954340000e-01 5.5568240000e-02  -4.0135100000e-01 9.3946030000e-02
-3.6547940000e-01 1.2892170000e-01  -3.2234070000e-01 9.3023670000e-02
-3.4234180000e-01 4.6702340000e-02  -4.3756230000e-01 9.9367900000e-02
-4.2077740000e-01 6.5575950000e-02  -4.4255200000e-01 4.1877800000e-02
-4.7206860000e-01 4.8958190000e-02  -4.8103600000e-01 8.6232150000e-02
-5.0076400000e-01 5.4668240000e-02  -5.1680460000e-01 2.7538630000e-02
-5.4658860000e-01 2.9879460000e-02  -5.5803480000e-01 5.8803260000e-02
-5.2891830000e-01 8.5163620000e-02  -5.6840990000e-01 8.9328030000e-02
-6.0689750000e-01 8.9714640000e-02  -6.2743680000e-01 1.3007730000e-01
-5.8697420000e-01 1.5951130000e-01  -5.4829710000e-01 1.3220450000e-01
-5.5238900000e-01 1.7509640000e-01  -5.5157830000e-01 2.1222350000e-01
-5.2158300000e-01 2.2447020000e-01  -4.9643160000e-01 2.0431490000e-01
-5.0738660000e-01 1.6434730000e-01  -4.7031100000e-01 1.8337730000e-01
-4.3683230000e-01 2.0522490000e-01  -3.9420080000e-01 1.8195780000e-01
-4.1443680000e-01 1.3147280000e-01  -4.6368200000e-01 1.3474250000e-01
-2.1531190000e-01 5.1686860000e-01  -1.9581470000e-01 5.4581540000e-01
-1.6513220000e-01 5.3859610000e-01  -1.5869270000e-01 5.0906860000e-01
-1.8705900000e-01 4.8728370000e-01  -1.5348690000e-01 4.8150280000e-01
-1.2391340000e-01 4.7489830000e-01  -1.1924400000e-01 4.4638180000e-01
-1.4279510000e-01 4.3098860000e-01  -1.7072660000e-01 4.4895440000e-01
-1.6517650000e-01 4.1765300000e-01  -1.6140940000e-01 3.9001000000e-01
-1.8382710000e-01 3.7685160000e-01  -2.0499330000e-01 3.9102770000e-01
-1.9962590000e-01 4.2189240000e-01  -2.2517310000e-01 4.0503670000e-01
-2.4725280000e-01 3.8981410000e-01  -2.6924140000e-01 4.0247360000e-01
-2.6764430000e-01 4.2877790000e-01  -2.3559490000e-01 4.3834390000e-01
-2.6452290000e-01 4.5646800000e-01  -2.9547620000e-01 4.7115220000e-01
-2.9719370000e-01 5.1350280000e-01  -2.5027910000e-01 5.2058070000e-01
-2.3166300000e-01 4.8187910000e-01  -3.1931470000e-01 4.5198370000e-01
-2.8909440000e-01 4.4274190000e-01  -2.8768490000e-01 4.1522590000e-01
-3.1005390000e-01 4.0220460000e-01  -3.3624510000e-01 4.1931590000e-01
-3.3091220000e-01 3.8994650000e-01  -3.2715880000e-01 3.6418020000e-01
-3.4848510000e-01 3.5140040000e-01  -3.6845920000e-01 3.6542840000e-01
-3.6282970000e-01 3.9389850000e-01  -3.8651470000e-01 3.7921370000e-01
-4.0756320000e-01 3.6708190000e-01  -4.2555580000e-01 3.8061770000e-01
-4.2147040000e-01 4.0242090000e-01  -3.9452980000e-01 4.0869610000e-01
-4.1724180000e-01 4.2374520000e-01  -4.3779470000e-01 4.3610900000e-01
-4.3597380000e-01 4.5906360000e-01  -4.1314830000e-01 4.6801570000e-01
-3.9326370000e-01 4.4428420000e-01  -3.8797480000e-01 4.7560860000e-01
-3.8608330000e-01 5.0869290000e-01  -3.4741430000e-01 5.2496270000e-01
-3.2620120000e-01 4.8405800000e-01  -3.5465380000e-01 4.5560610000e-01
-4.1303090000e-01 5.2331100000e-01  -4.0929740000e-01 4.9212890000e-01
-4.3272840000e-01 4.7978640000e-01  -4.5355640000e-01 4.9323770000e-01
-4.5085160000e-01 5.2444350000e-01  -4.7394340000e-01 5.0502630000e-01
-4.9288710000e-01 4.8895280000e-01  -5.1373860000e-01 4.9839030000e-01
-5.1500050000e-01 5.2141180000e-01  -4.8816050000e-01 5.3462890000e-01
-5.1660070000e-01 5.4497610000e-01  -5.4258050000e-01 5.5038590000e-01
-5.5321820000e-01 5.7533760000e-01  -5.2551560000e-01 5.9884480000e-01
-4.9502800000e-01 5.7493710000e-01  -4.9264160000e-01 6.1412210000e-01
-4.7990450000e-01 6.4216570000e-01  -4.5842630000e-01 6.5092450000e-01
-4.3570210000e-01 6.2866800000e-01  -4.5424480000e-01 5.9470630000e-01
-4.1687680000e-01 6.0234050000e-01  -3.8031250000e-01 6.1091160000e-01
-3.5260790000e-01 5.7672650000e-01  -3.8528470000e-01 5.4229000000e-01
-4.2446220000e-01 5.5903030000e-01  -3.7072700000e-01 6.4252880000e-01
-4.0496090000e-01 6.3228610000e-01  -4.2790020000e-01 6.6079370000e-01
-4.0182940000e-01 6.9063390000e-01  -3.7047410000e-01 6.8093790000e-01
-3.8120550000e-01 7.0609790000e-01  -3.7833520000e-01 7.1970570000e-01
-3.7478510000e-01 7.2257270000e-01  -3.6682370000e-01 7.2449510000e-01
-3.5845140000e-01 7.0912080000e-01  -3.5135370000e-01 7.2863910000e-01
-3.4351210000e-01 7.4349130000e-01  -3.3038120000e-01 7.4850520000e-01
-3.1697550000e-01 7.3359390000e-01  -3.3120600000e-01 7.1365290000e-01
-3.0689790000e-01 7.1574000000e-01  -2.8417460000e-01 7.1824660000e-01
-2.7260770000e-01 6.9966420000e-01  -2.8504010000e-01 6.7995140000e-01
-3.1334470000e-01 6.8716050000e-01  -3.0041650000e-01 6.5998230000e-01
-2.8321330000e-01 6.3263840000e-01  -3.0490890000e-01 5.9714190000e-01
-3.4617850000e-01 6.1846010000e-01  -3.3793480000e-01 6.5809630000e-01
-2.5335420000e-01 6.3669880000e-01  -2.7436730000e-01 6.5903860000e-01
-2.6331260000e-01 6.8201460000e-01  -2.3966050000e-01 6.8388010000e-01
-2.2300920000e-01 6.5831040000e-01  -2.1723170000e-01 6.8730230000e-01
-2.1344370000e-01 7.1070810000e-01  -1.9306360000e-01 7.1768470000e-01
-1.7597950000e-01 7.0234980000e-01  -1.8746950000e-01 6.7372150000e-01
-1.5739120000e-01 6.8501320000e-01  -1.3025010000e-01 7.0106420000e-01
-9.5611990000e-02 6.8191160000e-01  -1.1332410000e-01 6.3909180000e-01
-1.5582470000e-01 6.4486090000e-01  -1.3562870000e-01 6.1128850000e-01
-1.2135590000e-01 5.7824860000e-01  -1.4428990000e-01 5.5549600000e-01
-1.7419050000e-01 5.6535840000e-01  -1.7777850000e-01 6.0383050000e-01
-2.0375260000e-01 5.7592310000e-01  -2.2753800000e-01 5.4759930000e-01
-2.7024860000e-01 5.5838380000e-01  -2.6430730000e-01 6.0534670000e-01
-2.2312760000e-01 6.1508280000e-01  -2.0591870000e-01 7.6447250000e-01
-1.8779770000e-01 7.5553220000e-01  -1.8896460000e-01 7.3549790000e-01
-2.0826090000e-01 7.2889760000e-01  -2.2328830000e-01 7.4716270000e-01
-2.2725810000e-01 7.2453880000e-01  -2.3174650000e-01 7.0286860000e-01
-2.5338920000e-01 6.9923530000e-01  -2.6472660000e-01 7.1759790000e-01
-2.4996690000e-01 7.3764470000e-01  -2.7408830000e-01 7.3577070000e-01
-2.9709980000e-01 7.3368430000e-01  -3.1022860000e-01 7.5413470000e-01
-2.8984270000e-01 7.7456510000e-01  -2.6613190000e-01 7.6224970000e-01
-2.6999020000e-01 7.8631800000e-01  -2.6441680000e-01 8.0151210000e-01
-2.5523730000e-01 8.0579740000e-01  -2.4474510000e-01 7.9875270000e-01
-2.4742120000e-01 7.8140310000e-01  -2.3356900000e-01 7.9215760000e-01
-2.2433430000e-01 8.0238260000e-01  -2.0952330000e-01 8.0149200000e-01
-2.0536410000e-01 7.8249050000e-01  -2.2478700000e-01 7.7358450000e-01
-2.2762470000e-01 8.1150790000e-01  -2.3488420000e-01 8.0396510000e-01
-2.4471310000e-01 8.1052970000e-01  -2.3866170000e-01 8.1965930000e-01
-2.3177840000e-01 8.1924910000e-01  -2.3490520000e-01 8.2322580000e-01
-2.3458800000e-01 8.2546630000e-01  -2.3407970000e-01 8.2589070000e-01
-2.3304640000e-01 8.2618410000e-01  -2.3158670000e-01 8.2443530000e-01
-2.3144440000e-01 8.2684870000e-01  -2.3105220000e-01 8.2810520000e-01
-2.3065930000e-01 8.2841000000e-01  -2.2969110000e-01 8.2860770000e-01
-2.2897880000e-01 8.2649530000e-01  -2.2745820000e-01 8.2900750000e-01
-2.2603980000e-01 8.3137180000e-01  -2.2361860000e-01 8.3224060000e-01
-2.2115780000e-01 8.2918590000e-01  -2.2464530000e-01 8.2582210000e-01
-2.1946510000e-01 8.2487940000e-01  -2.1303360000e-01 8.2505870000e-01
-2.0785360000e-01 8.1699220000e-01  -2.1851920000e-01 8.1100880000e-01
-2.2387080000e-01 8.1898780000e-01  -2.1128660000e-01 8.3059280000e-01
-2.1677680000e-01 8.2905680000e-01  -2.1970290000e-01 8.3329650000e-01
-2.1618690000e-01 8.3729250000e-01  -2.1194440000e-01 8.3634560000e-01
-2.1367650000e-01 8.3935190000e-01  -2.1340630000e-01 8.4091920000e-01
-2.1303090000e-01 8.4122890000e-01  -2.1224410000e-01 8.4144270000e-01
-2.1119240000e-01 8.4002950000e-01  -2.1095300000e-01 8.4193890000e-01
-2.1060640000e-01 8.4298330000e-01  -2.1026590000e-01 8.4324490000e-01
-2.0940290000e-01 8.4341070000e-01  -2.0887880000e-01 8.4149910000e-01
-2.0727980000e-01 8.4370560000e-01  -2.0572350000e-01 8.4608270000e-01
-2.0288080000e-01 8.4699010000e-01  -2.0044920000e-01 8.4288540000e-01
-2.0499620000e-01 8.4021650000e-01  -2.0019320000e-01 8.3755440000e-01
-1.9343040000e-01 8.3388000000e-01  -1.9569900000e-01 8.2301670000e-01
-2.0633790000e-01 8.2653440000e-01  -2.0634750000e-01 8.3417690000e-01
-1.8661410000e-01 8.3896860000e-01  -1.9510830000e-01 8.4096090000e-01
-1.9748230000e-01 8.4791280000e-01  -1.9056580000e-01 8.5399370000e-01
-1.8196670000e-01 8.4943600000e-01  -1.8397830000e-01 8.5811780000e-01
-1.8280910000e-01 8.6275830000e-01  -1.8150070000e-01 8.6379650000e-01
-1.7842970000e-01 8.6448030000e-01  -1.7570120000e-01 8.5821150000e-01
-1.7188330000e-01 8.6588900000e-01  -1.6797480000e-01 8.7259230000e-01
-1.6112510000e-01 8.7497450000e-01  -1.5480850000e-01 8.6610810000e-01
-1.6392180000e-01 8.5779850000e-01  -1.5197890000e-01 8.5536140000e-01
-1.3926740000e-01 8.5199380000e-01  -1.3823990000e-01 8.3872040000e-01
-1.5017400000e-01 8.3320050000e-01  -1.6037100000e-01 8.4342440000e-01
-1.6199990000e-01 8.2970600000e-01  -1.6484970000e-01 8.1524100000e-01
-1.8203470000e-01 8.1345760000e-01  -1.8526530000e-01 8.2901250000e-01
-1.7500130000e-01 8.3779010000e-01  -1.5380380000e-01 8.0499840000e-01
-1.5263050000e-01 8.2117590000e-01  -1.3972480000e-01 8.2689900000e-01
-1.2768640000e-01 8.1815330000e-01  -1.3249140000e-01 7.9874450000e-01
-1.1487090000e-01 8.0888770000e-01  -1.0019560000e-01 8.1969900000e-01
-8.3661590000e-02 8.1180450000e-01  -8.4077430000e-02 7.9159360000e-01
-1.0849720000e-01 7.8509950000e-01  -8.7208590000e-02 7.6975410000e-01
-6.2092550000e-02 7.5594620000e-01  -6.4006930000e-02 7.1829690000e-01
-1.0588030000e-01 7.1880310000e-01  -1.1521360000e-01 7.5258700000e-01
-1.3334180000e-01 7.2813670000e-01  -1.5471350000e-01 7.1044980000e-01
-1.7488360000e-01 7.2340970000e-01  -1.7278990000e-01 7.4492660000e-01
-1.4905990000e-01 7.5500800000e-01  -1.7147360000e-01 7.6456340000e-01
-1.9034040000e-01 7.7333340000e-01  -1.9037860000e-01 7.9434390000e-01
-1.7003600000e-01 8.0059560000e-01  -1.5467720000e-01 7.8406850000e-01
-6.3287770000e-02 8.5471520000e-01  -5.4147790000e-02 8.3471070000e-01
-6.9189760000e-02 8.2070590000e-01  -8.6625420000e-02 8.2838190000e-01
-8.7627740000e-02 8.4997340000e-01  -1.0170870000e-01 8.3556760000e-01
-1.1481890000e-01 8.2447420000e-01  -1.2828850000e-01 8.3175340000e-01
-1.2817330000e-01 8.4614870000e-01  -1.1172790000e-01 8.5421710000e-01
-1.2881920000e-01 8.6017390000e-01  -1.4358170000e-01 8.6355360000e-01
-1.4919670000e-01 8.7743210000e-01  -1.3398540000e-01 8.9034340000e-01
-1.1683930000e-01 8.7756340000e-01  -1.1648840000e-01 8.9887390000e-01
-1.1027790000e-01 9.1338810000e-01  -1.0005720000e-01 9.1779810000e-01
-8.8676340000e-02 9.0833260000e-01  -9.5585240000e-02 8.9025420000e-01
-7.7435580000e-02 8.9752870000e-01  -6.1894440000e-02 9.0651620000e-01
-4.2649780000e-02 8.9687640000e-01  -5.0922240000e-02 8.7180360000e-01
-7.5878330000e-02 8.7396580000e-01  -6.2868800000e-02 9.2065960000e-01
-7.5271140000e-02 9.1243740000e-01  -8.6850720000e-02 9.2286040000e-01
-7.7803760000e-02 9.3502490000e-01  -6.7246530000e-02 9.3364960000e-01
-7.1837510000e-02 9.4033820000e-01  -7.1272490000e-02 9.4397020000e-01
-7.0427850000e-02 9.4467170000e-01  -6.8686020000e-02 9.4515620000e-01
-6.6286910000e-02 9.4212430000e-01  -6.5912220000e-02 9.4626660000e-01
-6.5201970000e-02 9.4847460000e-01  -6.4497240000e-02 9.4901870000e-01
-6.2736510000e-02 9.4936770000e-01  -6.1553670000e-02 9.4549690000e-01
-5.8541930000e-02 9.5003340000e-01  -5.5672360000e-02 9.5460300000e-01
-5.0591540000e-02 9.5631600000e-01  -4.5866200000e-02 9.4939770000e-01
-5.3645500000e-02 9.4358620000e-01  -4.3999570000e-02 9.4006120000e-01
-3.1150240000e-02 9.3664180000e-01  -2.8355630000e-02 9.1804340000e-01
-4.9375280000e-02 9.1590440000e-01  -5.4300510000e-02 9.3116880000e-01
-2.2861910000e-02 9.4707420000e-01  -3.6447460000e-02 9.4742000000e-01
-4.1605210000e-02 9.5823380000e-01  -3.1613530000e-02 9.6794070000e-01
-1.9276770000e-02 9.6281310000e-01  -2.2987720000e-02 9.7387300000e-01
-2.1659490000e-02 9.7971870000e-01  -2.0090980000e-02 9.8097780000e-01
-1.6526730000e-02 9.8182070000e-01  -1.2899190000e-02 9.7477190000e-01
-9.4582140000e-03 9.8366380000e-01  -5.9685990000e-03 9.9045960000e-01
-7.3902450000e-04 9.9281840000e-01  6.3836060000e-03 9.8695310000e-01
1.9109460000e-04 9.7648200000e-01  1.3716010000e-02 9.7749080000e-01
2.5339210000e-02 9.7556190000e-01  3.1554770000e-02 9.6774930000e-01
2.3816260000e-02 9.5550490000e-01  8.3482350000e-03 9.6186860000e-01
1.2393320000e-02 9.4576000000e-01  1.6699370000e-02 9.2759530000e-01
-2.5878230000e-03 9.1468630000e-01  -1.6543180000e-02 9.3341800000e-01
-6.7901310000e-03 9.4977060000e-01  3.4297810000e-02 9.2251240000e-01
2.7368640000e-02 9.4082950000e-01  3.9847960000e-02 9.5475060000e-01
5.9306400000e-02 9.4499820000e-01  5.7640220000e-02 9.2479220000e-01
7.2066020000e-02 9.3515290000e-01  8.1374250000e-02 9.3594340000e-01
8.4025320000e-02 9.3419840000e-01  8.7040460000e-02 9.2917610000e-01
7.7900450000e-02 9.2047130000e-01  9.3290920000e-02 9.1888170000e-01
1.0646830000e-01 9.1623130000e-01  1.1387140000e-01 9.0666140000e-01
1.0375340000e-01 8.9196900000e-01  8.5186440000e-02 9.0087990000e-01
8.9392420000e-02 8.8103930000e-01  9.2716280000e-02 8.6059080000e-01
7.5122150000e-02 8.5049060000e-01  5.9116840000e-02 8.6266590000e-01
6.5715950000e-02 8.8500960000e-01  4.4749710000e-02 8.7600490000e-01
2.3279560000e-02 8.6667510000e-01  3.5116390000e-03 8.8570880000e-01
1.9990820000e-02 9.0836340000e-01  4.4591620000e-02 9.0233950000e-01
2.0754660000e-02 8.4459960000e-01  4.1342780000e-02 8.5643420000e-01
5.8510420000e-02 8.4422120000e-01  5.5824170000e-02 8.2308700000e-01
2.9681530000e-02 8.1561650000e-01  5.2868100000e-02 8.0176590000e-01
7.4403230000e-02 7.9048620000e-01  7.3748540000e-02 7.6644370000e-01
5.0113080000e-02 7.5663100000e-01  2.9679770000e-02 7.8035500000e-01
2.4521500000e-02 7.4905730000e-01  2.1438250000e-02 7.1591030000e-01
-1.7909130000e-02 7.0251690000e-01  -3.5204260000e-02 7.4285320000e-01
-7.8617610000e-03 7.6884900000e-01  -4.0588360000e-02 7.7221270000e-01
-6.6750510000e-02 7.8031890000e-01  -6.8563800000e-02 8.0289430000e-01
-5.1010080000e-02 8.1542070000e-01  -2.6164450000e-02 8.0233790000e-01
-3.4035650000e-02 8.2895410000e-01  -4.2916750000e-02 8.5180000000e-01
-2.5477980000e-02 8.7283220000e-01  1.4953700000e-03 8.5889440000e-01
-2.5048890000e-03 8.2872100000e-01  1.3656340000e-01 7.6179080000e-01
1.1545190000e-01 7.4146510000e-01  9.1510230000e-02 7.5347950000e-01
9.2283790000e-02 7.7851930000e-01  1.1899430000e-01 7.9075440000e-01
9.3234290000e-02 8.0116050000e-01  7.1771820000e-02 8.1119690000e-01
7.2543000000e-02 8.3277290000e-01  9.1601300000e-02 8.4172030000e-01
1.1191210000e-01 8.2443980000e-01  1.1038480000e-01 8.5093580000e-01
1.0659400000e-01 8.7380730000e-01  1.2388860000e-01 8.8983410000e-01
1.5030980000e-01 8.7419140000e-01  1.4089140000e-01 8.4375070000e-01
1.7062730000e-01 8.5362380000e-01  1.9360400000e-01 8.5165820000e-01
2.0427650000e-01 8.3955750000e-01  1.9640500000e-01 8.1968800000e-01
1.6859830000e-01 8.2085070000e-01  1.8673460000e-01 7.9956000000e-01
2.0567170000e-01 7.8238290000e-01  2.0053880000e-01 7.5239090000e-01
1.6396550000e-01 7.5317980000e-01  1.5590420000e-01 7.8688270000e-01
2.2462080000e-01 7.8973240000e-01  2.0797080000e-01 8.0318470000e-01
2.1713940000e-01 8.2367350000e-01  2.3791040000e-01 8.1663560000e-01
2.4068520000e-01 8.0141670000e-01  2.4792630000e-01 8.1075400000e-01
2.5322110000e-01 8.1160210000e-01  2.5457710000e-01 8.1074480000e-01
2.5603780000e-01 8.0853970000e-01  2.5289170000e-01 8.0383550000e-01
2.5883820000e-01 8.0517270000e-01  2.6224520000e-01 8.0517990000e-01
2.6332660000e-01 8.0444100000e-01  2.6461660000e-01 8.0213200000e-01
2.5972170000e-01 7.9872780000e-01  2.6745710000e-01 7.9653510000e-01
2.7522420000e-01 7.9455850000e-01  2.7999590000e-01 7.8810280000e-01
2.7220480000e-01 7.7823520000e-01  2.6053950000e-01 7.8675440000e-01
2.5968020000e-01 7.7158300000e-01  2.5998610000e-01 7.5188430000e-01
2.3488190000e-01 7.4096770000e-01  2.2372540000e-01 7.6916330000e-01
2.4283540000e-01 7.8233270000e-01  2.7826710000e-01 7.4383600000e-01
2.7338130000e-01 7.6381770000e-01  2.8686540000e-01 7.7600150000e-01
3.0583850000e-01 7.6565010000e-01  3.0338960000e-01 7.4449430000e-01
3.1907440000e-01 7.5512430000e-01  3.2905230000e-01 7.5591360000e-01
3.3191510000e-01 7.5402420000e-01  3.3518180000e-01 7.4855340000e-01
3.2510500000e-01 7.3917160000e-01  3.4198460000e-01 7.3719270000e-01
3.5663200000e-01 7.3417060000e-01  3.6494150000e-01 7.2334470000e-01
3.5321910000e-01 7.0686010000e-01  3.3264340000e-01 7.1737600000e-01
3.3664310000e-01 6.9504790000e-01  3.3933410000e-01 6.7190280000e-01
3.1916930000e-01 6.6173990000e-01  3.0211420000e-01 6.7593820000e-01
3.1040010000e-01 7.0047840000e-01  2.8661230000e-01 6.9133180000e-01
2.6208600000e-01 6.8130030000e-01  2.3899570000e-01 7.0424400000e-01
2.6070140000e-01 7.2981840000e-01  2.8781350000e-01 7.2083100000e-01
2.5958130000e-01 6.5643100000e-01  2.8227170000e-01 6.6960230000e-01
3.0070080000e-01 6.5573950000e-01  2.9693110000e-01 6.3330670000e-01
2.6991280000e-01 6.2606340000e-01  2.9286190000e-01 6.1174210000e-01
3.1311470000e-01 5.9858240000e-01  3.0885450000e-01 5.7561100000e-01
2.8645010000e-01 5.7040940000e-01  2.7027450000e-01 5.9236630000e-01
2.6524880000e-01 5.6655160000e-01  2.6027300000e-01 5.4375800000e-01
2.3869900000e-01 5.3955730000e-01  2.2564730000e-01 5.5720550000e-01
2.3948220000e-01 5.8032670000e-01  2.1352250000e-01 5.7499200000e-01
1.9002010000e-01 5.6953850000e-01  1.7553820000e-01 5.8818840000e-01
1.8704410000e-01 6.0986560000e-01  2.1654030000e-01 6.0546450000e-01
2.0074580000e-01 6.3084300000e-01  1.8330360000e-01 6.5582270000e-01
2.0203930000e-01 6.8703200000e-01  2.3694320000e-01 6.7178850000e-01
2.3542440000e-01 6.3728820000e-01  1.5497810000e-01 6.5259760000e-01
1.7525730000e-01 6.3041450000e-01  1.6453110000e-01 6.0654650000e-01
1.3884690000e-01 6.0445130000e-01  1.2270330000e-01 6.3321640000e-01
1.1318220000e-01 6.0204590000e-01  1.0624740000e-01 5.7408210000e-01
7.8494710000e-02 5.6803310000e-01  6.0613450000e-02 5.9225650000e-01
8.1653980000e-02 6.2253220000e-01  4.4663710000e-02 6.1889110000e-01
7.2683570000e-03 6.1277360000e-01  -1.8123730000e-02 6.5055250000e-01
1.8186070000e-02 6.8211620000e-01  5.6438510000e-02 6.6145420000e-01
4.8023500000e-02 6.9924770000e-01  4.5833370000e-02 7.3177310000e-01
7.0678590000e-02 7.4432810000e-01  9.3391310000e-02 7.2927050000e-01
8.8084000000e-02 6.9461130000e-01  1.1677290000e-01 7.1439740000e-01
1.4156510000e-01 7.3463990000e-01  1.7533210000e-01 7.2049310000e-01
1.6683260000e-01 6.8107340000e-01  1.2814640000e-01 6.7596900000e-01
9.1819970000e-02 4.9342900000e-01  6.1110300000e-02 5.1252510000e-01
6.8532050000e-02 5.4393650000e-01  9.7637390000e-02 5.5018840000e-01
1.1964280000e-01 5.2343040000e-01  1.2369860000e-01 5.5563220000e-01
1.2925960000e-01 5.8280540000e-01  1.5432650000e-01 5.8735690000e-01
1.6872520000e-01 5.6760920000e-01  1.5463100000e-01 5.4141700000e-01
1.8217230000e-01 5.4914470000e-01  2.0553410000e-01 5.5538350000e-01
2.1970930000e-01 5.3819540000e-01  2.1078350000e-01 5.1763650000e-01
1.8231640000e-01 5.1787070000e-01  2.0159710000e-01 4.9715380000e-01
2.1976350000e-01 4.7987830000e-01  2.1274960000e-01 4.5662990000e-01
1.8707970000e-01 4.5256520000e-01  1.7208750000e-01 4.8187160000e-01
1.5903360000e-01 4.5048830000e-01  1.4958590000e-01 4.1597200000e-01
1.0432960000e-01 4.0669420000e-01  9.0747060000e-02 4.5653600000e-01
1.2879150000e-01 4.7985640000e-01  1.7489900000e-01 3.9504500000e-01
1.7761600000e-01 4.2833910000e-01  2.0470630000e-01 4.3592010000e-01
2.2317140000e-01 4.1729360000e-01  2.1337230000e-01 3.8610030000e-01
2.4131760000e-01 4.0035750000e-01  2.6501230000e-01 4.1219030000e-01
2.8444950000e-01 3.9639640000e-01  2.7838200000e-01 3.7196830000e-01
2.4791050000e-01 3.6710980000e-01  2.7170200000e-01 3.4861600000e-01
2.9280650000e-01 3.3246430000e-01  2.8709770000e-01 3.0789520000e-01
2.6209200000e-01 3.0234520000e-01  2.4420010000e-01 3.2865350000e-01
2.3685580000e-01 2.9788860000e-01  2.3147220000e-01 2.6921720000e-01
2.0344310000e-01 2.6176230000e-01  1.8423060000e-01 2.8579360000e-01
2.0474510000e-01 3.1693850000e-01  1.6724590000e-01 3.1291300000e-01
1.2770100000e-01 3.0614290000e-01  1.0013250000e-01 3.4803070000e-01
1.4200220000e-01 3.8034000000e-01  1.8015510000e-01 3.5617540000e-01
1.1641370000e-01 2.6953640000e-01  1.5398390000e-01 2.8265110000e-01
1.7680890000e-01 2.5789650000e-01  1.6714110000e-01 2.2647550000e-01
1.2466830000e-01 2.2004900000e-01  1.5867180000e-01 1.9454760000e-01
1.8928370000e-01 1.7468240000e-01  1.8584770000e-01 1.3939230000e-01
1.5001230000e-01 1.2644130000e-01  1.2025150000e-01 1.6416880000e-01
1.1085830000e-01 1.1585620000e-01  1.0658410000e-01 6.5645290000e-02
4.8530440000e-02 4.2607130000e-02  1.6850070000e-02 1.0350490000e-01
5.9801410000e-02 1.4732810000e-01  5.2882740000e-03 1.5174760000e-01
-4.0958960000e-02 1.6342510000e-01  -4.6282360000e-02 2.0416430000e-01
-1.4447370000e-02 2.2764530000e-01  2.9543980000e-02 2.0385720000e-01
1.7102360000e-02 2.5165770000e-01  2.6229980000e-03 2.9515400000e-01
3.9953640000e-02 3.3323270000e-01  8.6944270000e-02 2.9970840000e-01
7.3201640000e-02 2.4743440000e-01  -3.6577010000e-02 3.0211000000e-01
-1.9825960000e-02 2.6347590000e-01  -4.8179440000e-02 2.3728440000e-01
-8.1584130000e-02 2.5146910000e-01  -8.3700860000e-02 2.9311870000e-01
-1.1109200000e-01 2.6520060000e-01  -1.3716010000e-01 2.4282800000e-01
-1.6520220000e-01 2.5809320000e-01  -1.6325540000e-01 2.8826040000e-01
-1.2990990000e-01 3.0192490000e-01  -1.6130660000e-01 3.1584410000e-01
-1.8733420000e-01 3.2843980000e-01  -1.8651370000e-01 3.5472900000e-01
-1.6293550000e-01 3.6606970000e-01  -1.3763240000e-01 3.4439100000e-01
-1.3942470000e-01 3.7737090000e-01  -1.4269450000e-01 4.0613690000e-01
-1.1933690000e-01 4.2150010000e-01  -9.3689990000e-02 4.0619100000e-01
-1.0181470000e-01 3.6922990000e-01  -6.7527260000e-02 3.8764950000e-01
-3.4676560000e-02 4.1073860000e-01  9.6722220000e-03 3.8743070000e-01
-1.1138160000e-02 3.3531020000e-01  -6.1373070000e-02 3.4001830000e-01
-4.0710010000e-02 4.4685300000e-01  -6.7661220000e-02 4.2044730000e-01
-9.6928250000e-02 4.3383300000e-01  -9.9315550000e-02 4.6409290000e-01
-6.6637010000e-02 4.8413980000e-01  -1.0275240000e-01 4.9314840000e-01
-1.3351100000e-01 5.0002040000e-01  -1.4048850000e-01 5.2906990000e-01
-1.1651750000e-01 5.4889400000e-01  -8.2449750000e-02 5.2934840000e-01
-9.0692790000e-02 5.6819400000e-01  -1.0221850000e-01 6.0491730000e-01
-7.0178370000e-02 6.3692420000e-01  -2.9681270000e-02 6.0753760000e-01
-4.3699610000e-02 5.6231520000e-01  -4.1714420000e-03 5.7946120000e-01
3.1389070000e-02 5.9016320000e-01  5.2305430000e-02 5.6542030000e-01
4.0908850000e-02 5.3527160000e-01  -4.8791390000e-04 5.3333970000e-01
2.9067810000e-02 5.0395930000e-01  6.0191600000e-02 4.7887040000e-01
5.1237180000e-02 4.3113550000e-01  -3.0301820000e-03 4.3478040000e-01
-1.5138190000e-02 4.8262580000e-01  9.4738510000e-01 3.0782370000e-01
9.4529190000e-01 3.0934450000e-01  9.4298970000e-01 3.1101710000e-01
9.4101800000e-01 3.1244970000e-01  9.4050600000e-01 3.1282170000e-01
9.3776410000e-01 3.1481380000e-01  9.3285130000e-01 3.1838310000e-01
9.2991020000e-01 3.2052000000e-01  9.2832670000e-01 3.2167040000e-01
9.2714390000e-01 3.2252980000e-01  9.2693230000e-01 3.2268350000e-01
9.2622720000e-01 3.2319580000e-01  9.2550320000e-01 3.2372190000e-01
9.2524520000e-01 3.2390930000e-01  9.2316110000e-01 3.2542340000e-01
9.1778640000e-01 3.2932840000e-01  9.1316230000e-01 3.3268800000e-01
9.0728290000e-01 3.3695960000e-01  8.9939530000e-01 3.4269030000e-01
8.9550000000e-01 3.4552030000e-01  8.9320850000e-01 3.4718520000e-01
8.9140030000e-01 3.4849890000e-01  8.9098510000e-01 3.4880050000e-01
8.8902630000e-01 3.5022370000e-01  8.8585780000e-01 3.5252570000e-01
8.8417600000e-01 3.5374760000e-01  8.8339090000e-01 3.5431800000e-01
8.8281930000e-01 3.5473340000e-01  8.8272210000e-01 3.5480400000e-01
8.8240810000e-01 3.5503210000e-01  8.8208910000e-01 3.5526380000e-01
8.8197950000e-01 3.5534350000e-01  8.8117760000e-01 3.5592610000e-01
8.7945400000e-01 3.5717830000e-01  8.7823900000e-01 3.5806110000e-01
8.7746850000e-01 3.5862090000e-01  8.7687660000e-01 3.5905090000e-01
8.7676520000e-01 3.5913190000e-01  8.7638230000e-01 3.5941000000e-01
8.7598560000e-01 3.5969830000e-01  8.7584010000e-01 3.5980400000e-01
8.7456510000e-01 3.6073030000e-01  8.7079340000e-01 3.6347060000e-01
8.6716440000e-01 3.6610730000e-01  8.6095150000e-01 3.7062120000e-01
8.5093240000e-01 3.7790050000e-01  8.4480630000e-01 3.8235130000e-01
8.4017860000e-01 3.8571350000e-01  8.3632280000e-01 3.8851490000e-01
8.3531520000e-01 3.8924700000e-01  8.2959950000e-01 3.9339970000e-01
8.1785760000e-01 4.0193070000e-01  8.0936670000e-01 4.0809960000e-01
8.0071800000e-01 4.1438310000e-01  7.8973390000e-01 4.2236340000e-01
7.8452430000e-01 4.2614850000e-01  7.8142990000e-01 4.2839690000e-01
7.7897450000e-01 4.3018100000e-01  7.7839870000e-01 4.3059940000e-01
7.7558460000e-01 4.3264410000e-01  7.7082180000e-01 4.3610470000e-01
7.6813560000e-01 4.3805600000e-01  7.6676900000e-01 4.3904880000e-01
7.6575770000e-01 4.3978350000e-01  7.6557990000e-01 4.3991270000e-01
7.6499340000e-01 4.4033890000e-01  7.6439290000e-01 4.4077510000e-01
7.6418120000e-01 4.4092900000e-01  7.6251650000e-01 4.4213840000e-01
7.5840940000e-01 4.4512240000e-01  7.5501150000e-01 4.4759110000e-01
7.5108740000e-01 4.5044220000e-01  7.4608830000e-01 4.5407420000e-01
7.4377610000e-01 4.5575410000e-01  7.4249360000e-01 4.5668590000e-01
7.4149270000e-01 4.5741320000e-01  7.4126810000e-01 4.5757640000e-01
7.4023410000e-01 4.5832770000e-01  7.3859630000e-01 4.5951770000e-01
7.3774960000e-01 4.6013270000e-01  7.3736450000e-01 4.6041250000e-01
7.3708520000e-01 4.6061540000e-01  7.3703810000e-01 4.6064970000e-01
7.3688660000e-01 4.6075980000e-01  7.3673280000e-01 4.6087150000e-01
7.3668020000e-01 4.6090970000e-01  7.3629950000e-01 4.6118630000e-01
7.3549290000e-01 4.6177240000e-01  7.3493190000e-01 4.6217990000e-01
7.3458380000e-01 4.6243290000e-01  7.3431750000e-01 4.6262640000e-01
7.3426770000e-01 4.6266250000e-01  7.3409790000e-01 4.6278590000e-01
7.3392210000e-01 4.6291360000e-01  7.3385800000e-01 4.6296010000e-01
7.3330690000e-01 4.6336060000e-01  7.3173880000e-01 4.6449990000e-01
7.3028120000e-01 4.6555890000e-01  7.2807780000e-01 4.6715980000e-01
7.2487730000e-01 4.6948510000e-01  7.2315280000e-01 4.7073800000e-01
7.2206140000e-01 4.7153100000e-01  7.2118860000e-01 4.7216510000e-01
7.2098280000e-01 4.7231460000e-01  7.1998490000e-01 4.7303970000e-01
7.1833390000e-01 4.7423920000e-01  7.1743350000e-01 4.7489340000e-01
7.1700220000e-01 4.7520670000e-01  7.1668680000e-01 4.7543590000e-01
7.1663280000e-01 4.7547510000e-01  7.1645760000e-01 4.7560240000e-01
7.1627930000e-01 4.7573200000e-01  7.1621780000e-01 4.7577670000e-01
7.1576310000e-01 4.7610700000e-01  7.1477250000e-01 4.7682670000e-01
7.1406550000e-01 4.7734040000e-01  7.1360850000e-01 4.7767240000e-01
7.1325620000e-01 4.7792840000e-01  7.1318940000e-01 4.7797690000e-01
7.1295870000e-01 4.7814450000e-01  7.1271930000e-01 4.7831850000e-01
7.1263110000e-01 4.7838260000e-01  7.1184580000e-01 4.7895310000e-01
7.0944600000e-01 4.8069670000e-01  7.0707400000e-01 4.8242010000e-01
7.0262590000e-01 4.8565190000e-01  6.9494890000e-01 4.9122960000e-01
6.8991300000e-01 4.9488840000e-01  6.8574710000e-01 4.9791520000e-01
6.8220770000e-01 5.0048670000e-01  6.8124240000e-01 5.0118800000e-01
6.7540170000e-01 5.0543160000e-01  6.6235880000e-01 5.1490790000e-01
6.5212100000e-01 5.2234620000e-01  6.3980780000e-01 5.3129250000e-01
6.2272910000e-01 5.4370100000e-01  6.1371360000e-01 5.5025160000e-01
6.0777910000e-01 5.5456310000e-01  6.0297390000e-01 5.5805420000e-01
6.0179750000e-01 5.5890890000e-01  5.9573380000e-01 5.6331430000e-01
5.8492270000e-01 5.7116920000e-01  5.7844720000e-01 5.7587400000e-01
5.7491070000e-01 5.7844350000e-01  5.7226070000e-01 5.8036890000e-01
5.7178340000e-01 5.8071560000e-01  5.7018520000e-01 5.8187680000e-01
5.6854140000e-01 5.8307110000e-01  5.6795240000e-01 5.8349900000e-01
5.6311120000e-01 5.8701640000e-01  5.5016810000e-01 5.9642020000e-01
5.3863360000e-01 6.0480050000e-01  5.2205980000e-01 6.1684210000e-01
4.9747930000e-01 6.3470100000e-01  4.8362110000e-01 6.4476990000e-01
4.7389980000e-01 6.5183300000e-01  4.6591100000e-01 6.5763730000e-01
4.6387640000e-01 6.5911550000e-01  4.5268560000e-01 6.6724630000e-01
4.3031000000e-01 6.8350340000e-01  4.1450740000e-01 6.9498470000e-01
3.9871410000e-01 7.0645920000e-01  3.7860020000e-01 7.2107300000e-01
3.6896810000e-01 7.2807030000e-01  3.6315340000e-01 7.3229400000e-01
3.5852310000e-01 7.3565740000e-01  3.5742750000e-01 7.3645320000e-01
3.5200760000e-01 7.4039000000e-01  3.4271590000e-01 7.4714240000e-01
3.3739160000e-01 7.5101090000e-01  3.3462840000e-01 7.5301850000e-01
3.3257650000e-01 7.5450940000e-01  3.3221320000e-01 7.5477330000e-01
3.3100960000e-01 7.5564790000e-01  3.2977580000e-01 7.5654430000e-01
3.2933860000e-01 7.5686200000e-01  3.2585590000e-01 7.5939240000e-01
3.1705710000e-01 7.6578540000e-01  3.0961010000e-01 7.7119430000e-01
3.0045330000e-01 7.7784610000e-01  2.8833230000e-01 7.8665120000e-01
2.8243630000e-01 7.9093540000e-01  2.7900380000e-01 7.9343030000e-01
2.7629920000e-01 7.9539620000e-01  2.7568030000e-01 7.9584610000e-01
2.7277010000e-01 7.9796140000e-01  2.6807490000e-01 8.0137430000e-01
2.6558730000e-01 8.0317930000e-01  2.6443000000e-01 8.0401960000e-01
2.6358800000e-01 8.0463140000e-01  2.6344500000e-01 8.0473530000e-01
2.6298310000e-01 8.0507080000e-01  2.6251390000e-01 8.0541180000e-01
2.6235270000e-01 8.0552890000e-01  2.6117480000e-01 8.0638470000e-01
2.5864610000e-01 8.0822200000e-01  2.5686540000e-01 8.0951580000e-01
2.5573800000e-01 8.1033480000e-01  2.5487230000e-01 8.1096380000e-01
2.5470940000e-01 8.1108210000e-01  2.5414990000e-01 8.1148860000e-01
2.5357020000e-01 8.1190980000e-01  2.5335770000e-01 8.1206420000e-01
2.5149780000e-01 8.1341550000e-01  2.4600720000e-01 8.1740470000e-01
2.4073290000e-01 8.2123650000e-01  2.3173920000e-01 8.2777040000e-01
2.1724970000e-01 8.3829710000e-01  2.0839310000e-01 8.4473240000e-01
2.0168740000e-01 8.4960430000e-01  1.9609610000e-01 8.5366650000e-01
1.9463120000e-01 8.5473080000e-01  1.8627960000e-01 8.6079850000e-01
1.6896480000e-01 8.7337840000e-01  1.5630930000e-01 8.8257310000e-01
1.4302970000e-01 8.9222110000e-01  1.2581310000e-01 9.0472960000e-01
1.1741120000e-01 9.1083380000e-01  1.1226500000e-01 9.1457290000e-01
1.0815520000e-01 9.1755890000e-01  1.0717740000e-01 9.1826930000e-01
1.0230930000e-01 9.2180610000e-01  9.3910090000e-02 9.2790850000e-01
8.9062360000e-02 9.3143050000e-01  8.6523680000e-02 9.3327470000e-01
8.4635630000e-02 9.3464640000e-01  8.4300330000e-02 9.3489000000e-01
8.3187020000e-02 9.3569890000e-01  8.2045040000e-02 9.3652850000e-01
8.1639450000e-02 9.3682320000e-01  7.8387600000e-02 9.3918570000e-01
7.0067190000e-02 9.4523090000e-01  6.2935290000e-02 9.5041230000e-01
5.3736980000e-02 9.5709500000e-01  4.1007860000e-02 9.6634300000e-01
3.4398800000e-02 9.7114490000e-01  3.0172060000e-02 9.7421590000e-01
2.6765520000e-02 9.7669110000e-01  2.5935450000e-02 9.7729420000e-01
2.1646690000e-02 9.8041040000e-01  1.3732470000e-02 9.8616080000e-01
8.6426420000e-03 9.8985820000e-01  4.5552550000e-03 9.9282770000e-01
5.8551380000e-01 -8.0589500000e-01  5.8631330000e-01 -8.0343430000e-01
5.8719270000e-01 -8.0072800000e-01  5.8794580000e-01 -7.9841000000e-01
5.8814140000e-01 -7.9780810000e-01  5.8918870000e-01 -7.9458480000e-01
5.9106530000e-01 -7.8880950000e-01  5.9218870000e-01 -7.8535200000e-01
5.9279350000e-01 -7.8349060000e-01  5.9324530000e-01 -7.8210010000e-01
5.9332610000e-01 -7.8185140000e-01  5.9359550000e-01 -7.8102250000e-01
5.9387200000e-01 -7.8017130000e-01  5.9397060000e-01 -7.7986810000e-01
5.9476660000e-01 -7.7741810000e-01  5.9681960000e-01 -7.7109980000e-01
5.9858590000e-01 -7.6566380000e-01  6.0083160000e-01 -7.5875220000e-01
6.0384450000e-01 -7.4947980000e-01  6.0533230000e-01 -7.4490060000e-01
6.0620750000e-01 -7.4220690000e-01  6.0689820000e-01 -7.4008120000e-01
6.0705680000e-01 -7.3959320000e-01  6.0780500000e-01 -7.3729040000e-01
6.0901530000e-01 -7.3356570000e-01  6.0965770000e-01 -7.3158860000e-01
6.0995750000e-01 -7.3066570000e-01  6.1017590000e-01 -7.2999360000e-01
6.1021300000e-01 -7.2987940000e-01  6.1033290000e-01 -7.2951030000e-01
6.1045480000e-01 -7.2913530000e-01  6.1049670000e-01 -7.2900640000e-01
6.1080300000e-01 -7.2806380000e-01  6.1146130000e-01 -7.2603760000e-01
6.1192540000e-01 -7.2460920000e-01  6.1221970000e-01 -7.2370340000e-01
6.1244580000e-01 -7.2300770000e-01  6.1248840000e-01 -7.2287670000e-01
6.1263460000e-01 -7.2242660000e-01  6.1278620000e-01 -7.2196020000e-01
6.1284170000e-01 -7.2178910000e-01  6.1332870000e-01 -7.2029040000e-01
6.1476940000e-01 -7.1585640000e-01  6.1615560000e-01 -7.1159030000e-01
6.1852880000e-01 -7.0428660000e-01  6.2235580000e-01 -6.9250840000e-01
6.2469570000e-01 -6.8530690000e-01  6.2646340000e-01 -6.7986670000e-01
6.2793620000e-01 -6.7533390000e-01  6.2832110000e-01 -6.7414940000e-01
6.3050430000e-01 -6.6743020000e-01  6.3498940000e-01 -6.5362680000e-01
6.3823260000e-01 -6.4364520000e-01  6.4153610000e-01 -6.3347820000e-01
6.4573170000e-01 -6.2056580000e-01  6.4772190000e-01 -6.1444060000e-01
6.4890390000e-01 -6.1080250000e-01  6.4984180000e-01 -6.0791590000e-01
6.5006170000e-01 -6.0723890000e-01  6.5113650000e-01 -6.0393070000e-01
6.5295560000e-01 -5.9833160000e-01  6.5398170000e-01 -5.9517450000e-01
6.5450380000e-01 -5.9356800000e-01  6.5489000000e-01 -5.9237920000e-01
6.5495790000e-01 -5.9217030000e-01  6.5518200000e-01 -5.9148070000e-01
6.5541130000e-01 -5.9077480000e-01  6.5549220000e-01 -5.9052590000e-01
6.5612810000e-01 -5.8856900000e-01  6.5769690000e-01 -5.8374080000e-01
6.5899470000e-01 -5.7974650000e-01  6.6049370000e-01 -5.7513350000e-01
6.6240320000e-01 -5.6925670000e-01  6.6328650000e-01 -5.6653830000e-01
6.6377640000e-01 -5.6503050000e-01  6.6415870000e-01 -5.6385380000e-01
6.6424450000e-01 -5.6358970000e-01  6.6463940000e-01 -5.6237410000e-01
6.6526490000e-01 -5.6044870000e-01  6.6558840000e-01 -5.5945360000e-01
6.6573550000e-01 -5.5900090000e-01  6.6584220000e-01 -5.5867260000e-01
6.6586020000e-01 -5.5861720000e-01  6.6591800000e-01 -5.5843910000e-01
6.6597680000e-01 -5.5825830000e-01  6.6599690000e-01 -5.5819640000e-01
6.6614230000e-01 -5.5774890000e-01  6.6645040000e-01 -5.5680070000e-01
6.6666460000e-01 -5.5614130000e-01  6.6679760000e-01 -5.5573200000e-01
6.6689940000e-01 -5.5541890000e-01  6.6691830000e-01 -5.5536050000e-01
6.6698320000e-01 -5.5516070000e-01  6.6705040000e-01 -5.5495420000e-01
6.6707480000e-01 -5.5487880000e-01  6.6728540000e-01 -5.5423090000e-01
6.6788430000e-01 -5.5238750000e-01  6.6844110000e-01 -5.5067400000e-01
6.6928270000e-01 -5.4808380000e-01  6.7050530000e-01 -5.4432130000e-01
6.7116400000e-01 -5.4229410000e-01  6.7158090000e-01 -5.4101100000e-01
6.7191430000e-01 -5.3998500000e-01  6.7199280000e-01 -5.3974320000e-01
6.7237400000e-01 -5.3857000000e-01  6.7300470000e-01 -5.3662920000e-01
6.7334860000e-01 -5.3557070000e-01  6.7351330000e-01 -5.3506370000e-01
6.7363380000e-01 -5.3469290000e-01  6.7365440000e-01 -5.3462940000e-01
6.7372140000e-01 -5.3442340000e-01  6.7378950000e-01 -5.3421380000e-01
6.7381300000e-01 -5.3414150000e-01  6.7398670000e-01 -5.3360690000e-01
6.7436500000e-01 -5.3244250000e-01  6.7463510000e-01 -5.3161130000e-01
6.7480960000e-01 -5.3107410000e-01  6.7494420000e-01 -5.3066000000e-01
6.7496970000e-01 -5.3058140000e-01  6.7505790000e-01 -5.3031020000e-01
6.7514930000e-01 -5.3002880000e-01  6.7518300000e-01 -5.2992510000e-01
6.7548300000e-01 -5.2900190000e-01  6.7639970000e-01 -5.2618070000e-01
6.7730570000e-01 -5.2339230000e-01  6.7900480000e-01 -5.1816330000e-01
6.8193720000e-01 -5.0913830000e-01  6.8386080000e-01 -5.0321830000e-01
6.8545210000e-01 -4.9832090000e-01  6.8680400000e-01 -4.9416020000e-01
6.8717270000e-01 -4.9302540000e-01  6.8940370000e-01 -4.8615920000e-01
6.9438580000e-01 -4.7082640000e-01  6.9829650000e-01 -4.5879120000e-01
7.0299990000e-01 -4.4431600000e-01  7.0952370000e-01 -4.2423880000e-01
7.1296750000e-01 -4.1364060000e-01  7.1523420000e-01 -4.0666450000e-01
7.1706970000e-01 -4.0101570000e-01  7.1751900000e-01 -3.9963270000e-01
7.1983520000e-01 -3.9250450000e-01  7.2396500000e-01 -3.7979520000e-01
7.2643850000e-01 -3.7218270000e-01  7.2778940000e-01 -3.6802510000e-01
7.2880170000e-01 -3.6490980000e-01  7.2898400000e-01 -3.6434880000e-01
7.2959440000e-01 -3.6247000000e-01  7.3022230000e-01 -3.6053760000e-01
7.3044730000e-01 -3.5984520000e-01  7.3229660000e-01 -3.5415390000e-01
7.3724060000e-01 -3.3893840000e-01  7.4164640000e-01 -3.2537860000e-01
7.4797710000e-01 -3.0589490000e-01  7.5736620000e-01 -2.7699870000e-01
7.6265980000e-01 -2.6070710000e-01  7.6637320000e-01 -2.4927900000e-01
7.6942470000e-01 -2.3988750000e-01  7.7020190000e-01 -2.3749570000e-01
7.7447660000e-01 -2.2434000000e-01  7.8302360000e-01 -1.9803580000e-01
7.8905970000e-01 -1.7945870000e-01  7.9509230000e-01 -1.6089260000e-01
8.0277540000e-01 -1.3724710000e-01  8.0645400000e-01 -1.2592400000e-01
8.0867450000e-01 -1.1908880000e-01  8.1044250000e-01 -1.1364580000e-01
8.1086090000e-01 -1.1235800000e-01  8.1293050000e-01 -1.0598680000e-01
8.1648070000e-01 -9.5062970000e-02  8.1851460000e-01 -8.8803810000e-02
8.1957000000e-01 -8.5555280000e-02  8.2035380000e-01 -8.3143080000e-02
8.2049250000e-01 -8.2716070000e-02  8.2095230000e-01 -8.1301090000e-02
8.2142360000e-01 -7.9850630000e-02  8.2159060000e-01 -7.9336650000e-02
8.2292090000e-01 -7.5242420000e-02  8.2628190000e-01 -6.4898700000e-02
8.2912490000e-01 -5.6145400000e-02  8.3262170000e-01 -4.5381440000e-02
8.3725040000e-01 -3.1132860000e-02  8.3950310000e-01 -2.4200910000e-02
8.4081520000e-01 -2.0165210000e-02  8.4184900000e-01 -1.6985480000e-02
8.4208560000e-01 -1.6257840000e-02  8.4319810000e-01 -1.2836400000e-02
8.4499290000e-01 -7.3162890000e-03  8.4594090000e-01 -4.3928730000e-03
8.4638250000e-01 -3.0325440000e-03  8.4670410000e-01 -2.0427080000e-03
8.4675880000e-01 -1.8745290000e-03  8.4693520000e-01 -1.3316140000e-03
8.4711440000e-01 -7.7998790000e-04  8.4717600000e-01 -5.9049270000e-04
8.4762590000e-01 7.9423510000e-04  8.4859190000e-01 3.7669560000e-03
8.4927210000e-01 5.8602780000e-03  8.4970270000e-01 7.1856190000e-03
8.5003330000e-01 8.2033280000e-03  8.5009560000e-01 8.3948040000e-03
8.5030930000e-01 9.0524830000e-03  8.5053070000e-01 9.7339540000e-03
8.5061190000e-01 9.9837840000e-03  8.5132230000e-01 1.2170290000e-02
8.5341960000e-01 1.8624700000e-02  8.5543400000e-01 2.4824660000e-02
8.5886900000e-01 3.5397110000e-02  8.6440310000e-01 5.2430450000e-02
8.6778670000e-01 6.2842240000e-02  8.7034800000e-01 7.0725310000e-02
8.7248360000e-01 7.7298270000e-02  8.7304320000e-01 7.9020410000e-02
8.7623310000e-01 8.8838340000e-02  8.8284680000e-01 1.0919320000e-01
8.8768070000e-01 1.2407070000e-01  8.9275300000e-01 1.3968190000e-01
8.9932900000e-01 1.5992120000e-01  9.0253830000e-01 1.6979830000e-01
9.0450410000e-01 1.7584790000e-01  9.0607400000e-01 1.8067930000e-01
9.0644740000e-01 1.8182870000e-01  9.0830690000e-01 1.8755150000e-01
9.1151510000e-01 1.9742540000e-01  9.1336680000e-01 2.0312430000e-01
9.1433630000e-01 2.0610860000e-01  9.1505740000e-01 2.0832820000e-01
9.1518550000e-01 2.0872230000e-01  9.1561070000e-01 2.1003110000e-01
9.1604690000e-01 2.1137360000e-01  9.1620180000e-01 2.1185040000e-01
9.1744380000e-01 2.1567310000e-01  9.2062200000e-01 2.2545440000e-01
9.2334590000e-01 2.3383850000e-01  9.2685920000e-01 2.4465180000e-01
9.3172100000e-01 2.5961570000e-01  9.3424560000e-01 2.6738520000e-01
9.3586020000e-01 2.7235410000e-01  9.3716160000e-01 2.7635880000e-01
9.3747870000e-01 2.7733470000e-01  9.3911700000e-01 2.8237650000e-01
9.4214030000e-01 2.9168040000e-01  9.4408400000e-01 2.9766370000e-01
9.4564510000e-01 3.0246860000e-01  -9.4738220000e-01 3.0782430000e-01
-9.4658270000e-01 3.0536360000e-01  -9.4570330000e-01 3.0265730000e-01
-9.4495020000e-01 3.0033940000e-01  -9.4475460000e-01 2.9973750000e-01
-9.4370730000e-01 2.9651420000e-01  -9.4183080000e-01 2.9073890000e-01
-9.4070740000e-01 2.8728140000e-01  -9.4010260000e-01 2.8541990000e-01
-9.3965080000e-01 2.8402950000e-01  -9.3957000000e-01 2.8378080000e-01
-9.3930070000e-01 2.8295190000e-01  -9.3902410000e-01 2.8210070000e-01
-9.3892560000e-01 2.8179740000e-01  -9.3812960000e-01 2.7934750000e-01
-9.3607660000e-01 2.7302920000e-01  -9.3431040000e-01 2.6759320000e-01
-9.3206470000e-01 2.6068160000e-01  -9.2905190000e-01 2.5140920000e-01
-9.2756400000e-01 2.4683010000e-01  -9.2668870000e-01 2.4413640000e-01
-9.2599810000e-01 2.4201070000e-01  -9.2583950000e-01 2.4152260000e-01
-9.2509120000e-01 2.3921990000e-01  -9.2388100000e-01 2.3549510000e-01
-9.2323860000e-01 2.3351810000e-01  -9.2293880000e-01 2.3259520000e-01
-9.2272040000e-01 2.3192310000e-01  -9.2268330000e-01 2.3180890000e-01
-9.2256340000e-01 2.3143980000e-01  -9.2244150000e-01 2.3106480000e-01
-9.2239960000e-01 2.3093590000e-01  -9.2209330000e-01 2.2999330000e-01
-9.2143500000e-01 2.2796710000e-01  -9.2097090000e-01 2.2653870000e-01
-9.2067660000e-01 2.2563300000e-01  -9.2045050000e-01 2.2493720000e-01
-9.2040800000e-01 2.2480620000e-01  -9.2026170000e-01 2.2435610000e-01
-9.2011020000e-01 2.2388970000e-01  -9.2005460000e-01 2.2371860000e-01
-9.1956760000e-01 2.2221990000e-01  -9.1812700000e-01 2.1778590000e-01
-9.1674080000e-01 2.1351980000e-01  -9.1436770000e-01 2.0621610000e-01
-9.1054080000e-01 1.9443800000e-01  -9.0820090000e-01 1.8723650000e-01
-9.0643330000e-01 1.8179630000e-01  -9.0496050000e-01 1.7726360000e-01
-9.0457560000e-01 1.7607900000e-01  -9.0239240000e-01 1.6935980000e-01
-8.9790750000e-01 1.5555640000e-01  -8.9466430000e-01 1.4557500000e-01
-8.9136080000e-01 1.3540790000e-01  -8.8716530000e-01 1.2249550000e-01
-8.8517530000e-01 1.1637080000e-01  -8.8399330000e-01 1.1273290000e-01
-8.8305540000e-01 1.0984630000e-01  -8.8283540000e-01 1.0916940000e-01
-8.8176060000e-01 1.0586110000e-01  -8.7994140000e-01 1.0026210000e-01
-8.7891540000e-01 9.7104680000e-02  -8.7839350000e-01 9.5498170000e-02
-8.7800720000e-01 9.4309370000e-02  -8.7793930000e-01 9.4100380000e-02
-8.7771530000e-01 9.3410830000e-02  -8.7748590000e-01 9.2704970000e-02
-8.7740500000e-01 9.2456020000e-02  -8.7676920000e-01 9.0499080000e-02
-8.7520050000e-01 8.5670960000e-02  -8.7390260000e-01 8.1676600000e-02
-8.7240370000e-01 7.7063500000e-02  -8.7049430000e-01 7.1186730000e-02
-8.6961110000e-01 6.8468490000e-02  -8.6912120000e-01 6.6960760000e-02
-8.6873890000e-01 6.5784080000e-02  -8.6865310000e-01 6.5519980000e-02
-8.6825810000e-01 6.4304430000e-02  -8.6763260000e-01 6.2379080000e-02
-8.6730920000e-01 6.1383850000e-02  -8.6716210000e-01 6.0931120000e-02
-8.6705540000e-01 6.0602830000e-02  -8.6703740000e-01 6.0547430000e-02
-8.6697950000e-01 6.0369290000e-02  -8.6692080000e-01 6.0188510000e-02
-8.6690070000e-01 6.0126660000e-02  -8.6675530000e-01 5.9679140000e-02
-8.6644720000e-01 5.8730890000e-02  -8.6623300000e-01 5.8071490000e-02
-8.6610000000e-01 5.7662230000e-02  -8.6599830000e-01 5.7349140000e-02
-8.6597930000e-01 5.7290690000e-02  -8.6591440000e-01 5.7090980000e-02
-8.6584720000e-01 5.6884380000e-02  -8.6582280000e-01 5.6809060000e-02
-8.6561230000e-01 5.6161170000e-02  -8.6501330000e-01 5.4317720000e-02
-8.6445660000e-01 5.2604180000e-02  -8.6361500000e-01 5.0013990000e-02
-8.6239250000e-01 4.6251520000e-02  -8.6173380000e-01 4.4224260000e-02
-8.6131690000e-01 4.2941240000e-02  -8.6098360000e-01 4.1915190000e-02
-8.6090500000e-01 4.1673350000e-02  -8.6052380000e-01 4.0500150000e-02
-8.5989320000e-01 3.8559390000e-02  -8.5954930000e-01 3.7500890000e-02
-8.5938460000e-01 3.6993850000e-02  -8.5926410000e-01 3.6623100000e-02
-8.5924350000e-01 3.6559580000e-02  -8.5917650000e-01 3.6353600000e-02
-8.5910840000e-01 3.6144010000e-02  -8.5908490000e-01 3.6071680000e-02
-8.5891130000e-01 3.5537120000e-02  -8.5853290000e-01 3.4372700000e-02
-8.5826290000e-01 3.3541520000e-02  -8.5808830000e-01 3.3004340000e-02
-8.5795370000e-01 3.2590160000e-02  -8.5792820000e-01 3.2511620000e-02
-8.5784010000e-01 3.2240440000e-02  -8.5774870000e-01 3.1958990000e-02
-8.5771500000e-01 3.1855250000e-02  -8.5741500000e-01 3.0932100000e-02
-8.5649840000e-01 2.8110910000e-02  -8.5559240000e-01 2.5322450000e-02
-8.5389340000e-01 2.0093430000e-02  -8.5096110000e-01 1.1068510000e-02
-8.4903770000e-01 5.1485200000e-03  -8.4744640000e-01 2.5110940000e-04
-8.4609460000e-01 -3.9096120000e-03  -8.4572580000e-01 -5.0443890000e-03
-8.4349490000e-01 -1.1910590000e-02  -8.3851310000e-01 -2.7243440000e-02
-8.3460280000e-01 -3.9278750000e-02  -8.2989960000e-01 -5.3753950000e-02
-8.2337630000e-01 -7.3831230000e-02  -8.1993310000e-01 -8.4429660000e-02
-8.1766630000e-01 -9.1405940000e-02  -8.1583090000e-01 -9.7054690000e-02
-8.1538150000e-01 -9.8437670000e-02  -8.1306530000e-01 -1.0556580000e-01
-8.0893600000e-01 -1.1827520000e-01  -8.0646260000e-01 -1.2588760000e-01
-8.0511190000e-01 -1.3004500000e-01  -8.0409970000e-01 -1.3316030000e-01
-8.0391750000e-01 -1.3372130000e-01  -8.0330700000e-01 -1.3560020000e-01
-8.0267910000e-01 -1.3753260000e-01  -8.0245420000e-01 -1.3822500000e-01
-8.0060500000e-01 -1.4391620000e-01  -7.9566130000e-01 -1.5913180000e-01
-7.9125560000e-01 -1.7269140000e-01  -7.8492510000e-01 -1.9217510000e-01
-7.7553630000e-01 -2.2107120000e-01  -7.7024330000e-01 -2.3736270000e-01
-7.6653020000e-01 -2.4879080000e-01  -7.6347890000e-01 -2.5818230000e-01
-7.6270180000e-01 -2.6057410000e-01  -7.5842750000e-01 -2.7372980000e-01
-7.4988110000e-01 -3.0003410000e-01  -7.4384510000e-01 -3.1861120000e-01
-7.3781270000e-01 -3.3717740000e-01  -7.3013010000e-01 -3.6082290000e-01
-7.2645000000e-01 -3.7214710000e-01  -7.2422840000e-01 -3.7898240000e-01
-7.2245930000e-01 -3.8442500000e-01  -7.2204080000e-01 -3.8571280000e-01
-7.1997000000e-01 -3.9208360000e-01  -7.1642140000e-01 -4.0300720000e-01
-7.1438810000e-01 -4.0926610000e-01  -7.1333260000e-01 -4.1251450000e-01
-7.1254880000e-01 -4.1492670000e-01  -7.1241010000e-01 -4.1535370000e-01
-7.1195030000e-01 -4.1676860000e-01  -7.1147900000e-01 -4.1821910000e-01
-7.1131200000e-01 -4.1873310000e-01  -7.0998160000e-01 -4.2282730000e-01
-7.0662070000e-01 -4.3317090000e-01  -7.0377630000e-01 -4.4192300000e-01
-7.0027860000e-01 -4.5268640000e-01  -6.9564840000e-01 -4.6693440000e-01
-6.9339620000e-01 -4.7386730000e-01  -6.9208530000e-01 -4.7790360000e-01
-6.9105260000e-01 -4.8108370000e-01  -6.9081630000e-01 -4.8181140000e-01
-6.8970510000e-01 -4.8523330000e-01  -6.8791220000e-01 -4.9075400000e-01
-6.8696130000e-01 -4.9367610000e-01  -6.8651910000e-01 -4.9503620000e-01
-6.8619740000e-01 -4.9602600000e-01  -6.8614280000e-01 -4.9619420000e-01
-6.8596640000e-01 -4.9673710000e-01  -6.8578720000e-01 -4.9728870000e-01
-6.8572560000e-01 -4.9747820000e-01  -6.8527570000e-01 -4.9886290000e-01
-6.8430980000e-01 -5.0183570000e-01  -6.8362970000e-01 -5.0392900000e-01
-6.8319900000e-01 -5.0525430000e-01  -6.8286840000e-01 -5.0627200000e-01
-6.8280620000e-01 -5.0646350000e-01  -6.8259250000e-01 -5.0712120000e-01
-6.8237100000e-01 -5.0780260000e-01  -6.8228990000e-01 -5.0805250000e-01
-6.8157940000e-01 -5.1023900000e-01  -6.7948240000e-01 -5.1669340000e-01
-6.7746790000e-01 -5.2289330000e-01  -6.7403250000e-01 -5.3346550000e-01
-6.6849790000e-01 -5.5049860000e-01  -6.6511530000e-01 -5.6091080000e-01
-6.6255390000e-01 -5.6879380000e-01  -6.6041820000e-01 -5.7536670000e-01
-6.5985860000e-01 -5.7708880000e-01  -6.5666850000e-01 -5.8690660000e-01
-6.5005490000e-01 -6.0726130000e-01  -6.4522090000e-01 -6.2213870000e-01
-6.4014850000e-01 -6.3774980000e-01  -6.3357230000e-01 -6.5798900000e-01
-6.3036300000e-01 -6.6786600000e-01  -6.2839780000e-01 -6.7391560000e-01
-6.2682800000e-01 -6.7874700000e-01  -6.2645450000e-01 -6.7989640000e-01
-6.2459510000e-01 -6.8561910000e-01  -6.2138690000e-01 -6.9549300000e-01
-6.1953530000e-01 -7.0119180000e-01  -6.1856570000e-01 -7.0417590000e-01
-6.1784450000e-01 -7.0639540000e-01  -6.1771640000e-01 -7.0678950000e-01
-6.1729120000e-01 -7.0809830000e-01  -6.1685500000e-01 -7.0944080000e-01
-6.1670010000e-01 -7.0991760000e-01  -6.1545800000e-01 -7.1374030000e-01
-6.1227990000e-01 -7.2352150000e-01  -6.0955560000e-01 -7.3190550000e-01
-6.0604210000e-01 -7.4271860000e-01  -6.0118000000e-01 -7.5768230000e-01
-5.9865550000e-01 -7.6545210000e-01  -5.9704100000e-01 -7.7042110000e-01
-5.9573990000e-01 -7.7442590000e-01  -5.9542280000e-01 -7.7540170000e-01
-5.9378470000e-01 -7.8044360000e-01  -5.9076180000e-01 -7.8974750000e-01
-5.8881770000e-01 -7.9573050000e-01  -5.8725640000e-01 -8.0053540000e-01
-5.8551650000e-01 -8.0589040000e-01  -5.8292920000e-01 -8.0589040000e-01
-5.8008360000e-01 -8.0589040000e-01  -5.7764630000e-01 -8.0589040000e-01
-5.7701350000e-01 -8.0589040000e-01  -5.7362430000e-01 -8.0589050000e-01
-5.6755180000e-01 -8.0589050000e-01  -5.6391640000e-01 -8.0589050000e-01
-5.6195920000e-01 -8.0589050000e-01  -5.6049710000e-01 -8.0589050000e-01
-5.6023570000e-01 -8.0589050000e-01  -5.5936410000e-01 -8.0589050000e-01
-5.5846910000e-01 -8.0589050000e-01  -5.5815020000e-01 -8.0589050000e-01
-5.5557420000e-01 -8.0589050000e-01  -5.4893070000e-01 -8.0589050000e-01
-5.4321500000e-01 -8.0589050000e-01  -5.3594780000e-01 -8.0589060000e-01
-5.2619820000e-01 -8.0589060000e-01  -5.2138350000e-01 -8.0589050000e-01
-5.1855110000e-01 -8.0589050000e-01  -5.1631610000e-01 -8.0589060000e-01
-5.1580290000e-01 -8.0589060000e-01  -5.1338160000e-01 -8.0589060000e-01
-5.0946520000e-01 -8.0589060000e-01  -5.0738640000e-01 -8.0589060000e-01
-5.0641600000e-01 -8.0589060000e-01  -5.0570930000e-01 -8.0589060000e-01
-5.0558920000e-01 -8.0589060000e-01  -5.0520120000e-01 -8.0589060000e-01
-5.0480690000e-01 -8.0589060000e-01  -5.0467130000e-01 -8.0589060000e-01
-5.0368020000e-01 -8.0589060000e-01  -5.0154970000e-01 -8.0589060000e-01
-5.0004780000e-01 -8.0589060000e-01  -4.9909550000e-01 -8.0589060000e-01
-4.9836390000e-01 -8.0589060000e-01  -4.9822610000e-01 -8.0589060000e-01
-4.9775290000e-01 -8.0589060000e-01  -4.9726250000e-01 -8.0589060000e-01
-4.9708260000e-01 -8.0589060000e-01  -4.9550670000e-01 -8.0589060000e-01
-4.9084460000e-01 -8.0589060000e-01  -4.8635890000e-01 -8.0589070000e-01
-4.7867940000e-01 -8.0589070000e-01  -4.6629520000e-01 -8.0589070000e-01
-4.5872300000e-01 -8.0589080000e-01  -4.5300290000e-01 -8.0589080000e-01
-4.4823690000e-01 -8.0589080000e-01  -4.4699140000e-01 -8.0589080000e-01
-4.3992640000e-01 -8.0589090000e-01  -4.2541270000e-01 -8.0589090000e-01
-4.1491750000e-01 -8.0589090000e-01  -4.0422730000e-01 -8.0589100000e-01
-3.9065040000e-01 -8.0589100000e-01  -3.8421020000e-01 -8.0589100000e-01
-3.8038500000e-01 -8.0589100000e-01  -3.7734980000e-01 -8.0589090000e-01
-3.7663810000e-01 -8.0589090000e-01  -3.7315960000e-01 -8.0589090000e-01
-3.6727240000e-01 -8.0589080000e-01  -3.6395270000e-01 -8.0589100000e-01
-3.6226360000e-01 -8.0589100000e-01  -3.6101360000e-01 -8.0589110000e-01
-3.6079390000e-01 -8.0589110000e-01  -3.6006880000e-01 -8.0589110000e-01
-3.5932660000e-01 -8.0589110000e-01  -3.5906490000e-01 -8.0589110000e-01
-3.5700720000e-01 -8.0589110000e-01  -3.5193060000e-01 -8.0589110000e-01
-3.4773080000e-01 -8.0589110000e-01  -3.4288030000e-01 -8.0589120000e-01
-3.3670110000e-01 -8.0589120000e-01  -3.3384290000e-01 -8.0589120000e-01
-3.3225750000e-01 -8.0589120000e-01  -3.3102030000e-01 -8.0589120000e-01
-3.3074260000e-01 -8.0589120000e-01  -3.2946450000e-01 -8.0589120000e-01
-3.2744010000e-01 -8.0589120000e-01  -3.2639370000e-01 -8.0589120000e-01
-3.2591760000e-01 -8.0589120000e-01  -3.2557250000e-01 -8.0589120000e-01
-3.2551420000e-01 -8.0589120000e-01  -3.2532690000e-01 -8.0589120000e-01
-3.2513680000e-01 -8.0589120000e-01  -3.2507180000e-01 -8.0589120000e-01
-3.2460120000e-01 -8.0589120000e-01  -3.2360420000e-01 -8.0589130000e-01
-3.2291090000e-01 -8.0589130000e-01  -3.2248050000e-01 -8.0589130000e-01
-3.2215130000e-01 -8.0589130000e-01  -3.2208990000e-01 -8.0589130000e-01
-3.2187990000e-01 -8.0589130000e-01  -3.2166270000e-01 -8.0589130000e-01
-3.2158350000e-01 -8.0589130000e-01  -3.2090220000e-01 -8.0589130000e-01
-3.1896390000e-01 -8.0589130000e-01  -3.1716220000e-01 -8.0589130000e-01
-3.1443870000e-01 -8.0589130000e-01  -3.1048260000e-01 -8.0589140000e-01
-3.0835110000e-01 -8.0589140000e-01  -3.0700200000e-01 -8.0589140000e-01
-3.0592320000e-01 -8.0589140000e-01  -3.0566890000e-01 -8.0589140000e-01
-3.0443530000e-01 -8.0589140000e-01  -3.0239470000e-01 -8.0589140000e-01
-3.0128170000e-01 -8.0589140000e-01  -3.0074860000e-01 -8.0589140000e-01
-3.0035870000e-01 -8.0589140000e-01  -3.0029200000e-01 -8.0589140000e-01
-3.0007540000e-01 -8.0589140000e-01  -2.9985500000e-01 -8.0589140000e-01
-2.9977900000e-01 -8.0589140000e-01  -2.9921690000e-01 -8.0589150000e-01
-2.9799250000e-01 -8.0589150000e-01  -2.9711860000e-01 -8.0589150000e-01
-2.9655380000e-01 -8.0589150000e-01  -2.9611830000e-01 -8.0589150000e-01
-2.9603570000e-01 -8.0589150000e-01  -2.9575060000e-01 -8.0589150000e-01
-2.9545460000e-01 -8.0589150000e-01  -2.9534560000e-01 -8.0589150000e-01
-2.9437490000e-01 -8.0589150000e-01  -2.9140850000e-01 -8.0589150000e-01
-2.8847660000e-01 -8.0589160000e-01  -2.8297850000e-01 -8.0589160000e-01
-2.7348910000e-01 -8.0589170000e-01  -2.6726450000e-01 -8.0589180000e-01
-2.6211510000e-01 -8.0589180000e-01  -2.5774020000e-01 -8.0589180000e-01
-2.5654700000e-01 -8.0589180000e-01  -2.4932750000e-01 -8.0589190000e-01
-2.3320560000e-01 -8.0589200000e-01  -2.2055100000e-01 -8.0589220000e-01
-2.0533090000e-01 -8.0589240000e-01  -1.8422050000e-01 -8.0589260000e-01
-1.7307700000e-01 -8.0589300000e-01  -1.6574180000e-01 -8.0589300000e-01
-1.5980230000e-01 -8.0589300000e-01  -1.5834820000e-01 -8.0589300000e-01
-1.5085320000e-01 -8.0589300000e-01  -1.3748980000e-01 -8.0589310000e-01
-1.2948560000e-01 -8.0589320000e-01  -1.2511430000e-01 -8.0589340000e-01
-1.2183870000e-01 -8.0589340000e-01  -1.2124880000e-01 -8.0589340000e-01
-1.1927330000e-01 -8.0589340000e-01  -1.1724140000e-01 -8.0589350000e-01
-1.1651340000e-01 -8.0589350000e-01  -1.1052930000e-01 -8.0589350000e-01
-9.4530690000e-02 -8.0589370000e-01  -8.0273290000e-02 -8.0589380000e-01
-5.9786920000e-02 -8.0589400000e-01  -2.9403730000e-02 -8.0589430000e-01
-1.2274250000e-02 -8.0589470000e-01  -2.5818390000e-04 -8.0589500000e-01
9.6166130000e-03 -8.0589530000e-01  1.2131490000e-02 -8.0589530000e-01
2.5964220000e-02 -8.0589570000e-01  5.3622100000e-02 -8.0589630000e-01
7.3155360000e-02 -8.0589630000e-01  9.2676940000e-02 -8.0589650000e-01
1.1753920000e-01 -8.0589690000e-01  1.2944730000e-01 -8.0589610000e-01
1.3663490000e-01 -8.0589540000e-01  1.4235780000e-01 -8.0589460000e-01
1.4371200000e-01 -8.0589440000e-01  1.5041080000e-01 -8.0589360000e-01
1.6189610000e-01 -8.0589430000e-01  1.6847690000e-01 -8.0589480000e-01
1.7189230000e-01 -8.0589480000e-01  1.7442870000e-01 -8.0589470000e-01
1.7487770000e-01 -8.0589470000e-01  1.7636540000e-01 -8.0589470000e-01
1.7789060000e-01 -8.0589470000e-01  1.7843100000e-01 -8.0589470000e-01
1.8273590000e-01 -8.0589460000e-01  1.9361190000e-01 -8.0589450000e-01
2.0281460000e-01 -8.0589400000e-01  2.1413210000e-01 -8.0589350000e-01
2.2911360000e-01 -8.0589280000e-01  2.3640300000e-01 -8.0589320000e-01
2.4064680000e-01 -8.0589390000e-01  2.4399040000e-01 -8.0589440000e-01
2.4475560000e-01 -8.0589460000e-01  2.4835330000e-01 -8.0589520000e-01
2.5415790000e-01 -8.0589620000e-01  2.5723090000e-01 -8.0589470000e-01
2.5866110000e-01 -8.0589440000e-01  2.5970190000e-01 -8.0589440000e-01
2.5987870000e-01 -8.0589440000e-01  2.6044960000e-01 -8.0589440000e-01
2.6102960000e-01 -8.0589440000e-01  2.6122880000e-01 -8.0589440000e-01
2.6268480000e-01 -8.0589440000e-01  2.6581050000e-01 -8.0589440000e-01
2.6801160000e-01 -8.0589450000e-01  2.6940510000e-01 -8.0589440000e-01
2.7047520000e-01 -8.0589440000e-01  2.7067650000e-01 -8.0589440000e-01
2.7136800000e-01 -8.0589440000e-01  2.7208460000e-01 -8.0589450000e-01
2.7234730000e-01 -8.0589450000e-01  2.7464630000e-01 -8.0589450000e-01
2.8143290000e-01 -8.0589460000e-01  2.8795180000e-01 -8.0589450000e-01
2.9906830000e-01 -8.0589440000e-01  3.1697800000e-01 -8.0589410000e-01
3.2792590000e-01 -8.0589470000e-01  3.3621470000e-01 -8.0589470000e-01
3.4312590000e-01 -8.0589460000e-01  3.4493660000e-01 -8.0589460000e-01
3.5525980000e-01 -8.0589450000e-01  3.7666200000e-01 -8.0589460000e-01
3.9230510000e-01 -8.0589460000e-01  4.0871960000e-01 -8.0589460000e-01
4.3000040000e-01 -8.0589450000e-01  4.4038580000e-01 -8.0589450000e-01
4.4674660000e-01 -8.0589490000e-01  4.5182670000e-01 -8.0589490000e-01
4.5303520000e-01 -8.0589490000e-01  4.5905250000e-01 -8.0589490000e-01
4.6943450000e-01 -8.0589500000e-01  4.7542660000e-01 -8.0589500000e-01
4.7856430000e-01 -8.0589490000e-01  4.8089810000e-01 -8.0589490000e-01
4.8131250000e-01 -8.0589490000e-01  4.8268860000e-01 -8.0589490000e-01
4.8410020000e-01 -8.0589490000e-01  4.8460150000e-01 -8.0589490000e-01
4.8862100000e-01 -8.0589490000e-01  4.9890560000e-01 -8.0589500000e-01
5.0772120000e-01 -8.0589480000e-01  5.1909080000e-01 -8.0589470000e-01
5.3482470000e-01 -8.0589460000e-01  5.4299430000e-01 -8.0589470000e-01
5.4821900000e-01 -8.0589480000e-01  5.5242980000e-01 -8.0589490000e-01
5.5345590000e-01 -8.0589490000e-01  5.5875720000e-01 -8.0589500000e-01
5.6853990000e-01 -8.0589530000e-01  5.7483090000e-01 -8.0589500000e-01
5.7988310000e-01 -8.0589500000e-01  0.0000000000e+00 9.9613730000e-01
-2.0932050000e-03 9.9461650000e-01  -4.3953440000e-03 9.9294390000e-01
-6.3670880000e-03 9.9151140000e-01  -6.8791150000e-03 9.9113940000e-01
-9.6209940000e-03 9.8914730000e-01  -1.4533760000e-02 9.8557800000e-01
-1.7474900000e-02 9.8344110000e-01  -1.9058330000e-02 9.8229060000e-01
-2.0241120000e-02 9.8143130000e-01  -2.0452680000e-02 9.8127760000e-01
-2.1157790000e-02 9.8076530000e-01  -2.1881840000e-02 9.8023920000e-01
-2.2139810000e-02 9.8005180000e-01  -2.4223870000e-02 9.7853760000e-01
-2.9598540000e-02 9.7463270000e-01  -3.4222650000e-02 9.7127310000e-01
-4.0101990000e-02 9.6700150000e-01  -4.7989520000e-02 9.6127080000e-01
-5.1884760000e-02 9.5844070000e-01  -5.4176220000e-02 9.5677580000e-01
-5.5984390000e-02 9.5546210000e-01  -5.6399570000e-02 9.5516040000e-01
-5.8358420000e-02 9.5373720000e-01  -6.1526840000e-02 9.5143520000e-01
-6.3208630000e-02 9.5021330000e-01  -6.3993710000e-02 9.4964290000e-01
-6.4565370000e-02 9.4922760000e-01  -6.4662580000e-02 9.4915700000e-01
-6.4976500000e-02 9.4892890000e-01  -6.5295500000e-02 9.4869710000e-01
-6.5405130000e-02 9.4861750000e-01  -6.6207010000e-02 9.4803490000e-01
-6.7930570000e-02 9.4678260000e-01  -6.9145630000e-02 9.4589980000e-01
-6.9916100000e-02 9.4534000000e-01  -7.0507970000e-02 9.4491000000e-01
-7.0619390000e-02 9.4482910000e-01  -7.1002250000e-02 9.4455090000e-01
-7.1399000000e-02 9.4426260000e-01  -7.1544510000e-02 9.4415690000e-01
-7.2819440000e-02 9.4323060000e-01  -7.6591170000e-02 9.4049030000e-01
-8.0220140000e-02 9.3785370000e-01  -8.6433000000e-02 9.3333980000e-01
-9.6452040000e-02 9.2606050000e-01  -1.0257810000e-01 9.2160970000e-01
-1.0720570000e-01 9.1824750000e-01  -1.1106150000e-01 9.1544610000e-01
-1.1206920000e-01 9.1471400000e-01  -1.1778490000e-01 9.1056130000e-01
-1.2952670000e-01 9.0203040000e-01  -1.3801740000e-01 8.9586140000e-01
-1.4666590000e-01 8.8957780000e-01  -1.5764980000e-01 8.8159740000e-01
-1.6285960000e-01 8.7781240000e-01  -1.6595410000e-01 8.7556430000e-01
-1.6840970000e-01 8.7378030000e-01  -1.6898550000e-01 8.7336200000e-01
-1.7179970000e-01 8.7131750000e-01  -1.7656270000e-01 8.6785720000e-01
-1.7924850000e-01 8.6590550000e-01  -1.8061510000e-01 8.6491260000e-01
-1.8162630000e-01 8.6417780000e-01  -1.8180410000e-01 8.6404870000e-01
-1.8239070000e-01 8.6362250000e-01  -1.8299110000e-01 8.6318630000e-01
-1.8320290000e-01 8.6303240000e-01  -1.8486760000e-01 8.6182300000e-01
-1.8897460000e-01 8.5883900000e-01  -1.9237250000e-01 8.5637030000e-01
-1.9629660000e-01 8.5351930000e-01  -2.0129570000e-01 8.4988720000e-01
-2.0360780000e-01 8.4820740000e-01  -2.0489040000e-01 8.4727560000e-01
-2.0589130000e-01 8.4654840000e-01  -2.0611600000e-01 8.4638520000e-01
-2.0715000000e-01 8.4563400000e-01  -2.0878780000e-01 8.4444410000e-01
-2.0963440000e-01 8.4382890000e-01  -2.1001960000e-01 8.4354910000e-01
-2.1029880000e-01 8.4334620000e-01  -2.1034590000e-01 8.4331200000e-01
-2.1049750000e-01 8.4320190000e-01  -2.1065130000e-01 8.4309010000e-01
-2.1070390000e-01 8.4305190000e-01  -2.1108460000e-01 8.4277530000e-01
-2.1189120000e-01 8.4218930000e-01  -2.1245210000e-01 8.4178180000e-01
-2.1280030000e-01 8.4152880000e-01  -2.1306660000e-01 8.4133530000e-01
-2.1311630000e-01 8.4129920000e-01  -2.1328620000e-01 8.4117580000e-01
-2.1346190000e-01 8.4104810000e-01  -2.1352600000e-01 8.4100150000e-01
-2.1407710000e-01 8.4060110000e-01  -2.1564530000e-01 8.3946180000e-01
-2.1710290000e-01 8.3840280000e-01  -2.1930630000e-01 8.3680200000e-01
-2.2250680000e-01 8.3447670000e-01  -2.2423130000e-01 8.3322380000e-01
-2.2532270000e-01 8.3243080000e-01  -2.2619550000e-01 8.3179670000e-01
-2.2640120000e-01 8.3164720000e-01  -2.2739920000e-01 8.3092220000e-01
-2.2905010000e-01 8.2972270000e-01  -2.2995060000e-01 8.2906850000e-01
-2.3038190000e-01 8.2875520000e-01  -2.3069730000e-01 8.2852600000e-01
-2.3075130000e-01 8.2848680000e-01  -2.3092650000e-01 8.2835950000e-01
-2.3110480000e-01 8.2823000000e-01  -2.3116630000e-01 8.2818530000e-01
-2.3162100000e-01 8.2785490000e-01  -2.3261160000e-01 8.2713520000e-01
-2.3331860000e-01 8.2662150000e-01  -2.3377560000e-01 8.2628960000e-01
-2.3412790000e-01 8.2603360000e-01  -2.3419470000e-01 8.2598500000e-01
-2.3442540000e-01 8.2581740000e-01  -2.3466480000e-01 8.2564350000e-01
-2.3475300000e-01 8.2557940000e-01  -2.3553830000e-01 8.2500890000e-01
-2.3793820000e-01 8.2326530000e-01  -2.4031020000e-01 8.2154190000e-01
-2.4475830000e-01 8.1831030000e-01  -2.5243530000e-01 8.1273260000e-01
-2.5747120000e-01 8.0907390000e-01  -2.6163720000e-01 8.0604720000e-01
-2.6517650000e-01 8.0347580000e-01  -2.6614180000e-01 8.0277450000e-01
-2.7198260000e-01 7.9853100000e-01  -2.8502550000e-01 7.8905490000e-01
-2.9526340000e-01 7.8161670000e-01  -3.0757680000e-01 7.7267070000e-01
-3.2465560000e-01 7.6026240000e-01  -3.3367150000e-01 7.5371250000e-01
-3.3960600000e-01 7.4940080000e-01  -3.4441110000e-01 7.4590960000e-01
-3.4558750000e-01 7.4505480000e-01  -3.5165100000e-01 7.4064930000e-01
-3.6246230000e-01 7.3279460000e-01  -3.6893780000e-01 7.2809000000e-01
-3.7247430000e-01 7.2552070000e-01  -3.7512440000e-01 7.2359530000e-01
-3.7560160000e-01 7.2324860000e-01  -3.7719990000e-01 7.2208740000e-01
-3.7884370000e-01 7.2089310000e-01  -3.7943270000e-01 7.2046520000e-01
-3.8427390000e-01 7.1694790000e-01  -3.9721710000e-01 7.0754420000e-01
-4.0875160000e-01 6.9916400000e-01  -4.2532540000e-01 6.8712250000e-01
-4.4990600000e-01 6.6926380000e-01  -4.6376460000e-01 6.5919510000e-01
-4.7348610000e-01 6.5213220000e-01  -4.8147500000e-01 6.4632800000e-01
-4.8350950000e-01 6.4484980000e-01  -4.9470050000e-01 6.3671920000e-01
-5.1707620000e-01 6.2046240000e-01  -5.3287880000e-01 6.0898130000e-01
-5.4867220000e-01 5.9750690000e-01  -5.6878620000e-01 5.8289330000e-01
-5.7841790000e-01 5.7589490000e-01  -5.8423190000e-01 5.7167030000e-01
-5.8886170000e-01 5.6830610000e-01  -5.8995710000e-01 5.6751010000e-01
-5.9537630000e-01 5.6357220000e-01  -6.0466900000e-01 5.5682140000e-01
-6.0999340000e-01 5.5295320000e-01  -6.1275660000e-01 5.5094560000e-01
-6.1480860000e-01 5.4945470000e-01  -6.1517180000e-01 5.4919080000e-01
-6.1637540000e-01 5.4831630000e-01  -6.1760930000e-01 5.4741990000e-01
-6.1804650000e-01 5.4710220000e-01  -6.2152920000e-01 5.4457190000e-01
-6.3032810000e-01 5.3817910000e-01  -6.3777300000e-01 5.3276920000e-01
-6.4692870000e-01 5.2611660000e-01  -6.5904860000e-01 5.1731020000e-01
-6.6494630000e-01 5.1302570000e-01  -6.6838000000e-01 5.1053150000e-01
-6.7108530000e-01 5.0856660000e-01  -6.7170440000e-01 5.0811700000e-01
-6.7461530000e-01 5.0600270000e-01  -6.7931180000e-01 5.0259160000e-01
-6.8179700000e-01 5.0078440000e-01  -6.8295380000e-01 4.9994350000e-01
-6.8379580000e-01 4.9933180000e-01  -6.8393890000e-01 4.9922790000e-01
-6.8440070000e-01 4.9889230000e-01  -6.8487000000e-01 4.9855140000e-01
-6.8503120000e-01 4.9843430000e-01  -6.8620910000e-01 4.9757850000e-01
-6.8873780000e-01 4.9574130000e-01  -6.9051860000e-01 4.9444750000e-01
-6.9164590000e-01 4.9362840000e-01  -6.9251160000e-01 4.9299950000e-01
-6.9267450000e-01 4.9288110000e-01  -6.9323390000e-01 4.9247470000e-01
-6.9381360000e-01 4.9205350000e-01  -6.9402610000e-01 4.9189910000e-01
-6.9588610000e-01 4.9054780000e-01  -7.0137660000e-01 4.8655870000e-01
-7.0665060000e-01 4.8272690000e-01  -7.1564390000e-01 4.7619270000e-01
-7.3013300000e-01 4.6566540000e-01  -7.3899030000e-01 4.5923070000e-01
-7.4569590000e-01 4.5435870000e-01  -7.5128710000e-01 4.5029640000e-01
-7.5275200000e-01 4.4923210000e-01  -7.6110350000e-01 4.4316420000e-01
-7.7841820000e-01 4.3058430000e-01  -7.9107370000e-01 4.2138960000e-01
-8.0435320000e-01 4.1174130000e-01  -8.2156970000e-01 3.9923270000e-01
-8.2997150000e-01 3.9312840000e-01  -8.3511780000e-01 3.8938960000e-01
-8.3922770000e-01 3.8640370000e-01  -8.4020540000e-01 3.8569330000e-01
-8.4507350000e-01 3.8215640000e-01  -8.5347270000e-01 3.7605400000e-01
-8.5832040000e-01 3.7253200000e-01  -8.6085880000e-01 3.7068750000e-01
-8.6274680000e-01 3.6931580000e-01  -8.6308210000e-01 3.6907220000e-01
-8.6419540000e-01 3.6826330000e-01  -8.6533740000e-01 3.6743360000e-01
-8.6574300000e-01 3.6713890000e-01  -8.6899470000e-01 3.6477630000e-01
-8.7731520000e-01 3.5873120000e-01  -8.8444690000e-01 3.5354950000e-01
-8.9364500000e-01 3.4686650000e-01  -9.0637390000e-01 3.3761820000e-01
-9.1298320000e-01 3.3281640000e-01  -9.1721010000e-01 3.2974550000e-01
-9.2061680000e-01 3.2727050000e-01  -9.2144690000e-01 3.2666750000e-01
-9.2573580000e-01 3.2355150000e-01  -9.3365030000e-01 3.1780160000e-01
-9.3873970000e-01 3.1410360000e-01  -9.4282690000e-01 3.1113390000e-01
4.3619590000e-01 3.3657060000e-01  4.0565940000e-01 3.5270870000e-01
4.0875430000e-01 3.7840130000e-01  4.3107830000e-01 3.8317260000e-01
4.4453630000e-01 3.6695960000e-01  4.6501900000e-01 3.7236130000e-01
4.7585170000e-01 3.5562420000e-01  4.6649860000e-01 3.3935420000e-01
4.7767550000e-01 3.2436830000e-01  4.6824290000e-01 3.0981310000e-01
4.5123200000e-01 3.1074170000e-01  4.4388250000e-01 2.9446930000e-01
4.2662560000e-01 2.9500500000e-01  4.1770480000e-01 3.1136120000e-01
3.9537520000e-01 3.0796260000e-01  3.7052850000e-01 3.3613100000e-01
3.9037530000e-01 2.7704220000e-01  4.1821350000e-01 2.7990740000e-01
4.2959370000e-01 2.6580690000e-01  4.2044110000e-01 2.5065620000e-01
4.0322410000e-01 2.5238320000e-01  3.9432550000e-01 2.3720160000e-01
3.7810090000e-01 2.4044140000e-01  3.7319490000e-01 2.5573180000e-01
3.5655480000e-01 2.5690190000e-01  3.5152920000e-01 2.7217260000e-01
3.6295060000e-01 2.8517280000e-01  3.5284040000e-01 3.0377540000e-01
3.2428970000e-01 2.9783080000e-01  3.3574220000e-01 2.7469620000e-01
3.2710200000e-01 2.6045900000e-01  3.1138670000e-01 2.6373700000e-01
3.0754930000e-01 2.7873810000e-01  2.9224920000e-01 2.8123910000e-01
2.8947660000e-01 2.9539080000e-01  3.0020760000e-01 3.0476390000e-01
2.9499680000e-01 3.1890720000e-01  3.0576860000e-01 3.2907270000e-01
3.2138260000e-01 3.2431630000e-01  3.3404520000e-01 3.4050880000e-01
3.1670590000e-01 3.6398930000e-01  3.0141210000e-01 3.4351120000e-01
2.8580600000e-01 3.4453850000e-01  2.8136280000e-01 3.5885040000e-01
2.9194100000e-01 3.6916210000e-01  2.8636150000e-01 3.8312380000e-01
2.9668310000e-01 3.9290200000e-01  3.1060210000e-01 3.8872870000e-01
3.2042790000e-01 4.0135490000e-01  3.3636610000e-01 3.9706480000e-01
3.3993930000e-01 3.7912970000e-01  3.6241590000e-01 3.7365430000e-01
3.8319940000e-01 4.0579840000e-01  3.4857420000e-01 4.1033690000e-01
3.3868520000e-01 4.2702890000e-01  3.4934250000e-01 4.4331850000e-01
3.7141430000e-01 4.4138590000e-01  3.8351810000e-01 4.6608060000e-01
4.2987250000e-01 4.7029030000e-01  4.1939210000e-01 4.2451670000e-01
4.3994000000e-01 4.0482560000e-01  3.1054940000e-01 4.2620490000e-01
3.1539350000e-01 4.5663800000e-01  3.3861050000e-01 4.6169380000e-01
2.9311500000e-01 4.0679720000e-01  2.7806860000e-01 4.0828980000e-01
2.7357960000e-01 4.2226330000e-01  2.8428790000e-01 4.3429790000e-01
2.7478030000e-01 4.5161470000e-01  2.9045050000e-01 4.8121980000e-01
2.4806070000e-01 4.4608640000e-01  2.5896170000e-01 4.2452840000e-01
2.5121770000e-01 4.1122010000e-01  2.3642600000e-01 4.1370040000e-01
2.3231810000e-01 4.2791500000e-01  2.1731100000e-01 4.3012450000e-01
2.1465050000e-01 4.4419960000e-01  2.2537820000e-01 4.5308850000e-01
2.2095110000e-01 4.6688030000e-01  2.3164990000e-01 4.7588490000e-01
2.4588490000e-01 4.7085520000e-01  2.5775450000e-01 4.8514980000e-01
2.4344830000e-01 5.0634710000e-01  2.2853860000e-01 4.8944890000e-01
2.1426390000e-01 4.9174760000e-01  2.1176990000e-01 5.0540090000e-01
2.2248090000e-01 5.1340030000e-01  2.1937230000e-01 5.2638970000e-01
2.2962980000e-01 5.3336250000e-01  2.4075980000e-01 5.2805360000e-01
2.5022920000e-01 5.3714600000e-01  2.6221730000e-01 5.3211330000e-01
2.6387070000e-01 5.1777140000e-01  2.8160510000e-01 5.1303620000e-01
2.9493750000e-01 5.3591020000e-01  2.7232720000e-01 5.4086600000e-01
2.6735760000e-01 5.5380910000e-01  2.7711030000e-01 5.6282530000e-01
2.8958380000e-01 5.5831120000e-01  2.9875470000e-01 5.6847620000e-01
3.1109950000e-01 5.6396680000e-01  3.1323250000e-01 5.5055120000e-01
3.2797310000e-01 5.4715800000e-01  3.3041440000e-01 5.3161430000e-01
3.1622780000e-01 5.2186300000e-01  3.1949120000e-01 5.0058090000e-01
3.5508940000e-01 4.9325870000e-01  3.4673740000e-01 5.2580920000e-01
3.5803510000e-01 5.4109070000e-01  3.7720580000e-01 5.3754500000e-01
3.8348030000e-01 5.1617400000e-01  4.1111020000e-01 5.1319570000e-01
3.4593920000e-01 5.6620070000e-01  3.7589640000e-01 5.7514530000e-01
3.9052590000e-01 5.5496180000e-01  3.2129610000e-01 5.7284720000e-01
3.1591160000e-01 5.8609970000e-01  3.2544980000e-01 5.9628760000e-01
3.4086650000e-01 5.9295890000e-01  3.5126030000e-01 6.1006380000e-01
3.8823100000e-01 6.1200110000e-01  3.3219430000e-01 6.2944680000e-01
3.2023130000e-01 6.0939900000e-01  3.0588230000e-01 6.0912690000e-01
3.0071900000e-01 6.2171440000e-01  3.0938510000e-01 6.3188210000e-01
3.0324460000e-01 6.4396950000e-01  3.1172360000e-01 6.5335640000e-01
3.2414660000e-01 6.5081070000e-01  3.3126500000e-01 6.6238310000e-01
3.4485900000e-01 6.6071080000e-01  3.5059780000e-01 6.4617320000e-01
3.7120160000e-01 6.4568990000e-01  3.8010510000e-01 6.7646060000e-01
3.5252370000e-01 6.7295370000e-01  3.4298210000e-01 6.8401580000e-01
3.4864370000e-01 6.9611540000e-01  3.6242610000e-01 6.9785100000e-01
3.6431400000e-01 7.1227880000e-01  4.1038390000e-01 6.6475190000e-01
4.1695710000e-01 6.3949620000e-01  4.5074700000e-01 6.3442330000e-01
4.7806770000e-01 6.2021590000e-01  4.7965940000e-01 5.9921670000e-01
4.6121260000e-01 5.9072440000e-01  4.4422100000e-01 6.0333050000e-01
4.2206480000e-01 5.9061190000e-01  4.2834800000e-01 5.5095280000e-01
4.5991480000e-01 5.7015250000e-01  4.7985560000e-01 5.6171320000e-01
4.8027320000e-01 5.4055900000e-01  4.6026810000e-01 5.2884690000e-01
4.6497360000e-01 5.0111930000e-01  5.0706480000e-01 5.8075110000e-01
5.1771320000e-01 5.4742650000e-01  5.0010650000e-01 5.3073510000e-01
5.3879210000e-01 5.8036580000e-01  5.5049010000e-01 5.6682630000e-01
5.4906860000e-01 5.3804780000e-01  5.6524210000e-01 5.7386200000e-01
5.7469910000e-01 5.6435960000e-01  5.7433020000e-01 5.5065120000e-01
5.9358430000e-01 5.4449910000e-01  6.0977230000e-01 5.3474670000e-01
6.0971480000e-01 5.2108080000e-01  5.9724900000e-01 5.1696150000e-01
5.8736380000e-01 5.2607800000e-01  5.7208920000e-01 5.1949430000e-01
5.7489800000e-01 4.9501780000e-01  5.9487450000e-01 5.0425670000e-01
6.0631780000e-01 4.9708870000e-01  6.0367700000e-01 4.8450080000e-01
5.9156470000e-01 4.8100670000e-01  5.9027570000e-01 4.6814480000e-01
5.7838770000e-01 4.6457420000e-01  5.6914960000e-01 4.7359060000e-01
5.5588180000e-01 4.6782760000e-01  5.4518250000e-01 4.7851390000e-01
5.5077430000e-01 4.9398580000e-01  5.3664200000e-01 5.0879130000e-01
5.0380360000e-01 4.9527610000e-01  5.2906790000e-01 4.7385630000e-01
5.2890590000e-01 4.5531320000e-01  5.1165620000e-01 4.4699740000e-01
4.9419960000e-01 4.6043240000e-01  4.7024640000e-01 4.4666840000e-01
5.5291520000e-01 4.4265450000e-01  5.3482930000e-01 4.1795300000e-01
5.1126970000e-01 4.2532420000e-01  5.7574300000e-01 4.5199260000e-01
5.8747160000e-01 4.4516030000e-01  5.8639830000e-01 4.3194590000e-01
5.7277660000e-01 4.2515760000e-01  5.7533870000e-01 4.0564400000e-01
5.4740400000e-01 3.8092150000e-01  6.0206880000e-01 4.0305330000e-01
5.9815820000e-01 4.2544610000e-01  6.0826120000e-01 4.3428830000e-01
6.1932890000e-01 4.2865040000e-01  6.1978130000e-01 4.1642680000e-01
6.3160740000e-01 4.1248720000e-01  6.3263690000e-01 4.0074490000e-01
6.2253970000e-01 3.9355920000e-01  6.2616750000e-01 3.8011090000e-01
6.1473520000e-01 3.7090590000e-01  5.9963510000e-01 3.7807920000e-01
5.8262270000e-01 3.6426670000e-01  5.9637320000e-01 3.3010760000e-01
6.1821340000e-01 3.5491560000e-01  6.3564210000e-01 3.5398750000e-01
6.4283840000e-01 3.3821670000e-01  6.3095050000e-01 3.2195320000e-01
6.4518510000e-01 3.0093890000e-01  6.2790240000e-01 2.5969060000e-01
5.9368210000e-01 2.9062320000e-01  5.6616390000e-01 2.8301010000e-01
5.5217630000e-01 3.0234660000e-01  5.6033390000e-01 3.2399020000e-01
5.4033070000e-01 3.4123900000e-01  5.0880890000e-01 3.2401440000e-01
5.3073350000e-01 2.9963630000e-01  5.2407790000e-01 2.7875270000e-01
5.0348170000e-01 2.7874790000e-01  4.9465190000e-01 2.9580990000e-01
4.7587110000e-01 2.9428010000e-01  4.9651840000e-01 3.5494390000e-01
5.0711120000e-01 3.7811150000e-01  4.7868190000e-01 4.0623980000e-01
6.4706910000e-01 4.2400580000e-01  6.5632090000e-01 4.4292020000e-01
6.7041270000e-01 4.4107700000e-01  6.7368570000e-01 4.2977890000e-01
6.6600880000e-01 4.2135000000e-01  6.7131650000e-01 4.1053010000e-01
6.6323570000e-01 4.0186190000e-01  6.5192800000e-01 4.0538000000e-01
6.4368320000e-01 3.9615190000e-01  6.3036090000e-01 4.3522930000e-01
6.2811490000e-01 4.5049240000e-01  6.4776720000e-01 4.6552230000e-01
6.0593570000e-01 4.5483030000e-01  6.1319000000e-01 4.7502670000e-01
6.2815170000e-01 4.8130300000e-01  6.2719010000e-01 5.0619460000e-01
6.5078510000e-01 5.0176660000e-01  6.5808200000e-01 4.8751460000e-01
6.7557170000e-01 4.8926370000e-01  6.8846240000e-01 4.8528510000e-01
6.9077500000e-01 4.7809130000e-01  6.8570730000e-01 4.7286750000e-01
6.7727300000e-01 4.7479940000e-01  6.7081820000e-01 4.6493960000e-01
6.8321560000e-01 4.5245870000e-01  6.8882650000e-01 4.6602380000e-01
6.9585560000e-01 4.6718350000e-01  6.9965540000e-01 4.6225930000e-01
6.9775550000e-01 4.5550830000e-01  7.0521940000e-01 4.5149810000e-01
7.0875440000e-01 4.3704320000e-01  6.9188180000e-01 4.3756130000e-01
6.8493810000e-01 4.2710800000e-01  6.9997440000e-01 4.7541720000e-01
7.0611340000e-01 4.6926800000e-01  7.0527620000e-01 4.6374670000e-01
7.0755960000e-01 4.7727210000e-01  7.1026130000e-01 4.7537940000e-01
7.1187590000e-01 4.7095440000e-01  7.1227140000e-01 4.7696680000e-01
7.1373120000e-01 4.7593250000e-01  7.1415550000e-01 4.7443120000e-01
7.1588260000e-01 4.7472760000e-01  7.1684380000e-01 4.7340460000e-01
7.1637880000e-01 4.7142600000e-01  7.1943120000e-01 4.6976560000e-01
7.2234900000e-01 4.6777090000e-01  7.2226940000e-01 4.6498890000e-01
7.1950570000e-01 4.6417800000e-01  7.1763380000e-01 4.6646760000e-01
7.1399310000e-01 4.6598770000e-01  7.1185500000e-01 4.5875700000e-01
7.1869720000e-01 4.6105550000e-01  7.2184560000e-01 4.5931660000e-01
7.2188150000e-01 4.5559770000e-01  7.1785450000e-01 4.5327900000e-01
7.1899420000e-01 4.4690400000e-01  7.2598550000e-01 4.6213600000e-01
7.2807660000e-01 4.5742030000e-01  7.2567410000e-01 4.5413320000e-01
7.3038870000e-01 4.6240830000e-01  7.3202530000e-01 4.6089770000e-01
7.3270270000e-01 4.5723040000e-01  7.3358280000e-01 4.6192090000e-01
7.3464870000e-01 4.6108390000e-01  7.3491200000e-01 4.5984930000e-01
7.3638380000e-01 4.6000660000e-01  7.3717830000e-01 4.5878570000e-01
7.3657790000e-01 4.5698220000e-01  7.3949150000e-01 4.5484270000e-01
7.4254490000e-01 4.5207590000e-01  7.4171200000e-01 4.4847670000e-01
7.3797870000e-01 4.4857480000e-01  7.3676430000e-01 4.5177180000e-01
7.3310170000e-01 4.5250260000e-01  7.2809620000e-01 4.4706000000e-01
7.3550890000e-01 4.4545500000e-01  7.3803860000e-01 4.4133650000e-01
7.3489470000e-01 4.3690670000e-01  7.2881380000e-01 4.3834010000e-01
7.2329460000e-01 4.3215020000e-01  7.4624700000e-01 4.4229090000e-01
7.4531210000e-01 4.3267360000e-01  7.3778150000e-01 4.3101410000e-01
7.5456430000e-01 4.4053550000e-01  7.5758960000e-01 4.3555010000e-01
7.5451730000e-01 4.2497240000e-01  7.6313650000e-01 4.3741190000e-01
7.6647560000e-01 4.3348430000e-01  7.6564140000e-01 4.2777690000e-01
7.7415950000e-01 4.2361700000e-01  7.8195560000e-01 4.1766060000e-01
7.8076740000e-01 4.0981280000e-01  7.7316530000e-01 4.0909860000e-01
7.6925940000e-01 4.1518080000e-01  7.6102920000e-01 4.1423360000e-01
7.5744650000e-01 4.0187530000e-01  7.6969920000e-01 4.0251430000e-01
7.7485770000e-01 3.9601760000e-01  7.7019170000e-01 3.8905100000e-01
7.6219830000e-01 3.9043020000e-01  7.5740110000e-01 3.8372870000e-01
7.4987010000e-01 3.8601970000e-01  7.4843310000e-01 3.9354210000e-01
7.4055720000e-01 3.9537550000e-01  7.3966020000e-01 4.0323900000e-01
7.4631890000e-01 4.0779660000e-01  7.4450740000e-01 4.1680770000e-01
7.3072990000e-01 4.2011260000e-01  7.3225030000e-01 4.0658760000e-01
7.2570150000e-01 4.0027180000e-01  7.1702460000e-01 4.0429150000e-01
7.1731790000e-01 4.1441080000e-01  7.0694940000e-01 4.2014640000e-01
7.2970650000e-01 3.8554630000e-01  7.1159710000e-01 3.8479170000e-01
7.0770680000e-01 3.9818260000e-01  7.4377900000e-01 3.8073270000e-01
7.4693360000e-01 3.7233380000e-01  7.4030120000e-01 3.6589280000e-01
7.3031870000e-01 3.6917590000e-01  7.2119230000e-01 3.5882230000e-01
6.9570280000e-01 3.6447630000e-01  7.3295780000e-01 3.4169280000e-01
7.4334960000e-01 3.5649990000e-01  7.5371900000e-01 3.5648220000e-01
7.5773360000e-01 3.4723290000e-01  7.5111060000e-01 3.3917930000e-01
7.5634920000e-01 3.2938400000e-01  7.4925780000e-01 3.2104820000e-01
7.3817880000e-01 3.2353390000e-01  7.3072750000e-01 3.1323470000e-01
7.1785370000e-01 3.1669660000e-01  7.1546150000e-01 3.3087710000e-01
6.9842620000e-01 3.3627610000e-01  6.7866100000e-01 3.1191690000e-01
7.0746320000e-01 3.0612270000e-01  7.1543120000e-01 2.9166240000e-01
7.0561680000e-01 2.7759430000e-01  6.8594780000e-01 2.8046080000e-01
6.7288340000e-01 2.5873270000e-01  6.6158780000e-01 3.3802040000e-01
6.6804390000e-01 3.5733140000e-01  6.4846070000e-01 3.7463800000e-01
6.6642440000e-01 3.8915060000e-01  6.8242650000e-01 3.8785680000e-01
6.9075670000e-01 4.0840420000e-01  7.7497320000e-01 3.2758580000e-01
7.9345410000e-01 3.3802680000e-01  8.0549790000e-01 3.2839640000e-01
8.0130310000e-01 3.1535520000e-01  7.8840380000e-01 3.1311610000e-01
7.8478300000e-01 2.9992710000e-01  7.7147450000e-01 2.9941800000e-01
7.6571880000e-01 3.1059750000e-01  7.5322300000e-01 3.1020570000e-01
7.6875040000e-01 3.4578770000e-01  7.7458070000e-01 3.5777130000e-01
7.9663870000e-01 3.6109670000e-01  7.6174890000e-01 3.6980110000e-01
7.7343850000e-01 3.8030260000e-01  7.8563080000e-01 3.8019070000e-01
7.9040140000e-01 3.9774860000e-01  8.0729060000e-01 3.9163790000e-01
8.1146120000e-01 3.7814780000e-01  8.2898070000e-01 3.7686980000e-01
8.4264490000e-01 3.7106760000e-01  8.4440820000e-01 3.6186400000e-01
8.3689500000e-01 3.5660030000e-01  8.2771080000e-01 3.6111120000e-01
8.1763390000e-01 3.5253890000e-01  8.2607680000e-01 3.3294400000e-01
8.3855580000e-01 3.4712410000e-01  8.4820200000e-01 3.4611470000e-01
8.5159470000e-01 3.3767670000e-01  8.4553520000e-01 3.2908300000e-01
8.5374790000e-01 3.1861010000e-01  8.4726620000e-01 2.9503970000e-01
8.2611910000e-01 3.1025750000e-01  8.1044280000e-01 3.0437050000e-01
8.5641240000e-01 3.5640300000e-01  8.6398070000e-01 3.4588940000e-01
8.6071020000e-01 3.3745990000e-01  8.6770240000e-01 3.5824480000e-01
8.7181550000e-01 3.5497560000e-01  8.7398430000e-01 3.4722180000e-01
8.7523260000e-01 3.5745810000e-01  8.7764600000e-01 3.5566320000e-01
8.7830050000e-01 3.5303880000e-01  8.8137250000e-01 3.5346830000e-01
8.8305750000e-01 3.5102000000e-01  8.8202530000e-01 3.4738140000e-01
8.8777730000e-01 3.4371120000e-01  8.9353640000e-01 3.3910580000e-01
8.9266380000e-01 3.3293960000e-01  8.8636980000e-01 3.3224360000e-01
8.8338930000e-01 3.3756290000e-01  8.7633220000e-01 3.3784740000e-01
8.6941870000e-01 3.2575850000e-01  8.8318760000e-01 3.2619160000e-01
8.8873310000e-01 3.2050730000e-01  8.8575460000e-01 3.1253550000e-01
8.7584270000e-01 3.1164600000e-01  8.7160520000e-01 2.9926230000e-01
9.0069750000e-01 3.2433880000e-01  9.0199320000e-01 3.1045380000e-01
8.9240030000e-01 3.0543960000e-01  9.1287840000e-01 3.2295030000e-01
9.1739600000e-01 3.1684880000e-01  9.1552090000e-01 3.0347530000e-01
9.2402540000e-01 3.1965980000e-01  9.2817470000e-01 3.1531150000e-01
9.2787420000e-01 3.0894380000e-01  9.3691380000e-01 3.0609580000e-01
9.3462850000e-01 2.9666340000e-01  9.2620580000e-01 2.9321750000e-01
9.2616340000e-01 2.7968070000e-01  9.2264220000e-01 2.6678510000e-01
9.1281220000e-01 2.6412050000e-01  9.0759230000e-01 2.7256630000e-01
9.1269440000e-01 2.8085660000e-01  9.0674730000e-01 2.9030950000e-01
8.8825530000e-01 2.8807050000e-01  8.9746130000e-01 2.7260570000e-01
8.9344710000e-01 2.6205180000e-01  8.8174670000e-01 2.6166710000e-01
8.7582250000e-01 2.7306150000e-01  8.6000660000e-01 2.7232500000e-01
9.0528960000e-01 2.4779190000e-01  8.8647520000e-01 2.3942950000e-01
8.7577990000e-01 2.5003810000e-01  9.0899510000e-01 2.2962980000e-01
9.0210570000e-01 2.2025930000e-01  8.8202930000e-01 2.1754800000e-01
9.0924080000e-01 2.1162810000e-01  9.0448100000e-01 2.0330700000e-01
8.9439730000e-01 2.0109850000e-01  8.9296970000e-01 1.8487000000e-01
8.8808210000e-01 1.6931120000e-01  8.7561890000e-01 1.6671390000e-01
8.7008420000e-01 1.7756920000e-01  8.7680300000e-01 1.8724240000e-01
8.6988280000e-01 1.9914950000e-01  8.4944600000e-01 1.9574350000e-01
8.5831510000e-01 1.7856260000e-01  8.5218620000e-01 1.6723690000e-01
8.3965510000e-01 1.6956170000e-01  8.3656940000e-01 1.8139730000e-01
8.2445890000e-01 1.8353740000e-01  8.2249320000e-01 1.9497270000e-01
8.3143040000e-01 2.0212180000e-01  8.2803720000e-01 2.1386030000e-01
8.3769560000e-01 2.2122920000e-01  8.4933530000e-01 2.1579620000e-01
8.6079970000e-01 2.2593020000e-01  8.5285150000e-01 2.4873510000e-01
8.3587990000e-01 2.3382710000e-01  8.2228350000e-01 2.3659880000e-01
8.1947610000e-01 2.5042580000e-01  8.3155100000e-01 2.5969070000e-01
8.2724810000e-01 2.7707060000e-01  8.0782330000e-01 2.2005340000e-01
7.9313430000e-01 2.4040510000e-01  8.0456570000e-01 2.5541640000e-01
8.1156780000e-01 1.9921520000e-01  8.0305710000e-01 1.8972700000e-01
7.9090680000e-01 1.9384150000e-01  7.8845840000e-01 2.0791850000e-01
7.7068590000e-01 2.1178870000e-01  7.6095550000e-01 2.4259810000e-01
7.5810250000e-01 1.8817000000e-01  7.8137260000e-01 1.8442900000e-01
7.8737090000e-01 1.7170450000e-01  7.7813030000e-01 1.6159160000e-01
7.6475280000e-01 1.6538410000e-01  7.5558400000e-01 1.5402950000e-01
7.4210590000e-01 1.5843480000e-01  7.3958950000e-01 1.7265720000e-01
7.2413060000e-01 1.7618760000e-01  7.2179780000e-01 1.9228650000e-01
7.3623580000e-01 2.0212110000e-01  7.3292210000e-01 2.2327130000e-01
6.9829600000e-01 2.3083410000e-01  7.0534340000e-01 1.9857190000e-01
6.9315180000e-01 1.8347980000e-01  6.7378960000e-01 1.8833900000e-01
6.6902920000e-01 2.1026960000e-01  6.4174960000e-01 2.1561910000e-01
7.1491910000e-01 2.6056110000e-01  7.3637310000e-01 2.6523680000e-01
7.3981100000e-01 2.9241840000e-01  7.6346040000e-01 2.8741010000e-01
7.7410040000e-01 2.7226130000e-01  8.0042230000e-01 2.8117190000e-01
7.6256280000e-01 1.3018780000e-01  7.8444870000e-01 1.1163310000e-01
7.7739000000e-01 9.1619830000e-02  7.5871050000e-01 9.1412880000e-02
7.5035150000e-01 1.0684950000e-01  7.3234330000e-01 1.0580370000e-01
7.2616040000e-01 1.2194360000e-01  7.3724050000e-01 1.3379760000e-01
7.3111100000e-01 1.4862130000e-01  7.8217120000e-01 1.4705930000e-01
8.0057120000e-01 1.4592620000e-01  8.1647890000e-01 1.1862660000e-01
8.0907570000e-01 1.6928690000e-01  8.2966410000e-01 1.5996160000e-01
8.3635030000e-01 1.4333280000e-01  8.6352310000e-01 1.4625310000e-01
8.6336020000e-01 1.1917810000e-01  8.4667730000e-01 1.0684620000e-01
8.5312660000e-01 8.2169090000e-02  8.5131060000e-01 6.0760570000e-02
8.3947830000e-01 5.4231350000e-02  8.2894930000e-01 6.2162600000e-02
8.3097470000e-01 7.6690950000e-02  8.1481090000e-01 8.6414150000e-02
7.9239900000e-01 6.6391220000e-02  8.1678670000e-01 5.5730340000e-02
8.1957850000e-01 4.2137090000e-02  8.0946340000e-01 3.3898540000e-02
7.9522150000e-01 3.8603580000e-02  7.8422770000e-01 2.3196450000e-02
7.5005760000e-01 2.3129410000e-02  7.6223730000e-01 5.7042100000e-02
7.4835700000e-01 7.5149200000e-02  8.3728770000e-01 3.5320240000e-02
8.2605430000e-01 2.0305970000e-02  8.1298730000e-01 2.1248710000e-02
8.4480650000e-01 2.0567060000e-02  8.4209960000e-01 1.3410520000e-02
8.3225060000e-01 6.9464590000e-03  8.4707750000e-01 9.7700150000e-03
8.4566340000e-01 5.6039570000e-03  8.4229400000e-01 3.5112510000e-03
8.4427680000e-01 -5.9260280000e-04  8.4160450000e-01 -4.0615070000e-03
8.3602350000e-01 -4.2446110000e-03  8.3340000000e-01 -1.4036330000e-02
8.2939970000e-01 -2.4323880000e-02  8.2011160000e-01 -2.5796080000e-02
8.1641280000e-01 -1.7022190000e-02  8.2273160000e-01 -1.0490520000e-02
8.2011380000e-01 -3.8876100000e-04  8.0031240000e-01 4.2614980000e-03
8.0642180000e-01 -1.4976730000e-02  8.0044710000e-01 -2.5249640000e-02
7.8777620000e-01 -2.3965220000e-02  7.8288620000e-01 -1.0140350000e-02
7.6402410000e-01 -8.5560860000e-03  8.1094590000e-01 -4.1391700000e-02
7.9061010000e-01 -4.8717170000e-02  7.7981170000e-01 -3.6158380000e-02
8.1411650000e-01 -6.0334030000e-02  8.0652370000e-01 -7.0119320000e-02
7.8449350000e-01 -7.2383470000e-02  8.1406400000e-01 -7.9561040000e-02
8.0879330000e-01 -8.8562510000e-02  7.9765800000e-01 -9.0834040000e-02
7.9576520000e-01 -1.0889890000e-01  7.8999680000e-01 -1.2637770000e-01
7.7569180000e-01 -1.2904060000e-01  7.6978340000e-01 -1.1646850000e-01
7.7769690000e-01 -1.0580620000e-01  7.7038760000e-01 -9.2250210000e-02
7.4748690000e-01 -9.5166480000e-02  7.5652640000e-01 -1.1482280000e-01
7.4895350000e-01 -1.2731700000e-01  7.3494160000e-01 -1.2381060000e-01
7.3233140000e-01 -1.1036500000e-01  7.1912550000e-01 -1.0717080000e-01
7.1770760000e-01 -9.4568850000e-02  7.2783840000e-01 -8.7210140000e-02
7.2458990000e-01 -7.4189710000e-02  7.3548430000e-01 -6.6354300000e-02
7.4822890000e-01 -7.2838510000e-02  7.6145450000e-01 -6.2030370000e-02
7.5361360000e-01 -3.5621850000e-02  7.3379710000e-01 -5.2215700000e-02
7.1859660000e-01 -4.8967340000e-02  7.1521950000e-01 -3.3399690000e-02
7.2909760000e-01 -2.2368160000e-02  7.2353880000e-01 -1.2186800000e-03
7.0296650000e-01 -6.6968440000e-02  6.8675920000e-01 -4.5679030000e-02
6.9808150000e-01 -2.8493210000e-02  7.0616000000e-01 -8.9405550000e-02
6.9656160000e-01 -9.8980770000e-02  6.8421350000e-01 -9.3880740000e-02
6.8239140000e-01 -7.9401150000e-02  6.6491070000e-01 -7.5210450000e-02
6.5495260000e-01 -4.5958030000e-02  6.5204620000e-01 -9.7012650000e-02
6.7383760000e-01 -1.0268120000e-01  6.7853060000e-01 -1.1624380000e-01
6.6767360000e-01 -1.2525870000e-01  6.5503680000e-01 -1.1933550000e-01
6.4409650000e-01 -1.2855210000e-01  6.3249970000e-01 -1.2159870000e-01
6.3297380000e-01 -1.0846470000e-01  6.2047220000e-01 -1.0288380000e-01
6.2091110000e-01 -8.9625440000e-02  6.3350860000e-01 -8.2869920000e-02
6.3122650000e-01 -6.5434890000e-02  6.0695210000e-01 -6.1476950000e-02
6.0932240000e-01 -8.3136320000e-02  5.9854850000e-01 -9.1862520000e-02
5.8710010000e-01 -8.4952010000e-02  5.8818190000e-01 -7.1995410000e-02
5.7660820000e-01 -6.5799030000e-02  5.7821780000e-01 -5.3573300000e-02
5.8961390000e-01 -4.8947420000e-02  5.8946160000e-01 -3.5804080000e-02
6.0145040000e-01 -3.0671600000e-02  6.1270120000e-01 -3.9431470000e-02
6.2812970000e-01 -3.0485410000e-02  6.2207810000e-01 -5.2099360000e-03
6.0240520000e-01 -1.7276490000e-02  5.8951310000e-01 -1.1435000000e-02
5.9023470000e-01 2.3621950000e-03  6.0293860000e-01 7.7946380000e-03
6.0301880000e-01 2.2082910000e-02  6.1588300000e-01 2.6833640000e-02
6.2630970000e-01 1.7738600000e-02  6.3979210000e-01 2.4433270000e-02
6.5112100000e-01 1.4179600000e-02  6.4676600000e-01 -1.6717460000e-03
6.6223340000e-01 -1.4559240000e-02  6.9034760000e-01 1.4125820000e-03
6.6654830000e-01 1.9517230000e-02  6.6640760000e-01 3.7322050000e-02
6.8288380000e-01 4.4827610000e-02  6.9831990000e-01 3.2297220000e-02
7.1934310000e-01 4.3416410000e-02  6.4234420000e-01 5.0465760000e-02
6.6251570000e-01 7.4147140000e-02  6.8446060000e-01 6.4952670000e-02
6.1832120000e-01 4.0683810000e-02  6.0511550000e-01 4.8253230000e-02
6.0668120000e-01 6.3424220000e-02  6.2244880000e-01 7.0154830000e-02
6.2183280000e-01 9.2024790000e-02  6.5487760000e-01 1.1288310000e-01
5.9093220000e-01 9.9635270000e-02  5.9319150000e-01 7.1852970000e-02
5.8026450000e-01 6.1476160000e-02  5.6612980000e-01 6.9171590000e-02
5.6666050000e-01 8.5556590000e-02  5.5099890000e-01 9.2858270000e-02
5.5229660000e-01 1.0960630000e-01  5.6789810000e-01 1.1643600000e-01
5.6763290000e-01 1.3499950000e-01  5.8515600000e-01 1.4211880000e-01
6.0045280000e-01 1.2867640000e-01  6.2337420000e-01 1.3885020000e-01
6.2079050000e-01 1.7927790000e-01  5.8750930000e-01 1.6223670000e-01
5.6752080000e-01 1.7161170000e-01  5.6789400000e-01 1.9398620000e-01
5.9007900000e-01 2.0474990000e-01  5.8839060000e-01 2.3436040000e-01
6.5879860000e-01 1.7165930000e-01  6.7204850000e-01 1.4942000000e-01
7.0459310000e-01 1.5628270000e-01  7.0840660000e-01 1.2661390000e-01
6.9442040000e-01 1.0797010000e-01  7.1525930000e-01 7.8888560000e-02
5.2527770000e-01 7.7859700000e-02  5.1088980000e-01 4.6364780000e-02
4.8455030000e-01 4.7308040000e-02  4.7777270000e-01 7.0216710000e-02
4.9407010000e-01 8.5265370000e-02  4.8773600000e-01 1.0678620000e-01
5.0550460000e-01 1.1839970000e-01  5.2239750000e-01 1.0849190000e-01
5.3798970000e-01 1.1959350000e-01  5.5074070000e-01 6.0369510000e-02
5.5491510000e-01 3.9377370000e-02  5.2999970000e-01 1.3719760000e-02
5.8338200000e-01 3.6347530000e-02  5.7792230000e-01 1.1325570000e-02
5.6218110000e-01 6.0753710000e-04  5.7070190000e-01 -2.3991700000e-02
5.6841660000e-01 -4.5972500000e-02  5.5702370000e-01 -5.2942790000e-02
5.4610580000e-01 -4.5227900000e-02  5.4776650000e-01 -3.0412300000e-02
5.3095770000e-01 -2.1304500000e-02  5.1182410000e-01 -4.1563830000e-02
5.3389140000e-01 -5.1818950000e-02  5.3611640000e-01 -6.6105370000e-02
5.2417770000e-01 -7.3255990000e-02  5.1230770000e-01 -6.5863370000e-02
5.0055870000e-01 -7.4335930000e-02  4.8878980000e-01 -6.6880050000e-02
4.8961640000e-01 -5.2506990000e-02  4.7510530000e-01 -4.5645420000e-02
4.7608280000e-01 -2.8908460000e-02  4.9313670000e-01 -2.2039480000e-02
4.9486920000e-01 1.0008540000e-03  4.5880150000e-01 1.7590210000e-02
4.6028480000e-01 -1.9116360000e-02  4.4509050000e-01 -3.2708220000e-02
4.2564780000e-01 -2.5018460000e-02  4.2325120000e-01 -9.2554350000e-04
3.9375220000e-01 7.7847960000e-03  3.8107900000e-01 5.9930020000e-02
4.3431420000e-01 5.3817020000e-02  4.5386840000e-01 7.8145310000e-02
4.5232390000e-01 -6.1333280000e-02  4.1972620000e-01 -6.4300610000e-02
4.0834230000e-01 -4.0776480000e-02  4.7622570000e-01 -7.3759760000e-02
4.7876180000e-01 -8.8715200000e-02  4.6651230000e-01 -9.7014430000e-02
4.5149950000e-01 -8.9961990000e-02  4.3697820000e-01 -1.0479540000e-01
4.0080690000e-01 -9.8143890000e-02  4.5124700000e-01 -1.2947530000e-01
4.6872430000e-01 -1.1184870000e-01  4.8377430000e-01 -1.1510120000e-01
4.8613720000e-01 -1.2970370000e-01  4.7423470000e-01 -1.3829090000e-01
4.7746470000e-01 -1.5306230000e-01  4.6535210000e-01 -1.6074970000e-01
4.5286310000e-01 -1.5395470000e-01  4.4130890000e-01 -1.6357520000e-01
4.2823300000e-01 -1.5670110000e-01  4.2770430000e-01 -1.4057400000e-01
4.0864460000e-01 -1.3389410000e-01  3.9225690000e-01 -1.5725190000e-01
4.1599460000e-01 -1.6534950000e-01  4.1984020000e-01 -1.8050930000e-01
4.0745470000e-01 -1.8911440000e-01  3.9445800000e-01 -1.8201120000e-01
3.8261690000e-01 -1.9133780000e-01  3.7038650000e-01 -1.8402830000e-01
3.7074690000e-01 -1.6971070000e-01  3.5654480000e-01 -1.6368220000e-01
3.5669470000e-01 -1.4822730000e-01  3.7169150000e-01 -1.4032150000e-01
3.6980150000e-01 -1.1902220000e-01  3.3864820000e-01 -1.1272760000e-01
3.4247340000e-01 -1.4070810000e-01  3.2990750000e-01 -1.5218920000e-01
3.1488260000e-01 -1.4497960000e-01  3.1469960000e-01 -1.2812910000e-01
2.9845000000e-01 -1.2133380000e-01  2.9902260000e-01 -1.0424970000e-01
3.1462990000e-01 -9.6572250000e-02  3.1358780000e-01 -7.7484130000e-02
3.3150310000e-01 -6.9526740000e-02  3.4749590000e-01 -8.3018940000e-02
3.7067580000e-01 -7.2525330000e-02  3.6885210000e-01 -3.0192300000e-02
3.3355250000e-01 -4.8400290000e-02  3.1202530000e-01 -3.8930160000e-02
3.1166530000e-01 -1.4594550000e-02  3.3601090000e-01 -2.3389340000e-03
3.3421060000e-01 3.1103040000e-02  2.8376630000e-01 -6.1242140000e-02
2.6445960000e-01 -2.4892050000e-02  2.8718230000e-01 -1.8546230000e-03
2.8396660000e-01 -9.4832980000e-02  2.6898190000e-01 -1.0691660000e-01
2.5168670000e-01 -9.8321430000e-02  2.5057930000e-01 -7.6313130000e-02
2.2348340000e-01 -6.7413250000e-02  2.1150840000e-01 -1.6144600000e-02
2.0144080000e-01 -1.0206230000e-01  2.3584970000e-01 -1.1079620000e-01
2.4272480000e-01 -1.3038690000e-01  2.2801230000e-01 -1.4379130000e-01
2.0899120000e-01 -1.3679800000e-01  1.9459220000e-01 -1.5251760000e-01
1.7528450000e-01 -1.4508270000e-01  1.7252750000e-01 -1.2398220000e-01
1.4980440000e-01 -1.1794220000e-01  1.4687290000e-01 -9.3798600000e-02
1.6920710000e-01 -7.9377800000e-02  1.6494700000e-01 -4.6278150000e-02
1.1076780000e-01 -3.4458590000e-02  1.2216950000e-01 -8.4107210000e-02
1.0413240000e-01 -1.0666240000e-01  7.5653660000e-02 -1.0001630000e-01
6.7440930000e-02 -6.8016470000e-02  2.7013010000e-02 -6.2779640000e-02
0.0000000000e+00 0.0000000000e+00  6.8054460000e-02 6.2909360000e-03
8.5527890000e-02 4.3121910000e-02  1.1849940000e-01 4.1044220000e-02
1.3541190000e-01 1.3596550000e-02  1.7105150000e-01 2.2189750000e-02
1.7642640000e-01 6.9548000000e-02  1.3362060000e-01 6.6075360000e-02
1.1774310000e-01 9.0199540000e-02  1.3459390000e-01 1.1069910000e-01
1.5846180000e-01 1.0602630000e-01  1.7122790000e-01 1.2577080000e-01
1.9214770000e-01 1.2187250000e-01  1.9995450000e-01 1.0187420000e-01
2.2313300000e-01 1.0271040000e-01  2.3354940000e-01 8.1851440000e-02
2.1850950000e-01 6.0354710000e-02  2.3649470000e-01 3.2736950000e-02
2.8545350000e-01 4.5617630000e-02  2.5831960000e-01 8.2029640000e-02
2.6604480000e-01 1.0675680000e-01  2.9117840000e-01 1.1026050000e-01
3.0801520000e-01 8.7737240000e-02  3.4068800000e-01 9.7123620000e-02
2.4080610000e-01 1.3487900000e-01  2.7647120000e-01 1.5480860000e-01
3.0016400000e-01 1.3584840000e-01  2.0518510000e-01 1.3793770000e-01
1.9468440000e-01 1.5648960000e-01  2.0721320000e-01 1.7241870000e-01
2.2867170000e-01 1.6978930000e-01  2.4002770000e-01 1.9299540000e-01
2.8194870000e-01 1.9871620000e-01  2.1503270000e-01 2.1737180000e-01
1.9901120000e-01 1.9055330000e-01  1.7825490000e-01 1.9006850000e-01
1.7128460000e-01 2.0898530000e-01  1.8480360000e-01 2.2277800000e-01
1.7794190000e-01 2.4076330000e-01  1.9155030000e-01 2.5217250000e-01
2.0762130000e-01 2.4634870000e-01  2.1910540000e-01 2.5970300000e-01
2.3518770000e-01 2.5467000000e-01  2.3960750000e-01 2.3677920000e-01
2.6232780000e-01 2.3464310000e-01  2.7332460000e-01 2.6344360000e-01
2.4668730000e-01 2.6673170000e-01  2.3965120000e-01 2.8223050000e-01
2.5119710000e-01 2.9343210000e-01  2.6584890000e-01 2.8851380000e-01
2.7597110000e-01 3.0015790000e-01  2.9879170000e-01 2.5181200000e-01
3.0703760000e-01 2.3112800000e-01  3.3903160000e-01 2.3506070000e-01
3.6674840000e-01 2.2836780000e-01  3.7445110000e-01 2.1164350000e-01
3.6132620000e-01 1.9771160000e-01  3.4131230000e-01 2.0406720000e-01
3.2312640000e-01 1.8485840000e-01  3.4323440000e-01 1.4507850000e-01
3.6797630000e-01 1.7775840000e-01  3.9089320000e-01 1.7839920000e-01
4.0162500000e-01 1.5776870000e-01  3.8648110000e-01 1.3614240000e-01
4.0440750000e-01 1.0899810000e-01  4.0605770000e-01 2.0847310000e-01
4.3615420000e-01 1.8597810000e-01  4.2739800000e-01 1.5795210000e-01
4.2855980000e-01 2.3289180000e-01  4.5329110000e-01 2.3489070000e-01
4.8031220000e-01 1.9940920000e-01  4.5948610000e-01 2.6904380000e-01
4.9115610000e-01 2.6147000000e-01  5.0474050000e-01 2.3833170000e-01
5.4653950000e-01 2.4732790000e-01  5.4638290000e-01 2.0621740000e-01
5.2479600000e-01 1.8696280000e-01  5.3987720000e-01 1.5179600000e-01
5.0666750000e-01 1.4044760000e-01  4.8158490000e-01 1.5288090000e-01
4.4985000000e-01 1.2113670000e-01  4.5488920000e-01 -3.1084150000e-01
4.6080130000e-01 -2.7681290000e-01  4.8619270000e-01 -2.7181660000e-01
4.9762910000e-01 -2.9157360000e-01  4.8636830000e-01 -3.0938310000e-01
4.9783510000e-01 -3.2719420000e-01  4.8526450000e-01 -3.4266870000e-01
4.6690060000e-01 -3.3880090000e-01  4.5610200000e-01 -3.5406170000e-01
4.3934440000e-01 -3.4958860000e-01  4.3497090000e-01 -3.3312330000e-01
4.1722380000e-01 -3.3116190000e-01  4.1240070000e-01 -3.1458400000e-01
4.2519960000e-01 -3.0104540000e-01  4.1506720000e-01 -2.8085880000e-01
4.3417890000e-01 -2.4852400000e-01  3.8411510000e-01 -2.8565860000e-01
3.9544250000e-01 -3.1124890000e-01  3.8554880000e-01 -3.2642950000e-01
3.6831130000e-01 -3.2240670000e-01  3.6463350000e-01 -3.0549860000e-01
3.4744510000e-01 -3.0172690000e-01  3.4551270000e-01 -2.8529530000e-01
3.5853870000e-01 -2.7590440000e-01  3.5450950000e-01 -2.5971710000e-01
3.6747980000e-01 -2.5021860000e-01  3.8337310000e-01 -2.5706380000e-01
3.9794110000e-01 -2.4170010000e-01  3.8346480000e-01 -2.1638360000e-01
3.6500150000e-01 -2.3442440000e-01  3.4879110000e-01 -2.3060660000e-01
3.4705240000e-01 -2.1464750000e-01  3.6013350000e-01 -2.0636240000e-01
3.5778420000e-01 -1.9103840000e-01  4.0775570000e-01 -2.0543440000e-01
4.2706870000e-01 -2.1247360000e-01  4.4404200000e-01 -1.8872670000e-01
4.6568450000e-01 -1.7527670000e-01  4.8072910000e-01 -1.8072000000e-01
4.8157420000e-01 -1.9720410000e-01  4.6562090000e-01 -2.0614440000e-01
4.6735890000e-01 -2.2921330000e-01  5.0435210000e-01 -2.3904630000e-01
4.9796910000e-01 -2.0471340000e-01  5.1078820000e-01 -1.9015010000e-01
5.2957390000e-01 -1.9525200000e-01  5.3455610000e-01 -2.1684090000e-01
5.6178250000e-01 -2.2072120000e-01  5.8011040000e-01 -2.6350610000e-01
5.3333840000e-01 -2.6768340000e-01  5.2096070000e-01 -2.9331050000e-01
5.0131010000e-01 -1.6364600000e-01  5.3175060000e-01 -1.5884870000e-01
5.4373350000e-01 -1.7936700000e-01  5.0089180000e-01 -1.3616900000e-01
5.1442310000e-01 -1.2177550000e-01  5.4742160000e-01 -1.2753060000e-01
5.0090860000e-01 -9.8071940000e-02  5.2379280000e-01 -8.8348670000e-02
5.4105580000e-01 -9.5220130000e-02  5.5679490000e-01 -7.5063710000e-02
5.7397090000e-01 -9.0956230000e-02  5.7494750000e-01 -1.0928630000e-01
6.0082200000e-01 -1.1489770000e-01  6.2039980000e-01 -1.2777300000e-01
6.2172780000e-01 -1.4284070000e-01  6.0769920000e-01 -1.4996580000e-01
5.9404130000e-01 -1.3948690000e-01  5.7480920000e-01 -1.4916700000e-01
5.7884570000e-01 -1.8528560000e-01  6.0722240000e-01 -1.6728390000e-01
6.2524700000e-01 -1.7330650000e-01  6.2779880000e-01 -1.9263450000e-01
6.0941260000e-01 -2.0520590000e-01  6.1511800000e-01 -2.3240350000e-01
6.4539040000e-01 -1.5404330000e-01  6.6315390000e-01 -1.7976990000e-01
6.4847920000e-01 -1.9992060000e-01  6.6927160000e-01 -1.4095030000e-01
6.8875080000e-01 -1.4554960000e-01  7.0201770000e-01 -1.8011170000e-01
7.0129400000e-01 -1.2142630000e-01  7.2288870000e-01 -1.3376060000e-01
7.2879530000e-01 -1.5350530000e-01  7.6081140000e-01 -1.5246430000e-01
7.5903230000e-01 -1.8487940000e-01  7.3704390000e-01 -1.9893540000e-01
7.4266100000e-01 -2.3263920000e-01  7.3759140000e-01 -2.6301320000e-01
7.1811180000e-01 -2.7101590000e-01  7.0433480000e-01 -2.5609620000e-01
7.1107330000e-01 -2.3604070000e-01  6.9213050000e-01 -2.1889910000e-01
6.5635400000e-01 -2.3713020000e-01  6.8436870000e-01 -2.6121890000e-01
6.8250440000e-01 -2.8279180000e-01  6.6251460000e-01 -2.8972600000e-01
6.4519380000e-01 -2.7431910000e-01  6.2027740000e-01 -2.8736260000e-01
7.0901870000e-01 -3.0278650000e-01  6.8061550000e-01 -3.2321130000e-01
6.5930020000e-01 -3.1162420000e-01  7.1845660000e-01 -3.3308010000e-01
7.0919440000e-01 -3.4838950000e-01  6.8138520000e-01 -3.5593050000e-01
7.2044450000e-01 -3.6024540000e-01  7.1432940000e-01 -3.7217600000e-01
7.0117790000e-01 -3.7606110000e-01  7.0127650000e-01 -3.9627410000e-01
6.9700340000e-01 -4.1468340000e-01  6.8398870000e-01 -4.1885140000e-01
6.7621920000e-01 -4.0826880000e-01  6.8183490000e-01 -3.9604990000e-01
6.7085350000e-01 -3.8355720000e-01  6.4844260000e-01 -3.9379260000e-01
6.6340240000e-01 -4.0993640000e-01  6.6012120000e-01 -4.2303480000e-01
6.4733340000e-01 -4.2441320000e-01  6.4026750000e-01 -4.1397330000e-01
6.2763670000e-01 -4.1672190000e-01  6.2056740000e-01 -4.0651910000e-01
6.2628770000e-01 -3.9494690000e-01  6.1670690000e-01 -3.8410930000e-01
6.2356390000e-01 -3.7063140000e-01  6.4000680000e-01 -3.7116820000e-01
6.4972050000e-01 -3.5315260000e-01  6.2671910000e-01 -3.2609790000e-01
6.1415500000e-01 -3.5674450000e-01  5.9646900000e-01 -3.6232070000e-01
5.8322970000e-01 -3.4848510000e-01  5.9061290000e-01 -3.2773120000e-01
5.7012080000e-01 -3.0920350000e-01  5.9184900000e-01 -3.8906680000e-01
5.6276770000e-01 -3.7949920000e-01  5.6249790000e-01 -3.5481480000e-01
6.0778420000e-01 -4.0789170000e-01  6.0491070000e-01 -4.2115750000e-01
5.9201130000e-01 -4.2422020000e-01  5.8134590000e-01 -4.1336290000e-01
5.6357910000e-01 -4.2182950000e-01  5.3143440000e-01 -4.0290170000e-01
5.6937520000e-01 -4.4805200000e-01  5.8946360000e-01 -4.3741310000e-01
6.0099510000e-01 -4.4428930000e-01  5.9905320000e-01 -4.5655750000e-01
5.8756760000e-01 -4.6076500000e-01  5.8747520000e-01 -4.7322970000e-01
5.7662570000e-01 -4.7783730000e-01  5.6667160000e-01 -4.7045480000e-01
5.5500250000e-01 -4.7806080000e-01  5.4271530000e-01 -4.7003250000e-01
5.4487140000e-01 -4.5345480000e-01  5.2647780000e-01 -4.4154330000e-01
4.9823970000e-01 -4.6517650000e-01  5.2858250000e-01 -4.7828170000e-01
5.3308550000e-01 -4.9514420000e-01  5.2031040000e-01 -5.0686160000e-01
5.0116920000e-01 -5.0058120000e-01  4.8558220000e-01 -5.2061280000e-01
4.4101210000e-01 -5.1692240000e-01  4.5985620000e-01 -4.7481840000e-01
4.4411220000e-01 -4.5099950000e-01  4.5817990000e-01 -4.3172130000e-01
4.8128500000e-01 -4.3279150000e-01  4.9150830000e-01 -4.0843710000e-01
4.6538600000e-01 -3.8378070000e-01  4.4897610000e-01 -4.1216540000e-01
4.2705800000e-01 -4.1228890000e-01  4.2068890000e-01 -3.9270230000e-01
4.3418720000e-01 -3.7903230000e-01  4.2692880000e-01 -3.6164340000e-01
4.9100380000e-01 -3.6253410000e-01  5.1631090000e-01 -3.6544930000e-01
5.3427740000e-01 -3.2971930000e-01  6.0320790000e-01 -4.8437510000e-01
6.2405560000e-01 -4.8732920000e-01  6.2665720000e-01 -5.0130100000e-01
6.1692340000e-01 -5.0790500000e-01  6.0653480000e-01 -5.0320860000e-01
5.9788460000e-01 -5.1160000000e-01  5.8714360000e-01 -5.0659330000e-01
5.8699520000e-01 -4.9475190000e-01  5.7567100000e-01 -4.8976230000e-01
6.0871900000e-01 -4.6501650000e-01  6.2254100000e-01 -4.5816390000e-01
6.4290820000e-01 -4.7220980000e-01  6.1981310000e-01 -4.3572990000e-01
6.4126270000e-01 -4.3638820000e-01  6.5185510000e-01 -4.4867810000e-01
6.7523130000e-01 -4.4007150000e-01  6.7831130000e-01 -4.6388000000e-01
6.6701160000e-01 -4.7522390000e-01  6.7407970000e-01 -4.9131710000e-01
6.7427930000e-01 -5.0480630000e-01  6.6815220000e-01 -5.0922870000e-01
6.6161810000e-01 -5.0602330000e-01  6.6084900000e-01 -4.9740480000e-01
6.4947720000e-01 -4.9431280000e-01  6.4143810000e-01 -5.0996010000e-01
6.5607320000e-01 -5.1110460000e-01  6.5934820000e-01 -5.1743130000e-01
6.5583920000e-01 -5.2256680000e-01  6.4883150000e-01 -5.2284610000e-01
6.4732400000e-01 -5.3118390000e-01  6.3466890000e-01 -5.3901270000e-01
6.2994780000e-01 -5.2280580000e-01  6.1786040000e-01 -5.1943210000e-01
6.6845160000e-01 -5.1880420000e-01  6.6450050000e-01 -5.2654290000e-01
6.5899070000e-01 -5.2745280000e-01  6.7255970000e-01 -5.2544500000e-01
6.7159450000e-01 -5.2859930000e-01  6.6788500000e-01 -5.3150230000e-01
6.7372540000e-01 -5.3002050000e-01  6.7319280000e-01 -5.3172840000e-01
6.7189610000e-01 -5.3259590000e-01  6.7271170000e-01 -5.3414690000e-01
6.7175040000e-01 -5.3546990000e-01  6.6972500000e-01 -5.3563900000e-01
6.6908910000e-01 -5.3905510000e-01  6.6809370000e-01 -5.4244650000e-01
6.6542320000e-01 -5.4323050000e-01  6.6379800000e-01 -5.4085260000e-01
6.6539710000e-01 -5.3836480000e-01  6.6381570000e-01 -5.3505060000e-01
6.5627820000e-01 -5.3525160000e-01  6.6057850000e-01 -5.4104860000e-01
6.5989760000e-01 -5.4458020000e-01  6.5637180000e-01 -5.4576360000e-01
6.5292220000e-01 -5.4265020000e-01  6.4721140000e-01 -5.4570410000e-01
6.6385830000e-01 -5.4764630000e-01  6.6001950000e-01 -5.5109230000e-01
6.5615100000e-01 -5.4982310000e-01  6.6547790000e-01 -5.5174980000e-01
6.6454700000e-01 -5.5377310000e-01  6.6126850000e-01 -5.5555070000e-01
6.6600140000e-01 -5.5493820000e-01  6.6553480000e-01 -5.5621060000e-01
6.6444200000e-01 -5.5684250000e-01  6.6504630000e-01 -5.5819370000e-01
6.6413070000e-01 -5.5932650000e-01  6.6223000000e-01 -5.5931290000e-01
6.6109560000e-01 -5.6274490000e-01  6.5940780000e-01 -5.6650430000e-01
6.5572740000e-01 -5.6682430000e-01  6.5466690000e-01 -5.6324300000e-01
6.5733220000e-01 -5.6110020000e-01  6.5689540000e-01 -5.5739110000e-01
6.5017240000e-01 -5.5431240000e-01  6.5093660000e-01 -5.6185830000e-01
6.4780150000e-01 -5.6553690000e-01  6.4261690000e-01 -5.6391570000e-01
6.4210110000e-01 -5.5768950000e-01  6.3450860000e-01 -5.5435320000e-01
6.5124560000e-01 -5.7304870000e-01  6.4181010000e-01 -5.7513140000e-01
6.3790480000e-01 -5.6848210000e-01  6.5214620000e-01 -5.8150140000e-01
6.4833970000e-01 -5.8591920000e-01  6.3733040000e-01 -5.8626590000e-01
6.5182440000e-01 -5.9061920000e-01  6.4912090000e-01 -5.9500840000e-01
6.4343500000e-01 -5.9597890000e-01  6.4211100000e-01 -6.0536540000e-01
6.3885560000e-01 -6.1462130000e-01  6.3102470000e-01 -6.1591630000e-01
6.2799590000e-01 -6.0890620000e-01  6.3257350000e-01 -6.0331210000e-01
6.2912940000e-01 -5.9577750000e-01  6.1626890000e-01 -5.9618900000e-01
6.2066270000e-01 -6.0764460000e-01  6.1607840000e-01 -6.1455820000e-01
6.0801080000e-01 -6.1227320000e-01  6.0685230000e-01 -6.0424480000e-01
5.9899640000e-01 -6.0175320000e-01  5.9884810000e-01 -5.9388300000e-01
6.0555820000e-01 -5.9019180000e-01  6.0486820000e-01 -5.8213480000e-01
6.1206960000e-01 -5.7885180000e-01  6.1846180000e-01 -5.8377620000e-01
6.2647210000e-01 -5.7926890000e-01  6.2535780000e-01 -5.6514430000e-01
6.1296460000e-01 -5.7076980000e-01  6.0493420000e-01 -5.6649320000e-01
6.0607590000e-01 -5.5699880000e-01  6.1579050000e-01 -5.5415070000e-01
6.1804130000e-01 -5.4251730000e-01  5.9216700000e-01 -5.7485250000e-01
5.8585320000e-01 -5.5786270000e-01  5.9738660000e-01 -5.5002480000e-01
5.9193750000e-01 -5.8972370000e-01  5.8492460000e-01 -5.9531930000e-01
5.7674940000e-01 -5.9100190000e-01  5.7678700000e-01 -5.8049350000e-01
5.6411990000e-01 -5.7501320000e-01  5.6162050000e-01 -5.4902400000e-01
5.5146450000e-01 -5.9149620000e-01  5.6875810000e-01 -5.9680370000e-01
5.7194560000e-01 -6.0667100000e-01  5.6438970000e-01 -6.1334730000e-01
5.5468360000e-01 -6.0953720000e-01  5.4698660000e-01 -6.1754630000e-01
5.3686720000e-01 -6.1337800000e-01  5.3580780000e-01 -6.0207310000e-01
5.2371000000e-01 -5.9816900000e-01  5.2302430000e-01 -5.8485550000e-01
5.3577160000e-01 -5.7819840000e-01  5.3564220000e-01 -5.6032840000e-01
5.0636740000e-01 -5.4905800000e-01  5.0975710000e-01 -5.7824100000e-01
4.9846680000e-01 -5.9028750000e-01  4.8205440000e-01 -5.8530070000e-01
4.7870270000e-01 -5.6570850000e-01  4.5400090000e-01 -5.5999790000e-01
5.2591740000e-01 -5.2475410000e-01  5.4627830000e-01 -5.2492670000e-01
5.5668640000e-01 -5.0095410000e-01  5.7603980000e-01 -5.1355400000e-01
5.7975420000e-01 -5.2917260000e-01  6.0187010000e-01 -5.3074570000e-01
5.5103130000e-01 -6.3581460000e-01  5.6667210000e-01 -6.5016460000e-01
5.6123470000e-01 -6.6459500000e-01  5.4753560000e-01 -6.6463530000e-01
5.4142000000e-01 -6.5305920000e-01  5.2775760000e-01 -6.5369130000e-01
5.2316100000e-01 -6.4119140000e-01  5.3201470000e-01 -6.3226280000e-01
5.2778070000e-01 -6.2049960000e-01  5.6641950000e-01 -6.2427150000e-01
5.7961820000e-01 -6.2611350000e-01  5.8959700000e-01 -6.4606460000e-01
5.8709400000e-01 -6.1019210000e-01  6.0069390000e-01 -6.1806440000e-01
6.0435510000e-01 -6.2969470000e-01  6.2252790000e-01 -6.2880660000e-01
6.2193500000e-01 -6.4675760000e-01  6.1039390000e-01 -6.5489260000e-01
6.1459220000e-01 -6.7194960000e-01  6.1329640000e-01 -6.8673800000e-01
6.0508810000e-01 -6.9125900000e-01  5.9776040000e-01 -6.8574010000e-01
5.9921240000e-01 -6.7561150000e-01  5.8794580000e-01 -6.6867670000e-01
5.7191900000e-01 -6.8276140000e-01  5.8926120000e-01 -6.9024790000e-01
5.9128190000e-01 -6.9973390000e-01  5.8430530000e-01 -7.0556800000e-01
5.7425970000e-01 -7.0246060000e-01  5.6683730000e-01 -7.1350760000e-01
5.4241750000e-01 -7.1462660000e-01  5.5035590000e-01 -6.8981200000e-01
5.3991270000e-01 -6.7672220000e-01  6.0360380000e-01 -7.0436320000e-01
5.9594350000e-01 -7.1480990000e-01  5.8691590000e-01 -7.1430440000e-01
6.0884420000e-01 -7.1453150000e-01  6.0700600000e-01 -7.1945360000e-01
6.0030180000e-01 -7.2391220000e-01  6.1042290000e-01 -7.2193630000e-01
6.0946160000e-01 -7.2478620000e-01  6.0716790000e-01 -7.2621970000e-01
6.0852570000e-01 -7.2900860000e-01  6.0671790000e-01 -7.3136770000e-01
6.0293840000e-01 -7.3151040000e-01  6.0122530000e-01 -7.3811500000e-01
5.9862490000e-01 -7.4501530000e-01  5.9249090000e-01 -7.4609090000e-01
5.8988400000e-01 -7.4032000000e-01  5.9402190000e-01 -7.3584170000e-01
5.9211190000e-01 -7.2904200000e-01  5.7847830000e-01 -7.2620250000e-01
5.8314480000e-01 -7.3916370000e-01  5.7945240000e-01 -7.4619430000e-01
5.7095040000e-01 -7.4582490000e-01  5.6704150000e-01 -7.3667300000e-01
5.5395450000e-01 -7.3646960000e-01  5.8679360000e-01 -7.5638910000e-01
5.7398850000e-01 -7.6191200000e-01  5.6625540000e-01 -7.5433810000e-01
5.8923700000e-01 -7.6840290000e-01  5.8483020000e-01 -7.7458480000e-01
5.7153180000e-01 -7.7693410000e-01  5.8955210000e-01 -7.8002110000e-01
5.8669880000e-01 -7.8531100000e-01  5.8054990000e-01 -7.8699300000e-01
5.8063470000e-01 -7.9647020000e-01  5.7095780000e-01 -7.9721140000e-01
5.6507780000e-01 -7.9026580000e-01  5.5219040000e-01 -7.9440850000e-01
5.3883770000e-01 -7.9504460000e-01  5.3326600000e-01 -7.8651920000e-01
5.3968550000e-01 -7.7894480000e-01  5.4914670000e-01 -7.8123530000e-01
5.5629920000e-01 -7.7265830000e-01  5.4845560000e-01 -7.5576320000e-01
5.3659230000e-01 -7.6929750000e-01  5.2531470000e-01 -7.6874090000e-01
5.2133330000e-01 -7.5773190000e-01  5.3033920000e-01 -7.4857680000e-01
5.2475140000e-01 -7.3376260000e-01  5.1541210000e-01 -7.8441050000e-01
5.0164520000e-01 -7.6910080000e-01  5.0842970000e-01 -7.5565070000e-01
4.9928380000e-01 -7.9354690000e-01  4.8824310000e-01 -7.8989030000e-01
4.7946060000e-01 -7.7163430000e-01  4.8223910000e-01 -7.9934340000e-01
4.7285460000e-01 -7.9738770000e-01  4.6763810000e-01 -7.8848000000e-01
4.5176280000e-01 -7.9213700000e-01  4.3545540000e-01 -7.9229640000e-01
4.2913390000e-01 -7.8124580000e-01  4.3774750000e-01 -7.7262760000e-01
4.4902330000e-01 -7.7602850000e-01  4.5820920000e-01 -7.6576770000e-01
4.4865480000e-01 -7.4738350000e-01  4.3505530000e-01 -7.6112750000e-01
4.2239030000e-01 -7.5879840000e-01  4.2072900000e-01 -7.4616220000e-01
4.3103170000e-01 -7.3957020000e-01  4.2932480000e-01 -7.2739120000e-01
4.3959280000e-01 -7.2198810000e-01  4.4915380000e-01 -7.2827870000e-01
4.5926930000e-01 -7.2142420000e-01  4.6926210000e-01 -7.2833280000e-01
4.6769180000e-01 -7.4108170000e-01  4.8087250000e-01 -7.4885350000e-01
5.0010520000e-01 -7.3424720000e-01  4.8068240000e-01 -7.2271300000e-01
4.7911690000e-01 -7.0892550000e-01  4.9139970000e-01 -7.0198290000e-01
5.0394240000e-01 -7.1060380000e-01  5.1914200000e-01 -7.0114090000e-01
4.5891290000e-01 -7.0028580000e-01  4.7372950000e-01 -6.8002690000e-01
4.9153850000e-01 -6.8626010000e-01  4.4025170000e-01 -7.1028640000e-01
4.2859780000e-01 -7.0512420000e-01  4.2875630000e-01 -6.9229710000e-01
4.4138780000e-01 -6.8561870000e-01  4.3957680000e-01 -6.6752000000e-01
4.6587150000e-01 -6.4874530000e-01  4.1322550000e-01 -6.6285100000e-01
4.1685830000e-01 -6.8613820000e-01  4.0661020000e-01 -6.9577490000e-01
3.9413690000e-01 -6.9011150000e-01  3.9360980000e-01 -6.7621680000e-01
3.7997780000e-01 -6.7100560000e-01  3.8000250000e-01 -6.5682580000e-01
3.9275120000e-01 -6.5003760000e-01  3.9133180000e-01 -6.3424440000e-01
4.0592190000e-01 -6.2705110000e-01  4.1973680000e-01 -6.3774340000e-01
4.3882790000e-01 -6.2805620000e-01  4.3532060000e-01 -5.9278780000e-01
4.0681510000e-01 -6.0945980000e-01  3.8869410000e-01 -6.0252850000e-01
3.8733230000e-01 -5.8261250000e-01  4.0671860000e-01 -5.7130820000e-01
4.0337640000e-01 -5.4371080000e-01  4.6872940000e-01 -5.9941120000e-01
4.7980590000e-01 -6.1837030000e-01  5.0671950000e-01 -6.1324050000e-01
5.0926430000e-01 -6.3728020000e-01  4.9814480000e-01 -6.5208060000e-01
5.1475310000e-01 -6.7436080000e-01  3.5945960000e-01 -6.8501020000e-01
3.4857610000e-01 -7.1155860000e-01  3.2736110000e-01 -7.1102970000e-01
3.2139200000e-01 -6.9332840000e-01  3.3349010000e-01 -6.8060850000e-01
3.2693070000e-01 -6.6380480000e-01  3.4037000000e-01 -6.5293710000e-01
3.5506770000e-01 -6.5981180000e-01  3.6727180000e-01 -6.4940160000e-01
3.8156460000e-01 -6.9844540000e-01  3.8617280000e-01 -7.1629500000e-01
3.6512500000e-01 -7.3986000000e-01  4.1101820000e-01 -7.1716440000e-01
4.0851140000e-01 -7.3962680000e-01  3.9476260000e-01 -7.5112420000e-01
4.0593680000e-01 -7.7606470000e-01  3.8013650000e-01 -7.8427630000e-01
3.6325300000e-01 -7.7222070000e-01  3.4177670000e-01 -7.8597990000e-01
3.2085470000e-01 -7.9086840000e-01  3.1098870000e-01 -7.8163270000e-01
3.1527820000e-01 -7.6916810000e-01  3.2972140000e-01 -7.6660490000e-01
3.3397380000e-01 -7.4822770000e-01  3.0800530000e-01 -7.3310010000e-01
3.0540240000e-01 -7.5958850000e-01  2.9333710000e-01 -7.6644420000e-01
2.8237610000e-01 -7.5937010000e-01  2.8244990000e-01 -7.4437120000e-01
2.6439960000e-01 -7.3867650000e-01  2.5377680000e-01 -7.0619960000e-01
2.8979330000e-01 -7.0730370000e-01  3.0272490000e-01 -6.8850730000e-01
2.9232630000e-01 -7.8539310000e-01  2.7457560000e-01 -7.7934910000e-01
2.7143430000e-01 -7.6663040000e-01  2.8061860000e-01 -7.9710290000e-01
2.7297580000e-01 -7.9673990000e-01  2.6378470000e-01 -7.8937050000e-01
2.7105180000e-01 -8.0259910000e-01  2.6665270000e-01 -8.0254160000e-01
2.6362120000e-01 -7.9998380000e-01  2.6033090000e-01 -8.0313770000e-01
2.5620600000e-01 -8.0166820000e-01  2.5430720000e-01 -7.9641690000e-01
2.4418410000e-01 -7.9694760000e-01  2.3316350000e-01 -7.9632240000e-01
2.2889330000e-01 -7.8794380000e-01  2.3609510000e-01 -7.8171450000e-01
2.4425970000e-01 -7.8570570000e-01  2.5305800000e-01 -7.8009440000e-01
2.5136180000e-01 -7.5982520000e-01  2.3495300000e-01 -7.7158040000e-01
2.2333650000e-01 -7.6907270000e-01  2.2064260000e-01 -7.5662500000e-01
2.3227990000e-01 -7.4770230000e-01  2.2795790000e-01 -7.2927370000e-01
2.1122870000e-01 -7.8404570000e-01  1.9797780000e-01 -7.6696890000e-01
2.0658510000e-01 -7.5281810000e-01  1.9419370000e-01 -7.9291400000e-01
1.8254100000e-01 -7.8871680000e-01  1.7357960000e-01 -7.6846470000e-01
1.7589160000e-01 -7.9880590000e-01  1.6570190000e-01 -7.9657500000e-01
1.6010050000e-01 -7.8668660000e-01  1.4233590000e-01 -7.9046880000e-01
1.2392800000e-01 -7.9038500000e-01  1.1697500000e-01 -7.7760290000e-01
1.2710810000e-01 -7.6809810000e-01  1.3969420000e-01 -7.7232910000e-01
1.5032770000e-01 -7.6118820000e-01  1.4047690000e-01 -7.4030990000e-01
1.2457640000e-01 -7.5498150000e-01  1.1035250000e-01 -7.5164010000e-01
1.0935740000e-01 -7.3723000000e-01  1.2133830000e-01 -7.3059300000e-01
1.2029540000e-01 -7.1704660000e-01  1.3184280000e-01 -7.1180340000e-01
1.4197200000e-01 -7.1916440000e-01  1.5335130000e-01 -7.1205130000e-01
1.6416970000e-01 -7.1999120000e-01  1.6194130000e-01 -7.3411580000e-01
1.7630680000e-01 -7.4335420000e-01  1.9899990000e-01 -7.2773650000e-01
1.7709490000e-01 -7.1401750000e-01  1.7548710000e-01 -6.9855720000e-01
1.8924920000e-01 -6.9053480000e-01  2.0402920000e-01 -7.0032480000e-01
2.2242570000e-01 -6.8850260000e-01  1.5353710000e-01 -6.8925490000e-01
1.6877610000e-01 -6.6726200000e-01  1.8861960000e-01 -6.7271940000e-01
1.3318500000e-01 -6.9922540000e-01  1.2111270000e-01 -6.9305590000e-01
1.2214740000e-01 -6.7973580000e-01  1.3535480000e-01 -6.7352870000e-01
1.3393860000e-01 -6.5560860000e-01  1.5868200000e-01 -6.3709840000e-01
1.0922820000e-01 -6.5011100000e-01  1.1057130000e-01 -6.7258740000e-01
9.9122780000e-02 -6.8124200000e-01  8.7193890000e-02 -6.7370230000e-01
8.8922170000e-02 -6.5985360000e-01  7.6775290000e-02 -6.5229650000e-01
7.9804780000e-02 -6.3911870000e-01  9.2442500000e-02 -6.3551100000e-01
9.3887140000e-02 -6.2189670000e-01  1.0663260000e-01 -6.1821700000e-01
1.1695030000e-01 -6.2811040000e-01  1.3282670000e-01 -6.2055230000e-01
1.2908970000e-01 -5.9624290000e-01  1.0922290000e-01 -6.0519020000e-01
9.7594440000e-02 -5.9764020000e-01  1.0062910000e-01 -5.8461670000e-01
1.1328580000e-01 -5.8164180000e-01  1.1560250000e-01 -5.6871980000e-01
1.2772720000e-01 -5.6647270000e-01  1.3564830000e-01 -5.7588150000e-01
1.4810130000e-01 -5.7167520000e-01  1.5668730000e-01 -5.8149120000e-01
1.5183280000e-01 -5.9489820000e-01  1.6510860000e-01 -6.0680720000e-01
1.8727700000e-01 -5.9324120000e-01  1.6972180000e-01 -5.7826000000e-01
1.7129350000e-01 -5.6419370000e-01  1.8463840000e-01 -5.6061640000e-01
1.9373060000e-01 -5.7101980000e-01  2.0734440000e-01 -5.6668080000e-01
2.1583780000e-01 -5.7744740000e-01  2.1040990000e-01 -5.9017430000e-01
2.2094320000e-01 -6.0092810000e-01  2.1469220000e-01 -6.1487100000e-01
1.9827090000e-01 -6.1562740000e-01  1.9079390000e-01 -6.3432030000e-01
2.1467170000e-01 -6.5612280000e-01  2.2453580000e-01 -6.2789380000e-01
2.4142570000e-01 -6.2225800000e-01  2.5365530000e-01 -6.3560850000e-01
2.4650820000e-01 -6.5416110000e-01  2.6357970000e-01 -6.7071940000e-01
2.4649020000e-01 -5.9531080000e-01  2.7524580000e-01 -6.0717720000e-01
2.7328260000e-01 -6.3088920000e-01  2.2976350000e-01 -5.7548630000e-01
2.3288170000e-01 -5.6058790000e-01  2.4779400000e-01 -5.5738900000e-01
2.5906760000e-01 -5.7030500000e-01  2.7967680000e-01 -5.6296090000e-01
3.0972560000e-01 -5.8794290000e-01  2.7736610000e-01 -5.3122100000e-01
2.5164170000e-01 -5.4195490000e-01  2.3777820000e-01 -5.3286720000e-01
2.4072910000e-01 -5.1704620000e-01  2.5647620000e-01 -5.1248780000e-01
2.5858080000e-01 -4.9533640000e-01  2.7491010000e-01 -4.9139510000e-01
2.8622660000e-01 -5.0412260000e-01  3.0379970000e-01 -4.9813410000e-01
3.1598530000e-01 -5.1259950000e-01  3.0792780000e-01 -5.3130160000e-01
3.2468670000e-01 -5.4995720000e-01  3.6233730000e-01 -5.3500730000e-01
3.3584580000e-01 -5.0862100000e-01  3.3858530000e-01 -4.8671370000e-01
3.5998000000e-01 -4.8015460000e-01  3.7707240000e-01 -4.9792770000e-01
4.0471180000e-01 -4.8717180000e-01  3.6683650000e-01 -5.7350940000e-01
3.4978010000e-01 -5.9298300000e-01  3.6636380000e-01 -6.2181400000e-01
3.3932560000e-01 -6.3460890000e-01  3.1727230000e-01 -6.2706850000e-01
2.9605370000e-01 -6.5587410000e-01  2.3636810000e-01 -4.7550880000e-01
2.0196850000e-01 -4.7155760000e-01  1.9472630000e-01 -4.4621580000e-01
2.1441940000e-01 -4.3269080000e-01  2.3376770000e-01 -4.4354020000e-01
2.5227790000e-01 -4.3086590000e-01  2.6881370000e-01 -4.4417610000e-01
2.6461100000e-01 -4.6330380000e-01  2.7998750000e-01 -4.7470240000e-01
2.2760240000e-01 -5.0513040000e-01  2.0892760000e-01 -5.1558730000e-01
1.7682660000e-01 -4.9982000000e-01  2.1484280000e-01 -5.4359710000e-01
1.8935840000e-01 -5.4613690000e-01  1.7430070000e-01 -5.3447820000e-01
1.5353850000e-01 -5.5018350000e-01  1.3192730000e-01 -5.5480240000e-01
1.2177760000e-01 -5.4612100000e-01  1.2574110000e-01 -5.3335350000e-01
1.4034470000e-01 -5.3035460000e-01  1.4381260000e-01 -5.1155410000e-01
1.1863230000e-01 -4.9961740000e-01  1.1569820000e-01 -5.2377370000e-01
1.0279860000e-01 -5.3030440000e-01  9.2308710000e-02 -5.2115980000e-01
9.5671480000e-02 -5.0758630000e-01  8.3982900000e-02 -4.9903040000e-01
8.7437090000e-02 -4.8553360000e-01  1.0136210000e-01 -4.8187830000e-01
1.0340370000e-01 -4.6595700000e-01  1.1962360000e-01 -4.6171480000e-01
1.3142630000e-01 -4.7581140000e-01  1.5387430000e-01 -4.7033920000e-01
1.5850630000e-01 -4.3091050000e-01  1.2405460000e-01 -4.4366400000e-01
1.0643270000e-01 -4.3341360000e-01  1.0773800000e-01 -4.1254620000e-01
1.2991110000e-01 -4.0282180000e-01  1.2907950000e-01 -3.7207500000e-01
1.7475640000e-01 -3.4390830000e-01  1.8539300000e-01 -3.9642700000e-01
2.1457320000e-01 -4.0750630000e-01  8.1443860000e-02 -4.4913850000e-01
6.8548610000e-02 -4.1905320000e-01  8.7403560000e-02 -4.0095710000e-01
7.7011600000e-02 -4.7571040000e-01  6.3571820000e-02 -4.8274380000e-01
5.1893470000e-02 -4.7365850000e-01  5.3961570000e-02 -4.5720110000e-01
3.5366880000e-02 -4.4797430000e-01  3.0515370000e-02 -4.1151800000e-01
1.6304130000e-02 -4.6917110000e-01  3.8468740000e-02 -4.8034620000e-01
4.0026130000e-02 -4.9566470000e-01  2.6868530000e-02 -5.0242430000e-01
1.5023520000e-02 -4.9375790000e-01  1.9732880000e-03 -5.0139440000e-01
-9.0808210000e-03 -4.9225020000e-01  -6.4777040000e-03 -4.7827260000e-01
-1.9197740000e-02 -4.7025680000e-01  -1.6700730000e-02 -4.5569670000e-01
-1.5263410000e-03 -4.5021040000e-01  -1.0631330000e-03 -4.3001930000e-01
-2.8341680000e-02 -4.2165170000e-01  -2.8707740000e-02 -4.4672980000e-01
-4.1937160000e-02 -4.5507180000e-01  -5.3948430000e-02 -4.4595150000e-01
-5.1209030000e-02 -4.3139600000e-01  -6.3738060000e-02 -4.2301650000e-01
-6.0565740000e-02 -4.0912610000e-01  -4.6837540000e-02 -4.0504450000e-01
-4.5492750000e-02 -3.8967460000e-01  -3.0748100000e-02 -3.8504130000e-01
-1.8594980000e-02 -3.9686110000e-01  1.0778490000e-03 -3.8848180000e-01
-2.5624990000e-03 -3.5690810000e-01  -2.7991440000e-02 -3.6919250000e-01
-4.2793660000e-02 -3.6078950000e-01  -4.0579850000e-02 -3.4427210000e-01
-2.4610690000e-02 -3.3889100000e-01  -2.3169330000e-02 -3.2133690000e-01
-6.7445020000e-03 -3.1660220000e-01  5.3800910000e-03 -3.2907310000e-01
2.3211960000e-02 -3.2218350000e-01  3.6315970000e-02 -3.3676300000e-01
2.8426170000e-02 -3.5614240000e-01  4.5569120000e-02 -3.7494510000e-01
8.5266660000e-02 -3.6012910000e-01  5.7041710000e-02 -3.3218370000e-01
5.9396120000e-02 -3.0878370000e-01  8.2429400000e-02 -3.0092120000e-01
1.0160830000e-01 -3.2028810000e-01  1.3285720000e-01 -3.0824180000e-01
2.9443700000e-02 -2.8880260000e-01  5.8048600000e-02 -2.5920810000e-01
8.6980170000e-02 -2.7369970000e-01  -2.4411830000e-03 -2.9937320000e-01
-1.8563830000e-02 -2.8885590000e-01  -1.5733870000e-02 -2.6975110000e-01
4.8550310000e-03 -2.6189700000e-01  4.9462560000e-03 -2.3337710000e-01
5.0005150000e-02 -2.0614540000e-01  -3.4818460000e-02 -2.2312050000e-01
-3.2491940000e-02 -2.5854420000e-01  -4.8999240000e-02 -2.7113660000e-01
-6.6294060000e-02 -2.6128640000e-01  -6.5520860000e-02 -2.4103530000e-01
-8.4920610000e-02 -2.3219860000e-01  -8.3816000000e-02 -2.1153840000e-01
-6.4600220000e-02 -2.0239590000e-01  -6.5877630000e-02 -1.7891850000e-01
-4.3821580000e-02 -1.6866970000e-01  -2.3204950000e-02 -1.8545460000e-01
6.9582250000e-03 -1.7117460000e-01  1.4570470000e-03 -1.1599470000e-01
-4.2238290000e-02 -1.4218060000e-01  -6.9263270000e-02 -1.3199620000e-01
-7.1742840000e-02 -1.0285760000e-01  -4.3847110000e-02 -8.5158370000e-02
-5.1359500000e-02 -4.5090870000e-02  5.4775620000e-02 -1.2458280000e-01
7.3961460000e-02 -1.5582270000e-01  1.2066280000e-01 -1.4630000000e-01
1.5867740000e-01 -1.5868720000e-01  1.6663520000e-01 -1.8047290000e-01
1.5001590000e-01 -1.9682530000e-01  1.2492380000e-01 -1.8916430000e-01
1.0421540000e-01 -2.1480360000e-01  1.3159470000e-01 -2.5738580000e-01
1.5783980000e-01 -2.2032810000e-01  1.8374390000e-01 -2.2003410000e-01
1.9484290000e-01 -2.4285490000e-01  1.7862480000e-01 -2.6582760000e-01
1.9764820000e-01 -2.9400090000e-01  2.0269060000e-01 -1.8734050000e-01
2.3266580000e-01 -2.1510160000e-01  2.2195500000e-01 -2.4349360000e-01
2.3214260000e-01 -1.6501210000e-01  2.5772210000e-01 -1.6864130000e-01
2.7611710000e-01 -2.0674270000e-01  2.7318160000e-01 -1.3733680000e-01
2.9923320000e-01 -1.5471170000e-01  3.0422260000e-01 -1.7698000000e-01
3.3501170000e-01 -1.7853900000e-01  3.3181900000e-01 -2.0635400000e-01
3.1469550000e-01 -2.2058800000e-01  3.2832230000e-01 -2.4980090000e-01
3.3052190000e-01 -2.7822930000e-01  3.1699640000e-01 -2.9072300000e-01
2.9969050000e-01 -2.8254570000e-01  2.9955050000e-01 -2.6154740000e-01
2.7566200000e-01 -2.5018730000e-01  2.4404290000e-01 -2.8160380000e-01
2.8276900000e-01 -2.9503620000e-01  2.9046000000e-01 -3.1663340000e-01
2.7415560000e-01 -3.3321510000e-01  2.4890800000e-01 -3.2549530000e-01
2.2863170000e-01 -3.5093230000e-01  3.2374810000e-01 -3.2176240000e-01
3.1165440000e-01 -3.5733720000e-01  2.8229410000e-01 -3.5767000000e-01
3.5392520000e-01 -3.3561750000e-01  3.6346860000e-01 -3.5852070000e-01
3.3807350000e-01 -3.9518350000e-01  3.9786440000e-01 -3.5385860000e-01
4.0044780000e-01 -3.8631910000e-01  3.8263980000e-01 -4.0638870000e-01
4.0411210000e-01 -4.4336190000e-01  3.6496530000e-01 -4.5591680000e-01
3.3998240000e-01 -4.4133630000e-01  3.1119710000e-01 -4.6654650000e-01
2.9014190000e-01 -4.3846900000e-01  2.9421570000e-01 -4.1077190000e-01
2.5421860000e-01 -3.9039960000e-01  -1.5505940000e-01 -5.2868010000e-01
-1.2086930000e-01 -5.2378730000e-01  -1.0827140000e-01 -5.4639220000e-01
-1.2352740000e-01 -5.6337400000e-01  -1.4394480000e-01 -5.5816770000e-01
-1.5734070000e-01 -5.7457710000e-01  -1.7594230000e-01 -5.6740370000e-01
-1.7793860000e-01 -5.4874340000e-01  -1.9578940000e-01 -5.4318920000e-01
-1.9671350000e-01 -5.2586950000e-01  -1.8240570000e-01 -5.1662200000e-01
-1.8602440000e-01 -4.9913750000e-01  -1.7174830000e-01 -4.8942760000e-01
-1.5491740000e-01 -4.9741650000e-01  -1.3885000000e-01 -4.8154210000e-01
-1.0219180000e-01 -4.8972640000e-01  -1.5297950000e-01 -4.5358810000e-01
-1.7381690000e-01 -4.7226880000e-01  -1.9131170000e-01 -4.6755040000e-01
-1.9281240000e-01 -4.4991350000e-01  -1.7786850000e-01 -4.4119090000e-01
-1.7959280000e-01 -4.2367820000e-01  -1.6456260000e-01 -4.1676280000e-01
-1.5160610000e-01 -4.2624930000e-01  -1.3745620000e-01 -4.1741520000e-01
-1.2441450000e-01 -4.2681550000e-01  -1.2601340000e-01 -4.4404620000e-01
-1.0689990000e-01 -4.5315350000e-01  -8.7295980000e-02 -4.3156250000e-01
-1.1015920000e-01 -4.1957780000e-01  -1.1153760000e-01 -4.0298110000e-01
-9.6896870000e-02 -3.9639580000e-01  -8.4975050000e-02 -4.0627650000e-01
-7.1126970000e-02 -3.9930680000e-01  -6.9376420000e-02 -4.5128100000e-01
-7.0103020000e-02 -4.7182390000e-01  -4.2273550000e-02 -4.8062840000e-01
-2.2794080000e-02 -4.9705530000e-01  -2.3321920000e-02 -5.1304560000e-01
-3.8737960000e-02 -5.1894310000e-01  -5.2170580000e-02 -5.0653340000e-01
-7.3573050000e-02 -5.1531500000e-01  -7.1493500000e-02 -5.5353630000e-01
-4.0813410000e-02 -5.3685610000e-01  -2.3001950000e-02 -5.4454750000e-01
-2.2049180000e-02 -5.6399020000e-01  -4.1041440000e-02 -5.7540010000e-01
-3.6318520000e-02 -6.0249300000e-01  -7.1345760000e-02 -6.3314500000e-01
-8.9771770000e-02 -5.8995310000e-01  -1.1796940000e-01 -5.8610030000e-01
-7.2385980000e-04 -5.2734320000e-01  1.3245090000e-02 -5.5481140000e-01
-2.5662010000e-03 -5.7254820000e-01  2.5279010000e-02 -5.1845460000e-01
4.3149500000e-02 -5.2687580000e-01  4.7873170000e-02 -5.6003760000e-01
6.1516770000e-02 -5.0669800000e-01  7.7835690000e-02 -5.2545750000e-01
7.6635070000e-02 -5.4399900000e-01  1.0066870000e-01 -5.5273910000e-01
9.0861640000e-02 -5.7398550000e-01  7.3730350000e-02 -5.8057860000e-01
7.6389070000e-02 -6.0692070000e-01  7.0193730000e-02 -6.2951890000e-01
5.6273970000e-02 -6.3543790000e-01  4.5162590000e-02 -6.2429770000e-01
5.0908090000e-02 -6.0807020000e-01  3.5758800000e-02 -5.9277070000e-01
2.6553380000e-03 -6.0777080000e-01  2.8544850000e-02 -6.2919570000e-01
2.8386980000e-02 -6.4819910000e-01  1.0793530000e-02 -6.5659870000e-01
-6.8442760000e-03 -6.4299730000e-01  -3.0947730000e-02 -6.5682830000e-01
5.2932000000e-02 -6.6140380000e-01  3.3953590000e-02 -6.8624870000e-01
1.0254550000e-02 -6.7851860000e-01  7.2764020000e-02 -6.8007000000e-01
7.4409160000e-02 -7.0001760000e-01  4.5637640000e-02 -7.2331600000e-01
1.0122760000e-01 -7.0449270000e-01  9.6169740000e-02 -7.2884190000e-01
7.9216340000e-02 -7.4056150000e-01  9.0099580000e-02 -7.7068900000e-01
5.8721190000e-02 -7.7901350000e-01  3.8558630000e-02 -7.6244470000e-01
8.2401090000e-03 -7.7820160000e-01  -2.2213480000e-02 -7.8276570000e-01
-3.5844210000e-02 -7.6671260000e-01  -2.5911990000e-02 -7.4899970000e-01
-4.7558230000e-03 -7.4921100000e-01  5.6933250000e-03 -7.2589840000e-01
-2.2700710000e-02 -6.9750650000e-01  -3.6953690000e-02 -7.3159370000e-01
-5.8046500000e-02 -7.3648680000e-01  -7.0818440000e-02 -7.1961810000e-01
-6.1518050000e-02 -6.9838420000e-01  -8.1622640000e-02 -6.7871790000e-01
-6.8869260000e-02 -7.6788190000e-01  -9.7071430000e-02 -7.4718050000e-01
-9.2638200000e-02 -7.2332800000e-01  -9.4763690000e-02 -7.8621880000e-01
-1.1218590000e-01 -7.8214090000e-01  -1.2795120000e-01 -7.5802300000e-01
-1.1998510000e-01 -7.9650390000e-01  -1.3322120000e-01 -7.9437480000e-01
-1.4098030000e-01 -7.8306760000e-01  -1.6017330000e-01 -7.8940770000e-01
-1.7900200000e-01 -7.9103270000e-01  -1.8698750000e-01 -7.7994280000e-01
-1.7932380000e-01 -7.6928340000e-01  -1.6596790000e-01 -7.7084840000e-01
-1.5748020000e-01 -7.5654390000e-01  -1.7413950000e-01 -7.3839300000e-01
-1.8487030000e-01 -7.5760930000e-01  -1.9834150000e-01 -7.5853630000e-01
-2.0360400000e-01 -7.4680030000e-01  -1.9585860000e-01 -7.3685420000e-01
-2.0237570000e-01 -7.2569100000e-01  -1.9485690000e-01 -7.1581480000e-01
-1.8208340000e-01 -7.1767920000e-01  -1.7473690000e-01 -7.0521830000e-01
-1.5979980000e-01 -7.0757490000e-01  -1.5522960000e-01 -7.2337870000e-01
-1.3509420000e-01 -7.2704980000e-01  -1.1647130000e-01 -6.9681400000e-01
-1.4950040000e-01 -6.9433490000e-01  -1.6026860000e-01 -6.7923800000e-01
-1.5120130000e-01 -6.6237130000e-01  -1.2918170000e-01 -6.6297980000e-01
-1.1789340000e-01 -6.3776520000e-01  -1.8713320000e-01 -6.8310910000e-01
-1.8702050000e-01 -6.5249460000e-01  -1.6362770000e-01 -6.4461020000e-01
-2.0011250000e-01 -7.0408150000e-01  -2.1361700000e-01 -7.0544800000e-01
-2.2051590000e-01 -6.9412640000e-01  -2.1348570000e-01 -6.8062790000e-01
-2.2702820000e-01 -6.6634710000e-01  -2.1896000000e-01 -6.2992670000e-01
-2.5017610000e-01 -6.7996260000e-01  -2.3385030000e-01 -6.9578020000e-01
-2.3682650000e-01 -7.0887210000e-01  -2.4909430000e-01 -7.1081630000e-01
-2.5664510000e-01 -7.0119310000e-01  -2.6852830000e-01 -7.0495700000e-01
-2.7626300000e-01 -6.9606240000e-01  -2.7231780000e-01 -6.8431410000e-01
-2.8315740000e-01 -6.7556660000e-01  -2.7931900000e-01 -6.6139990000e-01
-2.6288650000e-01 -6.5832770000e-01  -2.5724190000e-01 -6.3715360000e-01
-2.8844430000e-01 -6.1760060000e-01  -2.9153170000e-01 -6.5050800000e-01
-3.0617730000e-01 -6.6000130000e-01  -3.2126900000e-01 -6.5147240000e-01
-3.2121090000e-01 -6.3132740000e-01  -3.4507870000e-01 -6.2269340000e-01
-3.5534170000e-01 -5.7916440000e-01  -3.0947540000e-01 -5.8407530000e-01
-2.9168750000e-01 -5.6174150000e-01  -2.6900570000e-01 -5.6916340000e-01
-2.6288370000e-01 -5.9146840000e-01  -2.3656220000e-01 -5.9366540000e-01
-2.2118490000e-01 -5.6120240000e-01  -2.5325120000e-01 -5.5436700000e-01
-2.6014170000e-01 -5.3355990000e-01  -2.4348180000e-01 -5.2144990000e-01
-2.2630970000e-01 -5.3006340000e-01  -2.1201490000e-01 -5.1778670000e-01
-1.9306190000e-01 -5.7900080000e-01  -1.8801410000e-01 -6.0397010000e-01
-1.4848100000e-01 -6.1001610000e-01  -2.7426650000e-01 -7.2336370000e-01
-2.7063380000e-01 -7.4410380000e-01  -2.8311770000e-01 -7.5089560000e-01
-2.9240640000e-01 -7.4367900000e-01  -2.9115000000e-01 -7.3234760000e-01
-3.0180380000e-01 -7.2671390000e-01  -3.0036130000e-01 -7.1495140000e-01
-2.8914530000e-01 -7.1115110000e-01  -2.8789930000e-01 -6.9883930000e-01
-2.5415240000e-01 -7.2262300000e-01  -2.4336400000e-01 -7.3365090000e-01
-2.5042870000e-01 -7.5736160000e-01  -2.2287100000e-01 -7.2412400000e-01
-2.1686880000e-01 -7.4472720000e-01  -2.2528400000e-01 -7.5859890000e-01
-2.0987510000e-01 -7.7817130000e-01  -2.3156650000e-01 -7.8845780000e-01
-2.4584690000e-01 -7.8121660000e-01  -2.5896820000e-01 -7.9291180000e-01
-2.7173550000e-01 -7.9726990000e-01  -2.7783480000e-01 -7.9280930000e-01
-2.7680550000e-01 -7.8560450000e-01  -2.6884640000e-01 -7.8220980000e-01
-2.6941980000e-01 -7.7043910000e-01  -2.8678550000e-01 -7.6762880000e-01
-2.8335150000e-01 -7.8190120000e-01  -2.8835650000e-01 -7.8697100000e-01
-2.9432500000e-01 -7.8522070000e-01  -2.9675610000e-01 -7.7864230000e-01
-3.0515160000e-01 -7.7978510000e-01  -3.1650780000e-01 -7.7016870000e-01
-3.0255310000e-01 -7.6067040000e-01  -3.0307970000e-01 -7.4813210000e-01
-2.8684910000e-01 -7.9605310000e-01  -2.9543000000e-01 -7.9468670000e-01
-2.9799800000e-01 -7.8972780000e-01  -2.9189540000e-01 -8.0201220000e-01
-2.9519350000e-01 -8.0206890000e-01  -2.9910080000e-01 -7.9943810000e-01
-2.9588670000e-01 -8.0453470000e-01  -2.9767570000e-01 -8.0455590000e-01
-2.9890140000e-01 -8.0359080000e-01  -3.0012440000e-01 -8.0484570000e-01
-3.0167970000e-01 -8.0434040000e-01  -3.0246640000e-01 -8.0246630000e-01
-3.0591180000e-01 -8.0291720000e-01  -3.0944490000e-01 -8.0301850000e-01
-3.1101570000e-01 -8.0072100000e-01  -3.0925640000e-01 -7.9844050000e-01
-3.0639620000e-01 -7.9919260000e-01  -3.0373290000e-01 -7.9666440000e-01
-3.0625320000e-01 -7.8955800000e-01  -3.1043770000e-01 -7.9543910000e-01
-3.1400680000e-01 -7.9588290000e-01  -3.1622180000e-01 -7.9289530000e-01
-3.1432670000e-01 -7.8865250000e-01  -3.1899590000e-01 -7.8416500000e-01
-3.1569890000e-01 -8.0059720000e-01  -3.2016240000e-01 -7.9801120000e-01
-3.2015090000e-01 -7.9393980000e-01  -3.1910110000e-01 -8.0340550000e-01
-3.2131300000e-01 -8.0314550000e-01  -3.2401670000e-01 -8.0057670000e-01
-3.2197160000e-01 -8.0488870000e-01  -3.2332590000e-01 -8.0483810000e-01
-3.2426460000e-01 -8.0399410000e-01  -3.2536290000e-01 -8.0498640000e-01
-3.2672320000e-01 -8.0446560000e-01  -3.2729760000e-01 -8.0265370000e-01
-3.3091220000e-01 -8.0263540000e-01  -3.3500900000e-01 -8.0219190000e-01
-3.3645070000e-01 -7.9879050000e-01  -3.3337250000e-01 -7.9667530000e-01
-3.3051100000e-01 -7.9854800000e-01  -3.2711830000e-01 -7.9698640000e-01
-3.2626790000e-01 -7.8964110000e-01  -3.3320820000e-01 -7.9269970000e-01
-3.3767560000e-01 -7.9085480000e-01  -3.3773590000e-01 -7.8542300000e-01
-3.3197380000e-01 -7.8300840000e-01  -3.3114700000e-01 -7.7475660000e-01
-3.4375540000e-01 -7.9645160000e-01  -3.4865190000e-01 -7.8812150000e-01
-3.4353490000e-01 -7.8235260000e-01  -3.5151600000e-01 -7.9992010000e-01
-3.5689390000e-01 -7.9766510000e-01  -3.6062570000e-01 -7.8730180000e-01
-3.6028700000e-01 -8.0243160000e-01  -3.6529680000e-01 -8.0121670000e-01
-3.6797680000e-01 -7.9610910000e-01  -3.7731310000e-01 -7.9775040000e-01
-3.8712170000e-01 -7.9751450000e-01  -3.9077320000e-01 -7.9046710000e-01
-3.8504230000e-01 -7.8542040000e-01  -3.7830750000e-01 -7.8804530000e-01
-3.7220600000e-01 -7.8244140000e-01  -3.7657140000e-01 -7.7033760000e-01
-3.8610850000e-01 -7.7805630000e-01  -3.9410030000e-01 -7.7583270000e-01
-3.9442020000e-01 -7.6745390000e-01  -3.8714270000e-01 -7.6387130000e-01
-3.8720070000e-01 -7.5563000000e-01  -3.7976160000e-01 -7.5305690000e-01
-3.7417750000e-01 -7.5829800000e-01  -3.6672810000e-01 -7.5515190000e-01
-3.6138050000e-01 -7.6098640000e-01  -3.6408850000e-01 -7.6858740000e-01
-3.5732650000e-01 -7.7481280000e-01  -3.4423770000e-01 -7.6938830000e-01
-3.5341750000e-01 -7.5934010000e-01  -3.5183170000e-01 -7.5038120000e-01
-3.4244930000e-01 -7.4853310000e-01  -3.3673860000e-01 -7.5689220000e-01
-3.2497910000e-01 -7.5543790000e-01  -3.6372720000e-01 -7.4082210000e-01
-3.4952000000e-01 -7.2956730000e-01  -3.3850170000e-01 -7.3811410000e-01
-3.7794140000e-01 -7.4519930000e-01  -3.8543020000e-01 -7.4025880000e-01
-3.8385040000e-01 -7.3114950000e-01  -3.7384470000e-01 -7.2793810000e-01
-3.7254690000e-01 -7.1419750000e-01  -3.4860220000e-01 -7.0378940000e-01
-3.9213380000e-01 -7.0725500000e-01  -3.9183760000e-01 -7.2534230000e-01
-4.0023690000e-01 -7.3142290000e-01  -4.0892130000e-01 -7.2629980000e-01
-4.0829710000e-01 -7.1589150000e-01  -4.1829270000e-01 -7.1104610000e-01
-4.1745540000e-01 -7.0013410000e-01  -4.0703120000e-01 -6.9563300000e-01
-4.0705660000e-01 -6.8292110000e-01  -3.9460670000e-01 -6.7815480000e-01
-3.8433630000e-01 -6.8822100000e-01  -3.6738100000e-01 -6.8257580000e-01
-3.6570860000e-01 -6.5125120000e-01  -3.9241570000e-01 -6.6349300000e-01
-4.0736140000e-01 -6.5647790000e-01  -4.0769040000e-01 -6.3932780000e-01
-3.9009300000e-01 -6.3008580000e-01  -3.9229510000e-01 -6.0482850000e-01
-3.3655300000e-01 -6.6233410000e-01  -3.3042530000e-01 -6.8175170000e-01
-3.0440980000e-01 -6.8424240000e-01  -3.1041250000e-01 -7.0654210000e-01
-3.2411890000e-01 -7.1490110000e-01  -3.1878080000e-01 -7.3642060000e-01
-4.3441690000e-01 -7.2053810000e-01  -4.4323110000e-01 -7.3984770000e-01
-4.5863550000e-01 -7.3913570000e-01  -4.6290710000e-01 -7.2611960000e-01
-4.5378740000e-01 -7.1672610000e-01  -4.5861040000e-01 -7.0392780000e-01
-4.4814280000e-01 -6.9569350000e-01  -4.3691530000e-01 -7.0135470000e-01
-4.2703630000e-01 -6.9369300000e-01  -4.1868360000e-01 -7.3160610000e-01
-4.1635680000e-01 -7.4472800000e-01  -4.3224760000e-01 -7.6038350000e-01
-3.9890460000e-01 -7.4691790000e-01  -4.0218900000e-01 -7.6228480000e-01
-4.1211860000e-01 -7.6936070000e-01  -4.0565830000e-01 -7.8636950000e-01
-4.2291380000e-01 -7.9135280000e-01  -4.3421700000e-01 -7.8289050000e-01
-4.4914180000e-01 -7.9215410000e-01  -4.6360670000e-01 -7.9549160000e-01
-4.7044290000e-01 -7.8908220000e-01  -4.6745850000e-01 -7.8040770000e-01
-4.5737690000e-01 -7.7865870000e-01  -4.5426320000e-01 -7.6580070000e-01
-4.7261110000e-01 -7.5491070000e-01  -4.7437200000e-01 -7.7371750000e-01
-4.8276930000e-01 -7.7857060000e-01  -4.9047370000e-01 -7.7373840000e-01
-4.9062270000e-01 -7.6322420000e-01  -5.0342260000e-01 -7.5957880000e-01
-5.1203300000e-01 -7.3670020000e-01  -4.8597990000e-01 -7.3658180000e-01
-4.7675790000e-01 -7.2260490000e-01  -4.8336440000e-01 -7.9171990000e-01
-4.9566690000e-01 -7.8766280000e-01  -4.9797580000e-01 -7.7892080000e-01
-4.9141560000e-01 -7.9984600000e-01  -4.9666480000e-01 -7.9961880000e-01
-5.0297680000e-01 -7.9462060000e-01  -4.9797000000e-01 -8.0363560000e-01
-5.0097750000e-01 -8.0360210000e-01  -5.0304960000e-01 -8.0186360000e-01
-5.0528240000e-01 -8.0401680000e-01  -5.0808470000e-01 -8.0302650000e-01
-5.0938830000e-01 -7.9947610000e-01  -5.1619900000e-01 -7.9988780000e-01
-5.2356520000e-01 -7.9954690000e-01  -5.2648370000e-01 -7.9404550000e-01
-5.2180070000e-01 -7.8978300000e-01  -5.1626300000e-01 -7.9233450000e-01
-5.1038640000e-01 -7.8841670000e-01  -5.1189890000e-01 -7.7457290000e-01
-5.2278360000e-01 -7.8301630000e-01  -5.3061110000e-01 -7.8167720000e-01
-5.3288700000e-01 -7.7347720000e-01  -5.2539110000e-01 -7.6693160000e-01
-5.2924160000e-01 -7.5442230000e-01  -5.3803830000e-01 -7.9180940000e-01
-5.4724790000e-01 -7.8133780000e-01  -5.4243440000e-01 -7.7164280000e-01
-5.4870900000e-01 -7.9784570000e-01  -5.5595010000e-01 -7.9556490000e-01
-5.6229380000e-01 -7.8364340000e-01  -5.5966120000e-01 -8.0173560000e-01
-5.6557380000e-01 -8.0065670000e-01  -5.6907360000e-01 -7.9532850000e-01
-5.7806070000e-01 -7.9833780000e-01  -5.8175600000e-01 -7.8936360000e-01
-5.7696740000e-01 -7.8162500000e-01  -5.8488970000e-01 -7.7064870000e-01
-5.8962100000e-01 -7.5814610000e-01  -5.8323460000e-01 -7.5021260000e-01
-5.7404710000e-01 -7.5397730000e-01  -5.7330190000e-01 -7.6368320000e-01
-5.6293440000e-01 -7.6783510000e-01  -5.4929020000e-01 -7.5515460000e-01
-5.6582790000e-01 -7.4805430000e-01  -5.6878360000e-01 -7.3715670000e-01
-5.5954380000e-01 -7.2996820000e-01  -5.4805380000e-01 -7.3570420000e-01
-5.3569150000e-01 -7.2581210000e-01  -5.8674630000e-01 -7.3258090000e-01
-5.7644020000e-01 -7.1475690000e-01  -5.6155190000e-01 -7.1705300000e-01
-6.0041940000e-01 -7.2006540000e-01  -6.0035350000e-01 -7.0843510000e-01
-5.8570510000e-01 -6.9444120000e-01  -6.1119920000e-01 -7.0564620000e-01
-6.1223920000e-01 -6.9611670000e-01  -6.0537950000e-01 -6.8840290000e-01
-6.1376320000e-01 -6.7443480000e-01  -6.1895410000e-01 -6.5897490000e-01
-6.1039780000e-01 -6.4954800000e-01  -5.9953980000e-01 -6.5507670000e-01
-5.9928970000e-01 -6.6685160000e-01  -5.8669260000e-01 -6.7241700000e-01
-5.7216080000e-01 -6.5764930000e-01  -5.8943450000e-01 -6.4896260000e-01
-5.9113310000e-01 -6.3619780000e-01  -5.7962880000e-01 -6.3071300000e-01
-5.7017570000e-01 -6.3847440000e-01  -5.5912030000e-01 -6.3308740000e-01
-5.5080870000e-01 -6.4118330000e-01  -5.5383690000e-01 -6.5222020000e-01
-5.4419200000e-01 -6.5972240000e-01  -5.4767450000e-01 -6.7136090000e-01
-5.6028460000e-01 -6.7380710000e-01  -5.6360300000e-01 -6.8874430000e-01
-5.4376840000e-01 -7.0252200000e-01  -5.3880080000e-01 -6.8048560000e-01
-5.2617190000e-01 -6.7473620000e-01  -5.1577350000e-01 -6.8427240000e-01
-5.2009660000e-01 -6.9886520000e-01  -5.0639990000e-01 -7.1039660000e-01
-5.2419850000e-01 -6.5285130000e-01  -5.0035250000e-01 -6.6068240000e-01
-5.0077740000e-01 -6.7954580000e-01  -5.3947610000e-01 -6.3819390000e-01
-5.3816790000e-01 -6.2551530000e-01  -5.2591960000e-01 -6.2170220000e-01
-5.1566470000e-01 -6.3165170000e-01  -4.9901160000e-01 -6.2433650000e-01
-4.7303040000e-01 -6.4354240000e-01  -5.0271410000e-01 -5.9783220000e-01
-5.2373890000e-01 -6.0848330000e-01  -5.3607070000e-01 -6.0171470000e-01
-5.3453900000e-01 -5.8810190000e-01  -5.2148730000e-01 -5.8330690000e-01
-5.2074370000e-01 -5.6873180000e-01  -5.0725030000e-01 -5.6437350000e-01
-4.9685480000e-01 -5.7440050000e-01  -4.8227330000e-01 -5.6817020000e-01
-4.7092340000e-01 -5.7982330000e-01  -4.7682340000e-01 -5.9626610000e-01
-4.6171080000e-01 -6.1142930000e-01  -4.2925260000e-01 -5.9719510000e-01
-4.5391720000e-01 -5.7523680000e-01  -4.5292480000e-01 -5.5586090000e-01
-4.3440440000e-01 -5.4841140000e-01  -4.1766280000e-01 -5.6335550000e-01
-3.9244890000e-01 -5.5164890000e-01  -4.2522790000e-01 -6.3101540000e-01
-4.3983620000e-01 -6.4740840000e-01  -4.2664070000e-01 -6.7141950000e-01
-4.4871730000e-01 -6.8126840000e-01  -4.6622940000e-01 -6.7526670000e-01
-4.8228680000e-01 -6.9794700000e-01  -5.4040330000e-01 -5.5354550000e-01
-5.6901540000e-01 -5.5139870000e-01  -5.7506820000e-01 -5.3105860000e-01
-5.6007780000e-01 -5.1991170000e-01  -5.4424200000e-01 -5.2748700000e-01
-5.3028780000e-01 -5.1605600000e-01  -5.1579900000e-01 -5.2547920000e-01
-5.1779540000e-01 -5.4158180000e-01  -5.0412350000e-01 -5.4997170000e-01
-5.4635000000e-01 -5.7872020000e-01  -5.6190190000e-01 -5.8861880000e-01
-5.9081760000e-01 -5.7588320000e-01  -5.5505110000e-01 -6.1251660000e-01
-5.7718880000e-01 -6.1707380000e-01  -5.9237190000e-01 -6.0755100000e-01
-6.1263870000e-01 -6.2588520000e-01  -6.2842110000e-01 -6.0388540000e-01
-6.2217290000e-01 -5.8410290000e-01  -6.4189520000e-01 -5.6792950000e-01
-6.5300960000e-01 -5.4954230000e-01  -6.4727470000e-01 -5.3730520000e-01
-6.3409480000e-01 -5.3753300000e-01  -6.2719380000e-01 -5.5047710000e-01
-6.0840200000e-01 -5.4884250000e-01  -6.0203960000e-01 -5.1947040000e-01
-6.2803590000e-01 -5.2518020000e-01  -6.3828430000e-01 -5.1582410000e-01
-6.3494360000e-01 -5.0321350000e-01  -6.2065610000e-01 -4.9864880000e-01
-6.2081800000e-01 -4.7972220000e-01  -5.9321330000e-01 -4.5958340000e-01
-5.8313360000e-01 -4.9417830000e-01  -5.6126120000e-01 -5.0066860000e-01
-6.5661820000e-01 -5.2071830000e-01  -6.5635530000e-01 -5.0196870000e-01
-6.4522980000e-01 -4.9505090000e-01  -6.7137260000e-01 -5.1320220000e-01
-6.7338910000e-01 -5.0582140000e-01  -6.6922070000e-01 -4.9480280000e-01
-6.7955620000e-01 -5.0580210000e-01  -6.8086090000e-01 -5.0160050000e-01
-6.7936510000e-01 -4.9792700000e-01  -6.8338130000e-01 -4.9577240000e-01
-6.8325830000e-01 -4.9139530000e-01  -6.7885090000e-01 -4.8796670000e-01
-6.8248390000e-01 -4.7850310000e-01  -6.8529500000e-01 -4.6782870000e-01
-6.7864600000e-01 -4.6117830000e-01  -6.7049600000e-01 -4.6610270000e-01
-6.7176880000e-01 -4.7510100000e-01  -6.6371340000e-01 -4.8173470000e-01
-6.4496040000e-01 -4.7385790000e-01  -6.6121090000e-01 -4.6188490000e-01
-6.6241560000e-01 -4.5006200000e-01  -6.5140970000e-01 -4.4365350000e-01
-6.3932750000e-01 -4.5196380000e-01  -6.2313660000e-01 -4.4215870000e-01
-6.8039740000e-01 -4.4317380000e-01  -6.6825110000e-01 -4.2529450000e-01
-6.5213310000e-01 -4.2910770000e-01  -6.9409570000e-01 -4.2971300000e-01
-6.9370490000e-01 -4.1733370000e-01  -6.7721320000e-01 -4.0255270000e-01
-7.0535490000e-01 -4.1412740000e-01  -7.0638190000e-01 -4.0374710000e-01
-6.9870850000e-01 -3.9536410000e-01  -7.0779510000e-01 -3.7963780000e-01
-7.1340320000e-01 -3.6210550000e-01  -7.0339540000e-01 -3.5154290000e-01
-6.9122510000e-01 -3.5824230000e-01  -6.9135970000e-01 -3.7151980000e-01
-6.7747810000e-01 -3.7819020000e-01  -6.6066570000e-01 -3.6236980000e-01
-6.7953280000e-01 -3.5178140000e-01  -6.8075020000e-01 -3.3722120000e-01
-6.6735320000e-01 -3.3182180000e-01  -6.5733870000e-01 -3.4116530000e-01
-6.4477760000e-01 -3.3598740000e-01  -6.3622270000e-01 -3.4534930000e-01
-6.4009330000e-01 -3.5725730000e-01  -6.2981190000e-01 -3.6588160000e-01
-6.3402020000e-01 -3.7862410000e-01  -6.4814200000e-01 -3.8086950000e-01
-6.5248890000e-01 -3.9738690000e-01  -6.3062310000e-01 -4.1414300000e-01
-6.2434470000e-01 -3.8907070000e-01  -6.1013800000e-01 -3.8276410000e-01
-5.9825550000e-01 -3.9337350000e-01  -6.0299900000e-01 -4.1045540000e-01
-5.8607060000e-01 -4.2429820000e-01  -6.0807380000e-01 -3.5901390000e-01
-5.8244840000e-01 -3.6671090000e-01  -5.8150660000e-01 -3.8726940000e-01
-6.2384560000e-01 -3.4273900000e-01  -6.2170860000e-01 -3.2935110000e-01
-6.0872070000e-01 -3.2621900000e-01  -5.9873600000e-01 -3.3686190000e-01
-5.8213070000e-01 -3.2997730000e-01  -5.5688040000e-01 -3.4778970000e-01
-5.8453810000e-01 -3.0477760000e-01  -6.0549940000e-01 -3.1300060000e-01
-6.1726820000e-01 -3.0478680000e-01  -6.1378370000e-01 -2.9111190000e-01
-6.0007880000e-01 -2.8847610000e-01  -5.9664520000e-01 -2.7458850000e-01
-5.8317620000e-01 -2.7339760000e-01  -5.7583980000e-01 -2.8430190000e-01
-5.6244540000e-01 -2.8146870000e-01  -5.5500730000e-01 -2.9245330000e-01
-5.6122810000e-01 -3.0532310000e-01  -5.4913380000e-01 -3.1808690000e-01
-5.2716900000e-01 -3.0702080000e-01  -5.4181770000e-01 -2.9089130000e-01
-5.3823060000e-01 -2.7749890000e-01  -5.2490670000e-01 -2.7636050000e-01
-5.1816630000e-01 -2.8747840000e-01  -5.0516090000e-01 -2.8568860000e-01
-4.9927700000e-01 -2.9652540000e-01  -5.0577760000e-01 -3.0696630000e-01
-4.9792890000e-01 -3.1750990000e-01  -5.0461130000e-01 -3.2870900000e-01
-5.1886220000e-01 -3.2823510000e-01  -5.2608580000e-01 -3.4454130000e-01
-5.0633340000e-01 -3.6143250000e-01  -4.9751030000e-01 -3.4010710000e-01
-4.8364690000e-01 -3.3725510000e-01  -4.7612090000e-01 -3.4884140000e-01
-4.8320540000e-01 -3.6070340000e-01  -4.7487190000e-01 -3.7231000000e-01
-4.8248690000e-01 -3.8371480000e-01  -4.9626810000e-01 -3.8248540000e-01
-5.0324060000e-01 -3.9582620000e-01  -5.1843270000e-01 -3.9418980000e-01
-5.2422660000e-01 -3.7880600000e-01  -5.4431500000e-01 -3.7747130000e-01
-5.5767180000e-01 -4.0691780000e-01  -5.2777620000e-01 -4.0757580000e-01
-5.1719710000e-01 -4.2189750000e-01  -5.2611490000e-01 -4.3765400000e-01
-5.4596810000e-01 -4.3658980000e-01  -5.5644050000e-01 -4.5794250000e-01
-4.9000380000e-01 -4.1838690000e-01  -4.9240340000e-01 -4.4940200000e-01
-5.1556140000e-01 -4.5486230000e-01  -4.7631850000e-01 -3.9635290000e-01
-4.6118570000e-01 -3.9471460000e-01  -4.5353520000e-01 -4.0790850000e-01
-4.6233530000e-01 -4.2262150000e-01  -4.4898210000e-01 -4.3995260000e-01
-4.6345570000e-01 -4.7625040000e-01  -4.1950980000e-01 -4.2794680000e-01
-4.3766750000e-01 -4.0679840000e-01  -4.3330870000e-01 -3.9080520000e-01
-4.1735030000e-01 -3.8872280000e-01  -4.0814880000e-01 -4.0229040000e-01
-3.9118660000e-01 -3.9899200000e-01  -3.8239220000e-01 -4.1330410000e-01
-3.9099970000e-01 -4.2799970000e-01  -3.7987390000e-01 -4.4286210000e-01
-3.8986570000e-01 -4.5892140000e-01  -4.1014230000e-01 -4.5703750000e-01
-4.2270600000e-01 -4.7874100000e-01  -3.9685320000e-01 -5.0992900000e-01
-3.7994470000e-01 -4.7658030000e-01  -3.5826320000e-01 -4.7241600000e-01
-3.4541380000e-01 -4.9073660000e-01  -3.5703510000e-01 -5.1248460000e-01
-3.3826470000e-01 -5.3544750000e-01  -4.3208040000e-01 -5.2610580000e-01
-4.5587160000e-01 -5.1590190000e-01  -4.7816680000e-01 -5.4058320000e-01
-4.9869070000e-01 -5.1882220000e-01  -4.9833420000e-01 -4.9551820000e-01
-5.3228680000e-01 -4.8423960000e-01  -3.7919360000e-01 -3.7173940000e-01
-3.8606570000e-01 -3.3780260000e-01  -3.6420230000e-01 -3.2308380000e-01
-3.4525380000e-01 -3.3763350000e-01  -3.4959330000e-01 -3.5938740000e-01
-3.3181930000e-01 -3.7307510000e-01  -3.3936820000e-01 -3.9291460000e-01
-3.5885840000e-01 -3.9482840000e-01  -3.6494750000e-01 -4.1297470000e-01
-4.1007400000e-01 -3.7255630000e-01  -4.2578990000e-01 -3.5802700000e-01
-4.2071410000e-01 -3.2262480000e-01  -4.5060090000e-01 -3.7230810000e-01
-4.6089150000e-01 -3.4885590000e-01  -4.5445650000e-01 -3.3093250000e-01
-4.7580900000e-01 -3.1603970000e-01  -4.8688000000e-01 -2.9691360000e-01
-4.8176000000e-01 -2.8457800000e-01  -4.6839260000e-01 -2.8440220000e-01
-4.6102780000e-01 -2.9736420000e-01  -4.4207580000e-01 -2.9485270000e-01
-4.3850460000e-01 -2.6721620000e-01  -4.6238510000e-01 -2.7189050000e-01
-4.7258240000e-01 -2.6164030000e-01  -4.6712690000e-01 -2.4883800000e-01
-4.5317870000e-01 -2.4784180000e-01  -4.4865350000e-01 -2.3408140000e-01
-4.3474990000e-01 -2.3319580000e-01  -4.2697040000e-01 -2.4530970000e-01
-4.1119750000e-01 -2.4233130000e-01  -4.0215070000e-01 -2.5644650000e-01
-4.1191010000e-01 -2.7202760000e-01  -3.9976900000e-01 -2.9168580000e-01
-3.6083870000e-01 -2.8390690000e-01  -3.8361420000e-01 -2.5508260000e-01
-3.7931090000e-01 -2.3515560000e-01  -3.5906150000e-01 -2.2994860000e-01
-3.4296120000e-01 -2.4803150000e-01  -3.1397630000e-01 -2.3773930000e-01
-2.7307330000e-01 -2.7247650000e-01  -3.1973460000e-01 -2.9882180000e-01
-3.2125450000e-01 -3.2999730000e-01  -4.0198810000e-01 -2.1624910000e-01
-3.7736030000e-01 -1.9468820000e-01  -3.5432340000e-01 -2.0702830000e-01
-4.2862920000e-01 -2.2024500000e-01  -4.3947140000e-01 -2.0963650000e-01
-4.3443960000e-01 -1.9572220000e-01  -4.1814870000e-01 -1.9260350000e-01
-4.1511950000e-01 -1.7206760000e-01  -3.8194680000e-01 -1.5618800000e-01
-4.4116960000e-01 -1.6048810000e-01  -4.4494840000e-01 -1.8502120000e-01
-4.5903590000e-01 -1.9123600000e-01  -4.6953060000e-01 -1.8081130000e-01
-4.6494880000e-01 -1.6686800000e-01  -4.7624420000e-01 -1.5681630000e-01
-4.7096350000e-01 -1.4347750000e-01  -4.5686560000e-01 -1.4163390000e-01
-4.5317290000e-01 -1.2705940000e-01  -4.3855380000e-01 -1.2493490000e-01
-4.2864690000e-01 -1.3767120000e-01  -4.0930090000e-01 -1.3187230000e-01
-4.0977240000e-01 -1.0334320000e-01  -4.3373620000e-01 -1.1074460000e-01
-4.4575800000e-01 -1.0074050000e-01  -4.4079580000e-01 -8.6498820000e-02
-4.2610620000e-01 -8.4606200000e-02  -4.2200850000e-01 -7.0101000000e-02
-4.0781760000e-01 -6.8825640000e-02  -3.9969350000e-01 -8.0620630000e-02
-3.8466040000e-01 -7.7150040000e-02  -3.7569750000e-01 -8.9741270000e-02
-3.8318320000e-01 -1.0495210000e-01  -3.6913480000e-01 -1.2107270000e-01
-3.4023140000e-01 -1.0785370000e-01  -3.5977260000e-01 -8.7465430000e-02
-3.5635500000e-01 -7.0791030000e-02  -3.3996190000e-01 -6.7792310000e-02
-3.2990940000e-01 -8.1317020000e-02  -3.1276910000e-01 -7.7263300000e-02
-3.0319060000e-01 -9.1421120000e-02  -3.1130440000e-01 -1.0680600000e-01
-2.9924170000e-01 -1.2163610000e-01  -3.0905820000e-01 -1.3860410000e-01
-3.2992710000e-01 -1.3708900000e-01  -3.4251210000e-01 -1.5920320000e-01
-3.1615400000e-01 -1.9237940000e-01  -2.9829840000e-01 -1.5690030000e-01
-2.7531620000e-01 -1.5190850000e-01  -2.6072090000e-01 -1.7138480000e-01
-2.7321320000e-01 -1.9560970000e-01  -2.5210010000e-01 -2.2160660000e-01
-2.6556880000e-01 -1.1724760000e-01  -2.2858340000e-01 -1.3530720000e-01
-2.3342540000e-01 -1.6730090000e-01  -2.8547500000e-01 -9.0189750000e-02
-2.8045470000e-01 -7.1606200000e-02  -2.6141050000e-01 -6.8393930000e-02
-2.4757850000e-01 -8.5548070000e-02  -2.2042630000e-01 -7.6821690000e-02
-1.8060340000e-01 -1.1126010000e-01  -2.2295960000e-01 -3.5833750000e-02
-2.5593060000e-01 -4.8992950000e-02  -2.7300770000e-01 -3.7184860000e-02
-2.6898400000e-01 -1.7692630000e-02  -2.4948520000e-01 -1.2170040000e-02
-2.4707580000e-01 9.0108960000e-03  -2.2708550000e-01 1.4344730000e-02
-2.1245240000e-01 -1.1053640000e-03  -1.9051890000e-01 7.3644330000e-03
-1.7395600000e-01 -1.0445050000e-02  -1.8354840000e-01 -3.5239430000e-02
-1.6064650000e-01 -5.9513540000e-02  -1.0986730000e-01 -3.7230080000e-02
-1.4827410000e-01 -3.7652490000e-03  -1.4693940000e-01 2.5084160000e-02
-1.1999310000e-01 3.6446720000e-02  -9.4539920000e-02 1.5385680000e-02
-5.8754930000e-02 3.4911930000e-02  -1.0155870000e-01 -9.0592900000e-02
-1.2534080000e-01 -1.1849340000e-01  -1.0185270000e-01 -1.5996620000e-01
-1.0188650000e-01 -1.9994810000e-01  -1.2014680000e-01 -2.1424860000e-01
-1.4083440000e-01 -2.0349590000e-01  -1.4130240000e-01 -1.7726450000e-01
-1.7208590000e-01 -1.6549270000e-01  -2.0412340000e-01 -2.0469050000e-01
-1.6076920000e-01 -2.1819960000e-01  -1.5248480000e-01 -2.4274500000e-01
-1.7075890000e-01 -2.6035270000e-01  -1.9761890000e-01 -2.5202730000e-01
-2.1853460000e-01 -2.7882560000e-01  -1.1553650000e-01 -2.5066150000e-01
-1.3267600000e-01 -2.8774820000e-01  -1.6298820000e-01 -2.8633530000e-01
-8.5199840000e-02 -2.7177210000e-01  -8.0746980000e-02 -2.9722120000e-01
-1.1129910000e-01 -3.2648980000e-01  -4.6197410000e-02 -3.0225040000e-01
-5.4671480000e-02 -3.3239600000e-01  -7.4308160000e-02 -3.4402250000e-01
-6.6276460000e-02 -3.7378640000e-01  -9.3716620000e-02 -3.7934520000e-01
-1.1254540000e-01 -3.6745830000e-01  -1.3611760000e-01 -3.8944540000e-01
-1.6247480000e-01 -4.0032220000e-01  -1.7853670000e-01 -3.9131950000e-01
-1.7610740000e-01 -3.7233370000e-01  -1.5618010000e-01 -3.6571170000e-01
-1.5275800000e-01 -3.3948210000e-01  -1.9240760000e-01 -3.1911870000e-01
-1.9321560000e-01 -3.6010010000e-01  -2.1137900000e-01 -3.7408860000e-01
-2.3218750000e-01 -3.6370630000e-01  -2.3264740000e-01 -3.3730890000e-01
-2.6310510000e-01 -3.2588550000e-01  -2.0597040000e-01 -4.0733240000e-01
-2.4354120000e-01 -4.0682380000e-01  -2.5293050000e-01 -3.7900350000e-01
-2.0982220000e-01 -4.4031390000e-01  -2.2865530000e-01 -4.5646760000e-01
-2.7137120000e-01 -4.4364500000e-01  -2.1359260000e-01 -4.8773930000e-01
-2.4366590000e-01 -5.0022700000e-01  -2.6825620000e-01 -4.8949250000e-01
-2.9678440000e-01 -5.2133920000e-01  -3.2082180000e-01 -4.8798810000e-01
-3.1467510000e-01 -4.5972240000e-01  -3.4754640000e-01 -4.4013640000e-01
-3.2734970000e-01 -4.1143530000e-01  -2.9974930000e-01 -4.0675090000e-01
-2.9273390000e-01 -3.6241610000e-01  -5.5072030000e-01 -1.5901280000e-02
-5.3550170000e-01 -4.6906040000e-02  -5.5310720000e-01 -6.5872630000e-02
-5.7397220000e-01 -5.6611020000e-02  -5.7533010000e-01 -3.5584070000e-02
-5.9507600000e-01 -2.7914650000e-02  -5.9400190000e-01 -8.0068210000e-03
-5.7687180000e-01 -3.4182430000e-04  -5.7710560000e-01 1.8351640000e-02
-5.6091930000e-01 2.4582620000e-02  -5.4770300000e-01 1.3832690000e-02
-5.3219250000e-01 2.2677320000e-02  -5.1854620000e-01 1.2100560000e-02
-5.2094310000e-01 -6.3753070000e-03  -5.0088050000e-01 -1.6750830000e-02
-4.9733620000e-01 -5.4143910000e-02  -4.7866100000e-01 5.3253960000e-03
-5.0286660000e-01 1.9370290000e-02  -5.0378530000e-01 3.7466880000e-02
-4.8747540000e-01 4.4344250000e-02  -4.7456170000e-01 3.2827170000e-02
-4.5843900000e-01 3.9878840000e-02  -4.4721750000e-01 2.7721280000e-02
-4.5223590000e-01 1.2467450000e-02  -4.3946160000e-01 1.7399800000e-03
-4.4437170000e-01 -1.3568240000e-02  -4.6125310000e-01 -1.7372190000e-02
-4.6400820000e-01 -3.8364510000e-02  -4.3741610000e-01 -5.0336980000e-02
-4.3308310000e-01 -2.4889230000e-02  -4.1772460000e-01 -1.8449710000e-02
-4.0693750000e-01 -3.0338850000e-02  -4.1265050000e-01 -4.4730470000e-02
-4.0174260000e-01 -5.5747000000e-02  -4.5063200000e-01 -7.3472820000e-02
-4.7039390000e-01 -7.9129910000e-02  -4.7016760000e-01 -1.0831800000e-01
-4.7977100000e-01 -1.3192030000e-01  -4.9514180000e-01 -1.3635960000e-01
-5.0551450000e-01 -1.2352050000e-01  -4.9786310000e-01 -1.0691060000e-01
-5.1282870000e-01 -8.9269260000e-02  -5.4853660000e-01 -1.0305810000e-01
-5.2319210000e-01 -1.2708210000e-01  -5.2500300000e-01 -1.4639850000e-01
-5.4319970000e-01 -1.5331280000e-01  -5.5992010000e-01 -1.3877600000e-01
-5.8422740000e-01 -1.5163990000e-01  -6.2420320000e-01 -1.2779910000e-01
-5.8881930000e-01 -9.6927910000e-02  -5.9386870000e-01 -6.8919830000e-02
-5.0175640000e-01 -1.6226980000e-01  -5.2356350000e-01 -1.8404320000e-01
-5.4531810000e-01 -1.7448680000e-01  -4.8526750000e-01 -1.8425320000e-01
-4.8775430000e-01 -2.0385130000e-01  -5.1783320000e-01 -2.1859140000e-01
-4.6288830000e-01 -2.1508430000e-01  -4.7568670000e-01 -2.3640150000e-01
-4.9369170000e-01 -2.4098930000e-01  -4.9457720000e-01 -2.6654740000e-01
-5.1781420000e-01 -2.6378590000e-01  -5.2937850000e-01 -2.4953050000e-01
-5.5360970000e-01 -2.6019930000e-01  -5.7701630000e-01 -2.6129040000e-01
-5.8694700000e-01 -2.4988110000e-01  -5.7978570000e-01 -2.3587100000e-01
-5.6257700000e-01 -2.3632070000e-01  -5.5270770000e-01 -2.1718510000e-01
-5.7720320000e-01 -1.9033720000e-01  -5.8957910000e-01 -2.2158020000e-01
-6.0770120000e-01 -2.2730250000e-01  -6.2112640000e-01 -2.1316580000e-01
-6.1364110000e-01 -1.9218820000e-01  -6.3424350000e-01 -1.7353850000e-01
-6.1267480000e-01 -2.5472660000e-01  -6.4216810000e-01 -2.4435460000e-01
-6.4214000000e-01 -2.1942680000e-01  -6.2429890000e-01 -2.7935610000e-01
-6.4276170000e-01 -2.8708490000e-01  -6.7381040000e-01 -2.6692140000e-01
-6.3873040000e-01 -3.1397350000e-01  -6.6345070000e-01 -3.1668760000e-01
-6.7983530000e-01 -3.0418570000e-01  -7.0512490000e-01 -3.2384630000e-01
-7.2273860000e-01 -2.9657630000e-01  -7.1321140000e-01 -2.7228040000e-01
-7.3756620000e-01 -2.4831510000e-01  -7.5131790000e-01 -2.2076240000e-01
-7.4026260000e-01 -2.0283820000e-01  -7.2034730000e-01 -2.0681070000e-01
-7.1401060000e-01 -2.2699660000e-01  -6.8861010000e-01 -2.2973020000e-01
-6.7038220000e-01 -1.9395220000e-01  -7.0720540000e-01 -1.9093060000e-01
-7.1837720000e-01 -1.7238220000e-01  -7.0628100000e-01 -1.5502260000e-01
-6.8321230000e-01 -1.5730610000e-01  -6.7072130000e-01 -1.3210830000e-01
-7.5158010000e-01 -1.7179080000e-01  -7.4060700000e-01 -1.3857190000e-01
-7.1655200000e-01 -1.3541720000e-01  -7.7702140000e-01 -1.5283030000e-01
-7.7852690000e-01 -1.3500060000e-01  -7.6046130000e-01 -1.1255400000e-01
-7.9459700000e-01 -1.3202160000e-01  -7.9666240000e-01 -1.1877540000e-01
-7.8830630000e-01 -1.0790190000e-01  -8.0026700000e-01 -9.1607550000e-02
-8.0763100000e-01 -7.4202610000e-02  -7.9955170000e-01 -6.3180730000e-02
-7.8704570000e-01 -6.7175370000e-02  -7.8440690000e-01 -8.0361170000e-02
-7.6817960000e-01 -8.4013020000e-02  -7.5606520000e-01 -6.2560210000e-02
-7.7765690000e-01 -5.8292730000e-02  -7.8270140000e-01 -4.5767460000e-02
-7.7316600000e-01 -3.7135860000e-02  -7.6131320000e-01 -4.1428560000e-02
-7.5271030000e-01 -3.1780790000e-02  -7.4099410000e-01 -3.5879750000e-02
-7.3882000000e-01 -4.8604110000e-02  -7.2469880000e-01 -5.1740420000e-02
-7.2232420000e-01 -6.6674660000e-02  -7.3594220000e-01 -7.5904840000e-02
-7.3321140000e-01 -9.6189350000e-02  -6.9870070000e-01 -1.0455740000e-01
-7.0654950000e-01 -7.2378510000e-02  -6.9551910000e-01 -5.7472190000e-02
-6.7667600000e-01 -6.0883610000e-02  -6.7045030000e-01 -8.2013490000e-02
-6.4298150000e-01 -8.4957520000e-02  -7.0750240000e-01 -3.3118710000e-02
-6.7835150000e-01 -2.3765490000e-02  -6.6362420000e-01 -4.3576900000e-02
-7.3145920000e-01 -2.7255530000e-02  -7.3693190000e-01 -1.4834300000e-02
-7.2829630000e-01 -4.7744670000e-03  -7.1328610000e-01 -7.2892760000e-03
-7.0388910000e-01 1.0003390000e-02  -6.6675800000e-01 1.3584690000e-02
-7.2399130000e-01 2.7810900000e-02  -7.3398980000e-01 7.3962590000e-03
-7.4736060000e-01 6.1811390000e-03  -7.5300060000e-01 1.7247680000e-02
-7.4618170000e-01 2.7402680000e-02  -7.5343350000e-01 3.7541130000e-02
-7.4736440000e-01 4.7645890000e-02  -7.3497210000e-01 4.7524210000e-02
-7.3000230000e-01 6.0536450000e-02  -7.1534290000e-01 6.1263640000e-02
-7.0734300000e-01 4.6584780000e-02  -6.8546100000e-01 4.7759690000e-02
-6.7650720000e-01 8.3477150000e-02  -7.0875800000e-01 7.6244450000e-02
-7.2231240000e-01 8.7239640000e-02  -7.1886450000e-01 1.0422820000e-01
-6.9968760000e-01 1.1039810000e-01  -6.9885170000e-01 1.3576580000e-01
-6.6062470000e-01 1.5897780000e-01  -6.5112170000e-01 1.1383880000e-01
-6.2438430000e-01 1.0382310000e-01  -6.2443380000e-01 7.9957920000e-02
-6.4375520000e-01 6.7242880000e-02  -6.3771090000e-01 4.1530770000e-02
-6.0208490000e-01 3.6937710000e-02  -6.0549320000e-01 6.9546820000e-02
-5.8783370000e-01 8.2529870000e-02  -5.7116820000e-01 7.0427630000e-02
-5.7405360000e-01 5.1434280000e-02  -5.5796050000e-01 4.1632850000e-02
-6.1032170000e-01 4.6911750000e-03  -6.3250900000e-01 -7.8255040000e-03
-6.2604260000e-01 -4.7291980000e-02  -7.7271270000e-01 3.7310500000e-02
-7.9131510000e-01 2.7446510000e-02  -8.0163210000e-01 3.7220700000e-02
-7.9763920000e-01 4.8284770000e-02  -7.8647410000e-01 5.0591510000e-02
-7.8440830000e-01 6.2464770000e-02  -7.7277580000e-01 6.4727640000e-02
-7.6569560000e-01 5.5235000000e-02  -7.5360130000e-01 5.7854510000e-02
-7.6579250000e-01 1.8409760000e-02  -7.7294690000e-01 4.7415510000e-03
-7.9768020000e-01 4.1334260000e-03  -7.5755350000e-01 -1.1804440000e-02
-7.7529350000e-01 -2.3879630000e-02  -7.9108670000e-01 -2.0162990000e-02
-8.0493960000e-01 -4.0865900000e-02  -8.2142560000e-01 -2.3414840000e-02
-8.1895170000e-01 -7.5957470000e-03  -8.3412930000e-01 1.2693720000e-03
-8.4221940000e-01 1.2065030000e-02  -8.3986190000e-01 1.9244220000e-02
-8.3269170000e-01 2.0491640000e-02  -8.2700370000e-01 1.3971200000e-02
-8.1598630000e-01 1.8153880000e-02  -8.1867980000e-01 3.5538040000e-02
-8.3119250000e-01 2.7861710000e-02  -8.3756080000e-01 3.1055100000e-02
-8.3774050000e-01 3.7272280000e-02  -8.3223530000e-01 4.1617250000e-02
-8.3591660000e-01 4.9248700000e-02  -8.3028010000e-01 6.3020750000e-02
-8.1693450000e-01 5.2684140000e-02  -8.0517260000e-01 5.7059600000e-02
-8.4573250000e-01 2.6814910000e-02  -8.4708470000e-01 3.5398070000e-02
-8.4316200000e-01 3.9372780000e-02  -8.5295940000e-01 2.9772750000e-02
-8.5403250000e-01 3.2891930000e-02  -8.5273780000e-01 3.7420900000e-02
-8.5659180000e-01 3.2789210000e-02  -8.5716480000e-01 3.4484040000e-02
-8.5662570000e-01 3.5947970000e-02  -8.5819710000e-01 3.6723370000e-02
-8.5819710000e-01 3.8358720000e-02  -8.5665790000e-01 3.9686050000e-02
-8.5815140000e-01 4.2823490000e-02  -8.5933950000e-01 4.6152300000e-02
-8.5763990000e-01 4.8356210000e-02  -8.5492740000e-01 4.7387700000e-02
-8.5475880000e-01 4.4435120000e-02  -8.5153140000e-01 4.2683450000e-02
-8.4555160000e-01 4.7276410000e-02  -8.5243790000e-01 4.9438690000e-02
-8.5396300000e-01 5.2695970000e-02  -8.5180600000e-01 5.5725780000e-02
-8.4718530000e-01 5.5234600000e-02  -8.4436020000e-01 6.1061990000e-02
-8.5896940000e-01 5.2848470000e-02  -8.5788920000e-01 5.7892630000e-02
-8.5401360000e-01 5.9139770000e-02  -8.6269160000e-01 5.5216290000e-02
-8.6312780000e-01 5.7400320000e-02  -8.6152020000e-01 6.0765450000e-02
-8.6498920000e-01 5.7488030000e-02  -8.6535960000e-01 5.8791690000e-02
-8.6484700000e-01 5.9945260000e-02  -8.6613010000e-01 6.0683120000e-02
-8.6605520000e-01 6.2137820000e-02  -8.6450950000e-01 6.3243990000e-02
-8.6560900000e-01 6.6687380000e-02  -8.6645310000e-01 7.0720650000e-02
-8.6366370000e-01 7.3142820000e-02  -8.6070090000e-01 7.0869030000e-02
-8.6159770000e-01 6.7568820000e-02  -8.5906410000e-01 6.4824810000e-02
-8.5181550000e-01 6.6285780000e-02  -8.5686910000e-01 7.1941300000e-02
-8.5649490000e-01 7.6760150000e-02  -8.5134770000e-01 7.8495990000e-02
-8.4727070000e-01 7.3762050000e-02  -8.3916720000e-01 7.5525680000e-02
-8.6369660000e-01 8.0812800000e-02  -8.5728730000e-01 8.8043790000e-02
-8.5021950000e-01 8.4959940000e-02  -8.6939360000e-01 8.7121750000e-02
-8.6891080000e-01 9.2933220000e-02  -8.6020780000e-01 9.9684840000e-02
-8.7449260000e-01 9.4687380000e-02  -8.7488530000e-01 9.9827450000e-02
-8.7085580000e-01 1.0395460000e-01  -8.7530190000e-01 1.1232670000e-01
-8.7810830000e-01 1.2172810000e-01  -8.7253420000e-01 1.2737870000e-01
-8.6596380000e-01 1.2348790000e-01  -8.6637900000e-01 1.1627160000e-01
-8.5916390000e-01 1.1220030000e-01  -8.4900150000e-01 1.2009240000e-01
-8.5928960000e-01 1.2677740000e-01  -8.5964440000e-01 1.3506540000e-01
-8.5177460000e-01 1.3795880000e-01  -8.4611850000e-01 1.3214460000e-01
-8.3829840000e-01 1.3474650000e-01  -8.3355240000e-01 1.2846650000e-01
-8.3681140000e-01 1.2153610000e-01  -8.3151730000e-01 1.1542350000e-01
-8.3541370000e-01 1.0853470000e-01  -8.4347950000e-01 1.0876140000e-01
-8.4731060000e-01 1.0040650000e-01  -8.3810700000e-01 8.9634590000e-02
-8.3138730000e-01 1.0147020000e-01  -8.2237680000e-01 1.0273050000e-01
-8.1771990000e-01 9.4378340000e-02  -8.2390510000e-01 8.6364070000e-02
-8.1888810000e-01 7.5629480000e-02  -8.1696150000e-01 1.1699760000e-01
-8.0186720000e-01 1.0696380000e-01  -8.0659090000e-01 9.3843630000e-02
-8.2551690000e-01 1.2916350000e-01  -8.2313240000e-01 1.3781250000e-01
-8.1398080000e-01 1.3912500000e-01  -8.0783460000e-01 1.3060140000e-01
-7.9436550000e-01 1.3361320000e-01  -7.7706740000e-01 1.1405670000e-01
-7.9381550000e-01 1.5438680000e-01  -8.1092600000e-01 1.4851580000e-01
-8.1930460000e-01 1.5462500000e-01  -8.1711580000e-01 1.6446750000e-01
-8.0702400000e-01 1.6709020000e-01  -8.0550460000e-01 1.7809390000e-01
-7.9486790000e-01 1.8066950000e-01  -7.8736590000e-01 1.7214640000e-01
-7.7528390000e-01 1.7609890000e-01  -7.6690370000e-01 1.6573110000e-01
-7.7330350000e-01 1.5285280000e-01  -7.6269510000e-01 1.3847180000e-01
-7.3238690000e-01 1.4656110000e-01  -7.5228250000e-01 1.6817810000e-01
-7.5022920000e-01 1.8456020000e-01  -7.3402020000e-01 1.9017280000e-01
-7.1979260000e-01 1.7629250000e-01  -6.9645190000e-01 1.8619180000e-01
-7.3391770000e-01 1.1540770000e-01  -7.5049140000e-01 1.0357960000e-01
-7.4482080000e-01 7.8067680000e-02  -7.6788410000e-01 7.6885550000e-02
-7.8006950000e-01 8.7338050000e-02  -7.9888620000e-01 7.5611270000e-02
-8.1951460000e-01 1.9049560000e-01  -8.4060300000e-01 1.9291140000e-01
-8.4468600000e-01 2.0778180000e-01  -8.3362690000e-01 2.1586660000e-01
-8.2187510000e-01 2.1009600000e-01  -8.1119360000e-01 2.1863790000e-01
-8.0012760000e-01 2.1122720000e-01  -8.0204230000e-01 1.9879980000e-01
-7.9170280000e-01 1.9177190000e-01  -8.2517910000e-01 1.7211220000e-01
-8.3693970000e-01 1.6584430000e-01  -8.5673950000e-01 1.7611950000e-01
-8.3362950000e-01 1.4856970000e-01  -8.4925910000e-01 1.4694470000e-01
-8.5905720000e-01 1.5420170000e-01  -8.7323700000e-01 1.4280140000e-01
-8.8330870000e-01 1.5767240000e-01  -8.7875350000e-01 1.7103740000e-01
-8.9217580000e-01 1.8236900000e-01  -8.9981990000e-01 1.9509470000e-01
-8.9583670000e-01 2.0357690000e-01  -8.8666450000e-01 2.0341920000e-01
-8.8188570000e-01 1.9437150000e-01  -8.6869480000e-01 1.9538360000e-01
-8.6400760000e-01 2.1619860000e-01  -8.8243810000e-01 2.1206170000e-01
-8.8964870000e-01 2.1854820000e-01  -8.8743370000e-01 2.2736880000e-01
-8.7748020000e-01 2.3075960000e-01  -8.7796870000e-01 2.4405960000e-01
-8.5887050000e-01 2.5931850000e-01  -8.5070710000e-01 2.3457710000e-01
-8.3456450000e-01 2.3012560000e-01  -9.0233830000e-01 2.1505080000e-01
-9.0228140000e-01 2.2800490000e-01  -8.9468080000e-01 2.3290220000e-01
-9.1255460000e-01 2.2019690000e-01  -9.1396060000e-01 2.2525930000e-01
-9.1115760000e-01 2.3280700000e-01  -9.1818420000e-01 2.2525940000e-01
-9.1908170000e-01 2.2813010000e-01  -9.1806860000e-01 2.3063800000e-01
-9.2080640000e-01 2.3209620000e-01  -9.2073050000e-01 2.3506730000e-01
-9.1775670000e-01 2.3740430000e-01  -9.2025290000e-01 2.4375440000e-01
-9.2220500000e-01 2.5086540000e-01  -9.1787480000e-01 2.5534100000e-01
-9.1237370000e-01 2.5220450000e-01  -9.1308910000e-01 2.4614940000e-01
-9.0754700000e-01 2.4177110000e-01  -8.9484820000e-01 2.4748750000e-01
-9.0624200000e-01 2.5523030000e-01  -9.0738730000e-01 2.6308850000e-01
-9.0029190000e-01 2.6778700000e-01  -8.9175020000e-01 2.6268070000e-01
-8.8104310000e-01 2.7020840000e-01  -9.1931870000e-01 2.6702120000e-01
-9.1220550000e-01 2.7901590000e-01  -9.0149750000e-01 2.7743390000e-01
-9.2835700000e-01 2.7530430000e-01  -9.2842550000e-01 2.8289580000e-01
-9.1904780000e-01 2.9261300000e-01  -9.3544100000e-01 2.8451840000e-01
-9.3624190000e-01 2.9047500000e-01  -9.3225600000e-01 2.9545000000e-01
-9.3789520000e-01 3.0306740000e-01  -9.3050220000e-01 3.0935500000e-01
-9.2166260000e-01 3.0719210000e-01  -9.1367160000e-01 3.1811860000e-01
-9.0324300000e-01 3.2648170000e-01  -8.9372430000e-01 3.2285950000e-01
-8.9446560000e-01 3.1295850000e-01  -9.0346620000e-01 3.0925040000e-01
-9.0421120000e-01 2.9810730000e-01  -8.8793490000e-01 2.8904940000e-01
-8.8629270000e-01 3.0697180000e-01  -8.7684170000e-01 3.1315050000e-01
-8.6714980000e-01 3.0658440000e-01  -8.6905450000e-01 2.9388410000e-01
-8.5582630000e-01 2.8518360000e-01  -8.7804070000e-01 3.3164780000e-01
-8.5790440000e-01 3.2735430000e-01  -8.5548730000e-01 3.1248520000e-01
-8.7036310000e-01 3.4851920000e-01  -8.5928170000e-01 3.5205060000e-01
-8.4144600000e-01 3.4244350000e-01  -8.5998080000e-01 3.6322720000e-01
-8.5123910000e-01 3.6716120000e-01  -8.4178300000e-01 3.6302100000e-01
-8.3108930000e-01 3.7531090000e-01  -8.1799000000e-01 3.8502530000e-01
-8.0638050000e-01 3.7980090000e-01  -8.0828340000e-01 3.6776560000e-01
-8.1940470000e-01 3.6388910000e-01  -8.2080500000e-01 3.5018860000e-01
-8.0226930000e-01 3.4093160000e-01  -7.9934580000e-01 3.6004430000e-01
-7.8773050000e-01 3.6560440000e-01  -7.7895920000e-01 3.5635810000e-01
-7.8341960000e-01 3.4496920000e-01  -7.7488000000e-01 3.3611950000e-01
-7.8001100000e-01 3.2571290000e-01  -7.9144350000e-01 3.2518230000e-01
-7.9559810000e-01 3.1369110000e-01  -8.0774320000e-01 3.1340670000e-01
-8.1396640000e-01 3.2464370000e-01  -8.2919790000e-01 3.2318370000e-01
-8.3617210000e-01 3.0006240000e-01  -8.1367910000e-01 3.0214760000e-01
-8.0430860000e-01 2.9191340000e-01  -8.1016470000e-01 2.7907710000e-01
-8.2537920000e-01 2.7867910000e-01  -8.3211370000e-01 2.6208940000e-01
-7.8288500000e-01 2.9679940000e-01  -7.8296390000e-01 2.7170070000e-01
-8.0103540000e-01 2.6627560000e-01  -7.7366600000e-01 3.1585870000e-01
-7.6120370000e-01 3.1853240000e-01  -7.5379230000e-01 3.0806200000e-01
-7.6008590000e-01 2.9523440000e-01  -7.4798250000e-01 2.8165690000e-01
-7.5821980000e-01 2.5101240000e-01  -7.2391960000e-01 2.9336850000e-01
-7.4054650000e-01 3.1007280000e-01  -7.3792000000e-01 3.2389280000e-01
-7.2450000000e-01 3.2664270000e-01  -7.1590660000e-01 3.1571150000e-01
-7.0181500000e-01 3.1950820000e-01  -6.9350030000e-01 3.0802200000e-01
-6.9982420000e-01 2.9503680000e-01  -6.8939290000e-01 2.8309420000e-01
-6.9696830000e-01 2.6869880000e-01  -7.1442950000e-01 2.6922890000e-01
-7.2418040000e-01 2.5017040000e-01  -7.0061280000e-01 2.2369930000e-01
-6.8735100000e-01 2.5394230000e-01  -6.6861680000e-01 2.5898590000e-01
-6.5580880000e-01 2.4367400000e-01  -6.6484800000e-01 2.2313370000e-01
-6.4592280000e-01 2.0277150000e-01  -7.3153400000e-01 2.0942060000e-01
-7.5163900000e-01 2.1824820000e-01  -7.7039710000e-01 1.9827860000e-01
-7.8658610000e-01 2.1623120000e-01  -7.8628970000e-01 2.3474080000e-01
-8.1282200000e-01 2.4300370000e-01  -6.9344720000e-01 3.4289850000e-01
-7.0024710000e-01 3.7077360000e-01  -6.8277300000e-01 3.8281570000e-01
-6.6753930000e-01 3.7200360000e-01  -6.6985020000e-01 3.5460190000e-01
-6.5466670000e-01 3.4486310000e-01  -6.5915130000e-01 3.2817150000e-01
-6.7508280000e-01 3.2509410000e-01  -6.7883710000e-01 3.0949870000e-01
-7.1922740000e-01 3.4077470000e-01  -7.3344730000e-01 3.5250660000e-01
-7.3027050000e-01 3.8394270000e-01  -7.5405850000e-01 3.3860620000e-01
-7.6523360000e-01 3.5825210000e-01  -7.6086860000e-01 3.7563510000e-01
-7.8456830000e-01 3.8924430000e-01  -7.6852230000e-01 4.1105260000e-01
-7.4777720000e-01 4.1122330000e-01  -7.3849000000e-01 4.3497820000e-01
-7.2443730000e-01 4.5123050000e-01  -7.1102700000e-01 4.4955790000e-01
-7.0717070000e-01 4.3695270000e-01  -7.1734880000e-01 4.2638950000e-01
-7.0998720000e-01 4.0902260000e-01  -6.8008650000e-01 4.1204810000e-01
-6.9355020000e-01 4.3500760000e-01  -6.8781890000e-01 4.4764570000e-01
-6.7479320000e-01 4.4836540000e-01  -6.6603680000e-01 4.3618780000e-01
-6.4808660000e-01 4.4219040000e-01  -6.2040310000e-01 4.2216010000e-01
-6.5019010000e-01 4.0188310000e-01  -6.4960370000e-01 3.7907550000e-01
-6.9813920000e-01 4.6356970000e-01  -6.8022590000e-01 4.6911380000e-01
-6.7020870000e-01 4.6067060000e-01  -6.9555030000e-01 4.7992460000e-01
-6.8915370000e-01 4.8412340000e-01  -6.7738630000e-01 4.8356390000e-01
-6.9104110000e-01 4.8999460000e-01  -6.8744840000e-01 4.9253380000e-01
-6.8349240000e-01 4.9224640000e-01  -6.8268440000e-01 4.9673190000e-01
-6.7848360000e-01 4.9796750000e-01  -6.7386070000e-01 4.9483530000e-01
-6.6598300000e-01 5.0121480000e-01  -6.5669970000e-01 5.0718710000e-01
-6.4832020000e-01 5.0291860000e-01  -6.5048510000e-01 4.9364560000e-01
-6.5943630000e-01 4.9207560000e-01  -6.6325600000e-01 4.8236450000e-01
-6.4996980000e-01 4.6696340000e-01  -6.4360440000e-01 4.8611840000e-01
-6.3273260000e-01 4.9091770000e-01  -6.2323670000e-01 4.8243070000e-01
-6.2740660000e-01 4.6837180000e-01  -6.1307800000e-01 4.5600330000e-01
-6.3173810000e-01 5.1014800000e-01  -6.1098050000e-01 5.0412110000e-01
-6.0962630000e-01 4.8761360000e-01  -6.2316910000e-01 5.2733570000e-01
-6.1127480000e-01 5.3078930000e-01  -5.9212110000e-01 5.1967220000e-01
-6.1182540000e-01 5.4285980000e-01  -6.0227050000e-01 5.4704420000e-01
-5.9192660000e-01 5.4233680000e-01  -5.7977760000e-01 5.5583870000e-01
-5.6483710000e-01 5.6658880000e-01  -5.5169880000e-01 5.6033490000e-01
-5.5430870000e-01 5.4669120000e-01  -5.6697810000e-01 5.4271630000e-01
-5.6903250000e-01 5.2745280000e-01  -5.4879120000e-01 5.1635190000e-01
-5.4455110000e-01 5.3756750000e-01  -5.3108010000e-01 5.4322420000e-01
-5.2180510000e-01 5.3215160000e-01  -5.2759660000e-01 5.1973990000e-01
-5.1879050000e-01 5.0939370000e-01  -5.2505040000e-01 4.9836470000e-01
-5.3757170000e-01 4.9836610000e-01  -5.4259690000e-01 4.8592300000e-01
-5.5601610000e-01 4.8598760000e-01  -5.6251540000e-01 4.9872440000e-01
-5.7956800000e-01 4.9775430000e-01  -5.8874710000e-01 4.7178070000e-01
-5.6296160000e-01 4.7355760000e-01  -5.5257350000e-01 4.6199500000e-01
-5.5899180000e-01 4.4741550000e-01  -5.7670350000e-01 4.4664820000e-01
-5.8463770000e-01 4.2627070000e-01  -5.2934790000e-01 4.6737100000e-01
-5.2874940000e-01 4.4062120000e-01  -5.4801080000e-01 4.3337270000e-01
-5.1874320000e-01 4.8740000000e-01  -5.0535020000e-01 4.8950460000e-01
-4.9835800000e-01 4.7812040000e-01  -5.0539460000e-01 4.6533540000e-01
-4.9371560000e-01 4.5167030000e-01  -5.0285340000e-01 4.2215160000e-01
-4.7049320000e-01 4.6174710000e-01  -4.8479110000e-01 4.7914140000e-01
-4.8061600000e-01 4.9287230000e-01  -4.6653360000e-01 4.9378420000e-01
-4.5979180000e-01 4.8156450000e-01  -4.4552320000e-01 4.8259040000e-01
-4.4022830000e-01 4.7014870000e-01  -4.4833190000e-01 4.5980170000e-01
-4.4149830000e-01 4.4793840000e-01  -4.4964650000e-01 4.3747000000e-01
-4.6380880000e-01 4.3940930000e-01  -4.7221050000e-01 4.2396280000e-01
-4.5489860000e-01 4.0649260000e-01  -4.4408510000e-01 4.2540850000e-01
-4.3023990000e-01 4.2613550000e-01  -4.2503980000e-01 4.1381550000e-01
-4.3353060000e-01 4.0396930000e-01  -4.2780950000e-01 3.9215360000e-01
-4.3629780000e-01 3.8320890000e-01  -4.4823640000e-01 3.8616490000e-01
-4.5583870000e-01 3.7544230000e-01  -4.6855460000e-01 3.7833680000e-01
-4.7250770000e-01 3.9203670000e-01  -4.9024800000e-01 3.9386790000e-01
-5.0020860000e-01 3.6986260000e-01  -4.7720040000e-01 3.6806120000e-01
-4.7020400000e-01 3.5575760000e-01  -4.7889760000e-01 3.4501960000e-01
-4.9236830000e-01 3.4809180000e-01  -5.0083160000e-01 3.3657950000e-01
-5.1403130000e-01 3.4029750000e-01  -5.1712080000e-01 3.5378420000e-01
-5.3196330000e-01 3.5629280000e-01  -5.3510160000e-01 3.7124710000e-01
-5.2226110000e-01 3.8151120000e-01  -5.2719950000e-01 4.0102890000e-01
-5.5933220000e-01 4.0463270000e-01  -5.5071970000e-01 3.7599680000e-01
-5.6107130000e-01 3.6150980000e-01  -5.7881240000e-01 3.6512210000e-01
-5.8393530000e-01 3.8433240000e-01  -6.0747910000e-01 3.8769400000e-01
-5.4932940000e-01 3.3673220000e-01  -5.7956800000e-01 3.2943020000e-01
-5.9191730000e-01 3.4976750000e-01  -5.2414470000e-01 3.3052560000e-01
-5.1791030000e-01 3.1663980000e-01  -5.2809430000e-01 3.0528660000e-01
-5.4480660000e-01 3.0910930000e-01  -5.5716310000e-01 2.9105410000e-01
-5.9615690000e-01 2.9360270000e-01  -5.3663740000e-01 2.6673430000e-01
-5.2213520000e-01 2.9053860000e-01  -5.0557780000e-01 2.9133530000e-01
-4.9866580000e-01 2.7680140000e-01  -5.0872600000e-01 2.6385760000e-01
-5.0034740000e-01 2.4874480000e-01  -5.1124140000e-01 2.3595820000e-01
-5.2787770000e-01 2.3960320000e-01  -5.3857450000e-01 2.2442920000e-01
-5.5693540000e-01 2.2896930000e-01  -5.6140960000e-01 2.4883570000e-01
-5.8593320000e-01 2.5407770000e-01  -6.0760580000e-01 2.1985250000e-01
-5.7066430000e-01 2.1407700000e-01  -5.6000380000e-01 1.9474350000e-01
-5.7345700000e-01 1.7686160000e-01  -5.9773180000e-01 1.8119360000e-01
-6.1377040000e-01 1.5624590000e-01  -6.3387670000e-01 2.4835660000e-01
-6.3152420000e-01 2.7413660000e-01  -6.6188700000e-01 2.8771370000e-01
-6.4753340000e-01 3.1395770000e-01  -6.2525980000e-01 3.2081990000e-01
-6.2502520000e-01 3.5659610000e-01  -4.7072260000e-01 2.4576040000e-01
-4.4057040000e-01 2.6278330000e-01  -4.1981580000e-01 2.4653820000e-01
-4.2779800000e-01 2.2402100000e-01  -4.4982810000e-01 2.2142580000e-01
-4.5735340000e-01 2.0029200000e-01  -4.7855460000e-01 2.0134070000e-01
-4.8639760000e-01 2.1928550000e-01  -5.0553730000e-01 2.1946910000e-01
-4.8104210000e-01 2.7487700000e-01  -4.7208040000e-01 2.9431350000e-01
-4.3684240000e-01 3.0042610000e-01  -4.9332960000e-01 3.1349710000e-01
-4.7420520000e-01 3.3053110000e-01  -4.5517050000e-01 3.2994970000e-01
-4.4760490000e-01 3.5485930000e-01  -4.3283610000e-01 3.7129880000e-01
-4.1952200000e-01 3.7024130000e-01  -4.1522390000e-01 3.5758250000e-01
-4.2527580000e-01 3.4657260000e-01  -4.1703070000e-01 3.2932430000e-01
-3.8964330000e-01 3.3446800000e-01  -4.0146820000e-01 3.5573540000e-01
-3.9487090000e-01 3.6860100000e-01  -3.8100940000e-01 3.6736860000e-01
-3.7575160000e-01 3.5441090000e-01  -3.6126650000e-01 3.5435950000e-01
-3.5612780000e-01 3.4141000000e-01  -3.6524470000e-01 3.3026780000e-01
-3.5753810000e-01 3.1618730000e-01  -3.6816670000e-01 3.0322150000e-01
-3.8600100000e-01 3.0768840000e-01  -4.0094530000e-01 2.9006670000e-01
-3.8151700000e-01 2.5544570000e-01  -3.6114140000e-01 2.8601370000e-01
-3.4086000000e-01 2.8807880000e-01  -3.2965040000e-01 2.7042960000e-01
-3.4187300000e-01 2.4952930000e-01  -3.2312770000e-01 2.2514350000e-01
-3.4352490000e-01 1.7550810000e-01  -3.8299990000e-01 2.1174440000e-01
-4.1311930000e-01 2.0355610000e-01  -3.2988660000e-01 3.1548850000e-01
-3.0177040000e-01 2.9872880000e-01  -3.0638770000e-01 2.7300610000e-01
-3.4191940000e-01 3.3959080000e-01  -3.3518060000e-01 3.5318070000e-01
-3.2039240000e-01 3.5269490000e-01  -3.1239210000e-01 3.3816510000e-01
-2.9192530000e-01 3.4163010000e-01  -2.6657190000e-01 3.1498810000e-01
-2.8896250000e-01 3.6998350000e-01  -3.1346250000e-01 3.6599620000e-01
-3.2372650000e-01 3.7747370000e-01  -3.1705500000e-01 3.9067620000e-01
-3.0237830000e-01 3.9062730000e-01  -2.9630910000e-01 4.0447610000e-01
-2.8199130000e-01 4.0357570000e-01  -2.7588140000e-01 3.9073760000e-01
-2.6087900000e-01 3.9172950000e-01  -2.5434090000e-01 3.7848250000e-01
-2.6339250000e-01 3.6512450000e-01  -2.5189920000e-01 3.4851740000e-01
-2.2491200000e-01 3.5778180000e-01  -2.3935640000e-01 3.7828560000e-01
-2.3355680000e-01 3.9281040000e-01  -2.1847880000e-01 3.9249200000e-01
-2.1213950000e-01 3.7910620000e-01  -1.9707820000e-01 3.7969140000e-01
-1.9148000000e-01 3.6658920000e-01  -2.0018720000e-01 3.5521780000e-01
-1.9224090000e-01 3.4199290000e-01  -2.0144610000e-01 3.2957790000e-01
-2.1822570000e-01 3.3199690000e-01  -2.2921610000e-01 3.1365440000e-01
-2.0771240000e-01 2.9025060000e-01  -1.9436060000e-01 3.1513570000e-01
-1.7744620000e-01 3.1703800000e-01  -1.6952850000e-01 3.0237390000e-01
-1.7928480000e-01 2.8863410000e-01  -1.7013290000e-01 2.7358540000e-01
-1.8063780000e-01 2.6010060000e-01  -1.9777700000e-01 2.6306310000e-01
-2.0815370000e-01 2.4700800000e-01  -2.2732470000e-01 2.5110070000e-01
-2.3233260000e-01 2.7141640000e-01  -2.5725350000e-01 2.7655170000e-01
-2.8066080000e-01 2.4123170000e-01  -2.4140050000e-01 2.3521370000e-01
-2.2955100000e-01 2.1489880000e-01  -2.4356390000e-01 1.9499930000e-01
-2.7046350000e-01 1.9939430000e-01  -2.8866370000e-01 1.7128100000e-01
-1.9357440000e-01 2.1633940000e-01  -1.9932100000e-01 1.7558340000e-01
-2.3124510000e-01 1.7030180000e-01  -1.7399230000e-01 2.4363260000e-01
-1.5476690000e-01 2.4460070000e-01  -1.4582690000e-01 2.2748120000e-01
-1.5786710000e-01 2.0902520000e-01  -1.4117730000e-01 1.8589860000e-01
-1.6162420000e-01 1.3738270000e-01  -1.0297830000e-01 2.0097390000e-01
-1.2568210000e-01 2.2826480000e-01  -1.1972900000e-01 2.4815500000e-01
-9.9947430000e-02 2.5035170000e-01  -8.8669640000e-02 2.3351370000e-01
-6.7780850000e-02 2.3776760000e-01  -5.6530730000e-02 2.2040390000e-01
-6.6702770000e-02 2.0171270000e-01  -5.1869640000e-02 1.8347000000e-01
-6.3689250000e-02 1.6221430000e-01  -9.0234330000e-02 1.6367530000e-01
-1.0624330000e-01 1.3439310000e-01  -6.9358780000e-02 9.2985230000e-02
-4.9400220000e-02 1.3985350000e-01  -2.1550370000e-02 1.4749910000e-01
-2.4170640000e-03 1.2538290000e-01  -1.4581810000e-02 9.4667240000e-02
1.5046940000e-02 6.6667650000e-02  -1.1754230000e-01 6.8593260000e-02
-1.5142630000e-01 8.2589660000e-02  -1.8361110000e-01 4.7435340000e-02
-2.2164660000e-01 3.5112380000e-02  -2.4088990000e-01 4.8059880000e-02
-2.3705630000e-01 7.1057710000e-02  -2.1225340000e-01 7.9608700000e-02
-2.1057040000e-01 1.1252330000e-01  -2.5774990000e-01 1.3087990000e-01
-2.5720060000e-01 8.5473120000e-02  -2.7798460000e-01 7.0009210000e-02
-3.0037750000e-01 8.1947800000e-02  -3.0075990000e-01 1.1006580000e-01
-3.3270990000e-01 1.2167670000e-01  -2.7409590000e-01 3.2423000000e-02
-3.1466390000e-01 3.7263130000e-02  -3.2268710000e-01 6.6528400000e-02
-2.8479870000e-01 -2.9524410000e-03  -3.0762620000e-01 -1.5051570000e-02
-3.4490340000e-01 4.9607150000e-03  -3.0173290000e-01 -4.9464270000e-02
-3.3302170000e-01 -5.0720480000e-02  -3.5014710000e-01 -3.5637680000e-02
-3.7597230000e-01 -5.2473830000e-02  -3.8973860000e-01 -2.8094480000e-02
-3.8425190000e-01 -6.5140190000e-03  -4.1244710000e-01 9.1099970000e-03
-4.3093640000e-01 3.0816110000e-02  -4.2733770000e-01 4.8873820000e-02
-4.0853050000e-01 5.2430410000e-02  -3.9607470000e-01 3.5524720000e-02
-3.7007140000e-01 4.0375540000e-02  -3.6295710000e-01 8.4377230000e-02
-4.0218240000e-01 7.2481600000e-02  -4.2109910000e-01 8.5433390000e-02
-4.1765510000e-01 1.0843170000e-01  -3.9269180000e-01 1.1702640000e-01
-3.9123950000e-01 1.4952340000e-01  -4.5104440000e-01 7.0016580000e-02
-4.6217070000e-01 1.0590570000e-01  -4.3861350000e-01 1.2343240000e-01
-4.8360190000e-01 6.3487930000e-02  -5.0478480000e-01 7.6407460000e-02
-5.0578970000e-01 1.2099510000e-01  -5.2987130000e-01 5.2418450000e-02
-5.5104100000e-01 7.7160970000e-02  -5.4843070000e-01 1.0386480000e-01
-5.8753440000e-01 1.2115560000e-01  -5.6324360000e-01 1.5432250000e-01
-5.3446190000e-01 1.5721130000e-01  -5.2599240000e-01 1.9452620000e-01
-4.9245490000e-01 1.8418720000e-01  -4.7947070000e-01 1.5938530000e-01
-4.3513800000e-01 1.6641350000e-01  -1.8530540000e-01 5.1885240000e-01
-2.1008990000e-01 4.9479760000e-01  -2.3356860000e-01 5.0568040000e-01
-2.3120790000e-01 5.2838620000e-01  -2.1162970000e-01 5.3617540000e-01
-2.1043750000e-01 5.5732470000e-01  -1.9117210000e-01 5.6245520000e-01
-1.7858880000e-01 5.4853210000e-01  -1.6088250000e-01 5.5453110000e-01
-1.4995460000e-01 5.4106240000e-01  -1.5609430000e-01 5.2517110000e-01
-1.4288950000e-01 5.1315290000e-01  -1.4873170000e-01 4.9690610000e-01
-1.6704400000e-01 4.9347630000e-01  -1.7071200000e-01 4.7118940000e-01
-2.0517970000e-01 4.5626330000e-01  -1.4285000000e-01 4.5687930000e-01
-1.3697250000e-01 4.8424030000e-01  -1.2004550000e-01 4.9070630000e-01
-1.0846460000e-01 4.7731980000e-01  -1.1542750000e-01 4.6147920000e-01
-1.0373870000e-01 4.4832470000e-01  -1.1183360000e-01 4.3389550000e-01
-1.2789170000e-01 4.3395460000e-01  -1.3414660000e-01 4.1849050000e-01
-1.5022290000e-01 4.1842980000e-01  -1.5905730000e-01 4.3330950000e-01
-1.7987370000e-01 4.2944270000e-01  -1.8304270000e-01 4.0045230000e-01
-1.5750140000e-01 4.0419530000e-01  -1.4663100000e-01 3.9157850000e-01
-1.5460480000e-01 3.7764530000e-01  -1.7005750000e-01 3.7863130000e-01
-1.7716410000e-01 3.6485300000e-01  -2.0913010000e-01 4.0587200000e-01
-2.2061710000e-01 4.2291860000e-01  -2.4830660000e-01 4.1368380000e-01
-2.7372130000e-01 4.1552360000e-01  -2.8269310000e-01 4.2877020000e-01
-2.7368780000e-01 4.4260270000e-01  -2.5552640000e-01 4.4045870000e-01
-2.4337330000e-01 4.6014320000e-01  -2.6752170000e-01 4.8984250000e-01
-2.8253790000e-01 4.5831450000e-01  -3.0146840000e-01 4.5406770000e-01
-3.1366740000e-01 4.6923710000e-01  -3.0500910000e-01 4.8963140000e-01
-3.2475480000e-01 5.0877390000e-01  -3.1443410000e-01 5.5416030000e-01
-2.7413960000e-01 5.3004800000e-01  -2.4906270000e-01 5.4350520000e-01
-3.0937940000e-01 4.2705440000e-01  -3.3682580000e-01 4.4106590000e-01
-3.3445970000e-01 4.6470880000e-01  -3.2519150000e-01 4.0457920000e-01
-3.4459880000e-01 4.0088810000e-01  -3.6791240000e-01 4.2493990000e-01
-3.4759800000e-01 3.7376790000e-01  -3.7182680000e-01 3.7935260000e-01
-3.8175390000e-01 3.9505860000e-01  -4.0633460000e-01 3.8800290000e-01
-4.1088890000e-01 4.1095600000e-01  -4.0090500000e-01 4.2635940000e-01
-4.1853940000e-01 4.4610770000e-01  -4.2681020000e-01 4.6803160000e-01
-4.1902800000e-01 4.8100200000e-01  -4.0349070000e-01 4.7852060000e-01
-3.9860060000e-01 4.6201500000e-01  -3.7735180000e-01 4.5854210000e-01
-3.5938740000e-01 4.9013520000e-01  -3.9292570000e-01 4.9225070000e-01
-4.0396800000e-01 5.0771760000e-01  -3.9467180000e-01 5.2485430000e-01
-3.7240790000e-01 5.2421770000e-01  -3.6103740000e-01 5.4957470000e-01
-4.3158680000e-01 5.0397320000e-01  -4.3083630000e-01 5.3522790000e-01
-4.0712000000e-01 5.4290440000e-01  -4.5860290000e-01 5.0741750000e-01
-4.7165870000e-01 5.2258820000e-01  -4.6207670000e-01 5.5834790000e-01
-4.9598540000e-01 5.1044520000e-01  -5.0620560000e-01 5.3311700000e-01
-4.9937900000e-01 5.5256230000e-01  -5.2589230000e-01 5.7053860000e-01
-5.0540000000e-01 5.9571720000e-01  -4.7934920000e-01 5.9416430000e-01
-4.6408300000e-01 6.2473280000e-01  -4.4212840000e-01 6.4632610000e-01
-4.2166520000e-01 6.4135060000e-01  -4.1928900000e-01 6.2118240000e-01
-4.3652880000e-01 6.0891800000e-01  -4.3127930000e-01 5.8391600000e-01
-3.9161970000e-01 5.7763640000e-01  -4.0012500000e-01 6.1359110000e-01
-3.8593670000e-01 6.2994810000e-01  -3.6568890000e-01 6.2380830000e-01
-3.6073190000e-01 6.0116300000e-01  -3.3290740000e-01 5.9707000000e-01
-3.9563460000e-01 6.6170860000e-01  -3.6065060000e-01 6.6153790000e-01
-3.5021690000e-01 6.3963510000e-01  -3.8546390000e-01 6.9176390000e-01
-3.6897220000e-01 6.9870540000e-01  -3.4204160000e-01 6.8846040000e-01
-3.7110490000e-01 7.1490960000e-01  -3.5914520000e-01 7.2096720000e-01
-3.4622180000e-01 7.1638020000e-01  -3.3442100000e-01 7.3279080000e-01
-3.2014350000e-01 7.4517280000e-01  -3.0716420000e-01 7.4089500000e-01
-3.0709870000e-01 7.2776660000e-01  -3.1882370000e-01 7.2118240000e-01
-3.1728230000e-01 7.0462090000e-01  -2.9313590000e-01 6.9972860000e-01
-2.9574950000e-01 7.2158230000e-01  -2.8539620000e-01 7.3025040000e-01
-2.7424040000e-01 7.2384900000e-01  -2.7466030000e-01 7.1124980000e-01
-2.6282620000e-01 7.0604930000e-01  -2.6310410000e-01 6.9363990000e-01
-2.7453380000e-01 6.8764010000e-01  -2.7315290000e-01 6.7324090000e-01
-2.8662240000e-01 6.6636760000e-01  -2.9960910000e-01 6.7646680000e-01
-3.1805710000e-01 6.6760120000e-01  -3.1535110000e-01 6.3219370000e-01
-2.8717250000e-01 6.4960240000e-01  -2.6958710000e-01 6.4371820000e-01
-2.6700870000e-01 6.2474310000e-01  -2.8518060000e-01 6.1229260000e-01
-2.7949220000e-01 5.8525860000e-01  -2.5012860000e-01 6.6264060000e-01
-2.3222510000e-01 6.3780680000e-01  -2.4651580000e-01 6.1767820000e-01
-2.5195550000e-01 6.8723670000e-01  -2.4183340000e-01 6.9627990000e-01
-2.2959730000e-01 6.9117560000e-01  -2.2735060000e-01 6.7612300000e-01
-2.0800050000e-01 6.7252960000e-01  -1.9312030000e-01 6.3832260000e-01
-1.9727650000e-01 6.9715080000e-01  -2.1978170000e-01 7.0035140000e-01
-2.2506910000e-01 7.1269230000e-01  -2.1628710000e-01 7.2147600000e-01
-2.0452200000e-01 7.1812900000e-01  -1.9712070000e-01 7.2815890000e-01
-1.8563500000e-01 7.2550940000e-01  -1.8192130000e-01 7.1368590000e-01
-1.6801020000e-01 7.1298040000e-01  -1.6278850000e-01 6.9926320000e-01
-1.7427690000e-01 6.8711880000e-01  -1.6639750000e-01 6.6667090000e-01
-1.2966130000e-01 6.6919260000e-01  -1.4650610000e-01 6.9762990000e-01
-1.4023760000e-01 7.1391870000e-01  -1.2301500000e-01 7.1588930000e-01
-1.1122110000e-01 6.9955760000e-01  -8.6836680000e-02 7.0660170000e-01
-5.2947960000e-02 6.7741850000e-01  -9.2941140000e-02 6.5443190000e-01
-9.4204280000e-02 6.2590800000e-01  -1.1691670000e-01 6.1858030000e-01
-1.3498010000e-01 6.3302690000e-01  -1.5756600000e-01 6.1933300000e-01
-1.5092510000e-01 5.8403130000e-01  -1.2096520000e-01 5.9734950000e-01
-1.0316050000e-01 5.8456630000e-01  -1.0952050000e-01 5.6497670000e-01
-1.2847590000e-01 5.6185160000e-01  -1.3282450000e-01 5.4351730000e-01
-1.8413870000e-01 5.8190010000e-01  -2.0289910000e-01 5.9913360000e-01
-2.3843570000e-01 5.8078800000e-01  -2.0329760000e-01 7.4642320000e-01
-2.1842730000e-01 7.6106700000e-01  -2.1231960000e-01 7.7389950000e-01
-2.0056320000e-01 7.7352090000e-01  -1.9491910000e-01 7.6361520000e-01
-1.8298860000e-01 7.6531950000e-01  -1.7724190000e-01 7.5495560000e-01
-1.8408200000e-01 7.4528850000e-01  -1.7785340000e-01 7.3459560000e-01
-2.1913480000e-01 7.3400100000e-01  -2.3434490000e-01 7.3658150000e-01
-2.4256630000e-01 7.5991640000e-01  -2.4532420000e-01 7.1682850000e-01
-2.6229040000e-01 7.2996880000e-01  -2.6363610000e-01 7.4613750000e-01
-2.8760650000e-01 7.5291490000e-01  -2.7610400000e-01 7.7398680000e-01
-2.6029460000e-01 7.7652230000e-01  -2.5655350000e-01 7.9369650000e-01
-2.4878620000e-01 8.0472680000e-01  -2.4122990000e-01 8.0470310000e-01
-2.3782780000e-01 7.9826930000e-01  -2.4227150000e-01 7.9084470000e-01
-2.3488890000e-01 7.8165910000e-01  -2.1918800000e-01 7.8959280000e-01
-2.3035520000e-01 7.9912100000e-01  -2.2928600000e-01 8.0616440000e-01
-2.2342870000e-01 8.0825650000e-01  -2.1759520000e-01 8.0436340000e-01
-2.1147480000e-01 8.1022280000e-01  -1.9663500000e-01 8.0911790000e-01
-2.0234170000e-01 7.9323130000e-01  -1.9454580000e-01 7.8339720000e-01
-2.3584390000e-01 8.1262580000e-01  -2.2809870000e-01 8.1656420000e-01
-2.2310630000e-01 8.1406180000e-01  -2.3526410000e-01 8.2041300000e-01
-2.3262920000e-01 8.2239750000e-01  -2.2792180000e-01 8.2256570000e-01
-2.3351770000e-01 8.2479980000e-01  -2.3208290000e-01 8.2586850000e-01
-2.3052400000e-01 8.2580820000e-01  -2.3027220000e-01 8.2754230000e-01
-2.2871690000e-01 8.2804760000e-01  -2.2697890000e-01 8.2699400000e-01
-2.2445650000e-01 8.2938380000e-01  -2.2165780000e-01 8.3154250000e-01
-2.1903650000e-01 8.3060710000e-01  -2.1911940000e-01 8.2772800000e-01
-2.2187540000e-01 8.2665530000e-01  -2.2254400000e-01 8.2304450000e-01
-2.1632790000e-01 8.1877670000e-01  -2.1639950000e-01 8.2599420000e-01
-2.1377290000e-01 8.2845120000e-01  -2.1022490000e-01 8.2733610000e-01
-2.0926410000e-01 8.2278970000e-01  -2.0284890000e-01 8.2190370000e-01
-2.1517500000e-01 8.3325970000e-01  -2.1004390000e-01 8.3379110000e-01
-2.0766010000e-01 8.3049050000e-01  -2.1407320000e-01 8.3753140000e-01
-2.1213090000e-01 8.3862120000e-01  -2.0843370000e-01 8.3813220000e-01
-2.1262270000e-01 8.4041860000e-01  -2.1149730000e-01 8.4117380000e-01
-2.1024180000e-01 8.4104270000e-01  -2.0993650000e-01 8.4249100000e-01
-2.0852990000e-01 8.4286930000e-01  -2.0700020000e-01 8.4174100000e-01
-2.0406510000e-01 8.4385080000e-01  -2.0049010000e-01 8.4589980000e-01
-1.9732450000e-01 8.4399550000e-01  -1.9857140000e-01 8.4047510000e-01
-2.0198720000e-01 8.4030820000e-01  -2.0381400000e-01 8.3705060000e-01
-2.0018460000e-01 8.3060830000e-01  -1.9636760000e-01 8.3716220000e-01
-1.9166900000e-01 8.3829540000e-01  -1.8842750000e-01 8.3393650000e-01
-1.9166990000e-01 8.2859620000e-01  -1.8748840000e-01 8.2143440000e-01
-1.9004010000e-01 8.4639690000e-01  -1.8118240000e-01 8.4253590000e-01
-1.8193130000e-01 8.3486110000e-01  -1.8580040000e-01 8.5376470000e-01
-1.8012420000e-01 8.5510130000e-01  -1.7101370000e-01 8.4891070000e-01
-1.8018070000e-01 8.6095200000e-01  -1.7541360000e-01 8.6291400000e-01
-1.7024330000e-01 8.6035690000e-01  -1.6365480000e-01 8.6717270000e-01
-1.5558090000e-01 8.7274660000e-01  -1.4848440000e-01 8.6919150000e-01
-1.5015420000e-01 8.6174070000e-01  -1.5714580000e-01 8.5990550000e-01
-1.5878820000e-01 8.5178540000e-01  -1.4814190000e-01 8.4455920000e-01
-1.4496340000e-01 8.5640960000e-01  -1.3719060000e-01 8.5930800000e-01
-1.3200690000e-01 8.5271770000e-01  -1.3578860000e-01 8.4554170000e-01
-1.3089760000e-01 8.3890840000e-01  -1.3540370000e-01 8.3245400000e-01
-1.4300190000e-01 8.3341190000e-01  -1.4717940000e-01 8.2648800000e-01
-1.5493510000e-01 8.2806490000e-01  -1.5721200000e-01 8.3580600000e-01
-1.6634180000e-01 8.3686780000e-01  -1.7374240000e-01 8.2478590000e-01
-1.6040960000e-01 8.2205250000e-01  -1.5642660000e-01 8.1387250000e-01
-1.6293090000e-01 8.0686250000e-01  -1.7246420000e-01 8.1026850000e-01
-1.8112310000e-01 8.0217980000e-01  -1.4118430000e-01 8.1313110000e-01
-1.4606270000e-01 7.9567490000e-01  -1.6000040000e-01 7.9611300000e-01
-1.3225760000e-01 8.2502720000e-01  -1.2329510000e-01 8.2543210000e-01
-1.1921890000e-01 8.1713400000e-01  -1.2542600000e-01 8.0865460000e-01
-1.1839940000e-01 7.9677550000e-01  -1.3165330000e-01 7.7428070000e-01
-9.8472560000e-02 8.0267180000e-01  -1.0934370000e-01 8.1713060000e-01
-1.0612250000e-01 8.2698700000e-01  -9.6085460000e-02 8.2794680000e-01
-9.0472610000e-02 8.1915940000e-01  -7.9537950000e-02 8.2111470000e-01
-7.3801470000e-02 8.1179450000e-01  -7.9589140000e-02 8.0202590000e-01
-7.2096610000e-02 7.9175670000e-01  -7.9367270000e-02 7.8058280000e-01
-9.3592920000e-02 7.8268970000e-01  -1.0399190000e-01 7.6815650000e-01
-8.6932700000e-02 7.4183140000e-01  -7.2521790000e-02 7.6743330000e-01
-5.6307050000e-02 7.7054290000e-01  -4.5960310000e-02 7.5686160000e-01
-5.4764620000e-02 7.3904110000e-01  -3.8137100000e-02 7.1990190000e-01
-1.1703440000e-01 7.3366030000e-01  -1.3340520000e-01 7.4576780000e-01
-1.5591620000e-01 7.3249110000e-01  -1.6416740000e-01 7.5406020000e-01
-1.5799200000e-01 7.6887930000e-01  -1.7495950000e-01 7.8315130000e-01
-7.2072620000e-02 8.3827130000e-01  -7.6291750000e-02 8.5907410000e-01
-6.3410960000e-02 8.6755240000e-01  -5.2304390000e-02 8.5953300000e-01
-5.4160990000e-02 8.4657310000e-01  -4.2736360000e-02 8.3905400000e-01
-4.6364800000e-02 8.2623960000e-01  -5.8775590000e-02 8.2422030000e-01
-6.2264390000e-02 8.1221510000e-01  -9.1306610000e-02 8.3797780000e-01
-1.0090200000e-01 8.4722590000e-01  -9.7248310000e-02 8.6923180000e-01
-1.1630820000e-01 8.3873950000e-01  -1.2268340000e-01 8.5310210000e-01
-1.1880940000e-01 8.6466310000e-01  -1.3403370000e-01 8.7462580000e-01
-1.2300300000e-01 8.8880000000e-01  -1.0888440000e-01 8.8859780000e-01
-1.0225520000e-01 9.0486480000e-01  -9.2514560000e-02 9.1606720000e-01
-8.3216580000e-02 9.1490020000e-01  -8.0532210000e-02 9.0612810000e-01
-8.7660350000e-02 8.9878740000e-01  -8.2621530000e-02 8.8655480000e-01
-6.1376850000e-02 8.8852930000e-01  -7.1006640000e-02 9.0477940000e-01
-6.7065800000e-02 9.1364140000e-01  -5.7992470000e-02 9.1426070000e-01
-5.1691850000e-02 9.0584210000e-01  -3.9193780000e-02 9.1041660000e-01
-1.8780020000e-02 8.9696850000e-01  -3.9787730000e-02 8.8155910000e-01
-3.9033000000e-02 8.6483090000e-01  -7.4313390000e-02 9.2462920000e-01
-6.1975740000e-02 9.2857820000e-01  -5.4969390000e-02 9.2286300000e-01
-7.2576240000e-02 9.3593570000e-01  -6.8196070000e-02 9.3883730000e-01
-6.0151600000e-02 9.3850390000e-01  -6.9501150000e-02 9.4285420000e-01
-6.7048320000e-02 9.4459490000e-01  -6.4350100000e-02 9.4440630000e-01
-6.3809330000e-02 9.4746070000e-01  -6.0960160000e-02 9.4830670000e-01
-5.7818620000e-02 9.4620060000e-01  -5.2550650000e-02 9.5053700000e-01
-4.6390980000e-02 9.5459100000e-01  -4.0796240000e-02 9.5185570000e-01
-4.2079300000e-02 9.4565470000e-01  -4.8059160000e-02 9.4446380000e-01
-5.0510550000e-02 9.3784010000e-01  -4.1149750000e-02 9.2752930000e-01
-3.7306800000e-02 9.4075810000e-01  -3.0187110000e-02 9.4427570000e-01
-2.3525950000e-02 9.3897950000e-01  -2.5742850000e-02 9.2927790000e-01
-1.5274840000e-02 9.2142100000e-01  -3.0133930000e-02 9.5683840000e-01
-1.6528190000e-02 9.5378000000e-01  -1.4723750000e-02 9.4310720000e-01
-2.5049290000e-02 9.6799400000e-01  -1.7850490000e-02 9.7040500000e-01
-5.7110000000e-03 9.6448910000e-01  -1.8475250000e-02 9.7757860000e-01
-1.3057620000e-02 9.8018100000e-01  -7.0944120000e-03 9.7792760000e-01
-1.5925060000e-03 9.8564470000e-01  6.6720250000e-03 9.8055650000e-01
7.3465340000e-03 9.7148110000e-01  2.0207600000e-02 9.6725780000e-01
3.1383920000e-02 9.5992390000e-01  3.0880450000e-02 9.4975180000e-01
2.1235040000e-02 9.4739730000e-01  1.4927150000e-02 9.5481140000e-01
4.0992060000e-03 9.5207650000e-01  5.1430810000e-04 9.3379780000e-01
1.8067010000e-02 9.3777430000e-01  2.6863850000e-02 9.3069520000e-01
2.3614210000e-02 9.1944870000e-01  1.0946770000e-02 9.1733550000e-01
6.7599020000e-03 9.0206620000e-01  4.4085210000e-02 9.3755160000e-01
4.6224510000e-02 9.1707400000e-01  3.2830160000e-02 9.1018050000e-01
6.2503350000e-02 9.3546330000e-01  6.9286230000e-02 9.2601560000e-01
6.5660950000e-02 9.0608400000e-01  7.9699850000e-02 9.3013430000e-01
8.6142720000e-02 9.2303610000e-01  8.5127180000e-02 9.1276350000e-01
1.0012020000e-01 9.0639090000e-01  1.1340730000e-01 8.9693480000e-01
1.1202610000e-01 8.8427900000e-01  9.9991800000e-02 8.8236960000e-01
9.2868200000e-02 8.9174870000e-01  7.9405490000e-02 8.8884670000e-01
7.6329550000e-02 8.6835770000e-01  9.5410140000e-02 8.7148350000e-01
1.0428770000e-01 8.6215490000e-01  9.8204340000e-02 8.5095570000e-01
8.5994430000e-02 8.5167830000e-01  8.0216660000e-02 8.4082190000e-01
6.8733940000e-02 8.4248580000e-01  6.4696440000e-02 8.5319480000e-01
5.2483840000e-02 8.5359510000e-01  4.8460330000e-02 8.6505790000e-01
5.7224190000e-02 8.7444890000e-01  5.1128810000e-02 8.8848380000e-01
2.6984090000e-02 8.8797170000e-01  3.5917950000e-02 8.6722400000e-01
2.9080360000e-02 8.5514950000e-01  1.5062620000e-02 8.5675230000e-01
9.9825530000e-03 8.7109920000e-01  -7.8762940000e-03 8.7237750000e-01
4.0347480000e-02 8.3628440000e-01  1.6452810000e-02 8.2860340000e-01
5.7087740000e-03 8.4411390000e-01  6.1322810000e-02 8.3340630000e-01
6.7716580000e-02 8.2238020000e-01  6.0048870000e-02 8.1209600000e-01
4.5904360000e-02 8.1411750000e-01  3.6731650000e-02 7.9841090000e-01
4.4234690000e-03 7.9867730000e-01  5.5305850000e-02 7.7914480000e-01
6.6054550000e-02 8.0011990000e-01  8.0009730000e-02 8.0189250000e-01
8.6772070000e-02 7.8997920000e-01  7.9031460000e-02 7.7842840000e-01
8.6996920000e-02 7.6619980000e-01  7.8642310000e-02 7.5474260000e-01
6.4338470000e-02 7.5674430000e-01  5.6203860000e-02 7.4313300000e-01
4.0172050000e-02 7.4588910000e-01  3.5280420000e-02 7.6265950000e-01
1.4141500000e-02 7.6604370000e-01  -3.7511540000e-03 7.3544950000e-01
2.9109740000e-02 7.3218240000e-01  3.9695630000e-02 7.1592390000e-01
2.9091050000e-02 6.9901100000e-01  6.7627690000e-03 7.0126040000e-01
-6.7545790000e-03 6.7696920000e-01  -2.6886300000e-02 7.6044500000e-01
-2.4703540000e-02 7.8229380000e-01  -4.9492300000e-02 7.9396290000e-01
-3.7421060000e-02 8.1490720000e-01  -1.9725840000e-02 8.2034510000e-01
-2.0066400000e-02 8.4813220000e-01  1.1182820000e-01 7.6546950000e-01
1.3623780000e-01 7.8055060000e-01  1.5309040000e-01 7.6765290000e-01
1.4751500000e-01 7.4982370000e-01  1.3025090000e-01 7.4664410000e-01
1.2568070000e-01 7.2919410000e-01  1.0842020000e-01 7.2830130000e-01
1.0057020000e-01 7.4250210000e-01  8.4577920000e-02 7.4125340000e-01
1.0184180000e-01 7.8933170000e-01  1.0860540000e-01 8.0648100000e-01
1.3948470000e-01 8.1317400000e-01  8.9015850000e-02 8.2178800000e-01
1.0424690000e-01 8.3848700000e-01  1.2212820000e-01 8.3970730000e-01
1.2774770000e-01 8.6645260000e-01  1.5344710000e-01 8.5793110000e-01
1.6002020000e-01 8.3825400000e-01  1.8548210000e-01 8.3676210000e-01
2.0528150000e-01 8.2841950000e-01  2.0783490000e-01 8.1514870000e-01
1.9703840000e-01 8.0758590000e-01  1.8384700000e-01 8.1400160000e-01
1.6960490000e-01 8.0163350000e-01  1.8172230000e-01 7.7413120000e-01
1.9939740000e-01 7.9403100000e-01  2.1318810000e-01 7.9248560000e-01
2.1789790000e-01 7.8031980000e-01  2.0902220000e-01 7.6822890000e-01
2.2027800000e-01 7.5301210000e-01  2.0978270000e-01 7.2049380000e-01
1.8129330000e-01 7.4255690000e-01  1.5978330000e-01 7.3495120000e-01
2.2514350000e-01 8.0722170000e-01  2.3595210000e-01 7.9189830000e-01
2.3101750000e-01 7.7976230000e-01  2.4149800000e-01 8.0981360000e-01
2.4746830000e-01 8.0502750000e-01  2.5057240000e-01 7.9366310000e-01
2.5246890000e-01 8.0863680000e-01  2.5599400000e-01 8.0600450000e-01
2.5694310000e-01 8.0215330000e-01  2.6145880000e-01 8.0277090000e-01
2.6393210000e-01 7.9915750000e-01  2.6238160000e-01 7.9379300000e-01
2.7088340000e-01 7.8827220000e-01  2.7943070000e-01 7.8128880000e-01
2.7796080000e-01 7.7200030000e-01  2.6847380000e-01 7.7119380000e-01
2.6421440000e-01 7.7922170000e-01  2.5379820000e-01 7.7985370000e-01
2.4325650000e-01 7.6245850000e-01  2.6344100000e-01 7.6232390000e-01
2.7136470000e-01 7.5346720000e-01  2.6622760000e-01 7.4181340000e-01
2.5156840000e-01 7.4143490000e-01  2.4423310000e-01 7.2398540000e-01
2.8996090000e-01 7.5846410000e-01  2.9064380000e-01 7.3686000000e-01
2.7536290000e-01 7.3047090000e-01  3.0895640000e-01 7.5562610000e-01
3.1591630000e-01 7.4538110000e-01  3.1126160000e-01 7.2372960000e-01
3.2722600000e-01 7.4963450000e-01  3.3415800000e-01 7.4184010000e-01
3.3287720000e-01 7.3054780000e-01  3.4947350000e-01 7.2316490000e-01
3.4094920000e-01 7.0693650000e-01  3.2579820000e-01 7.0417420000e-01
3.2149440000e-01 6.8149340000e-01  3.0785570000e-01 6.6526530000e-01
2.9446870000e-01 6.6619930000e-01  2.9038340000e-01 6.7898180000e-01
3.0048860000e-01 6.8909890000e-01  2.9429600000e-01 7.0501740000e-01
2.6675710000e-01 7.0572090000e-01  2.7641550000e-01 6.8174630000e-01
2.6862890000e-01 6.6829370000e-01  2.5277960000e-01 6.6989250000e-01
2.4657640000e-01 6.8650030000e-01  2.2474430000e-01 6.8774910000e-01
2.8091890000e-01 6.4786590000e-01  2.5566320000e-01 6.3903070000e-01
2.4281730000e-01 6.5510950000e-01  2.8638480000e-01 6.2445590000e-01
2.7699740000e-01 6.0912580000e-01  2.4609970000e-01 6.0869470000e-01
2.9375720000e-01 5.9015380000e-01  2.7457830000e-01 5.7689380000e-01
2.5729140000e-01 5.8011120000e-01  2.4602590000e-01 5.5824790000e-01
2.2875190000e-01 5.4563020000e-01  2.1620480000e-01 5.4954690000e-01
2.1502820000e-01 5.6253490000e-01  2.2683600000e-01 5.7052810000e-01
2.2309550000e-01 5.8796600000e-01  1.9718700000e-01 5.9002100000e-01
2.0258380000e-01 5.6758230000e-01  1.9304440000e-01 5.5712630000e-01
1.8014540000e-01 5.6207610000e-01  1.7890460000e-01 5.7583690000e-01
1.6534040000e-01 5.8032840000e-01  1.6479750000e-01 5.9403110000e-01
1.7666940000e-01 6.0113690000e-01  1.7446860000e-01 6.1602820000e-01
1.8772120000e-01 6.2363410000e-01  2.0145090000e-01 6.1459390000e-01
2.1848730000e-01 6.2532190000e-01  2.1198520000e-01 6.5699560000e-01
1.8741220000e-01 6.3995560000e-01  1.7043530000e-01 6.4532380000e-01
1.6838850000e-01 6.6331290000e-01  1.8507550000e-01 6.7412130000e-01
1.8099720000e-01 6.9755160000e-01  1.5049900000e-01 6.2649980000e-01
1.3421000000e-01 6.5300200000e-01  1.4973580000e-01 6.7103150000e-01
1.5237870000e-01 6.0062980000e-01  1.4109900000e-01 5.9040960000e-01
1.2715440000e-01 5.9658670000e-01  1.2562560000e-01 6.1366240000e-01
1.0463570000e-01 6.1983470000e-01  9.5009700000e-02 6.5770760000e-01
8.7848970000e-02 5.9279830000e-01  1.1496960000e-01 5.8636190000e-01
1.2084390000e-01 5.7086100000e-01  1.0915730000e-01 5.5979610000e-01
9.3738230000e-02 5.6536410000e-01  8.1954260000e-02 5.5272540000e-01
6.6426940000e-02 5.5913490000e-01  6.4752580000e-02 5.7608330000e-01
4.7015760000e-02 5.8156750000e-01  4.5659810000e-02 6.0043280000e-01
6.3171250000e-02 6.1082710000e-01  6.0578490000e-02 6.3577040000e-01
2.1331080000e-02 6.4580600000e-01  2.7253890000e-02 6.0888770000e-01
1.2160910000e-02 5.9277460000e-01  -9.0030840000e-03 6.0004360000e-01
-1.2384490000e-02 6.2446890000e-01  -4.1067340000e-02 6.3201320000e-01
4.0321890000e-02 6.7959940000e-01  6.5567050000e-02 6.8532850000e-01
6.9097060000e-02 7.1840090000e-01  9.8492210000e-02 7.1285960000e-01
1.1190150000e-01 6.9379680000e-01  1.4599930000e-01 7.0462910000e-01
8.8270440000e-02 5.2362830000e-01  1.1377780000e-01 5.0021220000e-01
1.0474140000e-01 4.7545340000e-01  8.0859570000e-02 4.7608660000e-01
7.1583620000e-02 4.9623660000e-01  4.9158760000e-02 4.9686280000e-01
4.3604520000e-02 5.1735050000e-01  5.8247460000e-02 5.3035490000e-01
5.2507510000e-02 5.4861450000e-01  1.1277310000e-01 5.4244030000e-01
1.3402770000e-01 5.3992350000e-01  1.5073020000e-01 5.0829900000e-01
1.4570590000e-01 5.6606070000e-01  1.6781610000e-01 5.5313620000e-01
1.7314520000e-01 5.3485340000e-01  1.9917350000e-01 5.3535560000e-01
1.9819250000e-01 5.1155860000e-01  1.8433630000e-01 4.9838710000e-01
1.9769150000e-01 4.7392950000e-01  2.0123630000e-01 4.4942720000e-01
1.9022640000e-01 4.3774660000e-01  1.7461090000e-01 4.4384820000e-01
1.7334800000e-01 4.6219010000e-01  1.5197070000e-01 4.7095760000e-01
1.2504790000e-01 4.4178160000e-01  1.6041620000e-01 4.3184930000e-01
1.6864750000e-01 4.1319870000e-01  1.5532610000e-01 3.9708380000e-01
1.3167180000e-01 4.0224960000e-01  1.1427210000e-01 3.7688610000e-01
6.0762900000e-02 3.8094680000e-01  8.3027230000e-02 4.2968750000e-01
6.5932220000e-02 4.5580240000e-01  1.9810670000e-01 4.1123250000e-01
1.9085570000e-01 3.7931330000e-01  1.6496520000e-01 3.7575590000e-01
2.2507950000e-01 4.0160170000e-01  2.3469960000e-01 3.8320740000e-01
2.1719620000e-01 3.5086190000e-01  2.6258090000e-01 3.8915130000e-01
2.6586140000e-01 3.6333120000e-01  2.5361860000e-01 3.4726860000e-01
2.7076920000e-01 3.2446510000e-01  2.4831240000e-01 3.1013800000e-01
2.2747140000e-01 3.1492230000e-01  2.1185810000e-01 2.8723890000e-01
1.8907140000e-01 2.6938830000e-01  1.7059560000e-01 2.7429580000e-01
1.6856380000e-01 2.9379320000e-01  1.8633760000e-01 3.0483400000e-01
1.8352050000e-01 3.3012200000e-01  1.4269590000e-01 3.4146920000e-01
1.4910460000e-01 3.0227070000e-01  1.3344570000e-01 2.8472360000e-01
1.1019000000e-01 2.9190130000e-01  1.0605740000e-01 3.1884250000e-01
7.3695860000e-02 3.2746440000e-01  1.4593320000e-01 2.5095290000e-01
1.0539620000e-01 2.4382390000e-01  9.0507960000e-02 2.7255340000e-01
1.5001120000e-01 2.1473300000e-01  1.3317390000e-01 1.9171350000e-01
8.0714040000e-02 1.9616740000e-01  1.5931560000e-01 1.6004260000e-01
1.2778060000e-01 1.3639650000e-01  9.4984500000e-02 1.4257320000e-01
6.7001170000e-02 9.4698160000e-02  2.8913470000e-02 1.3298590000e-01
3.1754090000e-02 1.6953670000e-01  -1.1625340000e-02 1.8928290000e-01
-3.5098820000e-02 2.2164880000e-01  -2.8731520000e-02 2.4395120000e-01
-5.6746370000e-03 2.4741210000e-01  1.0122390000e-02 2.2646550000e-01
4.1946140000e-02 2.3503600000e-01  4.4824960000e-02 2.8557890000e-01
1.8103040000e-03 2.7102500000e-01  -1.9319380000e-02 2.8601320000e-01
-1.4884920000e-02 3.1099940000e-01  1.1738790000e-02 3.2005200000e-01
1.2908270000e-02 3.5402620000e-01  -5.3864340000e-02 2.7070000000e-01
-6.1797330000e-02 3.1077810000e-01  -3.6443710000e-02 3.2745220000e-01
-9.0815710000e-02 2.6994730000e-01  -1.0937680000e-01 2.8791870000e-01
-1.0186330000e-01 3.2955560000e-01  -1.4028400000e-01 2.7167970000e-01
-1.5114750000e-01 3.0104890000e-01  -1.4209500000e-01 3.2199700000e-01
-1.6608770000e-01 3.4135550000e-01  -1.4715550000e-01 3.6198170000e-01
-1.2493580000e-01 3.6343240000e-01  -1.1878930000e-01 3.9507570000e-01
-1.0385910000e-01 4.1936760000e-01  -8.5573150000e-02 4.2152530000e-01
-7.6378860000e-02 4.0473760000e-01  -8.8608070000e-02 3.8766730000e-01
-7.5959150000e-02 3.6443560000e-01  -3.1912600000e-02 3.7126680000e-01
-5.5347360000e-02 4.0489640000e-01  -4.8875070000e-02 4.2688950000e-01
-2.5938060000e-02 4.3072100000e-01  -1.0049970000e-02 4.0963540000e-01
2.1305340000e-02 4.1829640000e-01  -7.2790970000e-02 4.5060510000e-01
-4.2096670000e-02 4.7227730000e-01  -1.8148160000e-02 4.5528910000e-01
-8.9060960000e-02 4.7955170000e-01  -8.3319650000e-02 5.0369020000e-01
-4.1224820000e-02 5.1842430000e-01  -1.1388670000e-01 5.2013580000e-01
-9.6897030000e-02 5.4791530000e-01  -7.0693520000e-02 5.5368470000e-01
-6.6332780000e-02 5.9621770000e-01  -2.7282860000e-02 5.8336510000e-01
-1.5641360000e-02 5.5688470000e-01  2.2464460000e-02 5.6036070000e-01
2.2995120000e-02 5.2526960000e-01  3.4194560000e-03 5.0525680000e-01
2.3803320000e-02 4.6526560000e-01

END
    </circlepacking>
    <circlepacking name="ball.p">
NODECOUNT:  600
GEOMETRY: spherical
ALPHA/BETA/GAMMA:  1 600 31
PACKNAME: simple_welding.p
FLOWERS:

1 30   31 30 29 28 27 26 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 31
2 5   1 3 33 32 31 1
3 5   1 4 34 33 2 1
4 5   1 5 35 34 3 1
5 5   1 6 36 35 4 1
6 5   1 7 37 36 5 1
7 5   1 8 38 37 6 1
8 5   1 9 39 38 7 1
9 5   1 10 40 39 8 1
10 5   1 11 41 40 9 1
11 5   1 12 42 41 10 1
12 5   1 13 43 42 11 1
13 5   1 14 44 43 12 1
14 5   1 15 45 44 13 1
15 5   1 16 46 45 14 1
16 5   1 17 47 46 15 1
17 5   1 18 48 47 16 1
18 5   1 19 49 48 17 1
19 5   1 20 50 49 18 1
20 5   1 21 51 50 19 1
21 5   1 22 52 51 20 1
22 5   1 23 53 52 21 1
23 5   1 24 54 53 22 1
24 5   1 25 55 54 23 1
25 5   1 26 56 55 24 1
26 5   1 27 57 56 25 1
27 5   1 28 58 57 26 1
28 5   1 29 59 58 27 1
29 5   1 30 60 59 28 1
30 5   1 31 61 60 29 1
31 5   1 2 32 61 30 1
32 6   31 2 33 63 62 61 31
33 6   2 3 34 64 63 32 2
34 6   3 4 35 65 64 33 3
35 6   4 5 36 66 65 34 4
36 6   5 6 37 67 66 35 5
37 6   6 7 38 68 67 36 6
38 6   7 8 39 69 68 37 7
39 6   8 9 40 70 69 38 8
40 6   9 10 41 71 70 39 9
41 6   10 11 42 72 71 40 10
42 6   11 12 43 73 72 41 11
43 6   12 13 44 74 73 42 12
44 6   13 14 45 75 74 43 13
45 6   14 15 46 76 75 44 14
46 6   15 16 47 77 76 45 15
47 6   16 17 48 78 77 46 16
48 6   17 18 49 79 78 47 17
49 6   18 19 50 80 79 48 18
50 6   19 20 51 81 80 49 19
51 6   20 21 52 82 81 50 20
52 6   21 22 53 83 82 51 21
53 6   22 23 54 84 83 52 22
54 6   23 24 55 85 84 53 23
55 6   24 25 56 86 85 54 24
56 6   25 26 57 87 86 55 25
57 6   26 27 58 88 87 56 26
58 6   27 28 59 89 88 57 27
59 6   28 29 60 90 89 58 28
60 6   29 30 61 91 90 59 29
61 6   30 31 32 62 91 60 30
62 6   61 32 63 93 92 91 61
63 6   32 33 64 94 93 62 32
64 6   33 34 65 95 94 63 33
65 6   34 35 66 96 95 64 34
66 6   35 36 67 97 96 65 35
67 6   36 37 68 98 97 66 36
68 6   37 38 69 99 98 67 37
69 6   38 39 70 100 99 68 38
70 6   39 40 71 101 100 69 39
71 6   40 41 72 102 101 70 40
72 6   41 42 73 103 102 71 41
73 6   42 43 74 104 103 72 42
74 6   43 44 75 105 104 73 43
75 6   44 45 76 106 105 74 44
76 6   45 46 77 107 106 75 45
77 6   46 47 78 108 107 76 46
78 6   47 48 79 109 108 77 47
79 6   48 49 80 110 109 78 48
80 6   49 50 81 111 110 79 49
81 6   50 51 82 112 111 80 50
82 6   51 52 83 113 112 81 51
83 6   52 53 84 114 113 82 52
84 6   53 54 85 115 114 83 53
85 6   54 55 86 116 115 84 54
86 6   55 56 87 117 116 85 55
87 6   56 57 88 118 117 86 56
88 6   57 58 89 119 118 87 57
89 6   58 59 90 120 119 88 58
90 6   59 60 91 121 120 89 59
91 6   60 61 62 92 121 90 60
92 6   91 62 93 123 122 121 91
93 6   62 63 94 124 123 92 62
94 6   63 64 95 125 124 93 63
95 6   64 65 96 126 125 94 64
96 6   65 66 97 127 126 95 65
97 6   66 67 98 128 127 96 66
98 6   67 68 99 129 128 97 67
99 6   68 69 100 130 129 98 68
100 6   69 70 101 131 130 99 69
101 6   70 71 102 132 131 100 70
102 6   71 72 103 133 132 101 71
103 6   72 73 104 134 133 102 72
104 6   73 74 105 135 134 103 73
105 6   74 75 106 136 135 104 74
106 6   75 76 107 137 136 105 75
107 6   76 77 108 138 137 106 76
108 6   77 78 109 139 138 107 77
109 6   78 79 110 140 139 108 78
110 6   79 80 111 141 140 109 79
111 6   80 81 112 142 141 110 80
112 6   81 82 113 143 142 111 81
113 6   82 83 114 144 143 112 82
114 6   83 84 115 145 144 113 83
115 6   84 85 116 146 145 114 84
116 6   85 86 117 147 146 115 85
117 6   86 87 118 148 147 116 86
118 6   87 88 119 149 148 117 87
119 6   88 89 120 150 149 118 88
120 6   89 90 121 151 150 119 89
121 6   90 91 92 122 151 120 90
122 6   121 92 123 153 152 151 121
123 6   92 93 124 154 153 122 92
124 6   93 94 125 155 154 123 93
125 6   94 95 126 156 155 124 94
126 6   95 96 127 157 156 125 95
127 6   96 97 128 158 157 126 96
128 6   97 98 129 159 158 127 97
129 6   98 99 130 160 159 128 98
130 6   99 100 131 161 160 129 99
131 6   100 101 132 162 161 130 100
132 6   101 102 133 163 162 131 101
133 6   102 103 134 164 163 132 102
134 6   103 104 135 165 164 133 103
135 6   104 105 136 166 165 134 104
136 6   105 106 137 167 166 135 105
137 6   106 107 138 168 167 136 106
138 6   107 108 139 169 168 137 107
139 6   108 109 140 170 169 138 108
140 6   109 110 141 171 170 139 109
141 6   110 111 142 172 171 140 110
142 6   111 112 143 173 172 141 111
143 6   112 113 144 174 173 142 112
144 6   113 114 145 175 174 143 113
145 6   114 115 146 176 175 144 114
146 6   115 116 147 177 176 145 115
147 6   116 117 148 178 177 146 116
148 6   117 118 149 179 178 147 117
149 6   118 119 150 180 179 148 118
150 6   119 120 151 181 180 149 119
151 6   120 121 122 152 181 150 120
152 6   151 122 153 183 182 181 151
153 6   122 123 154 184 183 152 122
154 6   123 124 155 185 184 153 123
155 6   124 125 156 186 185 154 124
156 6   125 126 157 187 186 155 125
157 6   126 127 158 188 187 156 126
158 6   127 128 159 189 188 157 127
159 6   128 129 160 190 189 158 128
160 6   129 130 161 191 190 159 129
161 6   130 131 162 192 191 160 130
162 6   131 132 163 193 192 161 131
163 6   132 133 164 194 193 162 132
164 6   133 134 165 195 194 163 133
165 6   134 135 166 196 195 164 134
166 6   135 136 167 197 196 165 135
167 6   136 137 168 198 197 166 136
168 6   137 138 169 199 198 167 137
169 6   138 139 170 200 199 168 138
170 6   139 140 171 201 200 169 139
171 6   140 141 172 202 201 170 140
172 6   141 142 173 203 202 171 141
173 6   142 143 174 204 203 172 142
174 6   143 144 175 205 204 173 143
175 6   144 145 176 206 205 174 144
176 6   145 146 177 207 206 175 145
177 6   146 147 178 208 207 176 146
178 6   147 148 179 209 208 177 147
179 6   148 149 180 210 209 178 148
180 6   149 150 181 211 210 179 149
181 6   150 151 152 182 211 180 150
182 6   181 152 183 213 212 211 181
183 6   152 153 184 214 213 182 152
184 6   153 154 185 215 214 183 153
185 6   154 155 186 216 215 184 154
186 6   155 156 187 217 216 185 155
187 6   156 157 188 218 217 186 156
188 6   157 158 189 219 218 187 157
189 6   158 159 190 220 219 188 158
190 6   159 160 191 221 220 189 159
191 6   160 161 192 222 221 190 160
192 6   161 162 193 223 222 191 161
193 6   162 163 194 224 223 192 162
194 6   163 164 195 225 224 193 163
195 6   164 165 196 226 225 194 164
196 6   165 166 197 227 226 195 165
197 6   166 167 198 228 227 196 166
198 6   167 168 199 229 228 197 167
199 6   168 169 200 230 229 198 168
200 6   169 170 201 231 230 199 169
201 6   170 171 202 232 231 200 170
202 6   171 172 203 233 232 201 171
203 6   172 173 204 234 233 202 172
204 6   173 174 205 235 234 203 173
205 6   174 175 206 236 235 204 174
206 6   175 176 207 237 236 205 175
207 6   176 177 208 238 237 206 176
208 6   177 178 209 239 238 207 177
209 6   178 179 210 240 239 208 178
210 6   179 180 211 241 240 209 179
211 6   180 181 182 212 241 210 180
212 6   211 182 213 243 242 241 211
213 6   182 183 214 244 243 212 182
214 6   183 184 215 245 244 213 183
215 6   184 185 216 246 245 214 184
216 6   185 186 217 247 246 215 185
217 6   186 187 218 248 247 216 186
218 6   187 188 219 249 248 217 187
219 6   188 189 220 250 249 218 188
220 6   189 190 221 251 250 219 189
221 6   190 191 222 252 251 220 190
222 6   191 192 223 253 252 221 191
223 6   192 193 224 254 253 222 192
224 6   193 194 225 255 254 223 193
225 6   194 195 226 256 255 224 194
226 6   195 196 227 257 256 225 195
227 6   196 197 228 258 257 226 196
228 6   197 198 229 259 258 227 197
229 6   198 199 230 260 259 228 198
230 6   199 200 231 261 260 229 199
231 6   200 201 232 262 261 230 200
232 6   201 202 233 263 262 231 201
233 6   202 203 234 264 263 232 202
234 6   203 204 235 265 264 233 203
235 6   204 205 236 266 265 234 204
236 6   205 206 237 267 266 235 205
237 6   206 207 238 268 267 236 206
238 6   207 208 239 269 268 237 207
239 6   208 209 240 270 269 238 208
240 6   209 210 241 271 270 239 209
241 6   210 211 212 242 271 240 210
242 6   241 212 243 273 272 271 241
243 7   212 213 244 274 329 273 242 212
244 6   213 214 245 275 274 243 213
245 10   214 215 246 276 325 326 327 328 275 244 214
246 7   215 216 247 277 324 276 245 215
247 6   216 217 248 278 277 246 216
248 7   217 218 249 279 323 278 247 217
249 6   218 219 250 280 279 248 218
250 7   219 220 251 281 322 280 249 219
251 6   220 221 252 282 281 250 220
252 7   221 222 253 283 321 282 251 221
253 10   222 223 254 284 317 318 319 320 283 252 222
254 6   223 224 255 285 284 253 223
255 7   224 225 256 286 316 285 254 224
256 6   225 226 257 287 286 255 225
257 6   226 227 258 288 287 256 226
258 7   227 228 259 289 315 288 257 227
259 6   228 229 260 290 289 258 228
260 10   229 230 261 291 311 312 313 314 290 259 229
261 7   230 231 262 292 310 291 260 230
262 6   231 232 263 293 292 261 231
263 7   232 233 264 294 309 293 262 232
264 6   233 234 265 295 294 263 233
265 7   234 235 266 296 308 295 264 234
266 6   235 236 267 297 296 265 235
267 7   236 237 268 298 307 297 266 236
268 10   237 238 269 299 303 304 305 306 298 267 237
269 6   238 239 270 300 299 268 238
270 7   239 240 271 301 302 300 269 239
271 6   240 241 242 272 301 270 240
272 6   301 271 242 273 330 571 301
273 5   272 242 243 329 330 272
274 5   329 243 244 275 599 329
275 5   274 244 245 328 599 274
276 5   325 245 246 324 595 325
277 5   324 246 247 278 594 324
278 5   277 247 248 323 594 277
279 5   323 248 249 280 593 323
280 5   279 249 250 322 593 279
281 5   322 250 251 282 592 322
282 5   281 251 252 321 592 281
283 5   321 252 253 320 591 321
284 5   317 253 254 285 587 317
285 5   284 254 255 316 587 284
286 5   316 255 256 287 586 316
287 6   286 256 257 288 585 586 286
288 5   287 257 258 315 585 287
289 5   315 258 259 290 584 315
290 5   289 259 260 314 584 289
291 5   311 260 261 310 580 311
292 5   310 261 262 293 579 310
293 5   292 262 263 309 579 292
294 5   309 263 264 295 578 309
295 5   294 264 265 308 578 294
296 5   308 265 266 297 577 308
297 5   296 266 267 307 577 296
298 5   307 267 268 306 576 307
299 5   303 268 269 300 572 303
300 5   299 269 270 302 572 299
301 5   272 571 302 270 271 272
302 5   300 270 301 571 572 300
303 5   304 268 299 572 573 304
304 5   305 268 303 573 574 305
305 5   306 268 304 574 575 306
306 5   298 268 305 575 576 298
307 5   297 267 298 576 577 297
308 5   295 265 296 577 578 295
309 5   293 263 294 578 579 293
310 5   291 261 292 579 580 291
311 5   312 260 291 580 581 312
312 5   313 260 311 581 582 313
313 5   314 260 312 582 583 314
314 5   290 260 313 583 584 290
315 5   288 258 289 584 585 288
316 5   285 255 286 586 587 285
317 5   318 253 284 587 588 318
318 5   319 253 317 588 589 319
319 5   320 253 318 589 590 320
320 5   283 253 319 590 591 283
321 5   282 252 283 591 592 282
322 5   280 250 281 592 593 280
323 5   278 248 279 593 594 278
324 5   276 246 277 594 595 276
325 5   326 245 276 595 596 326
326 5   327 245 325 596 597 327
327 5   328 245 326 597 598 328
328 5   275 245 327 598 599 275
329 5   273 243 274 599 330 273
330 7   569 570 571 272 273 329 599 569
331 5   332 362 361 360 600 332
332 5   333 363 362 331 600 333
333 5   334 364 363 332 600 334
334 5   335 365 364 333 600 335
335 5   336 366 365 334 600 336
336 5   337 367 366 335 600 337
337 5   338 368 367 336 600 338
338 5   339 369 368 337 600 339
339 5   340 370 369 338 600 340
340 5   341 371 370 339 600 341
341 5   342 372 371 340 600 342
342 5   343 373 372 341 600 343
343 5   344 374 373 342 600 344
344 5   345 375 374 343 600 345
345 5   346 376 375 344 600 346
346 5   347 377 376 345 600 347
347 5   348 378 377 346 600 348
348 5   349 379 378 347 600 349
349 5   350 380 379 348 600 350
350 5   351 381 380 349 600 351
351 5   352 382 381 350 600 352
352 5   353 383 382 351 600 353
353 5   354 384 383 352 600 354
354 5   355 385 384 353 600 355
355 5   356 386 385 354 600 356
356 5   357 387 386 355 600 357
357 5   358 388 387 356 600 358
358 5   359 389 388 357 600 359
359 5   360 390 389 358 600 360
360 5   331 361 390 359 600 331
361 6   360 331 362 392 391 390 360
362 6   331 332 363 393 392 361 331
363 6   332 333 364 394 393 362 332
364 6   333 334 365 395 394 363 333
365 6   334 335 366 396 395 364 334
366 6   335 336 367 397 396 365 335
367 6   336 337 368 398 397 366 336
368 6   337 338 369 399 398 367 337
369 6   338 339 370 400 399 368 338
370 6   339 340 371 401 400 369 339
371 6   340 341 372 402 401 370 340
372 6   341 342 373 403 402 371 341
373 6   342 343 374 404 403 372 342
374 6   343 344 375 405 404 373 343
375 6   344 345 376 406 405 374 344
376 6   345 346 377 407 406 375 345
377 6   346 347 378 408 407 376 346
378 6   347 348 379 409 408 377 347
379 6   348 349 380 410 409 378 348
380 6   349 350 381 411 410 379 349
381 6   350 351 382 412 411 380 350
382 6   351 352 383 413 412 381 351
383 6   352 353 384 414 413 382 352
384 6   353 354 385 415 414 383 353
385 6   354 355 386 416 415 384 354
386 6   355 356 387 417 416 385 355
387 6   356 357 388 418 417 386 356
388 6   357 358 389 419 418 387 357
389 6   358 359 390 420 419 388 358
390 6   359 360 361 391 420 389 359
391 6   390 361 392 422 421 420 390
392 6   361 362 393 423 422 391 361
393 6   362 363 394 424 423 392 362
394 6   363 364 395 425 424 393 363
395 6   364 365 396 426 425 394 364
396 6   365 366 397 427 426 395 365
397 6   366 367 398 428 427 396 366
398 6   367 368 399 429 428 397 367
399 6   368 369 400 430 429 398 368
400 6   369 370 401 431 430 399 369
401 6   370 371 402 432 431 400 370
402 6   371 372 403 433 432 401 371
403 6   372 373 404 434 433 402 372
404 6   373 374 405 435 434 403 373
405 6   374 375 406 436 435 404 374
406 6   375 376 407 437 436 405 375
407 6   376 377 408 438 437 406 376
408 6   377 378 409 439 438 407 377
409 6   378 379 410 440 439 408 378
410 6   379 380 411 441 440 409 379
411 6   380 381 412 442 441 410 380
412 6   381 382 413 443 442 411 381
413 6   382 383 414 444 443 412 382
414 6   383 384 415 445 444 413 383
415 6   384 385 416 446 445 414 384
416 6   385 386 417 447 446 415 385
417 6   386 387 418 448 447 416 386
418 6   387 388 419 449 448 417 387
419 6   388 389 420 450 449 418 388
420 6   389 390 391 421 450 419 389
421 6   420 391 422 452 451 450 420
422 6   391 392 423 453 452 421 391
423 6   392 393 424 454 453 422 392
424 6   393 394 425 455 454 423 393
425 6   394 395 426 456 455 424 394
426 6   395 396 427 457 456 425 395
427 6   396 397 428 458 457 426 396
428 6   397 398 429 459 458 427 397
429 6   398 399 430 460 459 428 398
430 6   399 400 431 461 460 429 399
431 6   400 401 432 462 461 430 400
432 6   401 402 433 463 462 431 401
433 6   402 403 434 464 463 432 402
434 6   403 404 435 465 464 433 403
435 6   404 405 436 466 465 434 404
436 6   405 406 437 467 466 435 405
437 6   406 407 438 468 467 436 406
438 6   407 408 439 469 468 437 407
439 6   408 409 440 470 469 438 408
440 6   409 410 441 471 470 439 409
441 6   410 411 442 472 471 440 410
442 6   411 412 443 473 472 441 411
443 6   412 413 444 474 473 442 412
444 6   413 414 445 475 474 443 413
445 6   414 415 446 476 475 444 414
446 6   415 416 447 477 476 445 415
447 6   416 417 448 478 477 446 416
448 6   417 418 449 479 478 447 417
449 6   418 419 450 480 479 448 418
450 6   419 420 421 451 480 449 419
451 6   450 421 452 482 481 480 450
452 6   421 422 453 483 482 451 421
453 6   422 423 454 484 483 452 422
454 6   423 424 455 485 484 453 423
455 6   424 425 456 486 485 454 424
456 6   425 426 457 487 486 455 425
457 6   426 427 458 488 487 456 426
458 6   427 428 459 489 488 457 427
459 6   428 429 460 490 489 458 428
460 6   429 430 461 491 490 459 429
461 6   430 431 462 492 491 460 430
462 6   431 432 463 493 492 461 431
463 6   432 433 464 494 493 462 432
464 6   433 434 465 495 494 463 433
465 6   434 435 466 496 495 464 434
466 6   435 436 467 497 496 465 435
467 6   436 437 468 498 497 466 436
468 6   437 438 469 499 498 467 437
469 6   438 439 470 500 499 468 438
470 6   439 440 471 501 500 469 439
471 6   440 441 472 502 501 470 440
472 6   441 442 473 503 502 471 441
473 6   442 443 474 504 503 472 442
474 6   443 444 475 505 504 473 443
475 6   444 445 476 506 505 474 444
476 6   445 446 477 507 506 475 445
477 6   446 447 478 508 507 476 446
478 6   447 448 479 509 508 477 447
479 6   448 449 480 510 509 478 448
480 6   449 450 451 481 510 479 449
481 6   480 451 482 512 511 510 480
482 6   451 452 483 513 512 481 451
483 6   452 453 484 514 513 482 452
484 6   453 454 485 515 514 483 453
485 6   454 455 486 516 515 484 454
486 6   455 456 487 517 516 485 455
487 6   456 457 488 518 517 486 456
488 6   457 458 489 519 518 487 457
489 6   458 459 490 520 519 488 458
490 6   459 460 491 521 520 489 459
491 6   460 461 492 522 521 490 460
492 6   461 462 493 523 522 491 461
493 6   462 463 494 524 523 492 462
494 6   463 464 495 525 524 493 463
495 6   464 465 496 526 525 494 464
496 6   465 466 497 527 526 495 465
497 6   466 467 498 528 527 496 466
498 6   467 468 499 529 528 497 467
499 6   468 469 500 530 529 498 468
500 6   469 470 501 531 530 499 469
501 6   470 471 502 532 531 500 470
502 6   471 472 503 533 532 501 471
503 6   472 473 504 534 533 502 472
504 6   473 474 505 535 534 503 473
505 6   474 475 506 536 535 504 474
506 6   475 476 507 537 536 505 475
507 6   476 477 508 538 537 506 476
508 6   477 478 509 539 538 507 477
509 6   478 479 510 540 539 508 478
510 6   479 480 481 511 540 509 479
511 6   510 481 512 542 541 540 510
512 6   481 482 513 543 542 511 481
513 6   482 483 514 544 543 512 482
514 6   483 484 515 545 544 513 483
515 6   484 485 516 546 545 514 484
516 6   485 486 517 547 546 515 485
517 6   486 487 518 548 547 516 486
518 6   487 488 519 549 548 517 487
519 6   488 489 520 550 549 518 488
520 6   489 490 521 551 550 519 489
521 6   490 491 522 552 551 520 490
522 6   491 492 523 553 552 521 491
523 6   492 493 524 554 553 522 492
524 6   493 494 525 555 554 523 493
525 6   494 495 526 556 555 524 494
526 6   495 496 527 557 556 525 495
527 6   496 497 528 558 557 526 496
528 6   497 498 529 559 558 527 497
529 6   498 499 530 560 559 528 498
530 6   499 500 531 561 560 529 499
531 6   500 501 532 562 561 530 500
532 6   501 502 533 563 562 531 501
533 6   502 503 534 564 563 532 502
534 6   503 504 535 565 564 533 503
535 6   504 505 536 566 565 534 504
536 6   505 506 537 567 566 535 505
537 6   506 507 538 568 567 536 506
538 6   507 508 539 569 568 537 507
539 6   508 509 540 570 569 538 508
540 6   509 510 511 541 570 539 509
541 6   540 511 542 572 571 570 540
542 6   511 512 543 573 572 541 511
543 6   512 513 544 574 573 542 512
544 6   513 514 545 575 574 543 513
545 6   514 515 546 576 575 544 514
546 6   515 516 547 577 576 545 515
547 6   516 517 548 578 577 546 516
548 6   517 518 549 579 578 547 517
549 6   518 519 550 580 579 548 518
550 6   519 520 551 581 580 549 519
551 6   520 521 552 582 581 550 520
552 6   521 522 553 583 582 551 521
553 6   522 523 554 584 583 552 522
554 6   523 524 555 585 584 553 523
555 6   524 525 556 586 585 554 524
556 6   525 526 557 587 586 555 525
557 6   526 527 558 588 587 556 526
558 6   527 528 559 589 588 557 527
559 6   528 529 560 590 589 558 528
560 6   529 530 561 591 590 559 529
561 6   530 531 562 592 591 560 530
562 6   531 532 563 593 592 561 531
563 6   532 533 564 594 593 562 532
564 6   533 534 565 595 594 563 533
565 6   534 535 566 596 595 564 534
566 6   535 536 567 597 596 565 535
567 6   536 537 568 598 597 566 536
568 6   537 538 569 599 598 567 537
569 6   538 539 570 330 599 568 538
570 6   539 540 541 571 330 569 539
571 7   570 541 572 302 301 272 330 570
572 8   541 542 573 303 299 300 302 571 541
573 6   542 543 574 304 303 572 542
574 6   543 544 575 305 304 573 543
575 6   544 545 576 306 305 574 544
576 7   545 546 577 307 298 306 575 545
577 8   546 547 578 308 296 297 307 576 546
578 8   547 548 579 309 294 295 308 577 547
579 8   548 549 580 310 292 293 309 578 548
580 7   549 550 581 311 291 310 579 549
581 6   550 551 582 312 311 580 550
582 6   551 552 583 313 312 581 551
583 6   552 553 584 314 313 582 552
584 8   553 554 585 315 289 290 314 583 553
585 7   554 555 586 287 288 315 584 554
586 7   555 556 587 316 286 287 585 555
587 8   556 557 588 317 284 285 316 586 556
588 6   557 558 589 318 317 587 557
589 6   558 559 590 319 318 588 558
590 6   559 560 591 320 319 589 559
591 7   560 561 592 321 283 320 590 560
592 8   561 562 593 322 281 282 321 591 561
593 8   562 563 594 323 279 280 322 592 562
594 8   563 564 595 324 277 278 323 593 563
595 7   564 565 596 325 276 324 594 564
596 6   565 566 597 326 325 595 565
597 6   566 567 598 327 326 596 566
598 6   567 568 599 328 327 597 567
599 8   568 569 330 329 274 275 328 598 568
600 30   331 360 359 358 357 356 355 354 353 352 351 350 349 348 347 346 345 344 343 342 341 340 339 338 337 336 335 334 333 332 331

RADII:
3.470854986e-01   3.938298444e-02   3.928362147e-02   3.920489851e-02
3.917493598e-02   3.920493062e-02   3.928366383e-02   3.938300735e-02
3.947185532e-02   3.953094088e-02   3.955924380e-02   3.956807117e-02
3.956808826e-02   3.955928385e-02   3.953097764e-02   3.947186485e-02
3.938298378e-02   3.928362309e-02   3.920489972e-02   3.917493500e-02
3.920492733e-02   3.928365950e-02   3.938300368e-02   3.947185325e-02
3.953094006e-02   3.955924301e-02   3.956806930e-02   3.956808524e-02
3.955928079e-02   3.953097603e-02   3.947186543e-02   4.656013404e-02
4.640140608e-02   4.624340982e-02   4.614497869e-02   4.614499875e-02
4.624345660e-02   4.640144799e-02   4.656014201e-02   4.667132289e-02
4.672126931e-02   4.673015735e-02   4.672849407e-02   4.673019243e-02
4.672131631e-02   4.667135077e-02   4.656013243e-02   4.640140745e-02
4.624341190e-02   4.614497908e-02   4.614499641e-02   4.624345229e-02
4.640144355e-02   4.656013909e-02   4.667132185e-02   4.672126909e-02
4.673015637e-02   4.672849144e-02   4.673018870e-02   4.672131309e-02
4.667134962e-02   5.476529027e-02   5.453362162e-02   5.423003607e-02
5.397491904e-02   5.387603135e-02   5.397495746e-02   5.423008760e-02
5.453365148e-02   5.476527843e-02   5.486259209e-02   5.485305361e-02
5.481664511e-02   5.481666493e-02   5.485309990e-02   5.486263403e-02
5.476528790e-02   5.453362197e-02   5.423003847e-02   5.397492077e-02
5.387603068e-02   5.397495429e-02   5.423008340e-02   5.453364826e-02
5.476527733e-02   5.486259264e-02   5.485305412e-02   5.481664393e-02
5.481666160e-02   5.485309559e-02   5.486263076e-02   6.395694601e-02
6.371141181e-02   6.318660547e-02   6.260558257e-02   6.223567194e-02
6.223569245e-02   6.260563082e-02   6.318664662e-02   6.371142000e-02
6.395691472e-02   6.390713720e-02   6.373934675e-02   6.365581538e-02
6.373938208e-02   6.390718437e-02   6.395694203e-02   6.371140881e-02
6.318660419e-02   6.260558505e-02   6.223567298e-02   6.223569113e-02
6.260562780e-02   6.318664371e-02   6.371141893e-02   6.395691587e-02
6.390713933e-02   6.373934782e-02   6.365581398e-02   6.373937844e-02
6.390718037e-02   7.385495727e-02   7.389603336e-02   7.316577306e-02
7.197772984e-02   7.096977292e-02   7.058903928e-02   7.096980705e-02
7.197776452e-02   7.316578719e-02   7.389601224e-02   7.385490893e-02
7.334793278e-02   7.292225228e-02   7.292227036e-02   7.334797525e-02
7.385494776e-02   7.389602138e-02   7.316576076e-02   7.197772079e-02
7.096977512e-02   7.058903990e-02   7.096980583e-02   7.197776259e-02
7.316578636e-02   7.389601380e-02   7.385491263e-02   7.334793698e-02
7.292225513e-02   7.292227121e-02   7.334797533e-02   8.359001904e-02
8.479238553e-02   8.437878544e-02   8.220639276e-02   7.981579485e-02
7.844755762e-02   7.844757278e-02   7.981580292e-02   8.220638869e-02
8.437875377e-02   8.479232700e-02   8.358995345e-02   8.219899064e-02
8.163223327e-02   8.219901987e-02   8.358999361e-02   8.479235245e-02
8.437874866e-02   8.220635872e-02   7.981577024e-02   7.844756005e-02
7.844757396e-02   7.981580318e-02   8.220638954e-02   8.437875713e-02
8.479233398e-02   8.358996362e-02   8.219900269e-02   8.163224635e-02
8.219903456e-02   9.123130923e-02   9.496186419e-02   9.736322416e-02
9.422922879e-02   8.867492413e-02   8.518974006e-02   8.406226995e-02
8.518970288e-02   8.867487191e-02   9.422915163e-02   9.736312265e-02
9.496175691e-02   9.123121841e-02   8.895637073e-02   8.895638262e-02
9.123124729e-02   9.496178667e-02   9.736313771e-02   9.422914651e-02
8.867485536e-02   8.518969108e-02   8.406227536e-02   8.518970880e-02
8.867487981e-02   9.422916396e-02   9.736314132e-02   9.496178236e-02
9.123125069e-02   8.895641016e-02   8.895643024e-02   9.484680317e-02
9.965718514e-02   1.107747826e-01   1.134850933e-01   9.774848998e-02
9.011302547e-02   8.703691820e-02   8.703682141e-02   9.011289596e-02
9.774832452e-02   1.134848860e-01   1.107745828e-01   9.965701725e-02
9.484666699e-02   9.152447893e-02   9.484667416e-02   9.965702838e-02
1.107746003e-01   1.134849180e-01   9.774835216e-02   9.011291319e-02
8.703683671e-02   8.703684123e-02   9.011292389e-02   9.774836535e-02
1.134849438e-01   1.107746483e-01   9.965709002e-02   9.484675421e-02
9.152458325e-02   8.866861503e-02   1.052759899e-01   9.663499744e-02
1.743682747e-01   1.158216614e-01   8.362449150e-02   9.524003251e-02
7.790771189e-02   9.523978842e-02   8.362423545e-02   1.158212769e-01
1.743677841e-01   9.663474555e-02   1.052757326e-01   8.866841481e-02
8.866839956e-02   1.052757017e-01   9.663471505e-02   1.743678311e-01
1.158214273e-01   8.362432344e-02   9.523986352e-02   7.790760336e-02
9.523986164e-02   8.362432562e-02   1.158214330e-01   1.743679897e-01
9.663487084e-02   1.052758992e-01   8.866859021e-02   8.994507143e-02
6.468569391e-02   6.158895428e-02   6.542096284e-02   6.566511362e-02
5.973689849e-02   5.778212631e-02   5.649307111e-02   5.649310385e-02
5.778189135e-02   5.973659525e-02   6.566488416e-02   6.542078480e-02
6.158873632e-02   6.468548188e-02   8.994475908e-02   6.468544305e-02
6.158869479e-02   6.542074624e-02   6.566496458e-02   5.973676007e-02
5.778199078e-02   5.649298131e-02   5.649297156e-02   5.778199353e-02
5.973674138e-02   6.566497972e-02   6.542087866e-02   6.158887521e-02
6.468565887e-02   6.429829500e-02   6.134170422e-02   5.345007879e-02
5.255582631e-02   5.857183027e-02   6.396539523e-02   6.253038984e-02
6.253040626e-02   6.396543540e-02   5.857182383e-02   5.255578982e-02
5.345001003e-02   6.134159105e-02   6.429815557e-02   6.429819949e-02
6.134164667e-02   5.345002097e-02   5.255576180e-02   5.857175038e-02
6.396527402e-02   6.253033589e-02   6.253051414e-02   6.396554462e-02
5.857194024e-02   5.255591407e-02   5.345015653e-02   6.134178077e-02
6.429834341e-02   1.271024914e-01   3.940692486e-02   3.951418965e-02
3.960658415e-02   3.964250014e-02   3.960463285e-02   3.951034581e-02
3.940130783e-02   3.931924608e-02   3.928352010e-02   3.928440419e-02
3.929525050e-02   3.929442229e-02   3.928188355e-02   3.927921944e-02
3.932943787e-02   3.940876007e-02   3.951641032e-02   3.960947031e-02
3.964619419e-02   3.960920020e-02   3.951582346e-02   3.940774872e-02
3.932669919e-02   3.929202588e-02   3.929396058e-02   3.930580605e-02
3.930588459e-02   3.929412912e-02   3.929210918e-02   3.932645900e-02
4.640246176e-02   4.656873821e-02   4.675869267e-02   4.688506726e-02
4.688501450e-02   4.675851113e-02   4.656837470e-02   4.640187098e-02
4.631940009e-02   4.632338048e-02   4.636604342e-02   4.638886382e-02
4.636613250e-02   4.632354604e-02   4.631962739e-02   4.640432141e-02
4.657045352e-02   4.676052145e-02   4.688705451e-02   4.688713331e-02
4.676067844e-02   4.657053228e-02   4.640400327e-02   4.632148162e-02
4.632536338e-02   4.636784019e-02   4.639040595e-02   4.636737720e-02
4.632447460e-02   4.632024007e-02   5.417886184e-02   5.439782942e-02
5.476472111e-02   5.510791233e-02   5.524770622e-02   5.510814412e-02
5.476512194e-02   5.439830983e-02   5.417934310e-02   5.417047662e-02
5.429866029e-02   5.441850167e-02   5.441846305e-02   5.429854633e-02
5.417028849e-02   5.417913534e-02   5.439935862e-02   5.476605094e-02
5.510921838e-02   5.524904964e-02   5.510943645e-02   5.476628077e-02
5.439935361e-02   5.418024148e-02   5.417121215e-02   5.429916493e-02
5.441876888e-02   5.441852760e-02   5.429845512e-02   5.417009006e-02
6.256239440e-02   6.270018541e-02   6.330580700e-02   6.410434688e-02
6.466308232e-02   6.466319379e-02   6.410464626e-02   6.330622004e-02
6.270064698e-02   6.256283269e-02   6.285043290e-02   6.325798342e-02
6.344243193e-02   6.325795962e-02   6.285030071e-02   6.256256279e-02
6.270026997e-02   6.330667960e-02   6.410514033e-02   6.466395889e-02
6.466403462e-02   6.410531128e-02   6.330676113e-02   6.270099441e-02
6.256302098e-02   6.285041324e-02   6.325780340e-02   6.344217512e-02
6.325769444e-02   6.285008035e-02   7.137007395e-02   7.094266889e-02
7.164695642e-02   7.322828381e-02   7.481804401e-02   7.548047405e-02
7.481815134e-02   7.322844035e-02   7.164711637e-02   7.094275531e-02
7.137005196e-02   7.243598455e-02   7.327842842e-02   7.327849450e-02
7.243605400e-02   7.137000168e-02   7.094250038e-02   7.164652729e-02
7.322865750e-02   7.481857186e-02   7.548102217e-02   7.481850674e-02
7.322869554e-02   7.164712803e-02   7.094266168e-02   7.136981569e-02
7.243568501e-02   7.327816365e-02   7.327832430e-02   7.243602054e-02
8.076073269e-02   7.853960804e-02   7.850585481e-02   8.101411821e-02
8.470898034e-02   8.736764555e-02   8.736764239e-02   8.470895637e-02
8.101407436e-02   7.850572791e-02   7.853930902e-02   8.076035900e-02
8.334129541e-02   8.442488858e-02   8.334138182e-02   8.076043451e-02
7.853927150e-02   7.850530767e-02   8.101338820e-02   8.470916924e-02
8.736796298e-02   8.736779042e-02   8.470905566e-02   8.101387858e-02
7.850555198e-02   7.853908604e-02   8.076015746e-02   8.334119111e-02
8.442491914e-02   8.334158088e-02   9.208105875e-02   8.563718615e-02
8.229375475e-02   8.478786516e-02   9.189651030e-02   9.930476818e-02
1.023337288e-01   9.930465197e-02   9.189638711e-02   8.478773139e-02
8.229349128e-02   8.563679730e-02   9.208062872e-02   9.643643476e-02
9.643638978e-02   9.208060315e-02   8.563680552e-02   8.229330089e-02
8.478732577e-02   9.189594322e-02   9.930490091e-02   1.023337667e-01
9.930469103e-02   9.189608872e-02   8.478764576e-02   8.229343978e-02
8.563680948e-02   9.208074342e-02   9.643667463e-02   9.643678964e-02
1.091246225e-01   9.555623123e-02   8.227955200e-02   8.104488940e-02
9.138400959e-02   1.085183768e-01   1.196918658e-01   1.196917741e-01
1.085182547e-01   9.138396028e-02   8.104478161e-02   8.227935234e-02
9.555592009e-02   1.091242109e-01   1.115617444e-01   1.091240656e-01
9.555588178e-02   8.227932170e-02   8.104464677e-02   9.138373511e-02
1.085180877e-01   1.196919239e-01   1.196918052e-01   1.085179447e-01
9.138404709e-02   8.104489859e-02   8.227952703e-02   9.555618915e-02
1.091246009e-01   1.115622685e-01   1.271024423e-01   1.308746679e-01
7.870367937e-02   6.955783800e-02   7.484849236e-02   1.085101905e-01
1.407330178e-01   1.452696243e-01   1.407330043e-01   1.085102146e-01
7.484847893e-02   6.955776462e-02   7.870352921e-02   1.308743143e-01
1.271019720e-01   1.271018771e-01   1.308743028e-01   7.870360650e-02
6.955775931e-02   7.484839334e-02   1.085100252e-01   1.407326899e-01
1.452696044e-01   1.407328110e-01   1.085104298e-01   7.484862852e-02
6.955794283e-02   7.870377134e-02   1.308747941e-01   3.470854986e-01


CENTERS:
0.0000000000e+00 0.0000000000e+00  -2.0951460000e-01 3.8646850000e-01
-4.1857600000e-01 3.8636910000e-01  -6.2720830000e-01 3.8629040000e-01
-8.3557890000e-01 3.8626040000e-01  -1.0439500000e+00 3.8629040000e-01
-1.2525820000e+00 3.8636920000e-01  -1.4616430000e+00 3.8646850000e-01
-1.6711580000e+00 3.8655740000e-01  -1.8810280000e+00 3.8661640000e-01
-2.0911090000e+00 3.8664470000e-01  -2.3012790000e+00 3.8665360000e-01
-2.5114710000e+00 3.8665360000e-01  -2.7216410000e+00 3.8664480000e-01
-2.9317220000e+00 3.8661650000e-01  3.1415920000e+00 3.8655740000e-01
2.9320780000e+00 3.8646850000e-01  2.7230170000e+00 3.8636910000e-01
2.5143840000e+00 3.8629040000e-01  2.3060140000e+00 3.8626040000e-01
2.0976430000e+00 3.8629040000e-01  1.8890110000e+00 3.8636920000e-01
1.6799490000e+00 3.8646850000e-01  1.4704350000e+00 3.8655740000e-01
1.2605640000e+00 3.8661640000e-01  1.0504840000e+00 3.8664470000e-01
8.4031340000e-01 3.8665360000e-01  6.3012200000e-01 3.8665360000e-01
4.1995170000e-01 3.8664480000e-01  2.0987070000e-01 3.8661650000e-01
0.0000000000e+00 3.8655740000e-01  -1.0515780000e-01 4.6103260000e-01
-3.1449310000e-01 4.6071100000e-01  -5.2324700000e-01 4.6039790000e-01
-7.3152870000e-01 4.6020470000e-01  -9.3962910000e-01 4.6020480000e-01
-1.1479110000e+00 4.6039810000e-01  -1.3566650000e+00 4.6071100000e-01
-1.5660000000e+00 4.6103260000e-01  -1.7758270000e+00 4.6127010000e-01
-1.9859410000e+00 4.6139280000e-01  -2.1961550000e+00 4.6143100000e-01
-2.4063750000e+00 4.6143580000e-01  -2.6165960000e+00 4.6143110000e-01
-2.8268090000e+00 4.6139290000e-01  -3.0369240000e+00 4.6127020000e-01
3.0364350000e+00 4.6103260000e-01  2.8271000000e+00 4.6071090000e-01
2.6183460000e+00 4.6039790000e-01  2.4100640000e+00 4.6020470000e-01
2.2019640000e+00 4.6020480000e-01  1.9936820000e+00 4.6039800000e-01
1.7849280000e+00 4.6071100000e-01  1.5755930000e+00 4.6103260000e-01
1.3657660000e+00 4.6127010000e-01  1.1556520000e+00 4.6139280000e-01
9.4543820000e-01 4.6143100000e-01  7.3521770000e-01 4.6143580000e-01
5.2499710000e-01 4.6143110000e-01  3.1478360000e-01 4.6139290000e-01
1.0466890000e-01 4.6127020000e-01  -8.9210860000e-04 5.4901830000e-01
-2.1071920000e-01 5.4840600000e-01  -4.1974710000e-01 5.4766330000e-01
-6.2793120000e-01 5.4705580000e-01  -8.3557890000e-01 5.4682220000e-01
-1.0432270000e+00 5.4705590000e-01  -1.2514110000e+00 5.4766350000e-01
-1.4604390000e+00 5.4840610000e-01  -1.6702660000e+00 5.4901820000e-01
-1.8805660000e+00 5.4935090000e-01  -2.0909630000e+00 5.4943630000e-01
-2.3012600000e+00 5.4941880000e-01  -2.5114900000e+00 5.4941890000e-01
-2.7217880000e+00 5.4943650000e-01  -2.9321850000e+00 5.4935100000e-01
3.1407000000e+00 5.4901830000e-01  2.9308730000e+00 5.4840600000e-01
2.7218460000e+00 5.4766330000e-01  2.5136620000e+00 5.4705580000e-01
2.3060140000e+00 5.4682220000e-01  2.0983660000e+00 5.4705590000e-01
1.8901820000e+00 5.4766340000e-01  1.6811540000e+00 5.4840610000e-01
1.4713270000e+00 5.4901820000e-01  1.2610270000e+00 5.4935090000e-01
1.0506300000e+00 5.4943630000e-01  8.4033290000e-01 5.4941880000e-01
6.3010250000e-01 5.4941890000e-01  4.1980500000e-01 5.4943650000e-01
2.0940760000e-01 5.4935100000e-01  1.0358430000e-01 6.5213980000e-01
-1.0713920000e-01 6.5130030000e-01  -3.1689070000e-01 6.4988660000e-01
-5.2520630000e-01 6.4840850000e-01  -7.3228200000e-01 6.4747870000e-01
-9.3887590000e-01 6.4747890000e-01  -1.1459520000e+00 6.4840880000e-01
-1.3542680000e+00 6.4988690000e-01  -1.5640190000e+00 6.5130040000e-01
-1.7747430000e+00 6.5213960000e-01  -1.9856530000e+00 6.5231720000e-01
-2.1962020000e+00 6.5215020000e-01  -2.4063750000e+00 6.5203770000e-01
-2.6165480000e+00 6.5215040000e-01  -2.8270980000e+00 6.5231750000e-01
-3.0380090000e+00 6.5213980000e-01  3.0344530000e+00 6.5130030000e-01
2.8247020000e+00 6.4988660000e-01  2.6163860000e+00 6.4840850000e-01
2.4093110000e+00 6.4747870000e-01  2.2027170000e+00 6.4747880000e-01
1.9956410000e+00 6.4840870000e-01  1.7873250000e+00 6.4988680000e-01
1.5775740000e+00 6.5130030000e-01  1.3668500000e+00 6.5213960000e-01
1.1559400000e+00 6.5231720000e-01  9.4539040000e-01 6.5215020000e-01
7.3521760000e-01 6.5203770000e-01  5.2504470000e-01 6.5215030000e-01
3.1449500000e-01 6.5231740000e-01  2.0888480000e-01 7.7168400000e-01
-3.2525920000e-03 7.7116380000e-01  -2.1467040000e-01 7.6899550000e-01
-4.2387040000e-01 7.6590750000e-01  -6.3052380000e-01 7.6331660000e-01
-8.3557910000e-01 7.6232730000e-01  -1.0406340000e+00 7.6331680000e-01
-1.2472880000e+00 7.6590780000e-01  -1.4564880000e+00 7.6899570000e-01
-1.6679060000e+00 7.7116370000e-01  -1.8800430000e+00 7.7168360000e-01
-2.0914030000e+00 7.7105880000e-01  -2.3015630000e+00 7.7037150000e-01
-2.5111880000e+00 7.7037170000e-01  -2.7213480000e+00 7.7105910000e-01
-2.9327080000e+00 7.7168390000e-01  3.1383400000e+00 7.7116370000e-01
2.9269220000e+00 7.6899550000e-01  2.7177220000e+00 7.6590750000e-01
2.5110690000e+00 7.6331660000e-01  2.3060140000e+00 7.6232730000e-01
2.1009590000e+00 7.6331680000e-01  1.8943050000e+00 7.6590780000e-01
1.6851050000e+00 7.6899570000e-01  1.4736870000e+00 7.7116370000e-01
1.2615500000e+00 7.7168370000e-01  1.0501900000e+00 7.7105880000e-01
8.4002970000e-01 7.7037150000e-01  6.3040530000e-01 7.7037160000e-01
4.2024480000e-01 7.7105910000e-01  3.1596470000e-01 9.0759320000e-01
1.0227280000e-01 9.0915520000e-01  -1.1245420000e-01 9.0712860000e-01
-3.2442650000e-01 9.0148840000e-01  -5.3152100000e-01 8.9535700000e-01
-7.3469420000e-01 8.9167020000e-01  -9.3646400000e-01 8.9167030000e-01
-1.1396370000e+00 8.9535750000e-01  -1.3467320000e+00 9.0148880000e-01
-1.5587050000e+00 9.0712870000e-01  -1.7734320000e+00 9.0915500000e-01
-1.9871230000e+00 9.0759280000e-01  -2.1978390000e+00 9.0510990000e-01
-2.4063760000e+00 9.0401260000e-01  -2.6149120000e+00 9.0511020000e-01
-2.8256280000e+00 9.0759320000e-01  -3.0393200000e+00 9.0915520000e-01
3.0291380000e+00 9.0712860000e-01  2.8171660000e+00 9.0148840000e-01
2.6100710000e+00 8.9535710000e-01  2.4068980000e+00 8.9167010000e-01
2.2051290000e+00 8.9167030000e-01  2.0019560000e+00 8.9535740000e-01
1.7948610000e+00 9.0148870000e-01  1.5828880000e+00 9.0712870000e-01
1.3681610000e+00 9.0915500000e-01  1.1544700000e+00 9.0759280000e-01
9.4375390000e-01 9.0510990000e-01  7.3521730000e-01 9.0401260000e-01
5.2668060000e-01 9.0511010000e-01  4.2552520000e-01 1.0569150000e+00
2.1218900000e-01 1.0639040000e+00  -7.7159290000e-03 1.0666090000e+00
-2.2694000000e-01 1.0583600000e+00  -4.3712920000e-01 1.0448710000e+00
-6.3850590000e-01 1.0350820000e+00  -8.3557870000e-01 1.0316460000e+00
-1.0326520000e+00 1.0350820000e+00  -1.2340300000e+00 1.0448710000e+00
-1.4442190000e+00 1.0583600000e+00  -1.6634440000e+00 1.0666080000e+00
-1.8833480000e+00 1.0639040000e+00  -2.0966840000e+00 1.0569150000e+00
-2.3038980000e+00 1.0520320000e+00  -2.5088540000e+00 1.0520320000e+00
-2.7160680000e+00 1.0569150000e+00  -2.9294040000e+00 1.0639040000e+00
3.1338760000e+00 1.0666080000e+00  2.9146520000e+00 1.0583600000e+00
2.7044630000e+00 1.0448710000e+00  2.5030850000e+00 1.0350820000e+00
2.3060130000e+00 1.0316460000e+00  2.1089410000e+00 1.0350820000e+00
1.9075630000e+00 1.0448710000e+00  1.6973740000e+00 1.0583600000e+00
1.4781490000e+00 1.0666080000e+00  1.2582450000e+00 1.0639040000e+00
1.0449090000e+00 1.0569150000e+00  8.3769510000e-01 1.0520320000e+00
6.3273900000e-01 1.0520320000e+00  5.3613790000e-01 1.2137680000e+00
3.2945290000e-01 1.2267280000e+00  1.0757990000e-01 1.2461440000e+00
-1.2910460000e-01 1.2459590000e+00  -3.5073890000e-01 1.2142130000e+00
-5.5067040000e-01 1.1917440000e+00  -7.4144970000e-01 1.1807030000e+00
-9.2970610000e-01 1.1807030000e+00  -1.1204880000e+00 1.1917450000e+00
-1.3204210000e+00 1.2142130000e+00  -1.5420550000e+00 1.2459590000e+00
-1.7787400000e+00 1.2461430000e+00  -2.0006130000e+00 1.2267270000e+00
-2.2072970000e+00 1.2137680000e+00  -2.4063760000e+00 1.2070070000e+00
-2.6054550000e+00 1.2137680000e+00  -2.8121400000e+00 1.2267280000e+00
-3.0340130000e+00 1.2461440000e+00  3.0124870000e+00 1.2459590000e+00
2.7908530000e+00 1.2142130000e+00  2.5909210000e+00 1.1917450000e+00
2.4001400000e+00 1.1807030000e+00  2.2118850000e+00 1.1807030000e+00
2.0211050000e+00 1.1917450000e+00  1.8211720000e+00 1.2142130000e+00
1.5995380000e+00 1.2459590000e+00  1.3628530000e+00 1.2461440000e+00
1.1409800000e+00 1.2267270000e+00  9.3429560000e-01 1.2137680000e+00
7.3521680000e-01 1.2070070000e+00  6.4462900000e-01 1.3649060000e+00
4.4959760000e-01 1.3957070000e+00  2.4493810000e-01 1.4052310000e+00
-7.5453770000e-03 1.5081090000e+00  -2.8516220000e-01 1.4181770000e+00
-4.7603650000e-01 1.3502190000e+00  -6.5938780000e-01 1.3454050000e+00
-8.3557620000e-01 1.3194290000e+00  -1.0117680000e+00 1.3454070000e+00
-1.1951230000e+00 1.3502200000e+00  -1.3859980000e+00 1.4181770000e+00
-1.6636150000e+00 1.5081080000e+00  -1.9160980000e+00 1.4052300000e+00
-2.1207580000e+00 1.3957060000e+00  -2.3157890000e+00 1.3649050000e+00
-2.4969650000e+00 1.3649050000e+00  -2.6919960000e+00 1.3957060000e+00
-2.8966550000e+00 1.4052310000e+00  3.1340470000e+00 1.5081080000e+00
2.8564300000e+00 1.4181770000e+00  2.6655550000e+00 1.3502190000e+00
2.4822020000e+00 1.3454060000e+00  2.3060120000e+00 1.3194290000e+00
2.1298230000e+00 1.3454060000e+00  1.9464700000e+00 1.3502200000e+00
1.7555950000e+00 1.4181770000e+00  1.4779780000e+00 1.5081090000e+00
1.2254950000e+00 1.4052310000e+00  1.0208350000e+00 1.3957060000e+00
8.2580410000e-01 1.3649050000e+00  7.3521630000e-01 1.5193370000e+00
5.8100750000e-01 1.5047310000e+00  3.4626170000e-01 1.5272700000e+00
2.2529080000e-01 1.5661030000e+00  -2.3258090000e-01 1.5919350000e+00
-4.4624820000e-01 1.4905280000e+00  -5.6123280000e-01 1.4639670000e+00
-7.7860800000e-01 1.4416530000e+00  -8.9254410000e-01 1.4416530000e+00
-1.1099260000e+00 1.4639670000e+00  -1.2249120000e+00 1.4905280000e+00
-1.4385800000e+00 1.5919340000e+00  -1.8964510000e+00 1.5661020000e+00
-2.0174220000e+00 1.5272690000e+00  -2.2521680000e+00 1.5047310000e+00
-2.4063780000e+00 1.5193360000e+00  -2.5605860000e+00 1.5047310000e+00
-2.7953320000e+00 1.5272690000e+00  -2.9163030000e+00 1.5661020000e+00
2.9090110000e+00 1.5919340000e+00  2.6953430000e+00 1.4905280000e+00
2.5803570000e+00 1.4639670000e+00  2.3629810000e+00 1.4416530000e+00
2.2490430000e+00 1.4416530000e+00  2.0316670000e+00 1.4639670000e+00
1.9166810000e+00 1.4905280000e+00  1.7030130000e+00 1.5919340000e+00
1.2451420000e+00 1.5661020000e+00  1.1241710000e+00 1.5272690000e+00
8.8942520000e-01 1.5047310000e+00  1.0038510000e+00 1.5644370000e+00
1.3108630000e+00 1.6745660000e+00  1.4139610000e+00 1.7268050000e+00
1.5212260000e+00 1.7309010000e+00  1.6251230000e+00 1.6888990000e+00
1.8321950000e+00 1.5809610000e+00  2.1461390000e+00 1.5023500000e+00
2.4658840000e+00 1.5023500000e+00  2.7798290000e+00 1.5809610000e+00
2.9869010000e+00 1.6888980000e+00  3.0907980000e+00 1.7309000000e+00
-3.0851220000e+00 1.7268050000e+00  -2.9820240000e+00 1.6745660000e+00
-2.6750130000e+00 1.5644370000e+00  -2.1377430000e+00 1.5644370000e+00
-1.8307300000e+00 1.6745660000e+00  -1.7276320000e+00 1.7268050000e+00
-1.6203670000e+00 1.7309000000e+00  -1.5164700000e+00 1.6888980000e+00
-1.3093990000e+00 1.5809610000e+00  -9.9544920000e-01 1.5023510000e+00
-6.7570540000e-01 1.5023500000e+00  -3.6176280000e-01 1.5809610000e+00
-1.5469100000e-01 1.6888990000e+00  -5.0793940000e-02 1.7309010000e+00
5.6471410000e-02 1.7268060000e+00  1.5956960000e-01 1.6745670000e+00
4.6658150000e-01 1.5644380000e+00  6.0712430000e-01 1.6947400000e+00
1.6756550000e+00 2.7550880000e+00  1.8853370000e+00 2.7549790000e+00
2.0955020000e+00 2.7548850000e+00  2.3059820000e+00 2.7548490000e+00
2.5164650000e+00 2.7548870000e+00  2.7266390000e+00 2.7549820000e+00
2.9363310000e+00 2.7550890000e+00  -3.1376200000e+00 2.7551680000e+00
-2.9286670000e+00 2.7552010000e+00  -2.7197980000e+00 2.7551970000e+00
-2.5108980000e+00 2.7551850000e+00  -2.3019680000e+00 2.7551860000e+00
-2.0930590000e+00 2.7552000000e+00  -1.8841420000e+00 2.7552040000e+00
-1.6751540000e+00 2.7551770000e+00  -1.4659190000e+00 2.7550950000e+00
-1.2562320000e+00 2.7549860000e+00  -1.0460640000e+00 2.7548930000e+00
-8.3558010000e-01 2.7548570000e+00  -6.2509240000e-01 2.7548940000e+00
-4.1491990000e-01 2.7549860000e+00  -2.0523720000e-01 2.7550920000e+00
3.9904710000e-03 2.7551740000e+00  2.1294640000e-01 2.7552100000e+00
4.2182810000e-01 2.7552080000e+00  6.3073470000e-01 2.7551930000e+00
8.3966870000e-01 2.7551950000e+00  1.0485810000e+00 2.7552080000e+00
1.2574640000e+00 2.7552090000e+00  1.4664240000e+00 2.7551720000e+00
1.5706770000e+00 2.6808180000e+00  1.7800130000e+00 2.6804860000e+00
1.9900060000e+00 2.6801190000e+00  2.2005860000e+00 2.6798790000e+00
2.4114040000e+00 2.6798800000e+00  2.6219910000e+00 2.6801230000e+00
2.8319930000e+00 2.6804900000e+00  3.0413370000e+00 2.6808200000e+00
-3.0329600000e+00 2.6809990000e+00  -2.8242110000e+00 2.6810180000e+00
-2.6153660000e+00 2.6809590000e+00  -2.4063930000e+00 2.6809250000e+00
-2.1974170000e+00 2.6809610000e+00  -1.9885640000e+00 2.6810210000e+00
-1.7797980000e+00 2.6810020000e+00  -1.5708990000e+00 2.6808230000e+00
-1.3615610000e+00 2.6804910000e+00  -1.1515660000e+00 2.6801240000e+00
-9.4098490000e-01 2.6798830000e+00  -7.3016560000e-01 2.6798840000e+00
-5.1958150000e-01 2.6801240000e+00  -3.0958810000e-01 2.6804890000e+00
-1.0025360000e-01 2.6808200000e+00  1.0863080000e-01 2.6810020000e+00
3.1738600000e-01 2.6810230000e+00  5.2623300000e-01 2.6809620000e+00
7.3520580000e-01 2.6809280000e+00  9.4418280000e-01 2.6809640000e+00
1.1530360000e+00 2.6810230000e+00  1.3617910000e+00 2.6810010000e+00
1.4657470000e+00 2.5938360000e+00  1.6744210000e+00 2.5932680000e+00
1.8839750000e+00 2.5924120000e+00  2.0946150000e+00 2.5916370000e+00
2.3060010000e+00 2.5913260000e+00  2.5173900000e+00 2.5916400000e+00
2.7280360000e+00 2.5924150000e+00  2.9375960000e+00 2.5932700000e+00
-3.1369120000e+00 2.5938360000e+00  -2.9285540000e+00 2.5939650000e+00
-2.7199760000e+00 2.5937890000e+00  -2.5109830000e+00 2.5935900000e+00
-2.3017920000e+00 2.5935920000e+00  -2.0927940000e+00 2.5937920000e+00
-1.8842090000e+00 2.5939670000e+00  -1.6758400000e+00 2.5938380000e+00
-1.4671550000e+00 2.5932700000e+00  -1.2576010000e+00 2.5924140000e+00
-1.0469610000e+00 2.5916400000e+00  -8.3557410000e-01 2.5913280000e+00
-6.2418710000e-01 2.5916390000e+00  -4.1354760000e-01 2.5924120000e+00
-2.0399630000e-01 2.5932680000e+00  4.6760330000e-03 2.5938360000e+00
2.1303710000e-01 2.5939690000e+00  4.2161770000e-01 2.5937910000e+00
6.3061030000e-01 2.5935930000e+00  8.3980280000e-01 2.5935940000e+00
1.0488010000e+00 2.5937940000e+00  1.2573870000e+00 2.5939690000e+00
1.3613570000e+00 2.4928600000e+00  1.5688460000e+00 2.4922950000e+00
1.7772640000e+00 2.4907470000e+00  1.9875240000e+00 2.4888410000e+00
2.1995940000e+00 2.4875360000e+00  2.4124170000e+00 2.4875370000e+00
2.6244910000e+00 2.4888430000e+00  2.8347550000e+00 2.4907480000e+00
3.0431760000e+00 2.4922950000e+00  -3.0325200000e+00 2.4928570000e+00
-2.8247560000e+00 2.4924780000e+00  -2.6159910000e+00 2.4917660000e+00
-2.4063850000e+00 2.4914270000e+00  -2.1967770000e+00 2.4917680000e+00
-1.9880060000e+00 2.4924800000e+00  -1.7802390000e+00 2.4928580000e+00
-1.5727410000e+00 2.4922960000e+00  -1.3643140000e+00 2.4907480000e+00
-1.1540550000e+00 2.4888420000e+00  -9.4198460000e-01 2.4875370000e+00
-7.2916280000e-01 2.4875370000e+00  -5.1709390000e-01 2.4888410000e+00
-3.0683690000e-01 2.4907460000e+00  -9.8421420000e-02 2.4922940000e+00
1.0906930000e-01 2.4928600000e+00  3.1683500000e-01 2.4924800000e+00
5.2560070000e-01 2.4917680000e+00  7.3520780000e-01 2.4914300000e+00
9.4481750000e-01 2.4917710000e+00  1.1535890000e+00 2.4924830000e+00
1.2584090000e+00 2.3766860000e+00  1.4641610000e+00 2.3771150000e+00
1.6701200000e+00 2.3750750000e+00  1.8786880000e+00 2.3711920000e+00
2.0909960000e+00 2.3674140000e+00  2.3060080000e+00 2.3658520000e+00
2.5210210000e+00 2.3674150000e+00  2.7333320000e+00 2.3711930000e+00
2.9419030000e+00 2.3750760000e+00  -3.1353230000e+00 2.3771130000e+00
-2.9295720000e+00 2.3766820000e+00  -2.7219330000e+00 2.3747490000e+00
-2.5119170000e+00 2.3731100000e+00  -2.3008490000e+00 2.3731110000e+00
-2.0908300000e+00 2.3747510000e+00  -1.8831870000e+00 2.3766840000e+00
-1.6774340000e+00 2.3771130000e+00  -1.4714690000e+00 2.3750760000e+00
-1.2628910000e+00 2.3711930000e+00  -1.0505850000e+00 2.3674140000e+00
-8.3557390000e-01 2.3658520000e+00  -6.2056400000e-01 2.3674130000e+00
-4.0825890000e-01 2.3711910000e+00  -1.9969330000e-01 2.3750740000e+00
6.2662320000e-03 2.3771160000e+00  2.1201850000e-01 2.3766850000e+00
4.1965900000e-01 2.3747520000e+00  6.2967600000e-01 2.3731130000e+00
8.4074520000e-01 2.3731140000e+00  1.0507650000e+00 2.3747540000e+00
1.1582450000e+00 2.2436570000e+00  1.3623490000e+00 2.2477360000e+00
1.5638860000e+00 2.2469120000e+00  1.7678540000e+00 2.2405480000e+00
1.9783520000e+00 2.2316660000e+00  2.1957990000e+00 2.2253070000e+00
2.4162200000e+00 2.2253080000e+00  2.6336680000e+00 2.2316670000e+00
2.8441690000e+00 2.2405480000e+00  3.0481380000e+00 2.2469110000e+00
-3.0335110000e+00 2.2477340000e+00  -2.8294090000e+00 2.2436530000e+00
-2.6199630000e+00 2.2384190000e+00  -2.4063810000e+00 2.2361280000e+00
-2.1927980000e+00 2.2384200000e+00  -1.9833500000e+00 2.2436540000e+00
-1.7792460000e+00 2.2477340000e+00  -1.5777090000e+00 2.2469100000e+00
-1.3737350000e+00 2.2405490000e+00  -1.1632290000e+00 2.2316660000e+00
-9.4578340000e-01 2.2253070000e+00  -7.2536580000e-01 2.2253060000e+00
-5.0792120000e-01 2.2316640000e+00  -2.9742580000e-01 2.2405470000e+00
-9.3457680000e-02 2.2469130000e+00  1.0808010000e-01 2.2477360000e+00
3.1218350000e-01 2.2436560000e+00  5.2163020000e-01 2.2384220000e+00
7.3521290000e-01 2.2361310000e+00  9.4879650000e-01 2.2384230000e+00
1.0620890000e+00 2.0901190000e+00  1.2671040000e+00 2.1033670000e+00
1.4623340000e+00 2.1093220000e+00  1.6564760000e+00 2.1024060000e+00
1.8595450000e+00 2.0851830000e+00  2.0772040000e+00 2.0672000000e+00
2.3060100000e+00 2.0596480000e+00  2.5348170000e+00 2.0672000000e+00
2.7524780000e+00 2.0851840000e+00  2.9555480000e+00 2.1024050000e+00
-3.1334950000e+00 2.1093210000e+00  -2.9382650000e+00 2.1033650000e+00
-2.7332530000e+00 2.0901160000e+00  -2.5169010000e+00 2.0802730000e+00
-2.2958580000e+00 2.0802740000e+00  -2.0795060000e+00 2.0901170000e+00
-1.8744910000e+00 2.1033660000e+00  -1.6792600000e+00 2.1093210000e+00
-1.4851180000e+00 2.1024040000e+00  -1.2820450000e+00 2.0851850000e+00
-1.0643790000e+00 2.0672000000e+00  -8.3557520000e-01 2.0596470000e+00
-6.0677190000e-01 2.0671990000e+00  -3.8911520000e-01 2.0851820000e+00
-1.8604680000e-01 2.1024070000e+00  8.0965620000e-03 2.1093230000e+00
2.0332720000e-01 2.1033680000e+00  4.0834080000e-01 2.0901190000e+00
6.2469310000e-01 2.0802760000e+00  8.4573630000e-01 2.0802760000e+00
9.6851520000e-01 1.9077170000e+00  1.1842110000e+00 1.9381940000e+00
1.3736270000e+00 1.9650080000e+00  1.5505930000e+00 1.9661850000e+00
1.7344800000e+00 1.9407710000e+00  1.9427490000e+00 1.8996310000e+00
2.1807240000e+00 1.8699740000e+00  2.4312970000e+00 1.8699740000e+00
2.6692740000e+00 1.8996310000e+00  2.8775440000e+00 1.9407710000e+00
3.0614320000e+00 1.9661850000e+00  -3.0447880000e+00 1.9650070000e+00
-2.8553730000e+00 1.9381930000e+00  -2.6396780000e+00 1.9077150000e+00
-2.4063790000e+00 1.8983050000e+00  -2.1730790000e+00 1.9077150000e+00
-1.9573830000e+00 1.9381930000e+00  -1.7679660000e+00 1.9650070000e+00
-1.5910010000e+00 1.9661840000e+00  -1.4071140000e+00 1.9407700000e+00
-1.1988410000e+00 1.8996320000e+00  -9.6086050000e-01 1.8699740000e+00
-7.1029090000e-01 1.8699730000e+00  -4.7231810000e-01 1.8996300000e+00
-2.6404960000e-01 1.9407720000e+00  -8.0161100000e-02 1.9661860000e+00
9.6804590000e-02 1.9650090000e+00  2.8622070000e-01 1.9381950000e+00
5.0191620000e-01 1.9077170000e+00  7.3521560000e-01 1.8983060000e+00
8.6330780000e-01 1.6947400000e+00  1.1225030000e+00 1.7197250000e+00
1.3131340000e+00 1.8145940000e+00  1.4642220000e+00 1.8395880000e+00
1.6125120000e+00 1.8217430000e+00  1.7836790000e+00 1.7465500000e+00
2.0203940000e+00 1.6621630000e+00  2.3060110000e+00 1.6352420000e+00
2.5916290000e+00 1.6621630000e+00  2.8283450000e+00 1.7465500000e+00
2.9995130000e+00 1.8217420000e+00  -3.1353830000e+00 1.8395880000e+00
-2.9842950000e+00 1.8145930000e+00  -2.7936650000e+00 1.7197250000e+00
-2.5344700000e+00 1.6947390000e+00  -2.2782860000e+00 1.6947390000e+00
-2.0190900000e+00 1.7197250000e+00  -1.8284590000e+00 1.8145930000e+00
-1.6773710000e+00 1.8395870000e+00  -1.5290820000e+00 1.8217420000e+00
-1.3579150000e+00 1.7465500000e+00  -1.1211960000e+00 1.6621640000e+00
-8.3557600000e-01 1.6352420000e+00  -5.4996170000e-01 1.6621630000e+00
-3.1324720000e-01 1.7465510000e+00  -1.4207980000e-01 1.8217440000e+00
6.2099270000e-03 1.8395890000e+00  1.5729840000e-01 1.8145950000e+00
3.4792920000e-01 1.7197260000e+00  2.5073950000e-01 3.1415730000e+00


END
    </circlepacking>
    <circlepacking name="torus.p">
NODECOUNT:  32
GEOMETRY: euclidean
ALPHA/BETA/GAMMA:  19 0 20
PACKNAME: torus.p
FLOWERS:

1 6   20 19 22 14 28 10 20
2 4   6 21 18 27 6
3 7   8 23 21 6 32 25 24 8
4 4   8 31 30 23 8
5 5   14 22 29 17 12 14
6 8   3 21 2 27 26 28 16 32 3
7 4   13 20 11 8 13
8 8   7 11 31 4 23 3 24 13 7
9 7   20 13 17 29 18 21 19 20
10 5   20 1 28 26 11 20
11 6   20 10 26 31 8 7 20
12 5   14 5 17 24 16 14
13 6   20 7 8 24 17 9 20
14 6   1 22 5 12 16 28 1
15 5   18 30 31 26 27 18
16 7   6 28 14 12 24 25 32 6
17 6   9 13 24 12 5 29 9
18 7   2 21 9 29 30 15 27 2
19 7   20 9 21 23 30 22 1 20
20 7   7 13 9 19 1 10 11 7
21 7   3 23 19 9 18 2 6 3
22 6   1 19 30 29 5 14 1
23 6   8 4 30 19 21 3 8
24 7   8 3 25 16 12 17 13 8
25 4   3 32 16 24 3
26 7   6 27 15 31 11 10 28 6
27 5   6 2 18 15 26 6
28 6   1 14 16 6 26 10 1
29 6   9 17 5 22 30 18 9
30 8   4 31 15 18 29 22 19 23 4
31 6   8 11 26 15 30 4 8
32 4   3 6 16 25 3

RADII:
1.071386092e-01   4.431718224e-02   1.112043392e-01   5.250194264e-02
6.346625680e-02   1.226339160e-01   4.718978129e-02   1.394703725e-01
1.656478418e-01   7.448273027e-02   9.151383706e-02   5.970233629e-02
1.042613789e-01   8.449565547e-02   7.372302093e-02   8.473703060e-02
9.583643543e-02   1.300421436e-01   1.755266392e-01   1.317460988e-01
1.510138810e-01   1.116545621e-01   1.220498474e-01   1.047665739e-01
2.836227050e-02   1.114891651e-01   6.067165116e-02   9.556109124e-02
1.155917647e-01   1.673493123e-01   9.544571992e-02   2.912524600e-02


CENTERS:
2.0856200179e-01 1.9079186005e-01  -5.0038301570e-01 -1.2194170161e-01
-3.0266091621e-01 -3.7849075368e-01  2.6699496499e-02 -4.1406282871e-01
-5.4005909391e-01 4.7402070029e-01  -5.1825254990e-01 -2.8793371623e-01
-3.6989155103e-02 4.8234372800e-01  -6.7783600323e-02 6.6644618631e-01
-2.7703418583e-01 1.9912831685e-01  1.9581920349e-01 3.7196562207e-01
9.9479131003e-02 5.0714495036e-01  -4.6427169216e-01 5.7111226563e-01
-1.8558488566e-01 4.5307321752e-01  3.9572905935e-01 1.4965569639e-01
2.8714033703e-01 -5.0332063354e-01  5.2625391957e-01 2.5737274659e-01
-3.8505662931e-01 4.3725680879e-01  4.6743921854e-01 -4.0838615297e-01
0.0000000000e+00 0.0000000000e+00  -7.1669864488e-11 3.0727273800e-01
-3.0513390078e-01 -1.1628419512e-01  2.8686323238e-01 -1.3510291373e-02
-8.9491020264e-02 -2.8380120267e-01  -3.0803118516e-01 6.2248274732e-01
-4.1043772685e-01 -4.6716429895e-01  3.0170877742e-01 5.2484774659e-01
3.9424935444e-01 -5.8449690024e-01  3.5954347699e-01 3.2603890328e-01
-5.4144006801e-01 2.9496800421e-01  1.9986144050e-01 -2.7860244542e-01
1.6664163878e-01 6.8162438610e-01  -4.3772623707e-01 -4.1656635670e-01


END
    </circlepacking>
    <circlepacking name="Owl.p">
NODECOUNT:  80
GEOMETRY: hyperbolic
ALPHA/BETA/GAMMA:  8 80 26
PACKNAME: Owl.p
FLOWERS:

1 5   74 73 6 4 2 58
2 8   1 4 7 5 3 56 57 58 1
3 7   56 2 5 8 14 20 37 56
4 4   1 6 7 2 1
5 4   2 7 8 3 2
6 7   73 71 11 9 7 4 1 73
7 8   4 6 9 12 10 8 5 2 4
8 10   18 17 16 15 14 3 5 7 10 13 18
9 4   6 11 12 7 6
10 4   7 12 13 8 7
11 5   43 12 9 6 71 72
12 8   43 42 41 13 10 7 9 11 43
13 7   40 19 18 8 10 12 41 40
14 5   22 20 3 8 15 22
15 4   22 14 8 16 22
16 6   23 22 15 8 17 21 23
17 4   21 16 8 18 21
18 5   21 17 8 13 19 21
19 4   40 21 18 13 40
20 4   3 14 22 37 3
21 15   40 39 38 34 33 32 28 26 25 24 23 16 17 18 19 40
22 15   20 14 15 16 23 24 25 26 27 29 30 31 35 36 37 20
23 4   24 22 16 21 24
24 4   25 22 23 21 25
25 4   26 22 24 21 26
26 5   28 27 22 25 21 28
27 3   29 22 26 28
28 3   27 26 21 32
29 2   30 22 27
30 2   31 22 29
31 2   35 22 30
32 2   28 21 33
33 2   32 21 34
34 2   33 21 38
35 2   36 22 31
36 2   37 22 35
37 4   56 3 20 22 36
38 2   34 21 39
39 2   38 21 40
40 4   39 21 19 13 41
41 4   40 13 12 42 44
42 7   47 46 45 44 41 12 43 47
43 3   47 42 12 11
44 2   41 42 45
45 4   44 42 46 48 50
46 5   49 48 45 42 47 49
47 4   53 49 46 42 43
48 6   52 51 50 45 46 49 52
49 5   53 52 48 46 47 53
50 2   45 48 51
51 3   50 48 52 54
52 6   55 54 51 48 49 53 55
53 3   55 52 49 47
54 2   51 52 55
55 2   54 52 53
56 4   59 57 2 3 37
57 7   58 2 56 59 60 61 62 58
58 3   1 2 57 62
59 2   60 57 56
60 4   64 63 61 57 59
61 5   62 57 60 63 66 62
62 4   58 57 61 66 67
63 6   68 66 61 60 64 65 68
64 2   65 63 60
65 3   70 68 63 64
66 5   68 67 62 61 63 68
67 3   62 66 68 69
68 6   70 69 67 66 63 65 70
69 2   67 68 70
70 2   69 68 65
71 6   76 75 72 11 6 73 76
72 2   11 71 75
73 6   77 76 71 6 1 74 77
74 2   77 73 1
75 3   72 71 76 78
76 7   80 79 78 75 71 73 77 80
77 3   80 76 73 74
78 2   75 76 79
79 2   78 76 80
80 2   79 76 77

RADII:
3.014820000e-01   2.785802603e-01   1.651956260e-01   1.043003592e-01
8.917114847e-02   2.409510723e-01   2.333104075e-01   2.326805580e-01
1.043003592e-01   8.917114851e-02   3.014820000e-01   2.785802608e-01
1.651956260e-01   8.863212024e-02   6.599543989e-02   1.211755941e-01
6.599543989e-02   8.863212025e-02   6.273493700e-02   6.273493699e-02
4.778573800e-01   4.778573800e-01   5.705975052e-02   4.721184683e-02
6.047327946e-02   1.429032619e-01   2.391600000e-01   2.391600000e-01
4.706360000e-01   3.083300000e-01   2.231440000e-01   4.706360000e-01
3.083300000e-01   2.231440000e-01   1.863300000e-01   1.278330000e-01
1.278330000e-01   1.863300000e-01   1.278330000e-01   1.278330000e-01
1.710560000e-01   2.315008905e-01   2.936840000e-01   9.258000000e-02
1.367950000e-01   1.285012844e-01   3.253560000e-01   1.536568369e-01
1.609890274e-01   8.709200000e-02   2.220070000e-01   3.010351077e-01
4.763440000e-01   9.853250000e-01   8.011240000e-01   1.710560000e-01
2.315008873e-01   2.936840000e-01   9.258000000e-02   1.367950000e-01
1.285012723e-01   3.253560000e-01   1.536568054e-01   8.709200000e-02
2.220070000e-01   1.609889873e-01   4.763440000e-01   3.010347893e-01
8.011160000e-01   9.853250000e-01   2.272067535e-01   1.855840000e-01
2.272067535e-01   1.855840000e-01   2.284800000e-01   2.791270737e-01
2.284800000e-01   2.747220000e-01   1.596970000e-01   2.747220000e-01


CENTERS:
-2.0987351275e-01 -4.6756138327e-01  -2.3764350473e-01 -2.3090023865e-01
-1.9427092315e-01 -2.8529363258e-02  -1.0729084633e-01 -3.3972386312e-01
-1.0832767729e-01 -1.1713927999e-01  -2.0855381669e-10 -4.3830129475e-01
-4.8362403187e-11 -2.2886886767e-01  -0.0000000000e+00 0.0000000000e+00
1.0729084609e-01 -3.3972386328e-01  1.0832767727e-01 -1.1713928004e-01
2.0987351226e-01 -4.6756138362e-01  2.3764350484e-01 -2.3090023891e-01
1.9427092317e-01 -2.8529363283e-02  -1.3732980809e-01 8.0704849035e-02
-7.7246244447e-02 1.2652041971e-01  -6.1356339253e-13 1.7510474476e-01
7.7246244447e-02 1.2652041971e-01  1.3732980809e-01 8.0704849034e-02
2.1019466332e-01 7.9427537547e-02  -2.1019466331e-01 7.9427537545e-02
2.3134674814e-01 3.2315496898e-01  -2.3134674814e-01 3.2315496897e-01
-1.1024890514e-12 2.5994157630e-01  -7.2598182891e-13 3.0786174202e-01
7.8117788388e-13 3.5576091111e-01  1.6154612370e-17 4.4119396406e-01
-8.2389460116e-02 5.5744613907e-01  8.2389460113e-02 5.5744613907e-01
-2.7865202955e-01 6.4220767313e-01  -4.3928649302e-01 5.0358955285e-01
-4.9107372901e-01 3.5294026837e-01  2.7865202954e-01 6.4220767314e-01
4.3928649302e-01 5.0358955286e-01  4.9107372900e-01 3.5294026838e-01
-4.7302457717e-01 2.1376212828e-01  -3.9150962490e-01 1.2170157758e-01
-2.9715769841e-01 6.2489895825e-02  4.7302457717e-01 2.1376212829e-01
3.9150962491e-01 1.2170157760e-01  2.9715769843e-01 6.2489895837e-02
3.4564449813e-01 -6.2231282685e-02  4.4679578565e-01 -1.9350406757e-01
4.0722259367e-01 -3.8188073600e-01  4.5539407450e-01 -6.7602841903e-02
5.3724095135e-01 -9.2464134510e-02  5.7207764744e-01 -1.7477243216e-01
5.8849780499e-01 -3.1069011581e-01  6.2969615849e-01 -1.0926485069e-01
6.5480063140e-01 -1.9438062934e-01  5.9469953361e-01 -4.3494238570e-02
6.8174352862e-01 -1.6596153026e-02  7.4399065772e-01 -1.2718959497e-01
7.6428319187e-01 -2.7796152191e-01  8.9165848204e-01 1.4061884702e-02
8.9331047247e-01 -1.7617217974e-01  -3.4564449807e-01 -6.2231282713e-02
-4.4679578415e-01 -1.9350406724e-01  -4.0722259400e-01 -3.8188073508e-01
-4.5539407440e-01 -6.7602842798e-02  -5.3724095092e-01 -9.2464136529e-02
-5.7207764139e-01 -1.7477243264e-01  -5.8849780493e-01 -3.1069011282e-01
-6.2969614686e-01 -1.0926486248e-01  -5.9469954125e-01 -4.3494250974e-02
-6.8174354135e-01 -1.6596189691e-02  -6.5480061320e-01 -1.9438062501e-01
-7.6428319164e-01 -2.7796149067e-01  -7.4399057113e-01 -1.2718961528e-01
-8.9330974160e-01 -1.7617204773e-01  -8.9165849960e-01 1.4061696216e-02
7.3815105874e-02 -5.9190094013e-01  1.9496568989e-01 -6.2627606800e-01
-7.3815106546e-02 -5.9190094001e-01  -1.9496569063e-01 -6.2627606770e-01
1.2427915813e-01 -7.0948407481e-01  -4.2867996173e-10 -7.1504567065e-01
-1.2427915899e-01 -7.0948407463e-01  7.6513395540e-02 -8.0232565378e-01
-4.9439237082e-10 -8.0646873075e-01  -7.6513396525e-02 -8.0232565368e-01

DISP_FLAGS:
Disp -w -c -cfc5 21 22
END
    </circlepacking>
    <circlepacking name="small.p">
NODECOUNT:  42
GEOMETRY: euclidean
ALPHA/BETA/GAMMA:  33 0 33
PACKNAME: NoName
FLOWERS:

1 6   33 3 31 41 2 9 33
2 7   1 41 42 26 29 15 9 1
3 8   33 14 32 17 39 11 31 1 33
4 4   21 27 37 32 21
5 6   11 20 10 40 41 31 11
6 5   14 22 19 34 35 14
7 4   34 19 25 8 23
8 4   25 16 23 7 25
9 6   22 33 1 2 15 19 22
10 4   5 20 28 40 5
11 5   3 39 20 5 31 3
12 2   38 17 32
13 6   15 29 18 24 16 25 15
14 9   33 22 6 35 30 27 21 32 3 33
15 6   2 29 13 25 19 9 2
16 4   23 8 25 13 24
17 5   3 32 12 38 39 3
18 2   24 13 29
19 7   9 15 25 7 34 6 22 9
20 4   28 10 5 11 39
21 4   14 27 4 32 14
22 5   33 9 19 6 14 33
23 2   7 8 16
24 2   16 13 18
25 6   15 13 16 8 7 19 15
26 2   29 2 42
27 6   14 30 36 37 4 21 14
28 2   40 10 20
29 4   18 13 15 2 26
30 3   36 27 14 35
31 5   1 3 11 5 41 1
32 6   12 17 3 14 21 4 37
33 5   9 22 14 3 1 9
34 3   35 6 19 7
35 3   30 14 6 34
36 2   37 27 30
37 3   32 4 27 36
38 2   39 17 12
39 4   20 11 3 17 38
40 3   41 5 10 28
41 5   42 2 1 31 5 40
42 2   26 2 41

RADII:
1.269777825e-01   1.514654758e-01   1.927175726e-01   2.883898081e-02
7.917504946e-02   9.403316431e-02   1.153573344e-01   3.391441793e-02
1.146241758e-01   2.879924034e-02   7.842080174e-02   9.506975205e-02
7.798948037e-02   1.960931174e-01   1.114384773e-01   9.230921132e-02
9.601857365e-02   5.173616635e-02   1.367533759e-01   9.868020845e-02
3.360552006e-02   8.401681494e-02   5.378748362e-02   4.166329786e-02
8.566250898e-02   1.031384586e-01   6.719410878e-02   3.981460408e-02
1.230332413e-01   1.187154659e-01   8.353760161e-02   1.926332572e-01
9.399241588e-02   1.412813151e-01   1.461377861e-01   6.154470600e-02
8.030275451e-02   9.603291226e-02   1.488960721e-01   8.571118483e-02
1.780914895e-01   7.994718395e-02

CENTERS:
1.7366925074e-01 -1.3662657105e-01  4.2097403918e-01 -8.6774026372e-03
-1.2136303512e-01 -2.5975686939e-01  -5.4736108062e-01 2.9143834864e-03
2.0047614561e-01 -4.9632749771e-01  -9.7740534062e-02 3.2956455165e-01
2.0283016376e-01 5.9352423022e-01  3.4851431597e-01 5.6099449269e-01
1.8033398291e-01 1.0488344446e-01  2.2035906076e-01 -6.0245533074e-01
4.4426996316e-02 -4.7430216418e-01  -5.2231287143e-01 -5.0139662846e-01
4.8773529349e-01 3.8308649734e-01  -2.7292331306e-01 9.8297923583e-02
3.5673585883e-01 2.4625777491e-01  4.7447608990e-01 5.5286823343e-01
-3.3812866073e-01 -4.5049550131e-01  6.1744853760e-01 3.8129269744e-01
1.3199455830e-01 3.5156942609e-01  9.9385502839e-02 -6.4265990938e-01
-4.8546887394e-01 1.1201146484e-02  -4.3785957323e-03 1.7795537125e-01
3.6314253730e-01 6.4746783353e-01  5.7529243789e-01 4.6463730238e-01
3.3512102829e-01 4.4216999482e-01  6.7541981707e-01 2.9530542837e-04
-5.3621053919e-01 9.8297923583e-02  2.3526850628e-01 -6.6942971450e-01
5.8822588447e-01 2.0898372377e-01  -5.2713662895e-01 2.8398592561e-01
1.4151773340e-01 -3.4467225564e-01  -5.0402049024e-01 -2.1427573005e-01
0.0000000000e+00 0.0000000000e+00  -5.1651598243e-02 5.6032138086e-01
-3.1188503642e-01 4.3830376974e-01  -6.5219629963e-01 1.5416370744e-01
-6.5609246588e-01 1.2369765596e-02  -3.8690625426e-01 -6.3624942350e-01
-1.4458847667e-01 -6.0058008033e-01  3.3443312010e-01 -5.9246801593e-01
4.0305514985e-01 -3.3774685852e-01  5.9316976377e-01 -1.6327511127e-01


END
    </circlepacking>
  </CPdata>
</CP_Scriptfile>

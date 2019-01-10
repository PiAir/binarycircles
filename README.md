#binarycircles
A program to draw binary circles in a square grid. 
If the first bit of a binary number is a 1 then a large black circle is drawn. 
If it is a 0, no circle is drawn. Then the second bit is checked, if that is a 1,
a bit smaller circle is drawn and so on till the center of a circle. For every number 
(eg 2ˆits numbers) a circle is drawn.

The result is exported to a SVG-file. This file can be opened in InkScape, cleaned
(the SVG exporter always put a square around the result; you want to get rid of that one),
put in the right document size (A4 or Letter), and plotted using an AxiDraw 
(by https://www.evilmadscientist.com). 

You have to use very fine pencils to see the seperate circles if you want to use more than 8 bits.

By Arjan van der Meij. http://www.plakkenenknippen.nl; twitter: @arjanvandermeij.

--
Pierre: Forked it to add multiple colors and re-share (but all credits to Arjan for the initial code). 
I want to test the result on a Silhouette Cameo 3 (haven't been able to test the result yet).
That should enable me to use 2 colors instead of just one.
Was fun excercise to figure out where to add the code to make a bit position always have the same color (blue / red in my case).

![Screenshot 2 color](https://raw.githubusercontent.com/PiAir/binarycircles/master/circle2color.png)


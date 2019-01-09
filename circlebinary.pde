/* 
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

*/

import processing.svg.*;               // library for SVG export

int bits=8;                            // amount of bits: only works for even numbers 
float amount=pow(2,bits);              // amount of possible number
int circlespace=2;                     // space between circles
float side= sqrt(amount);              // how many circles on one side
int linespace = 4;                     // distanve between lines in circle

void setup() {
  size(546, 546, SVG, "circle01.svg"); // if you want to make it fit: side*(bits*linespace+circlespace)+circlespace, SVG to save
                                       // it is not necessary to change this. If it doesn't fit, it still will open in InkScape.
                                       // You have to get rid of the square anyway, doesn't matter what size.
  noLoop();                            // do only once
}

void draw() {
  background(255);                     // white background
  for (int i = 0; i < amount; i++) {   
    circles(i);                        // draw amount of circles
  }
}
 
void circles(int number) {             //circle draw function
  String binair=binary(number, bits);  // mmake a string of the binary amount
  float xc=(number-floor(number/side)*side)*(linespace*bits+circlespace)+0.5*linespace*bits+circlespace; // x-coordinate of the circle's center
  float yc=floor(number/(side))*(linespace*bits+circlespace)+0.5*linespace*bits+circlespace;             // y-coordinate
  noFill();                            // draw circles but don't fill them
  stroke(0);                           // default = no line
  for (int i=0; i<bits; i++) {         // every bit
    char position = binair.charAt(i);  // check whether position i of the string holds a "0" or a "1"
    if (position=='1') {               // if it is a "1" is, draw a circle (and otherwise don't
     ellipse(xc,yc,bits*linespace-linespace*i, bits*linespace-linespace*i); // draw the circle
     } 
  }
}

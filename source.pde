/**
 * Il giardino di Bosch
 * 
 * (C) Copyright 2014 by Catodo, http://www.catodo.net
 */
PImage img;
int x,y;

void setup() {
  size(1280,720);
  background(0);
  img = loadImage("bosch.png");
  x = (int) random(img.width);
  y = (int) random(img.height);
  smooth();
}
void draw() {
  x = (int) random(img.width);
  y = (int) random(img.height);
  
  int loc = x + y*img.width;
  
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  
  noStroke();
  fill(r,g,b,random(100,255));
  int size = (int) random(10);
  polygon (x,y,size,3);
  
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

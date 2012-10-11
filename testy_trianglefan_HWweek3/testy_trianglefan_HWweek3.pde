import processing.opengl.*;
//TriContainer triContainer;
//PVector[][] verts;
//http://processing.org/reference/get_.html
PImage img;

// WORKING color mouseColor;

void setup() {
  img = loadImage("bambi.jpg");
//  img = loadImage("mondrian.jpg");  
//  img = loadImage("napolean.jpg");  
// img = loadImage("google.png");


  size(img.width, img.height, P3D);


  // WORKING MouseColor = color(0);
}

//dynamic, make is scale with width and height

void draw() {
  image(img, 0, 0);
  noLoop();
  
  //rotateX(radians(20));
  //rotateZ(radians(20));
  
int nCols = 30;
int nRows = 30;

  for (int i=0; i<nCols; i++) {
    for (int j=0; j<nRows; j++) {
      beginShape(TRIANGLE_STRIP);
      noFill();
//      noStroke();   
      stroke(255);
      int colWidth = img.width / nCols;
      int colHeight = img.height/ nRows;
      
      // A
      color a = get(img.width-j*colWidth, img.height-i*colHeight);
      fill(a);
     stroke(a);
//      vertex(j*40,i*40);
        vertex(img.width-j*colWidth,img.height-i*colHeight);
   
      // B
      color b = get(img.width-(j+1)*colWidth, img.height-i*colHeight);
      fill(b);

//      stroke(b);

//     vertex((j+1)*40, i*40);
       vertex(img.width-(j+1)*colWidth, img.height-i*colHeight);
  
  
   // C
      color c = get(img.width-(j+1)*colWidth, img.height-(i+1)*colHeight);
      fill(c);
//      stroke(c);
      vertex(img.width-(j+1)*colWidth, img.height-(i+1)*colHeight); 

  
      // D
      color d = get(img.width-j*colWidth, img.height-(i+1)*colHeight);
      fill(d);

//      stroke(d);

//    vertex(j*40, (i+1)*40);
      vertex(img.width-j*colWidth, img.height-(i+1)*colHeight);
  
      
     
//  if (x>=img.width-20){
//   color 
//  }
  
  
      // A
  //    vertex(j*40, i*40);
      color e = get(img.width-j*colWidth, img.height-i*colHeight);
      fill(e);
//     stroke(a);
//      vertex(j*40,i*40);
        vertex(img.width-j*colWidth,img.height-i*colHeight);
      
      endShape();
    }
  } 
}

  //pushStyle();
  //WORKING fill(mouseColor);
  //rect(0, 0, 40, 40);
  //popStyle();

  // draw a grid of vertices at even x-y increments
  // connect adjacent vertices into triangles
  // set the color for each triangle based on:
  // - the value of the pixel underneath one of the vertices
  // - the value of a pixel in the middle of the triangle
  // - the average of the pixels inside the triangle (

  /*  beginShape(TRIANGLE_STRIP);
   vertex(mouseX, mouseY);
   vertex(mouseX+20, mouseY+20);
   vertex(mouseX+40, mouseY+20);
   endShape();*/
  //}

  //WORKING void mousePressed() {
  //WORKING  mouseColor = get(mouseX, mouseY);
  //WORKING  println(red(mouseColor));
  //}

  /*
void mouseMoved(){
   saveFrame("wtf.jpg");
   loadImage("wtf.jpg");
   blend(img, 0, 0, 400, 400, 0, 0, 400, 400, OVERLAY);
   }*/

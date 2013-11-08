import processing.opengl.*;
import java.util.*;

Sphere mySphere;

void setup() {

  //code here is executed once, when the app initializes
  size(500,500,OPENGL);
  background(255,255,255);
  mySphere = new Sphere();  
  mySphere.init();
};

void draw() {
  //code here is executed once per frame
  background(255,255,255);
  mySphere.addSphereItem();
  mySphere.update();
  mySphere.render();
};

void mousePressed() {
  mySphere.addSphereItem();
};

void mouseDragged() {
  mySphere.addSphereItem();
};



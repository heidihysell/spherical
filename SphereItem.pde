class SphereItem {
  Sphere parentSphere; //Sphere object that holds this item
  
  //Spherical Coordinates
  float radius;
  float theta;
  float phi;
  color c;
  //Speed properties
  float thetaSpeed = 0;
  float phiSpeed = 0;
  //Size
  float itemSize = 5;
  
  public void SphereItem() {
    //Empty, for now
  };
  
  public void init() {  
    itemSize = random(5);
    thetaSpeed = random(-0.01, 0.01);
    phiSpeed = random(-0.01, 0.01);
  };
  
  public void update() {
    theta += thetaSpeed;
    phi += phiSpeed;
  };
  
  public void render() {
    //Get the radius from the parent Sphere
    float r = parentSphere.radius;
    //Convert spherical coordinates into Cartesian coordinates
    float x = cos(theta) * sin(phi) * r;
    float y = sin(theta) * sin(phi) * r;
    float z = cos(phi) * r;
    //Mark our 3d space
    pushMatrix();
    //Move to the position of this item
    translate(x,y,z);
    //Set the fill colour
    fill(c,150); //transparent black!
    noStroke();
    //Draw a circle
    ellipse(0,0,itemSize,itemSize);
    //Go back to our position in 3d space
    popMatrix();
  };
 };

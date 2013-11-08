class Sphere {
  float xPos = 250; //X Position of the Sphere
  float yPos = 250; //Y Position of the Sphere
  float zPos = 250; //Z Position of the Sphere
  float radius = 50; //Radius of the Sphere
  ArrayList items = new ArrayList(); //List of all of the items contained in the Sphere
 
  public void Sphere() { 
    //Empty, for now!
  };
  
  public void init() {
    //Empty, for now!
  };
  
  public void addSphereItem() {
//    addSphereItem(color(0,0,0));
      float r = random(0, 255);
      float g = random(0, 255);
      float b = random(0, 255);
      color c = color(r,g,b);
      addSphereItem(c);
  };
  
  public void addSphereItem(color c) {
    //Make a new SphereItem
    SphereItem si = new SphereItem();
    //Set the parent sphere
    si.parentSphere = this;
    //Set random values for the spherical coordinates
    si.theta = random(PI * 2);
    si.phi = random(PI * 2);
    si.c = c;
    //Add the new sphere item to the end of our ArrayList
    items.add(items.size(), si);
    si.init();
  };
  
  public void update() {
    for (int i = 0; i < items.size(); i ++) {
    SphereItem si = (SphereItem) items.get(i); // Cast the returned object to the SphereItem Class
    si.update();
    };
  };
  
  public void render() {
    //Move to the center point of the sphere
    translate(xPos, yPos, zPos);
    //Mark our position in 3d space
    pushMatrix();
    //Render each SphereItem
    for (int i = 0; i < items.size(); i ++) {
    SphereItem si = (SphereItem) items.get(i);
    si.render();
    };
    //Go back to our original position in 3d space
    popMatrix();
  };
 };

// initial grid size
int gridX = 8;
int gridY = 8;

// initialize 2D grid arrays
FloatList gX;
FloatList gY;

int numObj = 5; // initialize number of objects
boolean working = false; // initialize working state to false
int numSketch = 500; // set amount of sketches to generate
int prog = 0; // public progress variable
int sCount = 0; // public sketch counter

void setup() {
  size(900, 900);
  background(0);
  fill(255);
  gX = new FloatList();
  gY = new FloatList();
  //noLoop();
  //frameRate(4);
}

void draw() {
  background(0);
  // gridline stroke
  stroke(255, 0, 0);
  strokeWeight(1);
  // calculate space between rows and columns
  int spX = width / gridX;
  int spY = height / gridY;
  // preview if statement
  if (!working) {
    prog = 0;
    grid(spX, spY);
    helpText();
    //generate(gX, gY, numObj, spX, spY);
  } else if (working) {
    // check to reset sketch count if finished
    if (sCount > numSketch) {
      sCount = 0;
      working = false;
    }
    generate(gX, gY, numObj, spX, spY);
    saveFrame("output/sketch###.png");
    progress(numSketch, sCount);
    sCount++; //increase sketch count
  }
}

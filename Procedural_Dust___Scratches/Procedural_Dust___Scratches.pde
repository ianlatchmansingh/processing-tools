// set frame rate (between 12 - 24 is most convincing)
int fRate = 24;

// set amount of dust and scratches (looks convincing at single-digit values)
int minNum = 1;
int maxNum = 3;

// calculate reasonable hair length
int maxLength;

void setup() {
  size(1280, 720);
  background(0);
  fill(255);
  stroke(255);
  frameRate(fRate);
  // set realistic length of scratches dependent on width
  maxLength = width / 5;
}

void draw() {
  background(0);
  // get min and max for dust and scratches and assign to local random
  int rNum = int(random(minNum, maxNum));
  for (int i = 0; i < rNum; i++) {
    float roll = random(0, 1);
    if (roll < 0.9) {
      dust();
    } else {
      scratch();
    }
  }
  saveFrame("output/dust_scratches-######.png");
}

void dust() {
  // local random for cluster size
  int rNum = int(random(10, width));
  float origX = random(width);
  float origY = random(height);
  for (int i = 0; i < rNum; i++) {
    origX += random(-1, 1);
    origY += random(-1, 1);
    point(origX, origY);
  }
}

void scratch() {
  // pick random coord
  float rX1 = random(width);
  float rY1 = random(height);
  // pick random coords within range of first coords
  float rX2 = random(rX1 - maxLength, rX1 + maxLength);
  float rY2 = random(rY1 - maxLength, rY1 + maxLength);
  float rX3 = random(rX1 - maxLength, rX1 + maxLength);
  float rY3 = random(rY1 - maxLength, rY1 + maxLength);
  beginShape();
  noFill();
  curveVertex(width / 2, height / 2);
  curveVertex(rX1, rY1);
  curveVertex(rX2, rY2);
  curveVertex(rX3, rY3);
  endShape();
}

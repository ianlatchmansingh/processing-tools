// Generate Objects
void generate(FloatList X, FloatList Y, int obj, float dX, float dY) {
  for (int i = 0; i < obj; i++) {
    // pick random coords for start point
    int startX = int(random(X.size()));
    int startY = int(random(Y.size()));
    // copy arrays into new temporary arrays and remove start points to prevent identical vertices
    FloatList tempX, tempY;
    tempX = new FloatList();
    tempY = new FloatList();
    tempX = X.copy();
    tempY = Y.copy();
    tempX.remove(startX);
    tempY.remove(startY);
    // pick random coords for start point
    int endX = int(random(tempX.size()));
    int endY = int(random(tempY.size()));
    // roll dice for shape
    int roll = int(random(3));
    if (roll == 0) {
      // pick random angle at 15 degree intervals
      int rot = int(random(0, 7)) * 15;
      pushMatrix();
      rotate(radians(rot));
      noStroke();
      rectMode(CORNERS);
      rect(X.get(startX), Y.get(startY), tempX.get(endX), tempY.get(endY));
      popMatrix();
    } else if (roll == 1) {
      stroke(255);
      strokeWeight(4);
      line(X.get(startX), Y.get(startY), tempX.get(endX), tempY.get(endY));
    } else if (roll == 2) {
      noStroke();
      int rollDiam = int(random(1, X.size()));
      ellipseMode(CORNER);
      ellipse(X.get(startX), Y.get(startY), dX * rollDiam, dY * rollDiam);
    }
  }
}

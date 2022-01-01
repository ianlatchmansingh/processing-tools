void progress(int nSketches, int sketchCount) {
  float pWidth = map(sketchCount, 0, nSketches, 0, 100);
  pushMatrix();
  translate(width / 2, height / 2);
  rectMode(CENTER);
  fill(0);
  stroke(255);
  strokeWeight(1);
  rect(0, 0, 140, 80);
  translate(0, 10);
  fill(255);
  textAlign(RIGHT);
  text("Working...", 0, -20);
  stroke(255);
  strokeWeight(1);
  noFill();
  rect(0, 0, 100, 20); // stroke progress bar outline
  // progress bar
  rectMode(CORNER);
  fill(255);
  rect(-50, -10, pWidth, 20);
  popMatrix();
}

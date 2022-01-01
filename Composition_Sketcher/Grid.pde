void grid(float spaceX, float spaceY) {
// draw horizontal grid
  for (int i = 1; i < gridX; i++) {
    line(i * spaceX, 0, i * spaceX, height);
  }
  // draw vertical grid
  for (int i = 1; i < gridY; i++) {
    line(0, i * spaceY, width, i * spaceY);
  }
  // clear grid arrays
  gX.clear();
  gY.clear();
  // fill gX array
  for (int i = 0; i < gridX; i++) {
    gX.set(i, i * spaceX);
  }
  // fill gY array
  for (int i = 0; i < gridY; i++) {
    gY.set(i, i * spaceY);
  }
}

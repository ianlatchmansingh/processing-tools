void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP && gridX <= 64) {
      gridX++;
      gridY++;
    } else if (keyCode == DOWN && gridX > 4) {
      gridX--;
      gridY--;
    }
  }
  if (key == ENTER) {
    working = true;
  }
}

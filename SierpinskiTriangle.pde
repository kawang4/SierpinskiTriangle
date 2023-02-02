int n = 10;
int triangleColorOne = color(177, 156, 217);
int triangleColorTwo = color(241, 145, 155);
int triangleColorThree = color(135, 206, 235);
public void setup() {
  size(800, 800);
  background(255, 255, 255);
}
public void draw() {
  sierpinski(0, 800, 800);
  frameRate(5);
}

public void mousePressed() {
  n += (int)(Math.random()*50);
}

public void mouseMoved() {
  int x = (int)(Math.random()*256);
  int y = (int)(Math.random()*256);
  int z = (int)(Math.random()*256);
  triangleColorOne = color(x, y, z);
  triangleColorTwo = color(x - 100, y - 100, z - 100);
  triangleColorThree = color(x + 100, y + 100, z+ 100);
}
public void sierpinski(int x, int y, int len) {
  if (len <= n) {
    triangle(x, y, x+(len / 2), y- (len), x+ (len), y);
  }
  else {
    fill(triangleColorOne);
    sierpinski(x, y, len/2);
    fill(triangleColorTwo);
    sierpinski(x+(len/2), y, len/2);
    fill(triangleColorThree);
    sierpinski(x+(len/4), y-(len/2), len/2);
  }
}

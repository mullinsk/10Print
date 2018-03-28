float sz = 40;
float x = 0;
float y = 0;

void setup() {
  colorMode(HSB, 360, 100, 100, 1.0);
  size(600,600);
  background(360);
  strokeCap(PROJECT);
};

void draw() {
  strokeWeight(10);
  stroke(random(40,60), 70, 100, 1.0);
  if(random(1) < .2) {
    line(x, y, x+sz, y+sz);
  } else if (random(1) < .4) {
    line(x, y+sz/2, x+sz, y+sz/2);
  } else if (random(1) < .6) {
    line(x+sz/2, y, x+sz/2, y+sz);
  } else {
    line(x+sz, y, x, y+sz);
  }
  x += sz;
  if(x > width) {
    x = 0;
    y += sz;
  }
  if(y>height) {
    noLoop();
  }
}

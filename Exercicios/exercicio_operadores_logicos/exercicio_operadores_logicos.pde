void setup() {
  size(600, 200);
  noStroke();
  background(128);
}

void draw() {
  background(128);
  if ((mouseX>200)) {
    fill(50);
    rect(0, 0, 200, 200);
  } 
  if ((mouseX<200) || (mouseX>400)) {
    fill(50);
    rect(200, 0, 200, 200);
  } 
  if ((mouseX<400)) {
    fill(50);
    rect(400, 0, 200, 200);
  }
}

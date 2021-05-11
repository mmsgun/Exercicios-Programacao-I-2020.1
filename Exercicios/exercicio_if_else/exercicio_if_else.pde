void setup() {
  size(600, 300);
  colorMode(HSB, 360,100,100);
  background(0,0,0);
}
void draw() {
  if (mouseY>100 && mouseY<200 && mouseX>100 && mouseX<200) background(60,100,100);
  else background (0,0,0);
  if (mouseY>100 && mouseY<200 && mouseX>400 && mouseX<500) background(280,100,100);
  fill(60,100,100);
  rect(100, 100, 100, 100);
  fill(280,100,100);
  rect(400,100, 100,100);
}

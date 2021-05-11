void setup () {
  size(800, 600);
  noStroke();
  background(0);
  rectMode(CENTER);
  colorMode(HSB, width, 100, 100);
}
void draw () {
  desenho(width/2, height/2, mouseX);
}
void desenho (float i, float j, float l) {
  int k=mouseX;
  if (mouseX>360) { 
    k=k--;
  }
  background(0, 0, 100);
  fill(k, 20, 60);
  rect(i, j, (l/3)*3, (l/4)*3);
  fill(k-90, 20, 60);
  rect(i, j, (l/7)*6, (l/8)*4);
  fill(k-180, 20, 60);
  ellipse(i, j, l/3, l/3);

}

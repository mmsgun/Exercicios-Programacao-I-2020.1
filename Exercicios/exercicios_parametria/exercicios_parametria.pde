int x2, x4, y2, y4;
float matiz1, matiz2;
void setup() {
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  matiz1 = random(0, 360);
  matiz2 = matiz1+180;
  if (matiz2>360)
    matiz2 = matiz2-360;
}

void draw() {

  x2 = width/2; //metade da largura
  x4 = width/4; //um quarto da largura
  y2 = height/2; //metade da altura
  y4 = height/4; //um quarto da altura

  background(matiz1, 25, 95);
  fill(matiz2, 35, 75);
  circle(x2, y2, 2*x2);
  fill(matiz1, 25, 95);
  circle(0, 2*y2, 2*x2);
  circle(2*x2, 0, 2*x2);
}

void mousePressed() {
  matiz1 = random(0, 360);
  matiz2 = matiz1+180;
  if (matiz2>360)
    matiz2 = matiz2-360;
}

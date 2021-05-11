int [][] M = new int [10][10];
int []X = new int [20];
int []Y = new int [20];
int a, l, i, j, k = 0;
int x = 225;
int y = 225;
int z = 225;
int w = 225;
float timer = 0;
int contador = 0;
boolean fim = true;
void setup() {
  size(500, 550);
  fill(0);
  noStroke();
  for (a=0; a<width; a=a+50) {
    for (l=50; l<height; l=l+50) {
      fill(255);
      square(a, l, 50);
    }
  }
  for (i=0; i<20; i++) {
    k = (int) random(0, 10);
    j = (int) random(1, 11);
    fill(255, 10, 10);
    ellipse((k*50)+25, (j*50)+25, 25, 25);
    X[i]=(k*50)+25;
    Y[i]=(j*50)+25;
  }
}
void draw() {
  noStroke();
  frameRate(100);
  fill(255);
  rect(0, 0, 500, 50);
  fill(0);
  text("Score", 450, 20);
  text("Tempo", 10, 20, 100);
  fill(10, 10, 255);
  ellipse(x, y, 40, 40);
  fill(0);
  ellipse(z, w, 10, 10);
  text((int)timer, 10, 40, 100);
  if (fim) {
    timer=timer+0.01;
  }
  text(contador, 475, 40);
  if ((contador == 20) && (fim)) {
    text("Parabéns! Você conseguiu em " + (int)timer + " segundos.", 140, 240);
    fim=false;
  }
}
void keyPressed() {
  if (fim) {
    fill(255);
    ellipse(x, y, 45, 45);
    if (key == CODED) {
      if ((keyCode == UP) && ((y-50)>=50)) {
        y=y-50;
        w=y-10;
        z=x;
      }
      if ((keyCode == DOWN) && ((y+50)<=height)) {
        y=y+50;
        w=y+10;
        z=x;
      }
      if ((keyCode == LEFT) && ((x-50)>=0)) {
        x=x-50;
        z=x-10;
        w=y;
      }
      if ((keyCode == RIGHT) && ((x+50)<=width)) {
        x=x+50;
        z=x+10;
        w=y;
      }
    }
    for (int g=0; g<X.length; g++) {
      if ((X[g] == x) && (Y[g] == y)) {
        contador=contador+1;
        X[g]=-1;
        Y[g]=-1;
      }
    }
  }
}

int tam, x, y;
float matiz1, matiz2, matiz3;

void setup() {
  size(600, 600);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  ellipseMode(CORNER);
  tam = width/10;
  matiz1 = random(0, 360);
  matiz2 = matiz1+120;
  matiz3 = matiz2+120;
  if (matiz2>360)
    matiz2=matiz2-360;
  if (matiz3>360);
  matiz3=matiz3-360;
  background(matiz3, 25, 70);
}

void draw() {
  if (mousePressed && (mouseButton == LEFT)) {
    x = int(random(0, 10));
    y = int(random(0, 10));
    fill(matiz2, 25, 70);
    ellipse(x*tam, y*tam, tam, tam);
    rect(x*tam, y*tam, tam, tam/2);
    fill(matiz1, 25, 70);
    rect(x*tam, y*tam, tam, tam/4);
  }
}

//tentei fazer um comando extra em que se pressionado o botão direito do mouse
//(por isso especificado ali mouseButton == LEFT) as cores mudariam sem precisar
//recriar o padrão (com o botão esquerdo) mas não consegui.

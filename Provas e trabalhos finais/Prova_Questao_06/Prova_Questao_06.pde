colorMode(HSB, 360, 100, 100);
size(500, 500);
background(130, 30, 75);
noStroke();
for (int i=0; i<500; i=i+100) {
  for (int j=0; j<500; j=j+100) {
    if ((i%200==0 && j%200!=0) || (i%200!=0 && j%200==0)) {
      fill(50, 30, 75);
      quad(i, j+50, i+50, j, i+100, j+50, i+50, j+100);
      fill(180, 30, 75);
      square(i+25, j+25, 50);
    } else {
      fill(180, 30, 75);
      quad(i, j+50, i+50, j, i+100, j+50, i+50, j+100);
      fill(50, 30, 75);
      square(i+25, j+25, 50);
    }
  }
}

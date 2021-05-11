colorMode(HSB, 360, 100, 100);
size(500, 100);
background(130, 30, 75);
noStroke();
for (int i=0; i<500; i=i+100) {
  if (i%200==0) {
    fill(50, 30, 75);
    quad(i, 50, i+50, 0, i+100, 50, i+50, 100);
    fill(180, 30, 75);
    square(i+25, 25, 50);
  } else {
    fill(180, 30, 75);
    quad(i, 50, i+50, 0, i+100, 50, i+50, 100);
    fill(50, 30, 75);
    square(i+25, 25, 50);
  }
}

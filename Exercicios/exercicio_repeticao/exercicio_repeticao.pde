noStroke();
size(600, 300);
background(100);
for (int i=0; i<31; i++) {
  for (int j=0; j<31; j++) {
    if (i%2==0) {
      fill(110);
      triangle(i*30+30, j*30+30, i*30, j*30+30, i*30+30, j*30);      
    } else {
      fill(90);
      triangle(i*30, j*30, i*30, j*30+30, i*30+30, j*30);    
    }
  }
}

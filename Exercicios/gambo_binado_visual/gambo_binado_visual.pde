size(500, 500);
int [][] M = new int [10][11];
int a, l, i, j = 0;
for (a=0; a<500; a=a+50) {
  for (l=0; l<500; l=l+50) {
    fill(255);
    square(a, l, 50);
  }
}
for (i=0; i<M.length; i++) {
  for (j=0; j<M[0].length; j++) {
    M[i][j] = (int) random(0, 2);
    fill(255, 10, 10);
    text(M[i][j], (i*50)+25, (j*50)-25);
  } 
}

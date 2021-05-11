int [][] M = new int [10][11];
for (int i=0; i<M.length; i++) {
  for (int j=0; j<M[0].length; j++) {
    M[i][j] = (int) random(0, 2);
    int resultado = M[i][j];
    boolean a;
    if (resultado == 1) {
      a = true;
    } else {
      a = false;
    }
      println(resultado)
      if a = false
        println("Game over!") && break;
    }
  }

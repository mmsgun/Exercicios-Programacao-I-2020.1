int [][] M = new int[10][10];
int i;
int j;
int k = 0;
for (i=0; i<M.length; i++) {
  for (j=0; j<M[0].length; j++) {
    M[i][j]= (int) random(0, 2);
    print(" ", M[i][j]);
    if (j == 9) {
      println("  ");
    }
  }
}
while (k<1) {
  i = (int) random(0, 10);
  j = (int) random(0, 10);
  if (M[i][j] == 1) {
    println("Game over! A bomba estava na linha: ", i, ", coluna: ", j);
    k = 1;
  }
  if (M[i][j] == 0) {
    println(" Você acertou! Não há bombas aqui na linha: ", i, ", coluna: ", j);
    if (i!= 0) {
      if (j!= 0) {
        if (M[i-1][j-1] == 0) {
          println(" Ao redor, na linha: ", i-1, "e na coluna: ", j-1, " também não há bombas.");
        }
      }
      if (M[i-1][j] == 0) {
        println(" Ao redor, na linha: ", i-1, "e na coluna: ", j, " também não há bombas.");
      }
      if (j!= 9) {
        if (M[i-1][j+1] == 0) {
          println(" Ao redor, na linha: ", i-1, "e na coluna: ", j+1, " também não há bombas.");
        }
      }
    }
    if (j!= 0) {
      if (M[i][j-1] == 0) {
        println(" Ao redor, na linha ", i, "e na coluna: ", j-1, " também não há bombas.");
      }
    }
    if (j!= 9) {
      if (M[i][j+1] == 0) {
        println(" Ao redor, na linha ", i, "e na coluna: ", j+1, " também não há bombas.");
      }
    }
    if (i!= 9) {
      if (j!= 0) {
        if (M[i+1][j-1] == 0) {
          println(" Ao redor, na linha ", i+1, "e na coluna: ", j-1, " também não há bombas.");
        }
      }
      if (M[i+1][j] == 0) {
        println(" Ao redor, na linha ", i+1, "e na coluna: ", j, " também não há bombas.");
      }
      if (j!= 9) {
        if (M[i+1][j+1] == 0) {
          println(" Ao redor, na linha ", i+1, "e na coluna: ", j+1, " também não há bombas.");
        }
      }
    }
  }
}

int [][] M = new int [10][11];
for (int i=0; i<M.length; i++) {
  for (int j=0; j<M[0].length; j++) {
    M[i][j] = (int) random(0, 2);
    int contador_bombas = 0;
    int vizinho = 0;
    int resultado = M[i][j];
    int [] vizinhos = new int [8];
    vizinhos[1] = M[i][j-1];
    vizinhos[2] = M[i][j+1];
    vizinhos[3] = M[i-1][j];
    vizinhos[4] = M[i+1][j];
    vizinhos[5] = M[i-1][j-1];
    vizinhos[6] = M[i+1][j+1];
    vizinhos[7] = M[i+1][j-1];
    vizinhos[8] = M[i-1][j+1];
    if (resultado == 1) {
      println("Game over!");
      break;
    }
    for (vizinho = 0; vizinho<=8; vizinho++) {
      if (vizinhos[vizinho] == 1) {
        contador_bombas = vizinho+1;
      }
    }
    if (resultado == 0) {
      println("Você acertou!");
      println("Há", contador_bombas, "por perto!");
    }
  }
}

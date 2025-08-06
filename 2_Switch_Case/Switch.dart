import "dart:io";

// Usando Switch Case na prática

void main() {
  print("Digite o semáfaro: ");
  String? semafaro = stdin.readLineSync();

  switch (semafaro) {
    case "vermelho":
      print("Pare");
      break;
    case "amarelo":
      print("Atenção!");
      break;
    case "verde":
      print("Passa!");
      break;
  }
}

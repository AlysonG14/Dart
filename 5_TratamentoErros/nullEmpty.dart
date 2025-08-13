import 'dart:io';

void main() {
  print("Digite o seu nome, BORRACHUDO!");
  String? nome = stdin.readLineSync();

  while (nome == null || nome.trim().isEmpty) {
    //isEmpty -> Verifica se é vazio
    //null -> verifica se é null
    //trim -> ignora o espaço vazio
    print("Existem dados nulos, tente novamente!");
    nome = stdin.readLineSync();
  }

  

  print("OK, ${nome} BORRACHUDO");
}

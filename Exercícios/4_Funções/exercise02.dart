// 2- Maior de idade

import 'dart:io';

void main() {
  print("Digite a sua idade: ");
  int? idadeUsuario = int.parse(stdin.readLineSync()!);

  bool exibindoIdade = ehMaiorIdade(idadeUsuario);

  print("É maior de idade? ${exibindoIdade}");
}

bool ehMaiorIdade(int idade) {
  bool verificaMaior;

  if (idade >= 18) {
    verificaMaior = true;
  } else {
    verificaMaior = false;
  }

  return verificaMaior;
}

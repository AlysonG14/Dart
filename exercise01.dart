import "dart:io";

// Exercise 01

void main() {
  print("Digite a primeira nota: ");
  double? nota1 = double.parse(stdin.readLineSync()!);

  print("Digite a segunda nota: ");
  double? nota2 = double.parse(stdin.readLineSync()!);

  print("Digite a terceira nota: ");
  double? nota3 = double.parse(stdin.readLineSync()!);

  print("Digite a quarta nota: ");
  double? nota4 = double.parse(stdin.readLineSync()!);

  print("Digite a quinta nota: ");
  double? nota5 = double.parse(stdin.readLineSync()!);

  double? mediaNota = (nota1 + nota2 + nota3 + nota4 + nota5) / 5;
  print("A média total da nota do aluno é: ${mediaNota}");

  if (mediaNota >= 5) {
    print("Aprovado");
  } else if (mediaNota <= 4) {
    print("Reprovado");
  } else if (mediaNota > 4) {
    print("Recuperação");
  }
}

import 'dart:io';

void main() {
  // Esse método permite que adiciona o for quando eu sei quantas vezes deve repetir, vamos adicionar uma lista de frutas.

  List<String> frutas = [];

  for (int i = 0; i < 3; i++) {
    stdout.write("Digite a sua fruta favorita: ");
    String? fruta = stdin.readLineSync();
    frutas.add(fruta!);
  }

  print("Fruta: ${frutas.join(",")}");

  // Outro método
  // ForEach -> Serve para iterar uma lista do código.

  List<String> frutas2 = ["Maçã", "Banana", "Laranja"];

  for (String x in frutas2) {
    print(x);
  }

  //for each passa por cada dado da lista e exibe uma iteração para lista.
  frutas2.forEach((String x) => print(x));
}

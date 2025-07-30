import 'dart:io';

void main() {
  // ? -> Opcional.Indica que a variavel pode ser nulo
  String? entrada = stdin.readLineSync();
  // Precisa que a entrada tenha um valor para poder convertê-lo
  int? idade = int.parse(entrada!);

  if (idade > 18) {
    print("Você pode dirigir!");
  } else {
    print("Você não pode dirigir");
  }
}

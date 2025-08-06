import 'dart:io';

void main() {
  int number = 0;

  // do-while -> Vai testar antes da condição entrar em ação

  do {
    print("Hello");
  } while (number > 10);

  int contador = 0;

  // while -> Vai testar depois da condição ao entrar em ação

  while (contador < 10) {
    print("Contador: ${contador}");
    contador++;
  }

  // Mostrando na prática - Usando o While
  // print("Digite sua senha: ");
  // String? senha = stdin.readLineSync();
  //
  // while (senha != "1234") {
  //   print("Senha incorreta, por favor! Insere novamente");
  //   senha = stdin.readLineSync();
  // }

  print("Seu nome é BORRACHUDO");
  print("Seu endereço é Rua Paralelo");
  print("Sua casa é o número 500 MEU!");

  print("Menu Pagamento: ");
  print(
    "1- Pagar à vista (10% de desconto)\n2- Parcelar em 2x (sem juros)\n3- Parcelar em 3x (com 10% juros)",
  );
}

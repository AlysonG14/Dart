import "dart:io";

// Exercise 02
void main() {
  print("Digite o seu nome: ");
  String? nome = stdin.readLineSync();

  print("Digite o último salário do 1 mês: ");
  double? salario1 = double.parse(stdin.readLineSync()!);

  print("Digite o último salário do 2 mês: ");
  double? salario2 = double.parse(stdin.readLineSync()!);

  print("Digite o último salário 3 mês: ");
  double? salario3 = double.parse(stdin.readLineSync()!);

  double? calculeMedia = (salario1 + salario2 + salario3) / 3;

  // Fornecer Feedback e Fornecer se o salário é positivo ou negativo

  if (calculeMedia > 0) {
    print("${nome}, a sua última média salariado foi: ${calculeMedia}");
    if (calculeMedia > 7000) {
      print("Sua faixa salarial está ótimo, continue assim, não pare!");
    } else if (calculeMedia > 4000 && calculeMedia < 6000) {
      print("Sua faixa salaria está OK, mas, poderia melhorar um pouco!");
    } else if (calculeMedia < 4000) {
      print(
        "Sua faixa salarial está declinado, você precisa fazer uma coisa para melhorar essa situação",
      );
    }
  } else {
    print("Erro: Insira um valor válido!");
  }
}

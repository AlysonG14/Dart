// Desafio - Agência do Trânsito calcula a velocidade do veículo, caso sofra com infração, o motorista deve realizar o seguinte pagamento.

import "dart:io";

void main() {
  print("Qual é o seu nome? Motorista: ");
  String? nome_motorista = stdin.readLineSync();

  print("Qual é o seu salário atual? ${nome_motorista}");
  String? entrada = stdin.readLineSync();
  double? salario = double.parse(entrada!);

  print("${nome_motorista}, em qual velocidade você estava?");
  double? velocidade_atual = double.parse(stdin.readLineSync()!);
  String? multa;

  if (velocidade_atual <= 60)
    multa = "infracao 00";
  else if (velocidade_atual >= 61 && velocidade_atual <= 80)
    multa = "infracao 01";
  else if (velocidade_atual >= 81 && velocidade_atual <= 100)
    multa = "infracao 02";
  else if (velocidade_atual >= 100)
    multa = "infracao 03";

  switch (multa) {
    case "infracao 00":
      print("Sem Infração");
      break;
    case "infracao 01":
      print("Infração Leve");
      break;
    case "infracao 02":
      print("Infração Média");
      break;
    case "infracao 03":
      print("Infração Grave");
      break;
    default:
      print("Opção Inválido!");
  }

  // Opção de Pagamento, caso da multa!
  if (velocidade_atual > 60) {
    print("Responsável, inserir o pagamento da multa: ");
    String? entrada1 = stdin.readLineSync();
    double? pagamento = double.parse(entrada1!);

    print("Pagamento Atual: ${pagamento}");

    print("Menu Pagamento: ");
    print(
      "1- Pagar à vista (10% de desconto)\n2- Parcelar em 2x (sem juros)\n3- Parcelar em 3x (com 10% juros)",
    );
    String? entrada2 = stdin.readLineSync();
    double? opcoes = double.parse(entrada2!);

    // Inserindo 10% desconto
    double? desconto = pagamento * 0.10;
    double? valorDesconto = pagamento - desconto;

    // Inserindo 10% juros
    double? juros = pagamento * 0.10;
    double? valorJuros = pagamento + juros;

    switch (opcoes) {
      case 1:
        print("Você escolheu a opção 1- Pagar à vista (10% de desconto)");
        print("Pagamento com desconto: ${valorDesconto}");
        print("Seu salário atual: ${salario - valorDesconto}");
        break;
      case 2:
        print("Você escolheu a opção 2- Parcelar em 2x (sem juros)");
        print("Pagamento sem juros em até 2x: ${pagamento / 2} por parcela");
        print("Seu salário atual: ${salario - pagamento / 2}");
        break;
      case 3:
        print("Você escolheu a opção 3- Parcelar em 3x (com 10% juros)");
        print("Pagamento com juros em até 3x: ${valorJuros / 3} por parcela");
        print("Seu salário atual: ${salario - valorJuros / 3}");
        break;
      default:
        print("Opção Inválida!");
    }
  } else {
    print("${nome_motorista}, Você não teve nenhum infração! Parabéns!");
  }
}

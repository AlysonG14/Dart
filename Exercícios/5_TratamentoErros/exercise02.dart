// Exercise 02 - System of Payment

import 'dart:io';

void main() {
  dynamic escolheProduto;
  int? opcaoPagamento;
  double? descontoUsuario;
  double? jurosUsuario;
  double? parcela;
  double total;
  double valorCompra;

  List<Map<dynamic, dynamic>> cantinaEscolar = [
    {"nome": 'Hamburguer de Siri', "preco": null},
    {"nome": 'Pao de Queijo', "preco": null},
    {"nome": 'BIS Chocolate', "preco": null},
  ];

  List<dynamic> carrinhoParaGuardarPreco = [];

  print("Produto disponíveis:");

  cantinaEscolar.forEach((produto) => print(produto));

  while (true) {
    print("Escolhe o produto que você deseja? Digite S para sair");
    escolheProduto = stdin.readLineSync();
    if (escolheProduto == 'S'.toLowerCase() ||
        escolheProduto == 'S'.toUpperCase()) {
      print("Você saiu!");
      break;
    }

    switch (escolheProduto) {
      case 'Hamburguer de Siri':
        try {
          print("Qual valor você deseja informar?");
          valorCompra = double.parse(stdin.readLineSync()!);
          while (valorCompra.isNaN ||
              valorCompra.isNegative ||
              valorCompra == 0) {
            print(
              "O valor não pode ser nulo, igual a 0 e negativo. Tente novamente!",
            );
          }
          print("Valor ${valorCompra.toStringAsFixed(2)} adicionado ao Hamburguer de Siri");
          carrinhoParaGuardarPreco.add(valorCompra);
          cantinaEscolar[0]["preco"] = valorCompra;
        } on FormatException {
          try {
            print(
              "Erro, o valor não pode ser String, apenas número. Tente novamente, mais uma vez",
            );
            valorCompra = double.parse(stdin.readLineSync()!);
          } catch (err) {
            print("Ocorreu um erro inesperado! ${err}");
          }
        } catch (err) {
          print("Erro: ${err}");
        }

        break;
      case 'Pao de Queijo':
        try {
          print("Qual valor você deseja informar?");
          valorCompra = double.parse(stdin.readLineSync()!);
          while (valorCompra.isNaN ||
              valorCompra.isNegative ||
              valorCompra == 0) {
            print(
              "O valor não pode ser nulo, igual a 0 e negativo. Tente novamente!",
            );
            valorCompra = double.parse(stdin.readLineSync()!);
          }
          print("Valor ${valorCompra.toStringAsFixed(2)} adicionado ao Pão de Queijo");
          carrinhoParaGuardarPreco.add(valorCompra);
          cantinaEscolar[1]["preco"] = valorCompra;
        } on FormatException {
          try {
            print(
              "Erro, o valor não pode ser String, apenas número. Tente novamente, mais uma vez",
            );
            valorCompra = double.parse(stdin.readLineSync()!);
          } catch (err) {
            print("Ocorreu um erro inesperado! ${err}");
          }
        } catch (err) {
          print("Erro: ${err}");
        }

        break;
      case 'BIS Chocolate':
        try {
          print("Qual valor você deseja informar?");
          valorCompra = double.parse(stdin.readLineSync()!);
          while (valorCompra.isNaN ||
              valorCompra.isNegative ||
              valorCompra == 0) {
            print(
              "O valor não pode ser nulo, igual a 0 e negativo. Tente novamente!",
            );
            valorCompra = double.parse(stdin.readLineSync()!);
          }
          print("Valor ${valorCompra.toStringAsFixed(2)} adicionado ao BIS Chocolate");
          carrinhoParaGuardarPreco.add(valorCompra);
          cantinaEscolar[2]["preco"] = valorCompra;
        } on FormatException {
          try {
            print(
              "Erro, o valor não pode ser String, apenas número. Tente novamente, mais uma vez",
            );
            valorCompra = double.parse(stdin.readLineSync()!);
          } catch (err) {
            print("Ocorreu um erro inesperado! ${err}");
          }
        } catch (err) {
          print("Erro: ${err}");
        }
        break;
      default:
        {
          print("Opção Inválido! Escolhe corretamente os produtos.");
        }
    }
  }

  print("Preços guardados: ${carrinhoParaGuardarPreco}");

  print("Preco disponíveis:");

  print(cantinaEscolar);

  double subtotal = 0;

  for (double total in carrinhoParaGuardarPreco) {
    subtotal += total;
  }

  print("Subtotal: ${subtotal.toStringAsFixed(2)}");



  do {
    print("Opções de Pagamento: ");
    print('1- Dinheiro');
    print('2- Cartão de Débito');
    print('3- Cartão de Crédito');
    print('4- PIX');

    opcaoPagamento = int.parse(stdin.readLineSync()!);

    switch (opcaoPagamento) {
      case 1:
        print("Você escolheu a opção Dinheiro");
        print("Total: ${subtotal}");
        break;
      case 2:
        print("Você escolheu a opção Cartão de Débito");
        print("Digite o desconto: ");
        descontoUsuario = double.parse(stdin.readLineSync()!);
        total = calcularDesconto(subtotal, descontoUsuario);
        print("Total: ${total} com ${descontoUsuario.toStringAsFixed(0)}% desconto");
        break;
      case 3:
        print("Você escolheu a opção Cartão de Crédito");
        print("Digite o juros: ");
        jurosUsuario = double.parse(stdin.readLineSync()!);
        total = calcularJuros(subtotal, jurosUsuario);
        print("Total: ${total / parcela!} com ${jurosUsuario.toStringAsFixed(0)}% juros, parcelado ${parcela}");
        break;
      case 4:
        print("Você escolheu a opção PIX");
        print("Total: ${subtotal}");
        break;
      default:
        print("Opção inválida, digite apenas as opções 1,2,3 e 4");
    }
  } while (opcaoPagamento > 5 || opcaoPagamento < 1);
}

dynamic calcularDesconto(double preco, double percentual) {
  double calculo = preco * (percentual / 100);
  double aplicarDesconto = preco - calculo;
  return aplicarDesconto;
}

dynamic calcularJuros(double preco, double juros) {
  double calculo = preco * (juros / 100);
  double aplicarJuros = preco + calculo;
  return aplicarJuros;
}

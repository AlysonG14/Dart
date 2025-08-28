// Avaliação 01 - Pizzaria

import "dart:io";

void main() {
  String? nome;
  int? cpf;
  int? quantidade_desejada;
  int? opcao;
  int? parcela;
  double? total;
  double? jurosUsuario;
  double? descontoUsuario;
  double? pagamentoDinheiro;
  double exibindoDesconto;
  double exibindoJuros;

  print("Digite o seu nome: ");
  nome = stdin.readLineSync()!;
  while (nome == null || nome.trim().isEmpty) {
    print("O nome não pode ser nulo ou vazio. Tente novamente!");
    nome = stdin.readLineSync()!;
  }

  print("Nome: ${nome.trim()}");

  try {
    print("Digite o seu cpf: ");
    cpf = int.parse(stdin.readLineSync()!);
    while (cpf == 0) {
      print("CPF não pode ser igual a 0. Tente novamente!");
      cpf = int.parse(stdin.readLineSync()!);
    }
    print("CPF: ${cpf}");
  } catch (e) {
    print("Erro: O CPF não pode ser igual String");
  }

  List<String> saborPizzaria = [
    "Requeijao",
    "Mussarela",
    "Calabresa",
    "Chocolate",
  ];
  List<double> precoPizzaria = [39.99, 59.99, 69.99, 89.99];
  List<dynamic> quantidadePizzaria = [5, 8, 3, 2];
  List<dynamic> carrinhoUsuario = [];

  print("--------------------------------");
  print("Bem-vindo a PIZZARIA BRASILEIRA");
  print("--------------------------------");

  print("Sabores Disponíveis: ");

  List<Map<String, dynamic>> pizzaria = [
    {"nome": "Requeijao", "preco": 39.99, "quantidade": 5},
    {"nome": "Mussarela", "preco": 59.99, "quantidade": 8},
    {"nome": "Calabresa", "preco": 69.99, "quantidade": 3},
    {"nome": "Chocolate", "preco": 89.99, "quantidade": 2},
  ];

  for (dynamic sabor in pizzaria) {
    print(sabor);
  }

  while (true) {
    print("Qual sabor você deseja adicionar? Digite S para sair: ");
    dynamic escolheSabor = stdin.readLineSync()!;
    if (escolheSabor == 's'.toLowerCase() ||
        escolheSabor == 's'.toUpperCase()) {
      break;
    }
    try {
      switch (escolheSabor) {
        case "Requeijao":
          carrinhoUsuario.add(pizzaria[0]);
          print("Digite a quantidade que voce deseja");
          quantidade_desejada = int.parse(stdin.readLineSync()!);

          if (quantidade_desejada <= 5) {
            carrinhoUsuario[0]["quantidade"] -= quantidade_desejada;
          } else {
            print("Estoque insuficiente");
          }

          break;
        case "Mussarela":
          carrinhoUsuario.add(pizzaria[1]);
          print("Digite a quantidade que voce deseja");
          quantidade_desejada = int.parse(stdin.readLineSync()!);
          if (quantidade_desejada <= 8) {
            carrinhoUsuario[1]["quantidade"] -= quantidade_desejada;
          } else {
            print("Estoque insuficiente");
          }

          break;
        case "Calabresa":
          carrinhoUsuario.add(pizzaria[2]);
          print("Digite a quantidade que voce deseja");
          quantidade_desejada = int.parse(stdin.readLineSync()!);
          if (quantidade_desejada <= 3) {
            carrinhoUsuario[2]["quantidade"] -= quantidade_desejada;
          } else {
            print("Estoque insuficiente");
          }

          break;
        case "Chocolate":
          carrinhoUsuario.add(pizzaria[3]);
          print("Digite a quantidade que voce deseja");
          quantidade_desejada = int.parse(stdin.readLineSync()!);
          if (quantidade_desejada <= 2) {
            carrinhoUsuario[3]["quantidade"] -= quantidade_desejada;
          } else {
            print("Estoque insuficiente");
          }
          break;
        default:
          print("Sabor invalido!");
          break;
      }
    } catch (e) {
      print("Erro: Valor Inválido: Apenas valor valido é 0: 1");
    }
  }


  double subtotal = 0;
  
  // Calculando a subtotal da multiplicação

  for (int multiplicacao = 0; multiplicacao < carrinhoUsuario.length; multiplicacao++) {
    subtotal += carrinhoUsuario[multiplicacao]["quantidade"] * carrinhoUsuario[multiplicacao]["preco"];
  }
  
  

  print("Nome: ${nome.trim()}");
  print("CPF: ${cpf}");
  print("Carrinho: ${carrinhoUsuario}");
  print("Este é o seu valor subtotal: ${subtotal.toStringAsFixed(2)}");

  do {
    print("Opção de Pagamento:");
    print("1- Dinheiro");
    print("2- Cartão de Crédito");
    print("3- Cartão de Débito");
    print("4- PIX");

    print("Digite uma opção");
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        print("Você escolheu a opção: DINHEIRO");
        print("SubTotal: ${subtotal.toStringAsFixed(2)}");
        print("Quanto você quer pagar?");
        pagamentoDinheiro = double.parse(stdin.readLineSync()!);
        if(pagamentoDinheiro <= subtotal){
          print("Dinheiro insuficiente, tente novamente mais tarde!");
        } else {
          print("Você pagou: ${pagamentoDinheiro.toStringAsFixed(2)}");
          print("Total: ${subtotal.toStringAsFixed(2)}");
          print("Você tem o troco de: ${pagamentoDinheiro - subtotal}");
        }
        break;
      case 2:
        print("Você escolheu a opção: CARTÃO DE CRÉDITO");
        print("Subtotal: ${subtotal.toStringAsFixed(2)}");
        print("Digite o juros:");
        jurosUsuario = double.parse(stdin.readLineSync()!);
        exibindoJuros = calcularJuros(subtotal, jurosUsuario);
        print("Quantas parcelas você deseja adicionar?");
        parcela = int.parse(stdin.readLineSync()!);
        print("Você parcelou ${parcela}x");
        total = (exibindoJuros / parcela);
        print("Total de %${jurosUsuario.toStringAsFixed(2)} juros: ${total.toStringAsFixed(2)}");
        break;
      case 3:
        print("Você escolhe a opção: CARTÃO DE DÉBITO");
        print("SubTotal: ${subtotal.toStringAsFixed(2)}");
        print("Digite o desconto: ");
        descontoUsuario = double.parse(stdin.readLineSync()!);
        exibindoDesconto = calcularDesconto(subtotal, descontoUsuario);
        total = (exibindoDesconto);
        print("Total de %${descontoUsuario.toStringAsFixed(2)} desconto: ${total.toStringAsFixed(2)}");
        break;
      case 4:
        print("Você escolheu a opção: PIX");
        total = subtotal;
        print("Total: ${total.toStringAsFixed(2)}");
        break;
      default:
        print("Opcao invalida. Tente novamente!");
    }
    ;
  } while (opcao <= 0 || opcao >= 5);
  
}

// Cálculo de desconto

dynamic calcularDesconto(double preco, double desconto) {
  double calculo = preco * (desconto / 100);
  double aplicandoDesconto = preco - calculo;
  // Formata para 2 casas decimais
  return aplicandoDesconto;
}

// Cálculo de juros

dynamic calcularJuros(double preco, double juros) {
  double calculo = preco * (juros / 100);
  double aplicandoJuros = preco + calculo;
  // Formata para 2 casas decimais
  return aplicandoJuros;
}

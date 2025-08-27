// Avaliação 01 - Construir uma Mercenária

import "dart:io";

void main() {
  int? cpf;
  int? quantidade_desejada;
  int? troco;
  int? opcao;
  int? parcela;
  double total;
  double jurosUsuario;
  double descontoUsuario;

  print("Digite o seu nome: ");
  String? nome = stdin.readLineSync()!;
  while (nome == null || nome.isEmpty) {
    print("O nome não pode ser nulo ou vazio. Tente novamente!");
    nome = stdin.readLineSync()!;
  }

  print("Nome: ${nome.trim()}");

  try {
    print("Digite o seu cpf: ");
    cpf = int.parse(stdin.readLineSync()!);
    while (cpf == 0) {
      print("CPF não pode ser nulo ou igual a  0");
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
            carrinhoUsuario[0]["quantidade"] = quantidade_desejada;
          } else {
            print("Estoque insuficiente");
          }

          break;
        case "Mussarela":
          carrinhoUsuario.add(pizzaria[1]);
          print("Digite a quantidade que voce deseja");
          quantidade_desejada = int.parse(stdin.readLineSync()!);
          if (quantidade_desejada <= 8) {
            carrinhoUsuario[1]["quantidade"] = quantidade_desejada;
          } else {
            print("Estoque insuficiente");
          }

          break;
        case "Calabresa":
          carrinhoUsuario.add(pizzaria[2]);
          print("Digite a quantidade que voce deseja");
          quantidade_desejada = int.parse(stdin.readLineSync()!);
          if (quantidade_desejada <= 3) {
            carrinhoUsuario[2]["quantidade"] = quantidade_desejada;
          } else {
            print("Estoque insuficiente");
          }

          break;
        case "Chocolate":
          carrinhoUsuario.add(pizzaria[3]);
          print("Digite a quantidade que voce deseja");
          quantidade_desejada = int.parse(stdin.readLineSync()!);
          if (quantidade_desejada <= 2) {
            carrinhoUsuario[3]["quantidade"] = quantidade_desejada;
          } else {
            print("Estoque insuficiente");
          }
          break;
        default:
          print("Sabor invalido!");
          break;
      }
    } catch (e) {
      print("Erro: Valor Inválido: Apenas valor vlaido é 0: 1");
    }
  }

  double subtotal = 0;

  for (int i = 0; i < carrinhoUsuario.length; i++) {
    subtotal += carrinhoUsuario[i]["quantidade"] * carrinhoUsuario[i]["preco"];
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
        total = subtotal;
        break;
      case 2:
        print("Você escolheu a opção: CARTÃO DE CRÉDITO (com 10% juros)");
        print("Subtotal: ${subtotal.toStringAsFixed(2)}");
        print("Digite o desconto:");
        jurosUsuario = double.parse(stdin.readLineSync()!);
        double exibindoJuros = calcularJuros(subtotal, jurosUsuario);
        print("Quantas parcelas você deseja adicionar?");
        parcela = int.parse(stdin.readLineSync()!);
        print("Você parcelou ${parcela}x");
        total = (exibindoJuros / parcela);
        print("Total com juros: ${total.toStringAsFixed(2)}");
        break;
      case 3:
        print("Você escolhe a opção: CARTÃO DE DÉBITO (com 10% desconto)");
        print("SubTotal: ${subtotal.toStringAsFixed(2)}");
        print("Digite o desconto: ");
        descontoUsuario = double.parse(stdin.readLineSync()!);
        double exibindoDesconto = calcularDesconto(subtotal, descontoUsuario);
        total = (exibindoDesconto / subtotal);
        print("Total com desconto: ${total.toStringAsFixed(2)}");
        break;
      case 4:
        print("Você escolheu a opção: PIX");
        total = subtotal;
        print("Total: ${total.toStringAsFixed(2)}");
        break;
      default:
        print("Opcao invalida");
    }
    ;
  } while (opcao <= 1 || opcao >= 5);

  //   if (saborPizzaria[0] == escolheSabor ||
  //       saborPizzaria[1] == escolheSabor ||
  //       saborPizzaria[2] == escolheSabor ||
  //       saborPizzaria[3] == escolheSabor) {
  //     carrinhoUsuario.add(escolheSabor!);
  //     print("Produto adicionado ao carrinho!");
  //     print("Carrinho adicionado: ${carrinhoUsuario}");
  //     if (quantidadePizzaria[0] == escolheSabor) {
  //       quantidadePizzaria[0] - escolheSabor;
  //     }
  //   } else {
  //     print("Produto não encontrado");
  //   }
  // }
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

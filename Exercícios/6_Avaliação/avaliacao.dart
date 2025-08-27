// Avaliação 01 - Construir uma Mercenária

import "dart:io";

void main() {
  print("--------------------------------");
  print("Bem-vindo a PIZZARIA BRASILEIRA");
  print("--------------------------------");

  List<String> saborPizzaria = [
    "Requeijão",
    "Mussarela",
    "Calabresa",
    "Chocolate",
  ];
  List<double> precoPizzaria = [39.99, 59.99, 69.99, 89.99];
  List<int> quantidadePizzaria = [5, 8, 3, 2];
  List<dynamic> carrinhoUsuario = [];

  print("Sabores Disponíveis: ");

  List<Map<String, dynamic>> pizzaria = [
    {"sabor": "Requeijão", "preco": 39.99},
    {"sabor": "Mussarela", "preco": 59.99},
    {"sabor": "Calabresa", "preco": 69.99},
    {"sabor": "Chocolate", "preco": 89.99},
  ];

  for (dynamic sabor in pizzaria) {
    print(sabor);
  }

  print("Qual sabor você deseja adicionar?");
  String? escolheSabor = stdin.readLineSync();

  while (pizzaria[0] == quantidadePizzaria[0] ||
      pizzaria[1] == quantidadePizzaria[1] ||
      pizzaria[2] == quantidadePizzaria[2] ||
      pizzaria[3] == quantidadePizzaria[3]) {}
  carrinhoUsuario.add(escolheSabor);
  {
    print("Produto não existe, tente novamente: ");
    escolheSabor = stdin.readLineSync();
  }

  print("Opção de Pagamento:");
  print("1- Dinheiro");
  print("2- Cartão de Crédito");
  print("3- Cartão de Débito");
  print("4- PIX");
}


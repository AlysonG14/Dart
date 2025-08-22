// Avaliação 01 - Construir uma Mercenária

import "dart:io";

void main() {
  try {
    print("Informe o seu nome: ");
    String? nome = stdin.readLineSync()!;
    while (nome == null || nome == nome.isEmpty) {
      print("O nome não pode ser nulo e vazio, tente novamente: ");
      nome = stdin.readLineSync()!;
    }
    print("Nome: ${nome.trim()}");
  } catch (e) {
    print("Mensagem de Erro: A string ");
  }

  try {
    print("Informe o seu CPF: ");
    String? entrada = stdin.readLineSync()!;
    int? CPF = int.parse(entrada);
    while (CPF == null || CPF.isNaN || CPF == 0) {
      print(
        "O CPF não pode ser 0, nem negativo, nem nulo e nem vazio, tente novamente: ",
      );
      entrada = stdin.readLineSync()!;
    }
    print("CPF: ${CPF}");
  } catch (e) {
    print("Erro: O int não pode ser convertido em String");
  }

  List<String> saborPizzaria = [
    "Requeijao",
    "Peperonni",
    "Mussarela",
    "Chocolate",
  ];
  List<double> preco = [20.00, 50.00, 46.99, 89.99];
  dynamic quantidade = [5, 6, 8, 10];
  List<String> carrinhoUsuario = [];
  Map<String, dynamic> quantidadeSabor = Map.fromIterables(
    saborPizzaria,
    quantidade,
  );

  int contador = 0;

  print("Sabores disponíveis: ");
  for (String? sabor in saborPizzaria) {
    print("${contador += 1}- ${sabor}");
  }

  print("Quantidade de Sabores: ");
  print(quantidadeSabor);

  while (true) {
    print("Qual sabor você deseja? Escolhe a opção (Digite 'S' para sair) ");
    String? usuarioEscolheSabor = stdin.readLineSync()!;
    if (usuarioEscolheSabor == "s".toLowerCase() ||
        usuarioEscolheSabor == "s".toUpperCase()) {
      break;
    }
    if (saborPizzaria[0] == usuarioEscolheSabor ||
        saborPizzaria[1] == usuarioEscolheSabor ||
        saborPizzaria[2] == usuarioEscolheSabor ||
        saborPizzaria[3] == usuarioEscolheSabor) {
      {
        print("Qual quantidade você deseja adicionar? ");
        dynamic quantidadeUsuario = int.parse(stdin.readLineSync()!);
        quantidadeUsuario -= quantidade[0];
        print("Produto adicionado!");
        print("Quantidade restante: ${quantidade}");
        if (quantidade == 0) {
          print("Estoque insuficiente, tente outro sabor!");
          break;
        }
      }
      carrinhoUsuario.add(usuarioEscolheSabor!);
    } else {
      print("Produto não Existe");
    }
  }

  print("Carrinho: ${carrinhoUsuario}");
}

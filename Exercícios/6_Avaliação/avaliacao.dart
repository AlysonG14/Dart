// Avaliação 01 - Construir uma Mercenária

import "dart:io";

void main() {
  print("Informe o seu nome: ");
  String? nome = stdin.readLineSync()!;
  while (nome == null || nome == nome.isEmpty) {
    print("O nome não pode ser nulo e vazio, tente novamente: ");
    nome = stdin.readLineSync()!;
  }
  print("Nome: ${nome.trim()}");

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

  print(
    "Escolhe a forma de pagamento \n1- Dinheiro \n2- Débito \n3- Crédito \n4- pix",
  );

  bool pagamentoValido = false;

  dynamic contadorSoma = 0;

  double? desconto = contadorSoma * 0.10;
  double? valorDesconto = contadorSoma - desconto;

  double? juros = contadorSoma * 0.10;
  double? valorJuros = contadorSoma + juros;

  while (!pagamentoValido) {
    String escolhePagamento = stdin.readLineSync()!;

    switch (escolhePagamento) {
      case "1":
        print("Você escolheu a opção: 1- Dinheiro");
        print("Compra realizada!");
        print("Você pagou: ${contadorSoma}");
        pagamentoValido = true;
        break;
      case "2":
        print("Você escolheu a opção: 2- Débito");
        print("Compra realizada!");
        print("Você pagou: ${contadorSoma}");
        pagamentoValido = true;
        break;
      case "3":
        print("Você escolheu a opção: 3- Crédito (com 10% juros em 2x)");
        print("Compra realizada!");
        print("Você pagou: ${valorJuros!.toStringAsFixed(2)}");
        print("No próximo mês, você vai pagar ${valorJuros / 2}");
        pagamentoValido = true;
        break;
      case "4":
        print("Você escolheu a opção: 4- PIX (com desconto de 10%)");
        print("Compra realizada!");
        print("Você pagou: ${valorDesconto!.toStringAsFixed(2)}");
        pagamentoValido = true;
        break;
      default:
        print("Opção Inválida, escolhe a opção 1, 2, 3, 4");
    }
  }
  print("nome: ${nome}");
  //print("CPF: ${CPF}");
  print("Carrinho: ${carrinhoUsuario}");
}

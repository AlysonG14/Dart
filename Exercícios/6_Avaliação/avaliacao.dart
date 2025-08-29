// Avaliação 01 - Pizzaria

import "dart:io";

/* Esse será a nossa pizzaria */
void main() {

  /* Criando as variáveis para passar como nulos e usar eles durante o código */

  String? nome;
  int? cpf;
  int? quantidade_desejada;
  int? opcao;
  int? parcela;
  double? total;
  double? jurosUsuario;
  double? descontoUsuario;
  double? pagamentoDinheiro;
  double? troco;
  double exibindoDesconto;
  double exibindoJuros;

  /* Transformando o nome, caso se for nulo ou vazio, ele se repetirá até digitar o nome correto */

  print("Digite o seu nome: ");
  nome = stdin.readLineSync()!;
  while (nome == null || nome.trim().isEmpty) {
    print("O nome não pode ser nulo ou vazio. Tente novamente!");
    nome = stdin.readLineSync()!;
  }

  print("Nome: ${nome.trim()}");

  /* Transformando a variável cpf, caso se igual a 0, ele se repetirá até digitar o cpf correto. */

  /* Usando o Try catch, caso o usuário digitar como uma String, vai gerar um erro. */

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
  
  /* Exibindo a lista de Sabor Pizza */

  List<String> saborPizzaria = [
    "Requeijao",
    "Mussarela",
    "Calabresa",
    "Chocolate",
  ];
  List<double> precoPizzaria = [39.99, 59.99, 69.99, 89.99]; /* Exibindo a lista preco de Pizza */
  List<dynamic> quantidadePizzaria = [5, 8, 3, 2]; /* Exibindo a lista de quantidade para Pizza */
  List<dynamic> carrinhoUsuario = []; /* Exibindo a lista de carriho para o usuário comprar e armazenar a Pizza */

  print("--------------------------------");
  print("Bem-vindo a PIZZARIA BRASILEIRA");
  print("--------------------------------");
  
  /* Exibindo todos os sabores, com preco e a quantidade */

  print("Sabores Disponíveis: ");

  List<Map<String, dynamic>> pizzaria = [
    {"nome": "Requeijao", "preco": 39.99, "quantidade": 5},
    {"nome": "Mussarela", "preco": 59.99, "quantidade": 8},
    {"nome": "Calabresa", "preco": 69.99, "quantidade": 3},
    {"nome": "Chocolate", "preco": 89.99, "quantidade": 2},
  ];
  
  /* Imprimindo a lista usando o for in */

  for (dynamic sabor in pizzaria) {
    print(sabor);
  }
  
  /* Uso do while para quando o usuário escolher o sabor, caso se ele não quiser, ele pode sair digitando a letra 'S'   */

  while (true) {
    print("Qual sabor você deseja adicionar? Digite S para sair: ");
    dynamic escolheSabor = stdin.readLineSync()!;
    if (escolheSabor == 's'.toLowerCase() ||
        escolheSabor == 's'.toUpperCase()) {
      break;
    }
    
    /* Usando o switch case para qual sabor que o cliente irá escolher */
    
    /* O usuário digite a quantidade do sabor, quanto ele vai pegar de acordo com o Armazenamento do Estoque */
    
    /* Se a quantidade for menor que o cliente irá escolher, o carrinho do cliente será adicionado e ficará armazenado, caso contrário, o estoque é insuficiente */
    
    try {
      switch (escolheSabor) {
        case "Requeijao":
          carrinhoUsuario.add(pizzaria[0]);
          print("Digite a quantidade que voce deseja: ");
          quantidade_desejada = int.parse(stdin.readLineSync()!);

          if (quantidade_desejada <= 5) {
            carrinhoUsuario[0]["quantidade"] = quantidade_desejada;
          } else {
            print("Estoque insuficiente");
          }

          break;
        case "Mussarela":
          carrinhoUsuario.add(pizzaria[1]);
          print("Digite a quantidade que voce deseja: ");
          quantidade_desejada = int.parse(stdin.readLineSync()!);
          if (quantidade_desejada <= 8) {
            carrinhoUsuario[1]["quantidade"] = quantidade_desejada;
          } else {
            print("Estoque insuficiente");
          }

          break;
        case "Calabresa":
          carrinhoUsuario.add(pizzaria[2]);
          print("Digite a quantidade que voce deseja: ");
          quantidade_desejada = int.parse(stdin.readLineSync()!);
          if (quantidade_desejada <= 3) {
            carrinhoUsuario[2]["quantidade"] = quantidade_desejada;
          } else {
            print("Estoque insuficiente");
          }

          break;
        case "Chocolate":
          carrinhoUsuario.add(pizzaria[3]);
          print("Digite a quantidade que voce deseja: ");
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
      print("Erro: Valor Inválido: Apenas valor valido é 0: 1");
    }
  }


  double subtotal = 0;
  
  // Calculando a subtotal da multiplicação

  for (int multiplicacao = 0; multiplicacao < carrinhoUsuario.length; multiplicacao++) {
    subtotal += carrinhoUsuario[multiplicacao]["quantidade"] * carrinhoUsuario[multiplicacao]["preco"];
  }
  
  /* Informações do Cliente: nome, cpf, carrinho e o subtotal */

  print("Nome: ${nome.trim()}");
  print("CPF: ${cpf}");
  print("Carrinho: ${carrinhoUsuario}");
  print("Este é o seu valor subtotal: ${subtotal.toStringAsFixed(2)}");
  
  /* Cliente escolhe as opcões de pagamento */

  do {
    print("Opção de Pagamento:");
    print("1- Dinheiro");
    print("2- Cartão de Crédito");
    print("3- Cartão de Débito");
    print("4- PIX");

    print("Digite uma opção");
    opcao = int.parse(stdin.readLineSync()!);
    
    /* Case se for DINHEIRO (COM TROCO) */

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
          troco = pagamentoDinheiro - subtotal;
          print("Você tem o troco de: ${troco.toStringAsFixed(2)}");
        }
        break;
        
    /* Case se for CARTÃO DE CRÉDITO (COM JUROS DEPENDENDO DA COMPRA) */
        
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
        
        /* Case se for CARTÃO DE DÉBITO (COM DESCONTO DEPENDENDO DA COMPRA) */
        
      case 3:
        print("Você escolhe a opção: CARTÃO DE DÉBITO");
        print("SubTotal: ${subtotal.toStringAsFixed(2)}");
        print("Digite o desconto: ");
        descontoUsuario = double.parse(stdin.readLineSync()!);
        exibindoDesconto = calcularDesconto(subtotal, descontoUsuario);
        total = (exibindoDesconto);
        print("Total de %${descontoUsuario.toStringAsFixed(2)} desconto: ${total.toStringAsFixed(2)}");
        break;
        
        /* Case se for PIX (NORMAL) */
        
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

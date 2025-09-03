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
  double? salario;
  double? troco;
  double? salarioAtual;
  double exibindoDesconto;
  double exibindoJuros;

  /* Transformando o nome, caso se for nulo ou vazio, ele se repetirá até digitar o nome correto */
  do{
  try{
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
    while (cpf! == 0 || cpf.isNegative) {
      print("CPF não pode ser igual a 0 ou negativo. Tente novamente!");
      cpf = int.parse(stdin.readLineSync()!);
    }
  } catch (e) {
      try{
    do{
    print("Erro: O CPF não pode ser igual String, digite mais 1 vez!");
    cpf = int.parse(stdin.readLineSync()!);
    } while(cpf.isNaN || cpf == '');
    } catch(e){
      print("Erro: O CPF não pode ser igual String.");
    }
  } finally {
    print("CPF: ${cpf}");
  }

  /* Transformando o salário, caso se igual a 0, ele se repetirá até digitar o salário correto. */

  /* Usando o try catch para caso o usuário digitar o salário em string */

  try {
    print("Digite o seu salário");
    salario = double.parse(stdin.readLineSync()!);
    while (salario! == 0 || salario.isNegative) {
      print("O salário não pode ser igual a 0 ou negativo, tente novamente!");
      salario = double.parse(stdin.readLineSync()!);
    }
  } catch (e) {
      try{
    do{
    print("Erro: O Salário não pode ser igual String. Digite mais 1 vez corretamente!");
    salario = double.parse(stdin.readLineSync()!);
    } while(salario.isNaN || salario == '');
      } catch(e){
      print("Erro: O Salário não pode ser igual String");
    }
  } finally {
    print("Salário: ${salario}");
  }

  /* Caso o cliente estiver salário nulo ou cpf nulo */

  if(salario == null || cpf == null){
    print("Você não pode ter salário nulo ou cpf nulo, é apenas número!! volte mais tarde! tente novamente do começo");
  }

  } catch(e){
  print("Erro: ${e}");
  }
  } while(salario == null || cpf == null);

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

      switch (escolheSabor) {
        case "Requeijao":
        try{
          carrinhoUsuario.add(pizzaria[0]);
          print("Digite a quantidade que voce deseja: ");
          quantidade_desejada = int.parse(stdin.readLineSync()!);
          while(quantidade_desejada! > 5){
            print("Estoque insuficiente! Tente novamente.");
            quantidade_desejada = int.parse(stdin.readLineSync()!);
          };
          if (quantidade_desejada <= 5 && quantidade_desejada >= 1) {
            print("Produto adicionado ao carrinho!");

            /* Lógica para pegar a quantidade correta */

            for (int pegarQuantidade = 0; pegarQuantidade < carrinhoUsuario.length ; pegarQuantidade++) {
              if(carrinhoUsuario[pegarQuantidade]["nome"] == "Requeijao"){
                     carrinhoUsuario[pegarQuantidade]["quantidade"] = quantidade_desejada;
              }
            }
            carrinhoUsuario[0]["quantidade"] = quantidade_desejada;
          } else {
            print("Você não escolheu a quantidade do produto, tente novamente! mais tarde.");
            carrinhoUsuario.removeAt(0);
            break;
          }
        } catch(e){
          print("Erro: ${e}");
        }

        break;
        case "Mussarela":
        try{
          carrinhoUsuario.add(pizzaria[1]);
          print("Digite a quantidade que voce deseja: ");
          quantidade_desejada = int.parse(stdin.readLineSync()!);
          while(quantidade_desejada! > 8){
            print("Estoque insuficiente! tente novamente!");
            quantidade_desejada = int.parse(stdin.readLineSync()!);
            };
          if (quantidade_desejada <= 8 && quantidade_desejada >= 1) {
            print("Produto adicionado ao carrinho!");
          
            /* Lógica para pegar a quantidade correta */

            for (int pegarQuantidade = 0; pegarQuantidade < carrinhoUsuario.length ; pegarQuantidade++) {
              if(carrinhoUsuario[pegarQuantidade]["nome"] == "Mussarela"){
                     carrinhoUsuario[pegarQuantidade]["quantidade"] = quantidade_desejada;
              }
            }

          } else {
            print("Você não escolheu a quantidade do produto, tente novamente! mais tarde.");
            carrinhoUsuario.removeAt(0);
            break;
          }

        }catch(e){
          print("Erro: {$e}");
        }
          

          break;
        case "Calabresa":
        try{
          carrinhoUsuario.add(pizzaria[2]);
          print("Digite a quantidade que voce deseja: ");
          quantidade_desejada = int.parse(stdin.readLineSync()!);
          while(quantidade_desejada! > 3){
            print("Estoque insuficiente, tente novamente!");
            quantidade_desejada = int.parse(stdin.readLineSync()!);
          };
          if (quantidade_desejada <= 3 && quantidade_desejada >= 1) {
            print("Produto adicionado ao carrinho!");

            /* Lógica para pegar a quantidade correta */

            for (int pegarQuantidade = 0; pegarQuantidade < carrinhoUsuario.length ; pegarQuantidade++) {
              if(carrinhoUsuario[pegarQuantidade]["nome"] == "Calabresa"){
                     carrinhoUsuario[pegarQuantidade]["quantidade"] = quantidade_desejada;
              }
            }

            carrinhoUsuario[2]["quantidade"] = quantidade_desejada;
          } else {
            print("Você não escolheu a quantidade do produto, tente novamente! mais tarde.!");
            carrinhoUsuario.removeAt(0);
            break;
          }
        } catch(e){
          print("Erro: ${e}");
        }

          break;
        case "Chocolate":
        try{
          carrinhoUsuario.add(pizzaria[3]);
          print("Digite a quantidade que voce deseja: ");
          quantidade_desejada = int.parse(stdin.readLineSync()!);
          while(quantidade_desejada! > 2){
            print("Estoque insuficiente, tente novamente!");
            quantidade_desejada = int.parse(stdin.readLineSync()!);
          }
          if (quantidade_desejada <= 2 && quantidade_desejada >= 1) {
            print("Produto adicionado ao carrinho!");

            /* Lógica para pegar a quantidade correta */

            for (int pegarQuantidade = 0; pegarQuantidade < carrinhoUsuario.length ; pegarQuantidade++) {
              if(carrinhoUsuario[pegarQuantidade]["nome"] == "Chocolate"){
                     carrinhoUsuario[pegarQuantidade]["quantidade"] = quantidade_desejada;
              }
            }

            carrinhoUsuario[3]["quantidade"] = quantidade_desejada;
          } else {
            print("Você não escolheu a quantidade do produto, tente novamente! mais tarde.");
            carrinhoUsuario.removeAt(0);
            break;
          }
        }catch(e){
          print('Erro: ${e}');
        }
          break;
        default:
          print("Sabor invalido!");
          break;
      }
  }

  double subtotal = 0;

  // Calculando a subtotal da multiplicação

  for (int multiplicacao = 0;multiplicacao < carrinhoUsuario.length;multiplicacao++) {
      subtotal +=carrinhoUsuario[multiplicacao]["quantidade"] * carrinhoUsuario[multiplicacao]["preco"];
  }

  /* Informações do Cliente: nome, cpf, carrinho e o subtotal */

  print("Nome: ${nome!.trim()}");
  print("CPF: ${cpf}");
  print("Salário: ${salario.toStringAsFixed(2)}");
  print("Carrinho: ${carrinhoUsuario}");
  print("Este é o seu valor subtotal: ${subtotal.toStringAsFixed(2)}");

  /* Cliente escolhe as opcões de pagamento */

  /* Caso o cliente não adicionar nada */

  if(subtotal < 1){
    print("Você adicionou NADA, volte mais tarde!");
  } else {

  try{
   do {
    print("Opção de Pagamento:");
    print("1- Dinheiro");
    print("2- Cartão de Crédito");
    print("3- Cartão de Débito");
    print("4- PIX");

    print("Digite uma opção: ");
    opcao = int.parse(stdin.readLineSync()!);

    /* Case se for DINHEIRO (COM TROCO) */

    switch (opcao) {
      case 1:
        if (salario <= subtotal) {
          print("Você não tem salário suficiente para realizar o pagamento, por favor! volte mais tarde!",);
        } else {
          print("Você escolheu a opção: DINHEIRO");
          print("SubTotal: ${subtotal.toStringAsFixed(2)}");
          print("Quanto você quer pagar?");
          pagamentoDinheiro = double.parse(stdin.readLineSync()!);
          
          /* Caso o cliente for colocar o montante do valor maior que o salário, que isso não existe */

          while (pagamentoDinheiro! >= salario){
            print("Você não pode paga em um valor que é mais alto do que seu salário, isso não existe. Tente novamente!");
            pagamentoDinheiro = double.parse(stdin.readLineSync()!);
          }

          /* Caso o cliente for colocar o montante dinheiro menor do que o preço de subtotal */

          while (pagamentoDinheiro! <= subtotal) {
            print("Dinheiro insuficiente, tente novamente!");
            pagamentoDinheiro = double.parse(stdin.readLineSync()!);
          } 

            print("Você pagou: ${pagamentoDinheiro.toStringAsFixed(2)}");
            print("Total: ${subtotal.toStringAsFixed(2)}");
            troco = pagamentoDinheiro - subtotal;
            print("Você tem o troco de: ${troco.toStringAsFixed(2)}");
            salarioAtual = (salario - subtotal);
            print("Seu salário atual: ${salarioAtual.toStringAsFixed(2)}");
          
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
          print("${jurosUsuario.toStringAsFixed(0)}% de juros adicionado, total: ${total.toStringAsFixed(2)}",);
          salarioAtual = (salario - total);
          print("Seu salário atual: ${salarioAtual.toStringAsFixed(2)}");
        break;

      /* Case se for CARTÃO DE DÉBITO (COM DESCONTO DEPENDENDO DA COMPRA) */

      case 3:
        if (salario <= subtotal) {
          print("Você não tem salário suficiente para realizar o pagamento, por favor! volte mais tarde!",);
        } else {
          print("Você escolheu a opção: CARTÃO DE DÉBITO");
          print("SubTotal: ${subtotal.toStringAsFixed(2)}");
          print("Digite o desconto: ");
          descontoUsuario = double.parse(stdin.readLineSync()!);
          exibindoDesconto = calcularDesconto(subtotal, descontoUsuario);
          total = (exibindoDesconto);
          print("${descontoUsuario.toStringAsFixed(0)}% de desconto adicionado, total: ${total.toStringAsFixed(2)}",);
          salarioAtual = (salario - total);
          print("Seu salário atual: ${salarioAtual.toStringAsFixed(2)}");
        }
        break;

      /* Case se for PIX (NORMAL) */

      case 4:
        if (salario <= subtotal) {
          print("Você não tem salário suficiente para realizar o pagamento, por favor! volte mais tarde!",);
        } else {
          print("Você escolheu a opção: PIX");
          total = subtotal;
          print("Total: ${total.toStringAsFixed(2)}");
          salarioAtual = (salario - total);
          print("Seu salário atual: ${salarioAtual.toStringAsFixed(2)}");
        }
        break;
      default:
        print("Opcao invalida. Tente novamente!");
    }
    ;
  } while (opcao <= 0 || opcao >= 5);
  } catch(e){
    print("Erro: Não pode ser String, escolhe as opções com números correspondentes!");
  } finally{
    print("Obrigado pela compra! Volte sempre!");
  }
 }
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
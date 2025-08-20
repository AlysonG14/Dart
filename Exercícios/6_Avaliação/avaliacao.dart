// Avaliação 01 - Mercenária

import "dart:io";

void main() {
  print("---------------------------------");

  print("FORNO DA PIZZARIA BRASILEIRA");

  print("Bem vindo à Pizzaria Brasileira: ");

  print("---------------------------------");

  {/* Lista disponíveis na Pizzaria */}

  // Map <String, double> pizzaria = {
  //   "Sabor": ["Frango & Queijo", "Peperonni", "Requeijão", "Chocolate"],
  //   "Preços": [19.99, 30.00, 65.00, 80.00],
  //   "Quantidade": [5, 10, 3, 5],
  // };

  {/* Uma variável para armazenar a quantidade do Estoque */}

  int quantidadeEstoque = 0;


  {/* Variável para guardar no Carrinho */}

  List? carrinhoCliente = [];


  {/* O cliente deve informar o seu NOME */}

  print("Informe o seu nome: ");
  String? nome = stdin.readLineSync()!;


  {/* Verificar a validação do Nome */}

  if (nome == nome.isEmpty || nome.trim().isEmpty) {
    print("O nome não pode ficar vazio e nem nulo, tente novamente!");
  } else {
    print("Nome: ${nome}");
  }

  {/* O cliente deve informar o seu CPF */}

  try {

    print("Informe o seu CPF: ");
    String? entrada = stdin.readLineSync()!;
    int? CPF = int.parse(entrada!);

    {/* Verificar a validação do CPF */}

    String? isNegative = "";

    if (CPF == null || CPF == isNegative) {
      print("O CPF não pode ficar vazio e nem negativo, tente novamente!");
    } else {
      print("CPF: ${CPF}");
    }
    
  } catch (e) {
    print("Erro: O programa deve ser em formato de número, e não string!");
  }

  List <String> saborPizzaria = [ "Frango", "Peperonni", "Requeijão", "Pizza de Chocolate", "Pizza de Sorvete" ];
  List <double> precoPizzaria = [ 19.99, 30.00, 65.00, 80.00, 90.00 ];
  List <int> quantidadePizzaria = [ 5, 10, 3, 5, 2 ];

  Map <String, double> sabores = Map.fromIterables(saborPizzaria, precoPizzaria);


  print("Sabores disponíveis:");

  int contador = 0;

  for(int sabor = 0; sabor < saborPizzaria.length; sabor++){
    print("${contador += 1}- ${saborPizzaria[sabor]}");
  }


  {/* O usuário poderá escolher o sabor */}

  String desejaAdicionarMais = "";

  do {
    print("Cliente ${nome}, qual sabor que você deseja?");
    String escolheSabor = stdin.readLineSync()!;

    if(escolheSabor != saborPizzaria.add(escolheSabor)){
      print("Sabor ${escolheSabor} não existe, por favor! tente novamente");

    } else {

      print("Sabor: ${escolheSabor} adicionado!");

      carrinhoCliente.add(escolheSabor);

      print("Deseja incluir mais sabor? Digite: \n1- Sim \n2- Não");
      desejaAdicionarMais = stdin.readLineSync()!;
    }

  } while(desejaAdicionarMais == "Sim");


  {/* Forma de Pagamento */}



  {/* Informações finais do cliente */}



}

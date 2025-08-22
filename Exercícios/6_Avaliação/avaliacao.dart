// Avaliação 01 - Construir uma Mercenária

import "dart:io";

void main(){

  print("Informe o seu nome: ");
  String nome = stdin.readLineSync()!;

  while (nome == null || nome.isEmpty) {
   print("O nome não pode ser nulos ou vazios, tente novamente: ");
   nome = stdin.readLineSync()!;
  } 

  print("Nome: ${nome.trim()}");

  print("Informe o seu CPF: ");
  String? entrada = stdin.readLineSync()!;
  int? CPF = int.parse(entrada);
  
  try {

  while (CPF == 0 || CPF == null) {
    print("O CPF não pode ser 0, nem negativo, nem nulo e nem vazio, tente novamente: ");
    entrada = stdin.readLineSync()!;
  };

  }catch(e){
    print("Mensagem de Erro: Não pode converter número em string. Tente novamente: ");
    entrada = stdin.readLineSync()!;
  }

  do {
    print("O CPF não pode ser negativo, tente novamente: ");
    entrada = stdin.readLineSync()!;
  } while(CPF <= 1);

  print("CPF: ${CPF}");

  List <String> saborPizzaria = ["Requeijão", "Peperonni", "Mussarela", "Chocolate"];
  List <double> precoPizzaria = [ 20.00, 50.00, 46.99, 89.99 ];
  List <int> quantidadePizzaria = [ 5, 6, 8, 10 ];

  List <int> carrinhoUsuario = [];

  Map <String, double> sabores = Map.fromIterables(saborPizzaria, precoPizzaria);

  // Map <int, Map<String, double>> s = Map.fromIterables(quantidadePizzaria, sabores);

  int contador = 1;

  for(String sabor in saborPizzaria){
    print("${contador += 1}- ${sabor}");
  };

  print("Qual sabor você deseja escolher?");
  String? usuarioEscolheSabor = stdin.readLineSync()!;
  saborPizzaria.add(carrinhoUsuario);



}
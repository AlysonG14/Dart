// Challenge - Mercadinho do bairro que você foi contratado para fazer esse programa por tela.

import "dart:io";
import "dart:core";

void main() {
  print(
    "---------------------------------------------------------------------",
  );
  print("Bem vindo, ao MERCADINHO LOJA PREMIUM");
  print(
    "---------------------------------------------------------------------",
  );

  List<String> itens = [
    "\n1- Bolacha Oreo",
    "\n2- Pão Integral",
    "\n3- Arroz integral",
    "\n4- Bolo de Cenoura",
    "\n5- Pote de Sorvete 1L",
  ];

  List<double> itensValor = [5.00, 4.50, 7.50, 2.50, 17.00];

  print("Itens disponíveis: ${itens.join("")}");

  print("Digite o seu nome: ");
  String? nome = stdin.readLineSync();

  print("Digite o seu CPF: ");
  String? entrada = stdin.readLineSync();
  int? CPF = int.parse(entrada!);

  print(
    "---------------------------------------------------------------------",
  );

  print("");

  print("Nome cadastrado: ${nome}");
  print("CPF cadastrado: ${CPF}");

  print("");

  print(
    "---------------------------------------------------------------------",
  );

  print("Deseja incluir mais itens? Digite: \n1- Sim \n2- Não");
  String? desejaAdicionar = stdin.readLineSync();
  String? opcao;
  if (desejaAdicionar == "1")
    opcao = "sim";
  else if (desejaAdicionar == "2")
    opcao = "nao";

  switch (opcao) {
    case "sim":
    int? limiteItens = 1;
      while (limiteItens < 10) {
        print("Qual item você deseja adicionar?");
        String? adicionarItem = stdin.readLineSync();
        itens.add(adicionarItem!);
        limiteItens++;
      }

      stdin.readLineSync();
    case "nao":
      print("Você escolheu a opção: NÃO");
      print(
        "---------------------------------------------------------------------",
      );
      print("Nome: ${nome}");
      print("CPF: ${CPF}");
      print("Itens Comprados: ${itens.join("")}");
      print("Valor total: ${itensValor}");
      print(
        "---------------------------------------------------------------------",
      );
      break;
    default:
      print("Opção inválida, por favor, insere 1 ou 2");
  }
}

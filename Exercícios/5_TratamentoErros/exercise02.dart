// Exercise 02 - System of Payment

import 'dart:io';
void main() {

  dynamic escolheProduto;
  int? valorCompra;
  double valor_desejada;

  List<Map<String, dynamic>> cantinaEscolar = [
    {"nome": 'Hamburguer de Siri', "preco": null},
    {"nome": 'Pão de Queijo', "preco": null},
    {"nome": 'BIS Chocolate', "preco": null},
  ];

  print("Produto disponíveis:");

  cantinaEscolar.forEach((produto) => print(produto));

  print("Escolhe o produto que você deseja:");
  escolheProduto = stdin.readLineSync();

  try {
    print("Qual valor você deseja informar?");
    valorCompra = int.parse(stdin.readLineSync()!);
    while (valorCompra!.isNaN || valorCompra == 0 || valorCompra.isNegative) {
      print("O valor da compra não pode ser nulo, negativo e igual a 0");
      valorCompra = int.parse(stdin.readLineSync()!);
    }
    FormatException(e) {
      print("Erro: Não pode ser convertido em String. Digite mais uma vez!");
      valorCompra = int.parse(stdin.readLineSync()!);
    }
  } catch (e) {
    print("Erro: ${e}. Tente novamente, mais tarde!");
  }
    switch (escolheProduto) {
      case 'Hamburguer de Siri':
      print("Informe o valor que deseja adicionar:");
      valor_desejada = double.parse(stdin.readLineSync()!);
      if(valor_desejada == true){
        print("Valor ${escolheProduto} adicionado ao Hamburguer de Siri");
      } else {
        while(valor_desejada.isNaN){
          print("Você não adicionou nenhum produto, tente novamente");
          valor_desejada = double.parse(stdin.readLineSync()!);
        }
        
      }
        break;
      case 'Pão de Queijo':
      print("Informe o valor que deseja adicionar:");
      valor_desejada = double.parse(stdin.readLineSync()!);

        break;
      case 'BIS Chocolate':
      print("Informe o valor que deseja adicionar:");
      valor_desejada = double.parse(stdin.readLineSync()!);

        break;
      default:
        print("Opção inválida, tente novamente");
    }
}

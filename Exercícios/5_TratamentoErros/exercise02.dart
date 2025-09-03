// Exercise 02 - System of Payment

import 'dart:io';
void main() {

  dynamic escolheProduto;
  double valorCompra;

  List<Map<String, dynamic>> cantinaEscolar = [
    {"nome": 'Hamburguer de Siri', "preco": null},
    {"nome": 'Pão de Queijo', "preco": null},
    {"nome": 'BIS Chocolate', "preco": null},
  ];

  print("Produto disponíveis:");

  cantinaEscolar.forEach((produto) => print(produto));

  print("Escolhe o produto que você deseja:");
  escolheProduto = stdin.readLineSync();
  
  do {
    switch (escolheProduto) {
      case 'Hamburguer de Siri':
  try {
    print("Qual valor você deseja informar?");
    valorCompra = double.parse(stdin.readLineSync()!);
    while (valorCompra.isNaN || valorCompra == 0 || valorCompra.isNegative) {
      print("O valor da compra não pode ser nulo, negativo e igual a 0");
      valorCompra = double.parse(stdin.readLineSync()!);
    }
    FormatException(e) {
      print("Erro: Não pode ser convertido em String. Digite mais uma vez!");
      valorCompra = double.parse(stdin.readLineSync()!);
    }
  } catch (e) {
    print("Erro: ${e}. Tente novamente, mais tarde!");
  }
      valorCompra = double.parse(stdin.readLineSync()!);
      if(valorCompra == true){
        print("Valor ${escolheProduto} adicionado ao Hamburguer de Siri");
      } else {
        try {
        while(valorCompra.isNaN || ){
          print("Você não adicionou nenhum produto, tente novamente");
          valorCompra = double.parse(stdin.readLineSync()!);
        }
        } catch(e){
            print("").
        }
      }
        break;
      case 'Pão de Queijo':
  try {
    print("Qual valor você deseja informar?");
    valorCompra = double.parse(stdin.readLineSync()!);
    while (valorCompra.isNaN || valorCompra == 0 || valorCompra.isNegative) {
      print("O valor da compra não pode ser nulo, negativo e igual a 0. Tente novamente!");
      valorCompra = double.parse(stdin.readLineSync()!);
    }
    FormatException(e) {
      print("Erro: Não pode ser convertido em String. Digite mais uma vez!");
      valorCompra = double.parse(stdin.readLineSync()!);
    }
  } catch (e) {
    print("Erro: ${e}. Tente novamente, mais tarde!");
  }
      valorCompra = double.parse(stdin.readLineSync()!);
      if(valorCompra == true){
        print("Valor ${escolheProduto} adicionado ao Hamburguer de Siri");
      } else {
        while(valorCompra.isNaN){
          print("Você não adicionou nenhum produto, tente novamente");
          valorCompra = double.parse(stdin.readLineSync()!);
        }
      }

        break;
      case 'BIS Chocolate':
  try {
    print("Qual valor você deseja informar?");
    valorCompra = double.parse(stdin.readLineSync()!);
    while (valorCompra.isNaN || valorCompra == 0 || valorCompra.isNegative) {
      print("O valor da compra não pode ser nulo, negativo e igual a 0");
      valorCompra = double.parse(stdin.readLineSync()!);
    }
    FormatException(e) {
      print("Erro: Não pode ser convertido em String. Digite mais uma vez!");
      valorCompra = double.parse(stdin.readLineSync()!);
    }
  } catch (e) {
    print("Erro: ${e}. Tente novamente, mais tarde!");
  }
      valorCompra = double.parse(stdin.readLineSync()!);
      if(valorCompra == true){
        print("Valor ${escolheProduto} adicionado ao Hamburguer de Siri");
      } else {
        while(valorCompra.isNaN){
          print("Você não adicionou nenhum produto, tente novamente");
          valorCompra = double.parse(stdin.readLineSync()!);
        }
      }
        break;
      default:
        print("Opção inválida, tente novamente");
        escolheProduto = stdin.readLineSync();
    }
   } while(escolheProduto != 'BIS Chocolate' || escolheProduto != "Pão de Queijo" || escolheProduto != 'Hamburguer de Siri'); 
}
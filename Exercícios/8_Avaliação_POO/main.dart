import 'Animal.dart';
import 'dart:io';

void main() {
  String nomeAnimal;
  String corAnimal;
  int idadeAnimal;
  int? entradaOpcao;
  int? entradaAnimal;
  List cadastramentoLeao = [];
  List cadastramentoMacaco = [];
  List cadastramentoGato = [];

  print('Animais cadastrados:');
  Leao Mufasa = new Leao(
    nome: "Mufasa",
    cor: 'Amarelo/Laranja',
    idade: 15,
    especie: 'Felino',
  );

  Mufasa.exibirInformacoes();

  Mufasa.exibirSom();

  Mufasa.alimentacao();

  Macaco Marcel = new Macaco(
    nome: 'Marcel',
    cor: 'Preto/Branco',
    idade: 3,
    especie: 'Mamífero',
  );

  Marcel.exibirInformacoes();

  Marcel.exibirSom();

  Marcel.alimentacao();

  Gato Tom = new Gato(
    nome: 'Tom',
    cor: 'Azul/Branco',
    idade: 5,
    especie: 'Felino',
  );

  Tom.exibirInformacoes();

  Tom.exibirSom();

  Tom.alimentacao();

  while (true) {
    print('Escolhe as opções');
    print('1- Cadastrar animal');
    print('2- Listar animais');
    print('3- Editar animal');
    print('4- Remover animal');
    entradaOpcao = int.parse(stdin.readLineSync()!);

    do {
      switch (entradaOpcao) {
        case 1:
          print('Escolhe qual animal você deseja cadastrar? (Digite S para sair)');
          if(entradaAnimal == 's' || entradaAnimal == 'S'){
            print('Você saiu');
            break;
          }
          print('1- Leão');
          print('2- Macaco');
          print('3- Gato');
          entradaAnimal = int.parse(stdin.readLineSync()!);
          switch (entradaAnimal) {
            case 1:
              print('Digite o nome: ');
              nomeAnimal = stdin.readLineSync()!;
              print('Digite a idade: ');
              idadeAnimal = int.parse(stdin.readLineSync()!);
              print('Digite a cor: ');
              corAnimal = stdin.readLineSync()!;
              break;
            case 2:
              print('Digite o nome');
              nomeAnimal = stdin.readLineSync()!;
              print('Digite a idade');
              idadeAnimal = int.parse(stdin.readLineSync()!);
              print('Digite a cor');
              corAnimal = stdin.readLineSync()!;
              break;
            case 3:
              print('Digite o nome');
              nomeAnimal = stdin.readLineSync()!;
              print('Digite a idade');
              idadeAnimal = int.parse(stdin.readLineSync()!);
              print('Digite a cor');
              corAnimal = stdin.readLineSync()!;
              break;
            default:
              print('Opção Inválido! Escolhe corretamente as opções 1, 2 e 3');
          }
        case 2:
          print('Escolhe qual animal você deseja listar?');
          print('1- Leão');
          print('2- Macaco');
          print('3- Gato');
          entradaAnimal = int.parse(stdin.readLineSync()!);
          break;
        case 3:
          print('Escolhe qual animal você deseja editar?');
          print('1- Leão');
          print('2- Macaco');
          print('3- Gato');
          entradaAnimal = int.parse(stdin.readLineSync()!);
          break;
        case 4:
          print('Escolhe qual animal você deseja remover?');
          print('1- Leão');
          print('2- Macaco');
          print('3- Gato');
          entradaAnimal = int.parse(stdin.readLineSync()!);
          break;
        default:
          print('Opção Inválido, escolhe corretamente as opções: 1, 2, 3 e  4');
      }
    } while (entradaOpcao < 1 || entradaOpcao < 4);
  }
}

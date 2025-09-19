import 'Animal.dart';
import 'dart:io';

void main() {
  String nomeAnimal;
  String corAnimal;
  String? entradaAnimal;
  int idadeAnimal;
  int? entradaOpcao;
  List cadastramentoLeao = [];
  List cadastramentoMacaco = [];
  List cadastramentoGato = [];

  List <Map<String, dynamic>> cadastroAnimalCompleto = [
    {'nome': null, 'idade': 0, 'cor': null}
  ];

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
          print(
            'Escolhe qual animal você deseja cadastrar? (Digite S para sair)',
          );
          if (entradaAnimal == 's' || entradaAnimal == 'S') {
            print('Você saiu');
            break;
          }
          print('1- Leao');
          print('2- Macaco');
          print('3- Gato');
          entradaAnimal = stdin.readLineSync()!;
          switch (entradaAnimal) {

            case 'Leao':
              print('Digite o nome: ');
              nomeAnimal = stdin.readLineSync()!;
              cadastramentoLeao.add(nomeAnimal);
              cadastroAnimalCompleto[0]['nome'] += cadastramentoLeao;
              print('Digite a idade: ');
              idadeAnimal = int.parse(stdin.readLineSync()!);
              cadastramentoLeao.add(idadeAnimal);
              cadastroAnimalCompleto[0]['idade'] += cadastramentoLeao;
              print('Digite a cor: ');
              corAnimal = stdin.readLineSync()!;
              cadastramentoLeao.add(corAnimal);
              cadastroAnimalCompleto[0]['cor'] += cadastramentoLeao;
              print('Cadastramento completo.');

              for(dynamic cadastroCompleto = 0; cadastroCompleto < cadastroAnimalCompleto.length; cadastroCompleto++){
                cadastroCompleto = [nomeAnimal] + [idadeAnimal.toString()] + [corAnimal]; 
                print("${cadastroCompleto} Cadastrado.");
              }

              break;
            case 'Macaco':
              print('Digite o nome: ');
              nomeAnimal = stdin.readLineSync()!;
              cadastramentoMacaco.add(nomeAnimal);
              cadastroAnimalCompleto[1]['nome'] += cadastramentoMacaco;
              print('Digite a idade: ');
              idadeAnimal = int.parse(stdin.readLineSync()!);
              cadastramentoMacaco.add(idadeAnimal);
              cadastroAnimalCompleto[1]['idade'] += cadastramentoMacaco;
              print('Digite a cor: ');
              corAnimal = stdin.readLineSync()!;
              cadastramentoMacaco.add(corAnimal);
              cadastroAnimalCompleto[1]['cor'] += cadastramentoMacaco;
              print('Cadastramento completo.');

              for(dynamic cadastroCompleto = 0; cadastroCompleto < cadastroAnimalCompleto.length; cadastroCompleto++){
                cadastroCompleto = [nomeAnimal] + [idadeAnimal.toString()] + [corAnimal]; 
                print("${cadastroCompleto} Cadastrado.");
              }

              break;

            case 'Gato':
              print('Digite o nome');
              nomeAnimal = stdin.readLineSync()!;
              cadastramentoGato.add(nomeAnimal);
              cadastroAnimalCompleto[0]['nome'] += cadastramentoGato;
              print('Digite a idade');
              idadeAnimal = int.parse(stdin.readLineSync()!);
              cadastramentoGato.add(idadeAnimal);
              cadastroAnimalCompleto[0]['idade'] += cadastramentoGato;
              print('Digite a cor');
              corAnimal = stdin.readLineSync()!;
              cadastramentoGato.add(corAnimal);
              cadastroAnimalCompleto[0]['cor'] += cadastramentoGato;
              print('Cadastramento completo.');

              for(dynamic cadastroCompleto = 0; cadastroCompleto < cadastroAnimalCompleto.length; cadastroCompleto++){
                cadastroCompleto = [nomeAnimal] + [idadeAnimal.toString()] + [corAnimal]; 
                print("${cadastroCompleto} Cadastrado.");
              }

              break;
            default:
              print('Opção Inválido! Escolhe corretamente as opções 1, 2 e 3');
          }
        case 2:
          print('Escolhe qual animal você deseja listar?');
          print('Leão');
          print('Macaco');
          print('Gato');
          entradaAnimal = stdin.readLineSync()!;
          switch(entradaAnimal){
            case 'Leao':

            for(dynamic cadastro in cadastroAnimalCompleto){
              cadastro = cadastramentoLeao;
            }

            break;

            case 'Macaco':
            break;

            case 'Gato':
            break;
          }
          break;
        case 3:
          print('Escolhe qual animal você deseja editar?');
          print('Leão');
          print('Macaco');
          print('Gato');
          entradaAnimal = stdin.readLineSync()!;
          break;
        case 4:
          print('Escolhe qual animal você deseja remover?');
          print('Leão');
          print('Macaco');
          print('Gato');
          entradaAnimal = stdin.readLineSync()!;
          break;
        default:
          print('Opção Inválido, escolhe corretamente as opções: 1, 2, 3 e  4');
      }
    } while (entradaOpcao < 1 || entradaOpcao < 4);
  }
}

import 'Animal.dart';
import 'dart:io';



void main() {
  
  String corAnimal = "";
  String alimentacaoAnimal = "";
  String escolheAlimento = "";
  String porteAnimal = "";
  dynamic editarAnimal = "";
  String entradaAnimal = "";
  String nomeAnimal = "";
  int idadeAnimal = 0;
  int? entradaOpcao;
  List cadastramentoLeao = [];
  List cadastramentoMacaco = [];
  List cadastramentoGato = [];

  List<Map<String, dynamic>> cadastroAnimalCompleto = [
    {'nome': null, 'idade': 0, 'cor': null, 'alimentacao': null, 'porte': null},
    {'nome': null, 'idade': 0, 'cor': null, 'alimentacao': null, 'porte': null},
    {'nome': null, 'idade': 0, 'cor': null, 'alimentacao': null, 'porte': null},
  ];
  


  print('Animais cadastrados:');
  Leao Mufasa = new Leao(
    nome: "Mufasa",
    tipoAnimal: 'Leão',
    cor: 'Amarelo/Laranja',
    idade: 15,
    especie: 'Felino',
    possuiDoenca: 'Deformidade na pata',
    porte: 'Grande',
  );

  print('');

  Mufasa.exibirInformacoes();

  Mufasa.exibirSom();

  Mufasa.alimentacao();

  Mufasa.doenca();

  Mufasa.porteAnimal();

  Macaco Marcel = new Macaco(
    nome: 'Marcel',
    tipoAnimal: 'Macaco',
    cor: 'Preto/Branco',
    idade: 3,
    especie: 'Mamífero',
    possuiDoenca: 'Febre',
    porte: 'Médio',
  );

  Marcel.exibirInformacoes();

  Marcel.exibirSom();

  Marcel.alimentacao();

  Marcel.doenca();

  Marcel.porteAnimal();

  Gato Tom = new Gato(
    nome: 'Tom',
    tipoAnimal: 'Gato',
    cor: 'Azul/Branco',
    idade: 5,
    especie: 'Felino',
    possuiDoenca: 'Nenhum',
    porte: 'Pequeno',
  );

  Tom.exibirInformacoes();

  Tom.exibirSom();

  Tom.alimentacao();

  Tom.doenca();

  Tom.porteAnimal();

  while (true) {
    print('Escolhe as opções: ');
    print('1- Cadastrar animal');
    print('2- Listar animais');
    print('3- Editar animal');
    print('4- Remover animal');
    entradaOpcao = int.parse(stdin.readLineSync()!);

    switch (entradaOpcao) {
      case 1:
        print(
          'Escolhe qual animal você deseja cadastrar? (Digite S para sair)',
        );
        if (entradaAnimal == 's'.toLowerCase() ||
            entradaAnimal == 'S'.toUpperCase()) {
          print('Você saiu');
        }
        ;
        print('1- Leao');
        print('2- Macaco');
        print('3- Gato');
        entradaAnimal = stdin.readLineSync()!;
        switch (entradaAnimal) {
          case 'Leao':
            
            print('Digite o nome: ');
            nomeAnimal = stdin.readLineSync()!;
            cadastramentoLeao.add(nomeAnimal);
            cadastroAnimalCompleto[0]['nome'] = cadastramentoLeao;

            print('Digite a idade: ');
            idadeAnimal = int.parse(stdin.readLineSync()!);
            cadastramentoLeao.add(idadeAnimal);
            cadastroAnimalCompleto[0]['idade'] = cadastramentoLeao;

            print('Digite a cor: ');
            corAnimal = stdin.readLineSync()!;
            cadastramentoLeao.add(corAnimal);
            cadastroAnimalCompleto[0]['cor'] = cadastramentoLeao;

            print('Existe alimentação? \nDigite as opções: \n1- sim \n2- nao');
            escolheAlimento = stdin.readLineSync()!;
            if ((escolheAlimento == 'sim'.toUpperCase() ||
                escolheAlimento == 'sim'.toLowerCase())) {
              print('Alimentação: ');
              alimentacaoAnimal = stdin.readLineSync()!;
              cadastramentoLeao.add(alimentacaoAnimal);
              cadastroAnimalCompleto[0]['alimentacao'] = cadastramentoLeao;
              print("Alimentação '${alimentacaoAnimal}' adicionado!");
            } else if (escolheAlimento == 'nao'.toLowerCase() ||
                escolheAlimento == 'nao'.toUpperCase()) {
              print('Você escolheu não!');
              print('Esse animalzinho não tem fome');
            } else {
              print('Opção inválido');
            }

            print(
              "Qual porte você deseja colocar? \nEscolhe essas três opções: \n1- pequeno \n2- medio \n3- alto",
            );
            porteAnimal = stdin.readLineSync()!;
            while (porteAnimal != 'pequeno' &&
                porteAnimal != 'medio' &&
                porteAnimal != 'alto') {
              print('Porte não específicada, tente novamente!');
              porteAnimal = stdin.readLineSync()!;
            }
            print("Porte '${porteAnimal}' adicionado!");
            cadastramentoLeao.add(porteAnimal);
            cadastroAnimalCompleto[0]['porte'] = cadastramentoLeao;
            Leao Lyon = Leao(nome: nomeAnimal, idade: idadeAnimal, tipoAnimal: "Leao",porte: porteAnimal,cor: corAnimal  );
            cadastramentoLeao.add(Lyon);
            print(Lyon);
            print('Cadastramento completo.');

            break;

          case 'Macaco':
            print('Digite o nome: ');
            nomeAnimal = stdin.readLineSync()!;
            cadastramentoMacaco.add(nomeAnimal);
            cadastroAnimalCompleto[1]['nome'] = cadastramentoMacaco;

            print('Digite a idade: ');
            idadeAnimal = int.parse(stdin.readLineSync()!);
            cadastramentoMacaco.add(idadeAnimal);
            cadastroAnimalCompleto[1]['idade'] = cadastramentoMacaco;

            print('Digite a cor: ');
            corAnimal = stdin.readLineSync()!;
            cadastramentoMacaco.add(corAnimal);
            cadastroAnimalCompleto[1]['cor'] = cadastramentoMacaco;

            print('Existe alimentação? \nDigite as opções: \n1- sim \n2- nao');
            escolheAlimento = stdin.readLineSync()!;
            if ((escolheAlimento == 'sim'.toUpperCase() ||
                escolheAlimento == 'sim'.toLowerCase())) {
              print('Alimentação: ');
              alimentacaoAnimal = stdin.readLineSync()!;
              cadastramentoMacaco.add(alimentacaoAnimal);
              cadastroAnimalCompleto[1]['alimentacao'] = cadastramentoMacaco;
              print("Alimentação '${alimentacaoAnimal}' adicionado!");
            } else if (escolheAlimento == 'nao'.toLowerCase() ||
                escolheAlimento == 'nao'.toUpperCase()) {
              print('Você escolheu não!');
              print('Esse animalzinho não tem fome');
            } else {
              print('Opção inválido');
            }

            print(
              "Qual porte você deseja colocar? \nEscolhe essas três opções: \n1- pequeno \n2- medio \n3- alto",
            );
            porteAnimal = stdin.readLineSync()!;
            while (porteAnimal != 'pequeno' &&
                porteAnimal != 'medio' &&
                porteAnimal != 'alto') {
              print('Porte não específicada, tente novamente!');
              porteAnimal = stdin.readLineSync()!;
            }
            print("Porte '${porteAnimal}' adicionado!");
            cadastramentoMacaco.add(porteAnimal);
            Macaco Monkey = Macaco(nome: nomeAnimal, idade: idadeAnimal, tipoAnimal: "Macaco",porte: porteAnimal,cor: corAnimal  );
            cadastramentoMacaco.add(Macaco);
            cadastroAnimalCompleto[0]['porte'] = cadastramentoMacaco;
            print(Monkey);

            print('Cadastramento completo.');

            break;

          case 'Gato':
            print('Digite o nome: ');
            nomeAnimal = stdin.readLineSync()!;
            cadastramentoGato.add(nomeAnimal);
            cadastroAnimalCompleto[2]['nome'] = cadastramentoGato;

            print('Digite a idade: ');
            idadeAnimal = int.parse(stdin.readLineSync()!);
            cadastramentoGato.add(idadeAnimal);
            cadastroAnimalCompleto[2]['idade'] = cadastramentoGato;

            print('Digite a cor: ');
            corAnimal = stdin.readLineSync()!;
            cadastramentoGato.add(corAnimal);
            cadastroAnimalCompleto[2]['cor'] = cadastramentoGato;

            print('Existe alimentação? \nDigite as opções: \n1- sim \n2- nao');
            escolheAlimento = stdin.readLineSync()!;
            if (escolheAlimento == 'sim'.toUpperCase() ||
                escolheAlimento == 'sim'.toLowerCase()) {
              print('Alimentação: ');
              alimentacaoAnimal = stdin.readLineSync()!;
              cadastramentoGato.add(alimentacaoAnimal);
              cadastroAnimalCompleto[2]['alimentacao'] = cadastramentoGato;
              print("Alimentação '${alimentacaoAnimal}' adicionado!");
            } else if (escolheAlimento == 'nao'.toLowerCase() ||
                escolheAlimento == 'nao'.toUpperCase()) {
              print('Você escolheu não!');
              print('Esse animalzinho não tem fome');
            } else {
              print('Opção inválido');
            }

            print(
              "Qual porte você deseja colocar? \nEscolhe essas três opções: \n1- pequeno \n2- medio \n3- alto",
            );
            porteAnimal = stdin.readLineSync()!;
            while (porteAnimal != 'pequeno' &&
                porteAnimal != 'medio' &&
                porteAnimal != 'alto') {
              print('Porte não específicada, tente novamente!');
              porteAnimal = stdin.readLineSync()!;
            }
            print("Porte '${porteAnimal}' adicionado!");
            cadastramentoGato.add(porteAnimal);
            Gato Cat = Gato(nome: nomeAnimal, idade: idadeAnimal, tipoAnimal: "Gato",porte: porteAnimal,cor: corAnimal  );
            cadastroAnimalCompleto[0]['porte'] = cadastramentoGato;
            cadastramentoGato.add(Cat);

            print('Cadastramento completo.');

            break;

          default:
            print('Opção Inválido! Escolhe corretamente as opções 1, 2 e 3');
        }
      case 2:
        print('Escolhe qual animal você deseja listar? (Digite S para voltar)');
        print('1- Leao');
        print('2- Macaco');
        print('3- Gato');
        entradaAnimal = stdin.readLineSync()!;
        switch (entradaAnimal) {
          case 'Leao':
            print('--------------------------------');

            Mufasa.exibirInformacoes();

            Mufasa.exibirSom();

            Mufasa.alimentacao();

            Mufasa.doenca();

            Mufasa.porteAnimal();

            for (dynamic leaoLista in cadastramentoLeao) {
              print("${leaoLista}");
            }
           
            print('--------------------------------');

            break;

          case 'Macaco':
            print('--------------------------------');

            Marcel.exibirInformacoes();

            Marcel.exibirSom();

            Marcel.alimentacao();

            Marcel.doenca();

            Marcel.porteAnimal();

            for (dynamic listaMacaco in cadastramentoMacaco) {
              print("${listaMacaco}");
            }

            break;

          case 'Gato':
            print('--------------------------------');

            Tom.exibirInformacoes();

            Tom.exibirSom();

            Tom.alimentacao();

            Tom.doenca();

            Tom.porteAnimal();

            for (dynamic listaGato in cadastramentoGato) {
              print("${listaGato}");
            }

            break;
        }
        break;
      case 3:
        print('Escolhe qual animal você deseja editar?');
        print('1- Leao');
        print('2- Macaco');
        print('3- Gato');
        entradaAnimal = stdin.readLineSync()!;
        switch (entradaAnimal) {
          case 'Leao':
            print('--------------------------------');

            Mufasa.exibirInformacoes();

            Mufasa.exibirSom();

            Mufasa.alimentacao();

            Mufasa.doenca();

            Mufasa.porteAnimal();

            for (dynamic listaLeao in cadastramentoLeao) {
              print("${listaLeao}");
            }
            print('--------------------------------');

            print('Escolhe qual Leão você deseja editar:');
             editarAnimal = stdin.readLineSync()!;

            if (editarAnimal == nomeAnimal) {
              
                if(
                  cadastramentoLeao.contains(editarAnimal)
                ){

                print("Digite o nome: ");
                nomeAnimal = stdin.readLineSync()!;
                cadastramentoLeao[0].mudarnome(nomeAnimal) ;
                
                }
              
                print("Atualizado com sucesso");
            } else {
              print('Não encontrado no sistema do ZOOMANGE');
            }
            break;
          case 'Macaco':
            print('--------------------------------');

            Marcel.exibirInformacoes();

            Marcel.exibirSom();

            Marcel.alimentacao();

            Marcel.doenca();

            Marcel.porteAnimal();

            for (dynamic listaMacaco in cadastramentoMacaco) {
              print("${listaMacaco}");
            }
            print('--------------------------------');

            print('Escolhe qual Macaco você deseja editar:');
            editarAnimal = stdin.readLineSync()!;

            if (editarAnimal == nomeAnimal) {

                if(
                  cadastramentoMacaco.contains(editarAnimal)
                ){

                print("Digite o nome: ");
                nomeAnimal = stdin.readLineSync()!;
                cadastramentoMacaco[0].mudarnome(nomeAnimal) ;
              }

                print("Atualizado com sucesso");
            } else {
              print('Não encontrado no sistema do ZOOMANGE');
            }
            break;
          case 'Gato':
          
          print('--------------------------------');

            Tom.exibirInformacoes();

            Tom.exibirSom();

            Tom.alimentacao();

            Tom.doenca();

            Tom.porteAnimal();

            for (dynamic listaGato in cadastramentoGato) {
              print("${listaGato}");
            }
            print('--------------------------------');

            print('Escolhe qual Gato você deseja editar:');
            editarAnimal = stdin.readLineSync()!;

            if (editarAnimal == nomeAnimal) {

                if(
                  cadastramentoGato.contains(editarAnimal)
                ){

                print("Digite o nome: ");
                nomeAnimal = stdin.readLineSync()!;
                cadastramentoGato[0].mudarnome(nomeAnimal) ;
              }
                print("Atualizado com sucesso");
            } else {
              print('Não encontrado no sistema do ZOOMANGE');
            }
          break;
          default:
            print("Opção Inválida!");
        }
        break;
      case 4:
        print('Escolhe qual animal você deseja remover?');
        print('1- Leao');
        print('2- Macaco');
        print('3- Gato');
        entradaAnimal = stdin.readLineSync()!;

        switch(entradaAnimal){
          case 'Leao':

          print('--------------------------------');

            Mufasa.exibirInformacoes();

            Mufasa.exibirSom();

            Mufasa.alimentacao();

            Mufasa.doenca();

            Mufasa.porteAnimal();

            for(int i= 0; i < cadastramentoLeao.length; i++){
              print("$i $cadastramentoLeao[i]");
            }
            print("Qual index deseja remover");
            int index = int.parse(stdin.readLineSync()!);
            cadastramentoLeao.remove(index);
            print(cadastramentoLeao);
          break;

          case 'Macaco':

          print('--------------------------------');


            Marcel.exibirInformacoes();

            Marcel.exibirSom();

            Marcel.alimentacao();

            Marcel.doenca();

            Marcel.porteAnimal();

            for(int i= 0; i < cadastramentoMacaco.length; i++){
              print("$i $cadastramentoMacaco[i]");
            }
            print("Qual index deseja remover");
            int index = int.parse(stdin.readLineSync()!);
            cadastramentoMacaco.remove(index);
            print(cadastramentoMacaco);
          break;

          case 'Gato':

          print('--------------------------------');

            Tom.exibirInformacoes();

            Tom.exibirSom();

            Tom.alimentacao();

            Tom.doenca();

            Tom.porteAnimal();

            for(int i= 0; i < cadastramentoGato.length; i++){
              print("$i $cadastramentoGato[i]");
            }
            print("Qual index deseja remover");
            int index = int.parse(stdin.readLineSync()!);
            cadastramentoGato.remove(index);
            print(cadastramentoGato);          

      default:
        print('Opção Inválido, escolhe corretamente as opções: 1, 2, 3 e 4');
        }
    }
  }
}



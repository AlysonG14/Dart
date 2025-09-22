import 'dart:io';

class ZOOMANGE {
  String porte;

  ZOOMANGE({required this.porte});

  void porteAnimal() {
    print('Porte: Esse vai ser o porte onde o animal ficará cadastrado.');
  }
}

class Animal extends ZOOMANGE {
  String tipoAnimal;
  String nome;
  String cor;
  int idade;

  Animal({
    required this.nome,
    required this.cor,
    required this.idade,
    required this.tipoAnimal,
    required String porte,
  }) : super(porte: porte);

  void exibirInformacoes() {
    print('Tipo: Esse vai ser o tipo do animal');
    print('Nome: Esse vai ser o nome do animal');
    print('Cor: Essa vai ser a cor animal');
    print('Idade: Essa vai ser a idade do animal');
  }

  void exibirSom() {
    print('Som: Esse vai ser o som do animal que irá exibir');
  }

  void alimentacao() {
    print('Alimentação: Essa vai ser alimentação do animal');
  }

  void doenca() {
    print('Doença: Esse vai ser o tipo de doença que o animal tem ou não');
  }

  void porteAnimal() {
    print('Porte: Esse vai ser o porte onde o animal ficará cadastrado.');
  }
}

class Leao extends Animal {
  String? especie;
  String? possuiDoenca;

  Leao({
    required String nome,
    required String cor,
    required String tipoAnimal,
    required int idade,
    required String porte,
    this.especie,
    this.possuiDoenca,
  }) : super(
         nome: nome,
         cor: cor,
         idade: idade,
         tipoAnimal: tipoAnimal,
         porte: porte,
       );

  @override
  void exibirInformacoes() {
    print('Nome: ${nome}');
    print('Tipo: ${tipoAnimal}');
    print('Cor: ${cor}');
    print('Idade: ${idade}');
  }

  @override
  void exibirSom() {
    print('Som: Roaarrr');
  }

  @override
  void doenca() {
    print('Doença: ${possuiDoenca}');
  }

  @override
  void alimentacao() {
    print('Alimentação: Carne');
  }

  @override
  void porteAnimal() {
    print('Porte: ${porte}');
    print('--------------------------------');
  }
}

class Macaco extends Animal {
  String? especie;
  String? possuiDoenca;

  Macaco({
    required String nome,
    required String cor,
    required String tipoAnimal,
    required int idade,
    required String porte,
    this.especie,
    this.possuiDoenca,
  }) : super(
         nome: nome,
         cor: cor,
         idade: idade,
         tipoAnimal: tipoAnimal,
         porte: porte,
       );

  @override
  void exibirInformacoes() {
    print('Nome: ${nome}');
    print('Tipo: ${tipoAnimal}');
    print('Cor: ${cor}');
    print('Idade: ${idade}');
  }

  @override
  void exibirSom() {
    print('Som: u u á á ah ah uh uh');
  }

  @override
  void doenca() {
    print('Doença: ${possuiDoenca}');
  }

  @override
  void alimentacao() {
    print('Alimentação: Banana');
  }

  @override
  void porteAnimal() {
    print('Porte: ${porte}');
    print('--------------------------------');
  }
}

class Gato extends Animal {
  String? especie;
  String? possuiDoenca;

  Gato({
    required String nome,
    required String cor,
    required String tipoAnimal,
    required int idade,
    required String porte,
    this.especie,
    this.possuiDoenca,
  }) : super(
         nome: nome,
         idade: idade,
         cor: cor,
         tipoAnimal: tipoAnimal,
         porte: porte,
       );

  @override
  void exibirInformacoes() {
    print('Nome: ${nome}');
    print('Tipo: ${tipoAnimal}');
    print('Cor: ${cor}');
    print('Idade: ${idade}');
  }

  @override
  void exibirSom() {
    print('Som: Miau');
  }

  @override
  void doenca() {
    print('Doença: ${possuiDoenca}');
  }

  @override
  void alimentacao() {
    print('Alimentação: Peixe');
  }

  @override
  void porteAnimal() {
    print("Porte: ${porte}");
    print('--------------------------------');
  }
}

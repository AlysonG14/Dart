import 'dart:io';

class ZOOMANGE {
  String porte;

  ZOOMANGE({required this.porte});

  void definicaoPorte() {
    print("Porte: ");
  }
}

class Animal {
  String nome;
  int idade;

  Animal({required this.nome, required this.idade});

  void informacaoAnimal() {
    print('Esse vai ser o nome do animal');
    print('Essa vai ser o idade do animal');
    print('');
    print('-------------------------------------');
  }

  void fazerSom() {
    print('Esse vai ser o som do animal');
  }

  void realizarAlimentacao() {
    print('Essa vai ser alimentação de cada animal');
  }
}

class Leao extends Animal {
  String? raca;

  Leao({required String nome, required int idade, this.raca})
    : super(nome: nome, idade: idade);

  @override
  void informacaoAnimal() {
    print('Nome: ${nome}');
    print("Idade: ${idade}");
  }

  @override
  void fazerSom() {
    print('Roaaarrrrr');
  }

  @override
  void realizarAlimentacao() {
    print('Alimentação: Carne');
  }
}

class Elefante extends Animal {
  String? raca;
  Elefante({required String nome, required int idade})
    : super(nome: nome, idade: idade);

  @override
  void informacaoAnimal() {
    print('Nome: ${nome}');
    print("Idade: ${idade}");
  }

  @override
  void fazerSom() {
    print('');
  }

  @override
  void realizarAlimentacao() {
    print('Alimentação: Carne');
  }
}

class Gato extends Animal {
  String? raca;
  Gato({required String nome, required int idade})
    : super(nome: nome, idade: idade);

  @override
  void informacaoAnimal() {
    print('Nome: ${nome}');
    print("Idade: ${idade}");
  }

  @override
  void fazerSom() {
    print('Roaaarrrrr');
  }

  @override
  void realizarAlimentacao() {
    print('Alimentação: Carne');
  }
}

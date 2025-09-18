import 'dart:io';

class Animal {
  String nome;
  String cor;
  int idade;

  Animal({required this.nome, required this.cor, required this.idade});

  void exibirInformacoes() {
    print('Esse vai ser o nome do animal');
    print('Essa vai ser a cor animal');
    print('Essa vai ser a idade do animal');
  }

  void exibirSom() {
    print('Esse vai ser o som do animal que irá exibir');
  }

  void alimentacao() {
    print('Essa vai ser alimentação do animal');
  }
}

class Leao extends Animal {
  String? especie;

  Leao({
    required String nome,
    required String cor,
    required int idade,
    String? especie,
  }) : super(nome: nome, cor: cor, idade: idade);

  @override
  void exibirInformacoes() {
    print('Nome: ${nome}');
    print('Cor: ${cor}');
    print('Idade: ${idade}');
  }

  @override
  void exibirSom() {
    print('Som: Roaarrr');
  }

  @override
  void alimentacao() {
    print('Alimentação: Carne');
    print('--------------------------------');
  }
}

class Macaco extends Animal {
  String? especie;

  Macaco({
    required String nome,
    required String cor,
    required int idade,
    this.especie,
  }) : super(nome: nome, cor: cor, idade: idade);

  @override
  void exibirInformacoes() {
    print('Nome: ${nome}');
    print('Cor: ${cor}');
    print('Idade: ${idade}');
  }

  @override
  void exibirSom() {
    print('Som: u u á á ah ah uh uh');
  }

  @override
  void alimentacao() {
    print('Alimentação: Banana');
    print('--------------------------------');
  }
}

class Gato extends Animal {
  String? especie;

  Gato({
    required String nome,
    required String cor,
    required int idade,
    this.especie,
  }) : super(nome: nome, idade: idade, cor: cor);

  @override
  void exibirInformacoes() {
    print('Nome: ${nome}');
    print('Cor: ${cor}');
    print('Idade: ${idade}');
  }

  @override
  void exibirSom() {
    print('Som: Miau');
  }

  @override
  void alimentacao() {
    print('Alimentação: Peixe');
    print('--------------------------------');
  }
}

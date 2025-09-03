import 'dart:io';

class Animal {
  String nome;
  int idade;

  Animal({required this.nome, required this.idade});

  void fazerSom(String nome) {
    // Temos um parâmetro, que é o nome do animal.
    print("");
  }
}

class Cachorro extends Animal {
  String? raca;

  Cachorro({required String nome, required int idade, this.raca})
    : super(idade: idade, nome: nome);

  @override // Você consegue subscrever as ações da sua função.
  void fazerSom(String nome) {
    print("Au Au");
  }
}

class Gato extends Animal {
  String? raca;

  Gato({required String nome, required int idade, this.raca})
    : super(idade: idade, nome: nome);

  @override // Você consegue subscrever as ações da sua função.
  void fazerSom(String nome) {
    print("Miau");
  }
}

class Rato extends Animal {
  String? raca;

  Rato({required String nome, required int idade, this.raca})
    : super(nome: nome, idade: idade);

  @override
  void fazerSom(String nome) {
    print("fi-fi");
  }
}

void main() {
  Cachorro Spike = Cachorro(nome: "Spike", idade: 5);
  Gato Tom = Gato(nome: "Tom", idade: 4);
  Rato Jerry = Rato(nome: "Jerry", idade: 2);
}

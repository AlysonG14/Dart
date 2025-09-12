// Exercício 01 - Cachorro e Gato

import 'dart:io';

class Animal{
  String nome;
  int idade;

  Animal({required this.nome, required this.idade});

  void fazerSom(){
    print('Fazer som de cada animal diferente!');
  }
    
}

class Cachorro extends Animal{
  String? raca;

  Cachorro({required String nome, required int idade, String? raca})
  :super(nome: nome, idade: idade);

  @override
  void fazerSom(){
    print('Au Au');
  }
}

class Gato extends Animal{
  String? cor;

  Gato({required String nome, required int idade, String? cor})
  :super(nome: nome, idade: idade);

  @override
  void fazerSom(){
    print("Miau");
  }
}

void main(){

  Cachorro Spike = Cachorro(nome: 'Spike', idade: 4, raca: 'Bulldog');
  Gato Tom = Gato(nome: 'Tom', idade: 2, cor: 'Azul');

  Spike.fazerSom();
  Tom.fazerSom();


}
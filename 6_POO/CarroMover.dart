import 'dart:io';

import 'Polimorfismo.dart';

class Veiculo{
  String nome;
  String modelo;
  String cor;
  int ano;

  Veiculo({required this.nome, required this.cor, required this.modelo, required this.ano});

  void mover(bool cnh){
    if(cnh == true){
      true;
    } else {
      false;
    }
  }
}

class Carro extends Veiculo{
  String? tipo;

  Carro({required String nome, required String cor, required String modelo, required int ano, this.tipo})
  :super(nome: nome, cor: cor, modelo: modelo, ano: ano);

  void mover(bool cnh){
    if(cnh == true){
      print("Ajustar o veículo");
      print("Ligar o veículo");
      print("Desengatar a marcha");
      print("Soltar a embreagem");
      print("Controlar o freiro");
      print("Controlar a velocidade");
    } else {
      print("Infelizmente você não pode dirigir!. Menor de 18 anos, BORRACHUDO!");
    }
  }
}

class Moto extends Veiculo{
  String? tipo;

  Moto({required String nome, required String modelo, required String cor, required int ano, this.tipo})
  :super(nome: nome, modelo: modelo, cor: cor, ano: ano);

  void mover(bool cnh){
    if(cnh == true){
      print("Comprar capacete");
      print("Abaixar viseira");
      print("Ajustar a moto");
      print("Pegar a chave");
      print("Ligar a moto");
      print("Ajustar e desengatar a marcha");
      print("Controlar o freiro do veículo");
      print("Controlar a velocidade do veículo");
      print("Sem fazer barulho");
    } else {
      print("CARA, INFELIZMENTE VOCÊ NÃO PODE DIRIGIR MOTO!!!!!!!");
    }
  }
}

void main(){
  Carro Onix2013 = Carro(nome: "Onix", cor: "Branco", modelo: "Chevrolet", ano: 2013);
  Onix2013.mover(true);

  print("-----------------------------------------------------------------------------");


  Moto Yamaha = Moto(nome: "XJ6", modelo: "Yamaha", cor: "Preto", ano: 2009);
  Yamaha.mover(false);
}
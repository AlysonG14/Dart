import 'dart:io';

class Veiculos{
  String modelo;
  String marca;
  double potencia;
  int n_chassis;
  String? cor; // Pode ser nulo, pode ser opcional.
  int? qt_portas;

  Veiculos({required this.modelo,  // --> Obrigatório
  required this.marca, // --> Obrigatório
  required this.potencia, // --> Obrigatório
  required this.n_chassis, // --> Obrigatório
  this.cor }); // --> Opcional

}

class Carro extends Veiculos{
  bool? bau;

  Carro({required String modelo, // --> Obrigatório
  required String marca, // --> Obrigatório
  required double potencia, // --> Obrigatório
  required int n_chassis, // --> Obrigatório
  String? cor, // -> Opcional
  this.bau
  }):super(modelo: modelo, marca:marca, potencia:potencia, n_chassis: n_chassis, cor: cor);


}

class Moto {

}

// class Caminhao{
//   String nome;
//   String marca;
//   String cor;
//   double potencia;
//   int n_chassis
// }
// 
// class Onibus{
//   String nome;
//   String marca;
//   String cor;
//   double potencia;
//   int n_chassis
// }

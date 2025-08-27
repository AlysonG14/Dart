// Acões

import 'dart:io';

class Carro {
  String marca = "";
  String modelo = "";
  String cor = "";
  int velocidade = 0;

  Carro(this.marca, this.modelo, this.cor, this.velocidade);

  void acelerar() {
    velocidade += 10;
  }
}

void main() {
  Carro Onix2009 = Carro("Onix", "Onix256", "Branco", 0);
  Onix2009.acelerar();
  Onix2009.acelerar();
  Onix2009.acelerar();
  Onix2009.acelerar();
  print(Onix2009.velocidade);
}

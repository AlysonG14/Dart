import 'dart:io';

class Carro{
  String modelo;
  int _velocidade = 0; // Atributo privado, coloque "underline" antes e passe um valor inicial

  Carro({required this.modelo});

  // Função para ver o valor do atributo privado.
  
  int get buscar_velocidade {
    return _velocidade;
  }

  // Função para alterar o valor do atributo privado.

  set alterar_velocidade(int nova_velocidade){
    if(nova_velocidade < 0){
      print("Valor incorreto, velocidade não pode ser menor que 0");
    } else {
      _velocidade = nova_velocidade;
    }
  }



}
// Exercise 01 - User Register

import 'dart:io';

void main(){
  print("Digite o seu nome completo: ");
  String? nome = stdin.readLineSync();
  while(nome == null || nome.trim().isEmpty){
    print('O nome não pode ser nulo, vazio ou espaço. Tente novamente!');
    nome = stdin.readLineSync()!;
  }
  print("Nome completo: ${nome.trim()}");
}
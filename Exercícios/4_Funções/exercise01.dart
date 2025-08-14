// 1 - Loja de Promoção

import 'dart:io';

void main() {
  print("Digite o valor: ");
  double? precoProduto = double.parse(stdin.readLineSync()!);
  precoProduto = calcularDesconto();

  print("Digite o desconto: ");
  double? precoDesconto = double.parse(stdin.readLineSync()!);
  precoDesconto = calcularDesconto();
}

double calcularDesconto(double preco, double desconto) {
  double calculo = preco / (desconto * 100);
  return calculo;
}

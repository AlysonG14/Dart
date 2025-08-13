// 1 - Loja de Promoção

import 'dart:io';

void main() {
  print("Digite o valor do produto:");
  double? preco = double.parse(stdin.readLineSync()!);
  print("Qual desconto você deseja adicionar?");
  double? desconto = double.parse(stdin.readLineSync()!);

  print("Valor final: ${calcularDesconto}");
}

double calcularDesconto(preco, percentual) {
  double descontoCalculado = preco / (percentual * 100);
  return descontoCalculado;
}

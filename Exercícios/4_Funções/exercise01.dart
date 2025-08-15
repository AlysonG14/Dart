// 1 - Loja de Promoção

import 'dart:io';

void main() {
  print("Digite o valor do preço: ");
  double? precoUsuario = double.parse(stdin.readLineSync()!);

  print("Digite o desconto:");
  double? descontoUsuario = double.parse(stdin.readLineSync()!);

  String? exibindo = calcularDesconto(precoUsuario, descontoUsuario);

  print("O valor final do produto: ${exibindo}");
}

String? calcularDesconto(double preco, double desconto) {
  double calculo = preco * (desconto / 100);
  double aplicandoDesconto = preco - calculo;
  String calculoFormatado = aplicandoDesconto.toStringAsFixed(2); // Formata para 2 casas decimais
  return calculoFormatado;
}

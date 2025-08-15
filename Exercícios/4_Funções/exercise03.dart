// 3- Aplicativo para previsão de tempo

import 'dart:io';

void main() {
  print("Digite a temperatura do Celsius: ");
  double? temperaturaCelsius = double.parse(stdin.readLineSync()!);

  String? exibindoResultado = celsiusParaFahrenheit(temperaturaCelsius);

  print(
    "A temperatura ${temperaturaCelsius.toStringAsFixed(2)} convertido para Fahrenheit é: ${exibindoResultado}",
  );
}

String? celsiusParaFahrenheit(double celsius) {
  double? Fahrenheit = celsius * (9 / 5) + 32;
  String? FahrenheitFormatado = Fahrenheit.toStringAsFixed(2); // Formata para 2 casas decimais
  return FahrenheitFormatado;
}

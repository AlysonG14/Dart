import "dart:io";

void main() {
  menu();
  fruits();
  soma(20, 30);
  subtracao(80, 60);
  multiplicacao();

  // Função sem parâmetro, mas com retorno!
  double valordaDivisao = divisao();
  double valorFinalDivisao = valordaDivisao * 2;
  print("This is a final value of division: ${valorFinalDivisao}");

  // Função com parâmetro, mas com retorno!
  int valordaSoma = soma1(10, 20);
  int valordaSomaFinal = valordaSoma - 2;
  print("This is a final value of sum: ${valordaSomaFinal}");
}

// Função sem retorno e sem parâmetro - Só chama e ela realiza ações
void menu() {
  // Sem retorno
  print("Bem vindo BORRACHUDO! MANO!");
  print("Escolhe a sua fruta favorita");
  print("Melancia");
}

void fruits() {
  List<String> frutas = ["Maçã", "Laranja"];
  for (String x in frutas) {
    print(x);
  }
}

// Função com parâmetro, mas sem retorno

void soma(int num1, int num2) {
  //sem retorno
  int valorSoma = num1 + num2;
  print("Soma: ${valorSoma}");
}

void subtracao(int num1, int num2) {
  //sem retorno
  int valorSubtracao = num1 - num2;
  print("Subtração: ${valorSubtracao}");
}

void multiplicacao() {
  print("Digite o primeiro número: ");
  int? num1 = int.parse(stdin.readLineSync()!);
  print("Digite o segundo número: ");
  int? num2 = int.parse(stdin.readLineSync()!);
  int? valorMultiplicacao = num1 * num2;
  print("Total Multiplicação: ${valorMultiplicacao}");
}

void adicionandoCliente() {
  List<String> cliente = [];
  for (int i = 0; i < 5; i++) {}
}

//Função sem parametro, mas com retorno
double divisao() {
  // Com retorno
  double valor = 1 / 2;
  return valor;
}

//Função com parametro, mas com retorno

int soma1(int num1, int num2) {
  int valor = num1 + num2;
  return valor;
}

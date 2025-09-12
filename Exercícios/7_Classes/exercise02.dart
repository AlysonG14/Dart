// Exercise 02 - Conta

import 'dart:io';

class Conta{
  String nome_titular;
  double saldoInicial;
  double? investimento;

  Conta({required this.nome_titular, required this.saldoInicial, this.investimento});

  void informacoesCandidato(){
    print('Esse vai ser o Nome Titular (obrigatório)');
    print('Esse vai ser o Saldo do Candidato (obrigatório):');
    print('Esse vai ser o Investimento do Candidato (opcional):');
  }
}

class ContaCorrente extends Conta{
  double? limite_cheque;
  ContaCorrente({required String nome_titular, required double saldoInicial, double? this.limite_cheque})
  :super(nome_titular: nome_titular, saldoInicial: saldoInicial);

  @override
  void informacoesCandidato(){
    print('Nome Titular ${nome_titular}');
    print('Saldo Atual: ${saldoInicial}');
    if(investimento == null || investimento!.isNaN || investimento!.isNegative){
      print('Não existe investimento nesse candidato');
    } else {
      print('Investimento ${investimento}');
    }
  }
  

  void limite(limite_cheque){
    print('Qual limite da conta, você deve colocar, para o ${nome_titular}?');
    limite_cheque = double.parse(stdin.readLineSync()!);
    print('Limite: ${limite_cheque}');
    print('----------------------');
  }

}

class ContaPoupanca extends Conta{
  double taxaRendimento;
  ContaPoupanca({required String nome_titular, required double saldoInicial, required double this.taxaRendimento})
  :super(nome_titular: nome_titular, saldoInicial: saldoInicial);

  @override
  void informacoesCandidato(){
    print('Nome Titular ${nome_titular}');
    print('Saldo Atual: ${saldoInicial}');
    if(investimento == null || investimento!.isNaN || investimento!.isNegative){
      print('Não existe investimento nesse candidato!');
    } else {
      print('Investimento: ${investimento}');
    }
  }

  void atualizaSaldo(int taxa){

  }
}

void main(){
  
}

dynamic percentual(double saldo, percentual){
  double porcentagem = saldo * (percentual / 100);
  double calcularPorcentagem = porcentagem;
  return calcularPorcentagem;
}
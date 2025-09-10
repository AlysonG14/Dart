// Exercício 02 - Conta de Banco

import 'dart:io';

class Conta {
  String nome_titular;
  double saldoInicial;
  String? investimento;

  Conta({required this.nome_titular, required this.saldoInicial, this.investimento});

  void informacoesObrigatoria(){
    print('');
    print('');
  }

}

class ContaCorrente extends Conta{
  double? limite_cheque;

  ContaCorrente({required String nome_titular, required double saldoInicial, double? limite_cheque})
  :super(nome_titular: nome_titular, saldoInicial: saldoInicial);

  void informacoesObrigatoria(){
    print('Nome Titular: ${nome_titular} |');
    print('Saldo Atual: ${saldoInicial} |');
  }
}

class ContaPoupanca extends Conta{
  double? taxaRendimento;

  ContaPoupanca({required String nome_titular, required double saldoInicial, double? taxaRendimento})
  :super(nome_titular: nome_titular, saldoInicial: saldoInicial);

  void informacoesObrigatoria(){
    print("Nome Titular: ${nome_titular}");
    print("Saldo Atual: ${saldoInicial}");
    print("Taxa de Rendimento: ${taxaRendimento}");
  }
}

void main(){
  ContaCorrente Candidato1 = ContaCorrente(nome_titular: 'Gabriel', saldoInicial: 1800.00);
  ContaCorrente Candidato2 = ContaCorrente(nome_titular: 'Matheus', saldoInicial: 1225.50);
  ContaCorrente Candidato3 = ContaCorrente(nome_titular: 'Murilo', saldoInicial: 5000.00, limite_cheque: 600.00);

  Candidato1.informacoesObrigatoria();
  Candidato2.informacoesObrigatoria();
  Candidato3.informacoesObrigatoria();


}


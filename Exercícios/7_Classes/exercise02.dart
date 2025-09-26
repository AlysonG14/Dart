// Exercise 02 - Conta do Candidato

import 'dart:io';

class Conta {
  String nome_titular;
  double saldoInicial;
  double? investimento;

  Conta({
    required this.nome_titular,
    required this.saldoInicial,
    this.investimento,
  });

  void informacoes() {
    print('Nome Titular: Aqui vai ser o nome do candidato');
    print('Saldo Inicial: Aqui vai ser o saldo atual do candidato');
    print('Investimento: Aqui vai ser o investimento da pessoa');
  }
}

class ContaCorrente extends Conta {
  double? limite_cheque;

  ContaCorrente({
    required String nome_titular,
    required double saldoInicial,
    double? investimento,
    double? limite_cheque,
  }) : super(
         nome_titular: nome_titular,
         saldoInicial: saldoInicial,
         investimento: investimento,
       );

  @override
  void informacoes() {
    print('Nome titular: ${nome_titular}');
    print('Saldo Inicial: ${saldoInicial.toStringAsFixed(2)}');
    if (investimento == null) {
      print('Não existe investimento para essa pessoa!');
      print('----------------------------------------------');
    } else {
      print('Investimento: ${investimento!.toStringAsFixed(2)}');
      print('----------------------------------------------');
    }
  }

  void limite() {
    while (true) {
      print(
        'Deseja aplicar o limite de cheque para ${nome_titular}? \nDigite as opções: \n1- sim \n2- nao',
      );
      String aplicarLimite = stdin.readLineSync()!;
      if (aplicarLimite == 'sim'.toLowerCase() ||
          aplicarLimite == 'sim'.toUpperCase()) {
        print('Quantos? ');
        limite_cheque = double.parse(stdin.readLineSync()!);
        while (limite_cheque!.isNaN ||
            limite_cheque == 0 ||
            limite_cheque!.isNegative) {
          print('Aplicação de Limite errada, tente novamente!');
          limite_cheque = double.parse(stdin.readLineSync()!);
        }
        print('Limite: ${limite_cheque!.toStringAsFixed(2)}');
        print('----------------------------------------------');
        break;
      } else if (aplicarLimite == 'nao'.toLowerCase() ||
          aplicarLimite == 'nao'.toUpperCase()) {
        print('Nenhum limite aplicado!');
        print('----------------------------------------------');
        break;
      }
      ;
    }
  }
}

class ContaPoupanca extends Conta {
  double taxaRendimento;
  ContaPoupanca({
    required String nome_titular,
    required double saldoInicial,
    double? investimento,
    required double this.taxaRendimento,
  }) : super(nome_titular: nome_titular, saldoInicial: saldoInicial, investimento: investimento);

  @override
  void informacoes() {
    print('Nome titular: ${nome_titular}');
    print('Saldo Inicial: ${saldoInicial.toStringAsFixed(2)}');
    if (investimento == null) {
      print('Não existe investimento para essa pessoa!');
    } else {
      print('Investimento: ${investimento!.toStringAsFixed(2)}');
    }
  }

  void aplicarTaxa(double novoSaldoAtualizado) {
    if (novoSaldoAtualizado < 0) {
      print('O valor não pode ser menor que o 0.');
    } else {
      taxaRendimento = novoSaldoAtualizado + saldoInicial;
      print('Salário atualizado c/ taxa: ${taxaRendimento.toStringAsFixed(2)}');
      print('----------------------------------------------');
    }
  }
}

void main() {
  ContaCorrente corrente1 = new ContaCorrente(
    nome_titular: 'Leandro',
    saldoInicial: 4000.00,
    investimento: 20.00,
  );
  ContaCorrente corrente2 = new ContaCorrente(
    nome_titular: 'Miguel',
    saldoInicial: 10000.00,
  );
  ContaCorrente corrente3 = new ContaCorrente(
    nome_titular: 'Murilo',
    saldoInicial: 16000.00,
    investimento: 80.00,
  );

  print('Conta Corrente:');
  print('----------------------------------------------');

  corrente1.informacoes();
  corrente1.limite();
  corrente2.informacoes();
  corrente2.limite();
  corrente3.informacoes();
  corrente3.limite();

  ContaPoupanca poupanca1 = new ContaPoupanca(
    nome_titular: 'Douglas',
    saldoInicial: 1800.00,
    taxaRendimento: 100.00,
    investimento: 200.00,
  );
  ContaPoupanca poupanca2 = new ContaPoupanca(
    nome_titular: 'Henrique',
    saldoInicial: 2200.00,
    taxaRendimento: 200.00,
    investimento: 50.00,
  );
  ContaPoupanca poupanca3 = new ContaPoupanca(
    nome_titular: 'José',
    saldoInicial: 1556.80,
    taxaRendimento: 300.00,
  );

  print('Conta Poupança:');
  print('----------------------------------------------');

  poupanca1.informacoes();
  poupanca1.aplicarTaxa(30.00);
  poupanca2.informacoes();
  poupanca2.aplicarTaxa(80.00);
  poupanca3.informacoes();
  poupanca3.aplicarTaxa(100.00);
}

// Exercise 02 - Conta

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

  void informacoesCandidato() {
    print('Esse vai ser o Nome Titular (obrigatório)');
    print('Esse vai ser o Saldo do Candidato (obrigatório):');
    print('Esse vai ser o Investimento do Candidato (opcional):');
  }
}

class ContaCorrente extends Conta {
  List<Map<String, double>> limite_cheque = [
    {'limite1': 200.00},
    {'limite2': 500.00},
    {'limite3': 800.00},
    {'limite4': 1000.00},
  ];
  ContaCorrente({required String nome_titular, required double saldoInicial})
    : super(nome_titular: nome_titular, saldoInicial: saldoInicial);

  @override
  void informacoesCandidato() {
    print('Nome Titular: ${nome_titular}');
    print('Saldo Atual: ${saldoInicial.toStringAsFixed(2)}');
    if (investimento == null ||
        investimento!.isNaN ||
        investimento!.isNegative) {
      print('Não existe investimento nesse candidato');
      print('---------------------------------------------------');
    } else {
      print('Investimento ${investimento!.toStringAsFixed(2)}');
      print('---------------------------------------------------');
    }
  }

  void limiteCheque() {
    String entradaLimite;
    dynamic adicionarLimite;
    while (true) {
      print(
        'Deseja colocar limite de cheque para o ${nome_titular}? \nDigite as opções: \n1- Sim \n2- Não',
      );
      entradaLimite = stdin.readLineSync()!;
      if (entradaLimite == 'Não' || entradaLimite == '2') {
        print('Você digitou NÃO. A conta ${nome_titular} não tem limites!');
        print('---------------------------------------------------');
        break;
      } else if (entradaLimite == 'Sim' || entradaLimite == '1') {
        print('Limites: ');
        limite_cheque.forEach((limite) => print(limite));
        print('Qual limite, você vai adicionar? Tem essas opções:');
        adicionarLimite = stdin.readLineSync()!;
        do {
          switch (adicionarLimite) {
            case 'limite1':
              limite_cheque.add(adicionarLimite['limite'][0]);
              print('Limite adicionado para ${nome_titular}');
              print('Limite ${limite_cheque}');
              break;
            case 'limite2':
              limite_cheque.add(adicionarLimite['limite'][1]);
              print('Limite adicionado para ${nome_titular}');
              print('Limite ${limite_cheque}');
              break;
            case 'limite3':
              limite_cheque.add(adicionarLimite['limite'][2]);
              print('Limite adicionado para ${nome_titular}');
              print('Limite ${limite_cheque}');
              break;
            case 'limite4':
              limite_cheque.add(adicionarLimite['limite'][3]);
              print('Limite adicionado para ${nome_titular}');
              print('Limite ${limite_cheque}');
              break;
            default:
              print('Opção Inválido! Tente novamente!');
          }
        } while (limite_cheque != 'limite1' ||
            limite_cheque != 'limite2' ||
            limite_cheque != 'limite3' ||
            limite_cheque != 'limite4');
        break;
      }
      break;
    }
  }
}

class ContaPoupanca extends Conta {
  double taxaRendimento;
  ContaPoupanca({
    required String nome_titular,
    required double saldoInicial,
    required double this.taxaRendimento,
  }) : super(nome_titular: nome_titular, saldoInicial: saldoInicial);

  void atualizaSaldo(int taxa) {}
}

void main() {
  // String entradaCheque;
  // int opcaoCandidatos;
  // double cheque;
  // dynamic adicionandoCheque;

  ContaCorrente candidato1 = new ContaCorrente(
    nome_titular: 'Murilo',
    saldoInicial: 2000.00,
  );
  ContaCorrente candidato2 = new ContaCorrente(
    nome_titular: 'David',
    saldoInicial: 1800.00,
  );
  ContaCorrente candidato3 = new ContaCorrente(
    nome_titular: 'Rafael',
    saldoInicial: 2200.00,
  );

  candidato1.informacoesCandidato();
  candidato2.informacoesCandidato();
  candidato3.informacoesCandidato();
  candidato1.limiteCheque();
  candidato2.limiteCheque();
  candidato3.limiteCheque();

  // while (true) {
  //   print(
  //     'Deseja colocar limite de cheque dos candidatos? \nEscolhe uma opção: \n1- sim \n2- não',
  //   );
  //   entradaCheque = stdin.readLineSync()!;
  //   if (entradaCheque == '2') {
  //     print('Escolheu a opção NÃO.');
  //     break;
  //   } else if (entradaCheque == '1') {
  //     do {
  //       print('Candidatos Presentes:');
  //       print('1- ${candidato1.nome_titular}');
  //       print('2- ${candidato2.nome_titular}');
  //       print('3- ${candidato3.nome_titular}');
  //       opcaoCandidatos = int.parse(stdin.readLineSync()!);
  //     } while (opcaoCandidatos < 1 || opcaoCandidatos > 3);
  //
  //     switch (entradaCheque) {
  //       case '1':
  //         print(
  //           'Qual limite de Cheque, você vai colocar no ${candidato1.nome_titular}?',
  //         );
  //         cheque = double.parse(stdin.readLineSync()!);
  //         adicionandoCheque = candidato1.limite_cheque;
  //         candidato1.informacoesCandidato();
  //         print('Limite: ${candidato1.limite_cheque}');
  //         break;
  //       case '2':
  //         candidato2.informacoesCandidato();
  //         break;
  //       case '3':
  //         candidato3.informacoesCandidato();
  //         break;
  //       default:
  //         print('Opção Inválido! Escolhe a opção correta! 1 à 3');
  //     }
  //   }
  // }
}

// dynamic percentual(double saldo, percentual) {
//   double porcentagem = saldo * (percentual / 100);
//   double calcularPorcentagem = porcentagem;
//   return calcularPorcentagem;
// }

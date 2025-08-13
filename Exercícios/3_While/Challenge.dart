// Challenge - Mercadinho do bairro que você foi contratado para fazer esse programa por tela.
import "dart:ffi";
import "dart:io";
import "dart:core";

void main() {
  print(
    "---------------------------------------------------------------------",
  );
  print("Bem vindo, ao MERCADINHO LOJA PREMIUM");
  print(
    "---------------------------------------------------------------------",
  );

  print("Digite o seu nome: ");
  String? nome = stdin.readLineSync();

  print("Digite o seu CPF: ");
  String? entrada = stdin.readLineSync();
  int? CPF = int.parse(entrada!);

  print(
    "---------------------------------------------------------------------",
  );

  print("");

  print("Nome cadastrado");
  print("CPF cadastrado");

  print("");

  print(
    "---------------------------------------------------------------------",
  );

  List<String> itens = [];

  List<double> itensValor = [];

  String? desejaAdicionar = "";
  do {
    print("Digite o nome do item: ");
    String? adicionarNomeItem = stdin.readLineSync()!;
    itens.add(adicionarNomeItem);

    print("Digite o valor do item: ");
    double? adicionarValorItem = double.parse(stdin.readLineSync()!);
    itensValor.add(adicionarValorItem);

    print("Deseja incluir mais itens? Digite: \n1- Sim \n2- Não");
    desejaAdicionar = stdin.readLineSync()!;
  } while (desejaAdicionar == "Sim");

  print(
    "---------------------------------------------------------------------",
  );
  print("Nome: ${nome}");
  print("CPF: ${CPF}");

  // Mostrando os itens comprados

  int contador = 0;

  print("Itens comprados: ");
  for (String item in itens) {
    print("${contador += 1}- ${item}");
  }

  // Mostrando o valor total

  double contadorSoma = 0;

  for (double somaItens in itensValor) {
    contadorSoma += somaItens;
  }
  print("Valor Total: ${contadorSoma.toStringAsFixed(2)}");

  print(
    "---------------------------------------------------------------------",
  );

  // Mostrando a forma de pagamento
  print(
    "Escolha a forma de pagamento: \n1- À VISTA (COM 10% DESCONTO) \n2- PARCELADO COM CARTÃO (COM 10% JUROS) \n3- FIADO (COM 15% A MAIS PARA PAGAR NA PRÓXIMA COMPRA)",
  );

  // Valor de Desconto 10%
  double? desconto = contadorSoma * 0.10;
  double? valorDesconto = contadorSoma - desconto;

  // Valor de Juros 10%
  double? juros = contadorSoma * 0.10;
  double? valorJuros = contadorSoma + juros;

  // Valor de Juros Fiado 15%
  double? jurosFiado = contadorSoma * 0.15;
  double? valorJurosFiado = contadorSoma + jurosFiado;

  String? opcaoPagamento;
  bool pagamentoValido = false;

  while (!pagamentoValido) {
    opcaoPagamento = stdin.readLineSync();

    switch (opcaoPagamento) {
      case "1":
        print("Você escolheu a opção: 1- À VISTA (COM 10% DESCONTO)");
        print("Compra realizada!");
        print("Você pagou: ${valorDesconto.toStringAsFixed(2)}");
        pagamentoValido = true;
        break;

      case "2":
        print("Você escolheu a opção: 2- PARCELADO COM CARTÃO (COM 10% JUROS)");
        print("Compra realizada");
        print("Você pagou: ${valorJuros.toStringAsFixed(2)}");
        print("No próximo mês você vai pagar ${valorJuros / 2}");
        pagamentoValido = true;
        break;

      case "3":
        print(
          "Você escolheu a opção: 3- FIADO (COM 15% A MAIS PARA PAGAR NA PRÓXIMA COMPRA)",
        );
        print("Compra realizada");
        print(
          "Você vai pagar na próxima: ${valorJurosFiado.toStringAsFixed(2)}",
        );
        pagamentoValido = true;
        break;

      default:
        print("Opção Inválido! Tente novamente. Escolhe a opção: 1, 2, 3 ");
    }
  }

  print("-------------------------------------------------");
  print("Obrigado pela compra!");
}

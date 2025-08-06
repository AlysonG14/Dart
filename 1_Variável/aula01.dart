import 'dart:io'; // Importa as funções da linguagem dart

/*
Aqui você comenta em mais
de uma
linha
*/


// 1. Input
// Utilizando o input para digitar o nome
void main(){ // Função principal do codigo, PRECISA TER
  print("Digite seu nome: "); // Imprime para digitar o seu nome
  String? nome = stdin.readLineSync(); // Isso vai fazer com que o Dart leia a linha acima, sem o valor nulo da String.
                                       // stdin -> Entrada de input
                                       // readLineSync -> Vai ler a linha acima. 

  print("Digite a idade: ");
  int? idade = int.parse(stdin.readLineSync()!); // Esse "!" significa para que não aparece como o valor nulo, será que tem como converter a entrada através de um print sem mensagem? 
                                                 // Provavelmente não, por isso ele inverte para !
  
  print("Digite o seu peso: ");
  double peso = double.parse(stdin.readLineSync()!);

// 2. if else                    
              
  if(nome == "Alyson"){
    print("Você é o cara, parabéns borrachudo!");
  } else if(nome == "Leandro"){
    print("Esse é seu irmão, borrachudo!");
  } else {
    print("QUEM É VOCÊ? NÃO É BORRACHUDO!");
  }

  print("Parabéns borrachudo, seu nome é: ${nome}"); // Imprime com o nome da variável "nome" no final com String
  print("Borrachudo, sua idade é: ${idade}"); // Imprime com o nome da variável "idade" no final com int
  print("Borrachudo, o seu peso é: ${peso}"); // Imprime com o nome da variável "peso" no final com double





}
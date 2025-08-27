import "dart:io";

class Humano {
  // Classe humano
  String nome = ""; // Característica ou Atributo
  int idade = 0;
  String genero = "";
  double altura = 0.0;
  String etnia = "";
  double peso = 0.0;

  // Construtor, facilita na criação de objetos.
  Humano(
    this.nome,
    this.idade,
    this.genero,
    this.altura,
    this.etnia,
    this.peso,
  );
}

void main() {
  Humano Alyson = Humano("Alyson", 20, "Masculino", 1.87, "Pardo", 80.00);
  // Qual classe ele vai ser
  // Nome == Alyson
  // Recebe características de quem? -> Humano

  Humano Leandro = Humano("Leandro", 26, "Masculino", 1.80, "Branco", 90.00);
  Leandro.nome = "Leandro Gabriel de Aráujo";
  Leandro.idade = 26;
  Leandro.genero = "Masculino";
  Leandro.altura = 1.83;
  Leandro.peso = 90.00;
  Leandro.etnia = "Branco";

  Humano Caique = Humano("Caique", 25, "Masculino", 1.83, "Branco", 98.00);
  Leandro.nome = "Caique Oliveira";
  Leandro.idade = 25;
  Leandro.genero = "Masculino";
  Leandro.altura = 1.85;
  Leandro.peso = 100.00;
  Leandro.etnia = "Branco";
}

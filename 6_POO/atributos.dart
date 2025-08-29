import 'dart:io';

class Products {
  String name;
  double price;
  String? description; // Atributos opcionais, você deixa eles nulo.

  Products({required this.name, required this.price, this.description});

  // Required -> Diz que o atributo é obrigatório.
  // Atributos com apenas this são os opcionais.

}

void main(){
  Products Refrigerante = Products(name: "Fanta Laranja", price: 19.99);
  Products Refrigerante1 = Products(name: "Pepsi", price: 19.99, description: "Pepsi");

}
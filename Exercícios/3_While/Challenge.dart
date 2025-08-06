// Challenge -

import "dart:io";

void main() {
  List<String> itens = ["Bolacha Oreo", "Wafflers", "Ice Cream"];
  String? item = stdin.readLineSync();
  itens.add(item!);
  print(itens);
}

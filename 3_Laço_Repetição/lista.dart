import "dart:io";

void main(){
  List<String> itens = ["Alyson","Leandro","Caique","Neuza"];
  String? item = stdin.readLineSync();
  itens.add(item!);
}
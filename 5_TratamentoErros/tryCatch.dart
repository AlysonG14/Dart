import 'dart:io';

void main() {
  try {
    // try ->
    print("Type your age: ");
    int? age = int.parse(stdin.readLineSync()!);
  } on FormatException {
    // FormatException -> Se der erro, me mostre.
    print("ONLY AGE!");
  } on RangeError {
    // RangeError ->
    print("Erro de range");
  } catch (e) {
    // catch -> Mostra o erro.
    print("Error: '${e}'");
  } finally {
    // finally -> Independente do que aconteça me mostra isso, seja erro ou sucesso.
    print("Code Finished!");
  }
  List menu = [];
  try {
    menu = [1, 3, 5];
    print(menu[5]);
  } on RangeError {
    print("Value out index of list");
  }
}

import "dart:io";
import "product.dart";

void displayMenu() {
  print("Inventory Management Dashboard");
  print("");
  print("1. Add product");
  print("2. Display products");
  print("3. Update product");
  print("4. Delete product");
  print("Exit");
  print("");
  stdout.write('Choose an option (1-6): ');
}

void main() {
  displayMenu();
  String selected = stdin.readLineSync()!;
}

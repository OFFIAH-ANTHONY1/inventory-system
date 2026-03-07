import "dart:io";
import "book.dart";
import "product.dart";
import "book.dart";
import "electronics.dart";
import "inventory-mg.dart";

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

void addProduct() {
  print("Add Products");
  print("");
  print("Select Product Category");
  print("1. Book");
  print("1.. Electronics");

  String? choice = stdin.readLineSync();

  if (choice != "1" && choice != "2") {
    print("Invalid! enter valid input");
  }

  print("Enter product name: ");
  String? inputName = stdin.readLineSync();
  if (inputName == null || inputName.isEmpty) {
    print("Please enter your products name!");
  }

  print("Enter price: ");
  String? inputPrice = stdin.readLineSync();
  if (inputPrice == null || inputPrice.isEmpty) {
    print("Please enter product price!");
  }

  String? name = inputName;
  double? price = double.tryParse(inputPrice);

  switch (choice) {
    case "1":
      print("Enter Author: ");
      String? inputAuthor = stdin.readLineSync();
      if (inputAuthor == null || inputAuthor.isEmpty) {
        print("Invalid input");
      }

      String? author = inputAuthor;

      var book = Book(0, name, price, author);
      break;
    case "2":
      print("Enter brand: ");
      String? inputBrand = stdin.readLineSync();
      if (inputBrand == null || inputBrand.isEmpty) {
        print("Invalid input");
      }
      break;
  }
}

void main() {
  displayMenu();
  String selected = stdin.readLineSync()!;
}

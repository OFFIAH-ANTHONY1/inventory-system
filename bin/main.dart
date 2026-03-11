import "dart:io";
import "book.dart";
import "electronics.dart";
import "product.dart";
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
  stdout.write('Choose an option (1-4): ');
}

void addProduct() {
  print("Add Products");
  print("");
  print("Select Product Category");
  print("1. Book");
  print("1.. Electronics");

  InventoryManager manager = InventoryManager();

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
  String inputPrice = stdin.readLineSync()!;
  if (inputPrice.isEmpty) {
    print("Please enter product price!");
  }

  String name = inputName!;
  double price = double.tryParse(inputPrice)!;

  switch (choice) {
    case "1":
      print("Enter Author: ");
      String? inputAuthor = stdin.readLineSync();
      if (inputAuthor == null || inputAuthor.isEmpty) {
        print("Invalid input");
      }

      String author = inputAuthor!;

      Book book = Book(0, name, price, author);
      manager.addProduct(book);
      print("Book: $book");
      break;
    case "2":
      print("Enter brand: ");
      String? inputBrand = stdin.readLineSync();
      if (inputBrand == null || inputBrand.isEmpty) {
        print("Invalid input");
      }

      String brand = inputBrand!;

      Electronics electronics = Electronics(0, name, price, brand);
      manager.addProduct(electronics);
      print("Electronics : $electronics");
      break;
  }
}

void main() {
  InventoryManager manager = InventoryManager();

  displayMenu();
  String? selected = stdin.readLineSync();
  if (selected == null || selected.isEmpty) {
    print("Error: Invalid input!");
  }

  if (selected == "1") {
    addProduct();
    print("Product added successfully");
  } else if (selected == "2") {
    print("view products added.");
    manager.viewProduct();
  } else if (selected == "3") {
    manager.updateProduct();
  } else if (selected == "4") {
    manager.deleteProduct();
  } else {
    print("invalid input!");
  }
}

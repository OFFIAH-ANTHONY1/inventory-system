import "product.dart";
import "dart:io";
import "electronics.dart";
import "book.dart";

class InventoryManager {
  List<Product> products = [];
  int prodId = 1;

  void addProduct(Product item) {
    item.id = prodId;
    prodId++;
    products.add(item);
    print("Product added successfully");
  }

  void viewProduct() {
    if (products.isEmpty) {
      print("Inventory is empty!");
      return;
    }
    print("Available Products: ");
    for (var product in products) {
      print(product.getInfo());
    }
  }

  Product? getProductId(int id) {
    try {
      return products.firstWhere((product) => product.id == id);
    } catch (e) {
      return null;
    }
  }

  void updateProduct() {
    stdout.write("Enter item id: ");
    String? id = stdin.readLineSync();
    for (var product in products) {
      if (product.id == id) {
        stdout.write("enter new name: ");
        String newName = stdin.readLineSync()!;
        product.name = newName;
        stdout.write("enter new price: ");
        String newPriceInput = stdin.readLineSync()!;
        double newPrice = double.tryParse(newPriceInput)!;
        product.price = newPrice;
        print("Product updated successfully");
        return;
      } else {
        print("Product not found");
      }
    }
  }

  void deleteProduct() {
    stdout.write("enter the id of product to be removed: ");
    String idInput = stdin.readLineSync()!;
    int? id = int.tryParse(idInput);
    try {
      int initialLength = products.length;

      products.removeWhere((product) => product.id == id);

      if (products.length < initialLength) {
        print("Product deleted");
      } else if (id == null) {
        print("ID is required");
      } else if (id > products.length) {
        print("Product with ID: $id not found!");
      } else {
        print("Error! invalid input");
      }
    } catch (e) {
      print("Error occurred, Product not deleted!");
    }
  }
}

import "product.dart";
import "dart:io";
import "electronics.dart";
import "book.dart";

class inventoryManager {
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

  void UpdateProduct(int id, String newName, double newPrice) {
    stdout.write("Enter item id: ");
    var id = stdin.readLineSync();
    for (var product in products) {
      if (product.id == id) {
        stdout.write("enter new name: ");
        var newName = stdin.readLineSync();
        product.name = newName;
        stdout.write("enter new price: ");
        var newPrice = stdin.readLineSync();
        product.price = newPrice;
        print("Product updated successfully");
        return;
      } else {
        print("Product not found");
      }
    }

    void deleteProduct(int id) {
      try {
        int initialLength = products.length;

        products.removeWhere((product) => product.id == id);

        if (products.length < initialLength) {
          print("Product deleted");
        } else {
          print("Product with ID: $id not found!");
        }
      } catch (e) {
        print("Error occorred, Product not deleted!");
      }
    }
  }
}

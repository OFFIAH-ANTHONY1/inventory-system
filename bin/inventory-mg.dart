import "product.dart";
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
    return products.firstWhere(
      (product) => product.id == id,
      orElse: () => null,
    );
  }

  void UpdateProduct(int id, String newName, double newPrice) {
    for (var product in products) {
      if (product.id == id) {
        product.name = newName;
        product.price = newPrice;
        print("Product updated successfully");
        return;
      }
    }
  }
}

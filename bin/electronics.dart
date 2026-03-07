import "product.dart";

class Electronics extends Product {
  String? brand;

  Electronics(int id, String name, String brand, double price)
    : super(id, name, price);

  String getInfo() {
    return "ID: $id\nTitle: $name\nAuthor: $brand\nPrice: \$$price";
  }
}

import 'product.dart';

class Book extends Product {
  String? author;

  Book(int id, String name, double price, String author)
    : super(id, name, price);

  String getInfo() {
    return "ID: $id\nTitle: $name\nAuthor: $author\nPrice: \$$price";
  }
}

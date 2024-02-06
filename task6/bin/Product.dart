class Product {
  final int id;
  final String category;
  final String name;
  final int price;
  final int count;

  Product(
    this.id,
    this.category,
    this.name,
    this.price,
    this.count,
  );

  @override
  String toString() {
    return "$id\t$category\t$name\t$price руб.\t$count шт.";
  }
}
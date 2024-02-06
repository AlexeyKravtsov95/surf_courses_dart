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
    return 'Product{id: $id, category: $category, name: $name, price: $price, quantity: $count}';
  }
}
import 'Product.dart';

abstract interface class Filter<T> {
  bool apply(T value);
}

class FilterByCategory implements Filter<Product> {
  final String category;

  FilterByCategory(
    this.category
  );

  @override
  bool apply(Product product) => product.category.contains(category);
}

class FilterByPrice implements Filter<Product> {
  final int price;

  FilterByPrice(
    this.price
  );

  @override
  bool apply(Product product) => product.price <= price;
}

class FilterByCount implements Filter<Product> {
  final int count;

  FilterByCount(
    this.count,
  );

  @override
  bool apply(Product product) => product.count < count;
}
import 'Product.dart';
import 'Filter.dart';

void main() {
  List<Product> products = [
    Product(1, "хлеб", "Бородинский", 500, 5),
    Product(2, "хлеб", "Белый", 200, 15),
    Product(3, "молоко", "Полосатый кот", 50, 53),
    Product(4, "молоко", "Коровка", 50, 53),
    Product(5, "вода", "Апельсин", 25, 100),
    Product(6, "вода", "Бородинский", 500, 5),
  ];

  print("Продукты, стоимость которых не больше 200");
  applyFilter(products, FilterByPrice(200));
}

void applyFilter(List<Product> product, Filter filter) {
  var productFilter = product.where(filter.apply);
  productFilter.forEach((element) { print(element); });
}
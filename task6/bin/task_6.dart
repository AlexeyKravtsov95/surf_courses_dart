import 'Product.dart';
import 'Filter.dart';

void main() {
  final articles = '''
    1,хлеб,Бородинский,500,5
    2,хлеб,Белый,200,15
    3,молоко,Полосатый кот,50,53
    4,молоко,Коровка,50,53
    5,вода,Апельсин,25,100
    6,вода,Бородинский,500,5
  ''';

  List <Product> products = mapStringToProducts(articles);

  print("Продукты, стоимость которых не больше 200");
  applyFilter(products, FilterByPrice(200));
}

void applyFilter(List<Product> product, Filter filter) {
  var productFilter = product.where(filter.apply);
  productFilter.forEach((element) { print(element); });
}

/// Мапинг текста в список продуктов
List<Product> mapStringToProducts(String articles) {
  return articles.trim().split('\n').map((line) {
    var parts = line.split(',');
    return Product(
      int.parse(parts[0]),
      parts[1],
      parts[2],
      int.parse(parts[3]),
      int.parse(parts[4]),
    );
  }).toList();
}
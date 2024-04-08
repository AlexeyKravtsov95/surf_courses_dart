import 'package:flutters_project/task11/model/product_entity.dart';

String getAmountGrams(int value) {
  return (value / 1000).toString();
}

String getTotalPriceWithSale(ProductEntity productEntity) {
  return (productEntity.price * (1 - productEntity.sale / 100) ~/ 1).toString();
}
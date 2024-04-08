import 'dart:math';

import 'package:flutters_project/task11/model/product_entity.dart';

String getAmountGrams(int value) {
  return (value / 1000).toString();
}

String getTotalPriceWithSale(ProductEntity productEntity) {
  return (productEntity.price * (1 - productEntity.sale / 100) ~/ 1).toString();
}

String countPrice(List<ProductEntity> products) {
  final result = products.map((product) => product.price).reduce((a, b) => a + b);
  return result.toString();
}

String countSale(List<ProductEntity> products) {
  final result = products.map((product) => product.sale).reduce((a, b) => a + b).toInt();
  return 'Скидка ${result.toString()}%';
}

String countDiffPrice(List<ProductEntity> products) {
  final startPrice = products.map((product) => product.price).reduce((a, b) => a + b);
  final diff = startPrice / products.map((product) => product.sale).reduce((a, b) => a + b).toInt();
  return '-$diff'.toString();
}

String countTotalPrice(List<ProductEntity> products) {
  final startPrice = products.map((product) => product.price).reduce((a, b) => a + b);
  final diff = startPrice / products.map((product) => product.sale).reduce((a, b) => a + b).toInt();
  final total = startPrice - diff;
  return '$total'.toString();
}
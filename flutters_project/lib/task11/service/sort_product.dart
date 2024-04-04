import 'package:flutters_project/task11/model/product_entity.dart';

List<ProductEntity> sortToHightPrice(List<ProductEntity> products) {
  final sortedList = products..sort((a, b) => a.price.compareTo(b.price));

  return sortedList;
}

List<ProductEntity> sortToLowPrice(List<ProductEntity> products) {
  final sortedList = products..sort((b, a) => a.price.compareTo(b.price));

  return sortedList;
}
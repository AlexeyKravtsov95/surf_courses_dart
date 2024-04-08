import 'package:flutters_project/task11/model/product_entity.dart';

List<ProductEntity> sortToHightPrice(List<ProductEntity> products) {
  final sortedList = products..sort((a, b) => a.price.compareTo(b.price));

  return sortedList;
}

List<ProductEntity> sortToLowPrice(List<ProductEntity> products) {
  final sortedList = products..sort((b, a) => a.price.compareTo(b.price));

  return sortedList;
}

List<ProductEntity> sortByNameFromA(List<ProductEntity> products) {
  final sortedList = products..sort((a, b) => a.title.compareTo(b.title));

  return sortedList;
}

List<ProductEntity> sortByNameToA(List<ProductEntity> products) {
  final sortedList = products..sort((b, a) => a.title.compareTo(b.title));

  return sortedList;
}

List<ProductEntity> sortByTypeFromA(List<ProductEntity> products) {
  final sortedList = products..sort((a, b) => a.category.name.compareTo(b.category.name));

  return sortedList;
}

List<ProductEntity> sortByTypeToA(List<ProductEntity> products) {
  final sortedList = products..sort((b, a) => a.category.name.compareTo(b.category.name));

  return sortedList;
}
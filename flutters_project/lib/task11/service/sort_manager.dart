import 'package:flutters_project/task11/model/product_entity.dart';
import 'package:flutters_project/task11/model/sort_type.dart';
import 'package:flutters_project/task11/service/sort_product.dart';

class SortManager {
  List<ProductEntity> sortType(List<ProductEntity> products, SortType value) {
    switch(value) {
      case SortType.lowToHight:
        return sortToHightPrice(products);
      case SortType.hightToLow:
        return sortToLowPrice(products);
      case SortType.byNameFromA:
        return sortByNameFromA(products);
      case SortType.byNameToA:
        return sortByNameToA(products);
      case SortType.byTypeFromA:
        return sortByNameFromA(products);
      case SortType.byTypeToA:
        return sortByTypeToA(products);
      default:
        return products;
    }
  }
}
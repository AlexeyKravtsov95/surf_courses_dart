import 'package:flutters_project/task11/model/product_entity.dart';
import 'package:flutters_project/task11/model/sort_type.dart';

class SortManager {
  List<ProductEntity> sortType(List<ProductEntity> products, SortType value) {
    switch(value) {
      case SortType.lowToHight:
        return _sortToHightPrice(products);
      case SortType.hightToLow:
        return _sortToLowPrice(products);
      case SortType.byNameFromA:
        return _sortByNameFromA(products);
      case SortType.byNameToA:
        return _sortByNameToA(products);
      case SortType.byTypeFromA:
        return _sortByTypeFromA(products);
      case SortType.byTypeToA:
        return _sortByTypeToA(products);
      default:
        return products;
    }
  }

  List<ProductEntity> _sortToHightPrice(List<ProductEntity> products) {
    return products..sort((a, b) => a.price.compareTo(b.price));
  }

  List<ProductEntity> _sortToLowPrice(List<ProductEntity> products) {
    return products..sort((b, a) => a.price.compareTo(b.price));
  }

  List<ProductEntity> _sortByNameFromA(List<ProductEntity> products) {
    return products..sort((a, b) => a.title.compareTo(b.title));
  }

  List<ProductEntity> _sortByNameToA(List<ProductEntity> products) {
    return products..sort((b, a) => a.title.compareTo(b.title));
  }

  List<ProductEntity> _sortByTypeFromA(List<ProductEntity> products) {
    return products..sort((a, b) => a.category.name.compareTo(b.category.name));
  }
  List<ProductEntity> _sortByTypeToA(List<ProductEntity> products) {
    return products..sort((b, a) => a.category.name.compareTo(b.category.name));
  }
}
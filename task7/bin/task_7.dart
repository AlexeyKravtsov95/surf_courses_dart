import 'RawProductItem.dart';
import 'package:collection/collection.dart';

typedef FilterByCategory = Map<String, Map<String, List<String>>>;
void main() {
  final List<RawProductItem> rawProductItem = [
    RawProductItem(
      name: 'Персик',
      categoryName: 'Растительная пища',
      subcategoryName: 'Фрукты',
      expirationDate: DateTime(2022, 12, 22),
      qty: 5,
    ),
    RawProductItem(
      name: 'Молоко',
      categoryName: 'Молочные продукты',
      subcategoryName: 'Напитки',
      expirationDate: DateTime(2024, 12, 22),
      qty: 5,
    ),
    RawProductItem(
      name: 'Кефир',
      categoryName: 'Молочные продукты',
      subcategoryName: 'Напитки',
      expirationDate: DateTime(2022, 12, 22),
      qty: 5,
    ),
    RawProductItem(
      name: 'Творог',
      categoryName: 'Молочные продукты',
      subcategoryName: 'Не напитки',
      expirationDate: DateTime(2022, 12, 22),
      qty: 0,
    ),
    RawProductItem(
      name: 'Творожок',
      categoryName: 'Молочные продукты',
      subcategoryName: 'Не напитки',
      expirationDate: DateTime(2022, 12, 22),
      qty: 0,
    ),
    RawProductItem(
      name: 'Творог',
      categoryName: 'Молочные продукты',
      subcategoryName: 'Не напитки',
      expirationDate: DateTime(2022, 12, 22),
      qty: 0,
    ),
    RawProductItem(
      name: 'Гауда',
      categoryName: 'Молочные продукты',
      subcategoryName: 'Сыры',
      expirationDate: DateTime(2022, 12, 22),
      qty: 3,
    ),
    RawProductItem(
      name: 'Маасдам',
      categoryName: 'Молочные продукты',
      subcategoryName: 'Сыры',
      expirationDate: DateTime(2022, 12, 22),
      qty: 2,
    ),
    RawProductItem(
      name: 'Яблоко',
      categoryName: 'Растительная пища',
      subcategoryName: 'Фрукты',
      expirationDate: DateTime(2022, 12, 4),
      qty: 4,
    ),
    RawProductItem(
      name: 'Морковь',
      categoryName: 'Растительная пища',
      subcategoryName: 'Овощи',
      expirationDate: DateTime(2022, 12, 23),
      qty: 51,
    ),
    RawProductItem(
      name: 'Черника',
      categoryName: 'Растительная пища',
      subcategoryName: 'Ягоды',
      expirationDate: DateTime(2022, 12, 25),
      qty: 0,
    ),
    RawProductItem(
      name: 'Курица',
      categoryName: 'Мясо',
      subcategoryName: 'Птица',
      expirationDate: DateTime(2022, 12, 18),
      qty: 2,
    ),
    RawProductItem(
      name: 'Говядина',
      categoryName: 'Мясо',
      subcategoryName: 'Не птица',
      expirationDate: DateTime(2024, 12, 17),
      qty: 0,
    ),
    RawProductItem(
      name: 'Телятина',
      categoryName: 'Мясо',
      subcategoryName: 'Не птица',
      expirationDate: DateTime(2022, 12, 17),
      qty: 0,
    ),
    RawProductItem(
      name: 'Индюшатина',
      categoryName: 'Мясо',
      subcategoryName: 'Птица',
      expirationDate: DateTime(2022, 12, 17),
      qty: 0,
    ),
    RawProductItem(
      name: 'Утка',
      categoryName: 'Мясо',
      subcategoryName: 'Птица',
      expirationDate: DateTime(2022, 12, 18),
      qty: 0,
    ),
    RawProductItem(
      name: 'Гречка',
      categoryName: 'Растительная пища',
      subcategoryName: 'Крупы',
      expirationDate: DateTime(2024, 12, 22),
      qty: 8,
    ),
    RawProductItem(
      name: 'Свинина',
      categoryName: 'Мясо',
      subcategoryName: 'Не птица',
      expirationDate: DateTime(2024, 12, 23),
      qty: 5,
    ),
    RawProductItem(
      name: 'Груша',
      categoryName: 'Растительная пища',
      subcategoryName: 'Фрукты',
      expirationDate: DateTime(2024, 12, 25),
      qty: 5,
    ),
  ];

  /// https://stackoverflow.com/questions/54029370/flutter-dart-how-to-groupby-list-of-maps
  FilterByCategory outputData = rawProductItem
    .where((product) => 
    product.qty > 0 
    && product.expirationDate.isAfter(DateTime.now()))
    .groupListsBy((product) => product.categoryName).map((key, value) => 
    MapEntry(key, value.groupListsBy((product) => product.subcategoryName).map((key, value) => 
    MapEntry(key, value.map((product) => product.name).toList()))));

  print(outputData);
}
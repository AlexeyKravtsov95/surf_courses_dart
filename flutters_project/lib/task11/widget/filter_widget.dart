import 'package:flutter/material.dart';
import 'package:flutters_project/task11/model/product_entity.dart';
import 'package:flutters_project/task11/model/sort_type.dart';
import 'package:flutters_project/task11/resources/style.dart';
import 'package:flutters_project/task11/widget/sorted_category_text_widget.dart';
import 'package:flutters_project/task11/widget/sorted_text_widget.dart';

class FilterWidget extends StatefulWidget {
  final SortType sortType;
  final List<ProductEntity> products;

  const FilterWidget({
    required this.sortType,
    required this.products,
    super.key
  });

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  late SortType sortType;

  @override
  void initState() {
    super.initState();
    sortType = widget.sortType;
  }

  void _sortChanged(SortType? value) {
    setState(() {
      if (value != null) {
        sortType = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 24, right: 24),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                    'Сортировка',
                    style: TextStyle(
                      color: ColorsData.text,
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    child: Icon(Icons.close, size: 24),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
            RadioListTile(
              fillColor: MaterialStatePropertyAll(ColorsData.lightGreen),
              title: const SortedText(text: 'Без сортировки'),
              value: SortType.withoutSort,
              groupValue: sortType, 
              onChanged: _sortChanged
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SortedCategoryText(text: 'По имени')
            ),
            RadioListTile(
              fillColor: MaterialStatePropertyAll(ColorsData.lightGreen),
              title: const SortedText(text: 'По имени от А до Я'),
              value: SortType.byNameFromA,
              groupValue: sortType, 
              onChanged: _sortChanged
            ),
            RadioListTile(
              fillColor: MaterialStatePropertyAll(ColorsData.lightGreen),
              title: const SortedText(text: 'По имени Я до А'),
              value: SortType.byNameToA,
              groupValue: sortType, 
              onChanged: _sortChanged
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SortedCategoryText(text: 'По цене')
            ),
            RadioListTile(
              fillColor: MaterialStatePropertyAll(ColorsData.lightGreen),
              title: const SortedText(text: 'По возрастанию'),
              value: SortType.lowToHight,
              groupValue: sortType, 
              onChanged: _sortChanged
            ),
            RadioListTile(
              fillColor: MaterialStatePropertyAll(ColorsData.lightGreen),
              title: const SortedText(text: 'По убыванию'),
              value: SortType.hightToLow,
              groupValue: sortType, 
              onChanged: _sortChanged
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SortedCategoryText(text: 'По типу')
            ),
            RadioListTile(
              fillColor: MaterialStatePropertyAll(ColorsData.lightGreen),
              title: const SortedText(text: 'По типу от А до Я'),
              value: SortType.byTypeFromA,
              groupValue: sortType, 
              onChanged: _sortChanged
            ),
            RadioListTile(
              fillColor: MaterialStatePropertyAll(ColorsData.lightGreen),
              title: const SortedText(text: 'По типу от Я до А'),
              value: SortType.byTypeToA,
              groupValue: sortType, 
              onChanged: _sortChanged
            ),
            const SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 40),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  backgroundColor: ColorsData.lightGreen
                  ),
                  onPressed: () {
                  Navigator.pop(
                    context,
                    sortType,
                    );
                  },
                  child: Text(
                    'Готов',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
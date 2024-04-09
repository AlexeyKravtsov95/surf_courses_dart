import 'package:flutter/material.dart';
import 'package:flutters_project/task11/assets/strings.dart';
import 'package:flutters_project/task11/model/product_entity.dart';
import 'package:flutters_project/task11/model/sort_type.dart';
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
                    AppStrings.modalTitle,
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).colorScheme.secondary)
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    child: const Icon(Icons.close, size: 24),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
            RadioListTile(
              fillColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.onPrimary),
              title: const SortedText(text: AppStrings.withoutSortTitle),
              value: SortType.withoutSort,
              groupValue: sortType, 
              onChanged: _sortChanged
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SortedCategoryText(text: AppStrings.sortByNameTitle)
            ),
            RadioListTile(
              fillColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.onPrimary),
              title: const SortedText(text: AppStrings.sortByNameFromATitle),
              value: SortType.byNameFromA,
              groupValue: sortType, 
              onChanged: _sortChanged
            ),
            RadioListTile(
              fillColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.onPrimary),
              title: const SortedText(text: AppStrings.sortByNameToATitle),
              value: SortType.byNameToA,
              groupValue: sortType, 
              onChanged: _sortChanged
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SortedCategoryText(text: AppStrings.sortByPriceTitle)
            ),
            RadioListTile(
              fillColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.onPrimary),
              title: const SortedText(text: AppStrings.sortByPriceToHightTitle),
              value: SortType.lowToHight,
              groupValue: sortType, 
              onChanged: _sortChanged
            ),
            RadioListTile(
              fillColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.onPrimary),
              title: const SortedText(text: AppStrings.sortByPriceToLowTitle),
              value: SortType.hightToLow,
              groupValue: sortType, 
              onChanged: _sortChanged
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SortedCategoryText(text: AppStrings.sortByTypeTitle)
            ),
            RadioListTile(
              fillColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.onPrimary),
              title: const SortedText(text: AppStrings.sortByTypeFromATitle),
              value: SortType.byTypeFromA,
              groupValue: sortType, 
              onChanged: _sortChanged
            ),
            RadioListTile(
              fillColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.onPrimary),
              title: const SortedText(text: AppStrings.sortByTypeToATitle),
              value: SortType.byTypeToA,
              groupValue: sortType, 
              onChanged: _sortChanged
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 40),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  backgroundColor: Theme.of(context).colorScheme.onPrimary
                  ),
                  onPressed: () {
                  Navigator.pop(
                    context,
                    sortType,
                    );
                  },
                  child: Text(
                    AppStrings.readyTitle,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.secondaryContainer)
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
import 'package:flutter/material.dart';
import 'package:flutters_project/task11/assets/strings.dart';
import 'package:flutters_project/task11/model/product_data.dart';
import 'package:flutters_project/task11/service/utils.dart';

class ProductTotalWidget extends StatelessWidget {
  const ProductTotalWidget({
    super.key
  });

  @override
  Widget build(BuildContext context) {
  final products = ProductData.dataForStudents;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.summaryTitle,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.secondary
          )
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${products.length} товаров',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: Theme.of(context).colorScheme.secondary
              )
            ),
            Text(
              '${countPrice(products)} руб',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.secondary
              )
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              countSale(products),
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: Theme.of(context).colorScheme.secondary
              )
            ),
            Text(
              '${countDiffPrice(products)} руб',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.secondary
              )
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text(AppStrings.totalTitle,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.secondary
              )
            ),
            Text(
              countTotalPrice(products),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.secondary
              )
            ),
          ],
        ),
      ],
    );
  }
}
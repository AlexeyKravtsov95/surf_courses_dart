import 'package:flutter/material.dart';
import 'package:flutters_project/task11/model/product_entity.dart';
import 'package:flutters_project/task11/service/utils.dart';

class ItemWidget extends StatelessWidget {
  final ProductEntity products;
  final bool hasCategory;

  const ItemWidget({
    required this.products,
    required this.hasCategory,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(hasCategory) ...[
          Text(products.category.name,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.secondary)
          ),
          const SizedBox(height: 16)
        ],
        Row(
          children: [
            SizedBox(
              height: 68,
              width: 68,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    products.imageUrl,
                    fit: BoxFit.cover,
                    loadingBuilder:(context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const Center(child: CircularProgressIndicator());
                    },
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    products.title,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: Theme.of(context).colorScheme.secondary
                    ),
                  ),
                  Row(
                    children: [
                      if(products.amount is Quantity)
                      Text('${products.amount.value.toString()} шт',
                        style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: Theme.of(context).colorScheme.secondary
                        ),
                      ),
                      if(products.amount is Grams)
                      Text('${getAmountGrams(products.amount.value)} кг',
                      style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Theme.of(context).colorScheme.secondary
                        ),
                      ),
                      const Spacer(),
                      if (products.sale > 0)
                      Text(
                        '${products.price.toString()} руб',
                        style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: Theme.of(context).colorScheme.tertiary,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Theme.of(context).colorScheme.tertiary
                        ),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        '${getTotalPriceWithSale(products)} руб',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: (products.sale > 0) ? Theme.of(context).colorScheme.error : Theme.of(context).colorScheme.secondary
                        )
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16)
      ]
    );
  }
}
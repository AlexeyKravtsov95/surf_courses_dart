import 'package:flutter/material.dart';
import 'package:flutters_project/task11/model/product_entity.dart';
import 'package:flutters_project/task11/resources/style.dart';
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
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: ColorsData.text,
            ),
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
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorsData.text,
                    ),
                  ),
                  Row(
                    children: [
                      if(products.amount is Quantity)
                      Text('${products.amount.value.toString()} шт',
                        style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: ColorsData.text,
                        ),
                      ),
                      if(products.amount is Grams)
                      Text('${getAmountGrams(products.amount.value)} кг',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: ColorsData.text,
                        ),
                      ),
                      const Spacer(),
                      if (products.sale > 0)
                      Text(
                        '${products.price.toString()} руб',
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          decorationColor: ColorsData.lightGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: ColorsData.lightGrey,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        '${getTotalPriceWithSale(products)} руб',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: (products.sale > 0) 
                          ? ColorsData.errorColor 
                          : ColorsData.text
                        ),
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
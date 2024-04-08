import 'package:flutter/material.dart';
import 'package:flutters_project/task11/model/product_data.dart';
import 'package:flutters_project/task11/resources/style.dart';
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
          'В вашей покупке',
          style: TextStyle(
            color: ColorsData.text,
            fontSize: 16,
            fontWeight: FontWeight.w700
            )
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${products.length} товаров',
              style: TextStyle(
                color: ColorsData.text,
                fontSize: 12,
                fontWeight: FontWeight.w400
              )
            ),
            Text(
              '${countPrice(products)} руб',
              style: TextStyle(
                color: ColorsData.text,
                fontSize: 12,
                fontWeight: FontWeight.w700
              )
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${countSale(products)}',
              style: TextStyle(
                color: ColorsData.text,
                fontSize: 12,
                fontWeight: FontWeight.w400
              )
            ),
            Text(
              '${countDiffPrice(products)} руб',
                style: TextStyle(
                  color: ColorsData.text,
                  fontSize: 12,
                  fontWeight: FontWeight.w700
              )
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Итого',
              style: TextStyle(
                color: ColorsData.text,
                fontSize: 16,
                fontWeight: FontWeight.w700
             )
            ),
            Text(
              '${countTotalPrice(products)}',
              style: TextStyle(
                color: ColorsData.text,
                fontSize: 16,
                fontWeight: FontWeight.w700
             )
            ),
          ],
        ),
      ],
    );
  }
}
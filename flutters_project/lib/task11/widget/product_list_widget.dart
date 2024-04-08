import 'package:flutter/material.dart';
import 'package:flutters_project/task11/model/product_data.dart';
import 'package:flutters_project/task11/model/product_entity.dart';
import 'package:flutters_project/task11/model/sort_type.dart';
import 'package:flutters_project/task11/service/sort_manager.dart';
import 'package:flutters_project/task11/widget/bottom_nav_bar_widget.dart';
import 'package:flutters_project/task11/resources/style.dart';
import 'package:flutters_project/task11/widget/filter_widget.dart';
import 'package:flutters_project/task11/widget/item_widget.dart';
import 'package:flutters_project/task11/widget/product_total_widget.dart';
import 'package:flutters_project/task11/widget/sort_button_widget.dart';

class ProductListWidget extends StatefulWidget {
  const ProductListWidget({
    super.key
  });

  @override
  State<ProductListWidget> createState() => _ProductListWidget();
}

class _ProductListWidget extends State<ProductListWidget> {
  SortType sortType = SortType.withoutSort;
  final products = ProductData.dataForStudents;
  final sortManager = SortManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Column(
          children: [
            Text(
              'Чек № 56',
              style: TextStyle(
                color: ColorsData.text,
                fontSize: 18,
                fontWeight: FontWeight.w700
              ),
            ),
            Text(
              '24.02.23 в 12:23',
              style: TextStyle(
                color: ColorsData.secondaryText,
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: ColorsData.arrowColor,
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: const BottomNavBar(),
      
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(children: [
           Row(
            children: [
              Expanded(
                child: Text(
                  'Список покупок',
                  style: TextStyle(
                    color: ColorsData.text,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SortButtonWidget(
                sortType: sortType,
                onTap: () async {
                  final selectedTypeSort = await showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return FilterWidget(sortType: sortType, products: products);
                    }
                  );
                  if (selectedTypeSort != null) {
                    setState(() {
                      sortType = selectedTypeSort;
                    });
                  }
                },
              ),
            ],
          ),
              const SizedBox(height: 16),
              FutureBuilder(
                future: Future<List<ProductEntity>>.delayed(
                  const Duration(seconds: 2),
                  () => products
                ), 
                builder: ((context, AsyncSnapshot <List<ProductEntity>> snapshot) {
                  if (snapshot.hasData) {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          final item = sortManager.sortType(products, sortType)[index];
                          return Column(
                              children: [
                                ItemWidget(
                                  products: item, 
                                  hasCategory: (index == 0 || 
                                  item.category != sortManager.sortType(products, sortType)[index-1].category)
                                  && (sortType == SortType.byTypeToA || sortType == SortType.byTypeFromA),
                                )
                              ],
                            );
                          }
                        ) 
                      );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }),
              ),
              const Divider(),
              ProductTotalWidget(),
        ]),
      ),
    );
  }
}
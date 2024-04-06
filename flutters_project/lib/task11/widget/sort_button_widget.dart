import 'package:flutter/material.dart';
import 'package:flutters_project/task11/model/sort_type.dart';
import 'package:flutters_project/task11/resources/style.dart';

class SortButtonWidget extends StatelessWidget {
  final SortType sortType;
  final VoidCallback onTap;

  const SortButtonWidget({ 
    super.key,
    required this.sortType,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ColorsData.iconsBackgroundColor
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Center(
              child: Icon(
                Icons.sort,
                color: ColorsData.iconsColor,
              ),
            ),
            if (sortType != SortType.withoutSort)
              const Positioned(
                  right: 4,
                  bottom: 4,
                  child: Icon(
                    Icons.circle,
                    color: ColorsData.lightGreen,
                    size: 8,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common.widgets/category_collection.dart';

class GridViewItems extends StatelessWidget {
  const GridViewItems({
    super.key,
    required this.categoryCollection,
  });

  final CategoryCollection categoryCollection;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 16 / 9,
      padding: EdgeInsets.all(10),
      children: categoryCollection.categories
          .map(
            (category) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF1A191D),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        category.icon,
                        SizedBox(width: 8),
                        Text(
                          '0',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Text(category.name),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

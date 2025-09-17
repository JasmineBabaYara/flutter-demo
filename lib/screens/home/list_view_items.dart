import 'package:flutter/material.dart';
import 'package:flutter_application_1/common.widgets/category_collection.dart';
import 'package:flutter_application_1/models/category.dart';

class ListViewItems extends StatefulWidget {
  final CategoryCollection categoryCollection;
  const ListViewItems({required this.categoryCollection});

  @override
  State<ListViewItems> createState() => _ListViewItemsState();
}

class _ListViewItemsState extends State<ListViewItems> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: widget.categoryCollection.categories
          .map((category) => Text(category.name))
          .toList(),
    );
  }
}

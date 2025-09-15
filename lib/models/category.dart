import 'package:flutter_application_1/common.widgets/category_icon.dart';

class Category {
  String id;
  String name;
  bool? isChecked;
  final CategoryIcon icon;

  Category({
    required this.id,
    required this.name,
    this.isChecked = false,
    required this.icon,
  });
}

var category = (id: '1', name: 'Category 1');

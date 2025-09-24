import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common.widgets/category_icon.dart';
import 'package:flutter_application_1/models/category.dart';

class CategoryCollection {
    final List<Category> _categories = [
       Category(
      id: 'today',
      name: 'Today',
      icon: CategoryIcon(
        bgColor: CupertinoColors.systemBlue,
        iconData: CupertinoIcons.calendar_today,
      ),
    ),
    Category(
      id: 'schedule',
      name: 'Scheduled',
      icon: CategoryIcon(
        bgColor: CupertinoColors.systemRed,
        iconData: CupertinoIcons.calendar,
      ),
    ),
    Category(
      id: 'all',
      name: 'All',
      icon: CategoryIcon(
        bgColor: CupertinoColors.systemGrey,
        iconData: Icons.inbox_rounded,
      ),
    ),
    Category(
      id: 'flag',
      name: 'Flagged',
      icon: CategoryIcon(
        bgColor: CupertinoColors.activeOrange,
        iconData: CupertinoIcons.flag_fill,
      ),
    ),
  ];
}

List <Category> get categories => _categories;
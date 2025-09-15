import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common.widgets/category_collection.dart';
import 'package:flutter_application_1/common.widgets/category_icon.dart';
import 'package:flutter_application_1/models/category.dart';
import 'package:flutter_application_1/screens/home/footer.dart';
import 'package:flutter_application_1/screens/home/grid_view_items.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  CategoryCollection categoryCollection = CategoryCollection();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Edit',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: GridViewItems(categoryCollection: categoryCollection),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}




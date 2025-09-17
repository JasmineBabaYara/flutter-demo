import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common.widgets/category_collection.dart';
import 'package:flutter_application_1/common.widgets/category_icon.dart';
import 'package:flutter_application_1/models/category.dart';
import 'package:flutter_application_1/screens/home/footer.dart';
import 'package:flutter_application_1/screens/home/grid_view_items.dart';
import 'package:flutter_application_1/screens/home/list_view_items.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String layoutType = 'list';

  CategoryCollection categoryCollection = CategoryCollection();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              if(layoutType == 'grid'){
                setState(() {
                  layoutType = 'list';
                });
              } else {
                setState(() {
                  layoutType = 'grid';
                });
              }
  },
  child: Text(
    layoutType == 'grid' ? 'Edit' : 'Done',
    style: TextStyle(color: Colors.white, fontSize: 20),
  ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: layoutType == 'grid'
                  ? GridViewItems(categoryCollection: categoryCollection)
                  : ListViewItems(categoryCollection: categoryCollection),
            ),
            Footer(),
          ],
        ),
      ),
    );
  
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Category> categories = [
    Category(id: 'today', name: 'Today'),
    Category(id: 'schedule', name: 'Scheduled'),
    Category(id: 'all', name: 'All'),
    Category(id: 'flag', name: 'Flagged'),
  ];

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
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 16 / 9,
                padding: EdgeInsets.all(10),
                children: categories
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.email, color: Colors.white),
                                  SizedBox(width: 8),
                                  Text('0', style: TextStyle(color: Colors.white)),
                                ],
                              ),
                               Text(category.name)
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add_circle, color: Colors.blue, size: 30),
                    label: Text(
                      'New Reminder',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Add List',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

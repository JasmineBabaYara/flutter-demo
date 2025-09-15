import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
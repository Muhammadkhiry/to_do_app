import 'package:flutter/material.dart';

class AddTaskWidget extends StatelessWidget {
  const AddTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: Column(
        children: [
          Text(
            "Add New Task",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

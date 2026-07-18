import 'package:flutter/material.dart';

class NoTasksWidget extends StatelessWidget {
  const NoTasksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 311,
          width: double.infinity,

          child: Image.asset("assets/undraw_no.png", fit: BoxFit.fill),
        ),
        Text(
          "You have no tasks yet!",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Tap + to add your first task",
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

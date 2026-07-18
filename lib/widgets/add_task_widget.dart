import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/custom_button.dart';
import 'package:to_do_app/widgets/custom_text_field.dart';

class AddTaskWidget extends StatelessWidget {
  AddTaskWidget({super.key});
  final TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11),
      child: SizedBox(
        width: double.infinity,
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add New Task",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 15),

            CustomTextField(label: "Task Title", icon: "assets/checklist.png"),
            SizedBox(height: 25),
            CustomTextField(
              label: "Set Date",
              icon: "assets/calendar.png",
              readOnly: true,
              controller: dateController,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2030),

                  builder: (BuildContext context, Widget? child) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        useMaterial3: true,
                        colorScheme: const ColorScheme.light(
                          primary: Color(0xFF00B4D8),
                          onPrimary: Colors.white,
                          surface: Colors.white,
                          onSurface: Color(0xFF0F172A),
                        ),
                        dialogTheme: DialogThemeData(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                      ),
                      child: child!,
                    );
                  },
                );

                if (pickedDate != null) {
                  String formattedDate =
                      "${pickedDate.year}-${pickedDate.month}-${pickedDate.day}";

                  dateController.text = formattedDate;
                }
              },
            ),

            SizedBox(height: 25),
            CustomButton(label: "Save Task", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

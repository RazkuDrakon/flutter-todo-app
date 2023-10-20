import 'package:flutter/material.dart';
import 'package:to_do_app/util/dialog_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;


  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder(),
                  hintText: "Add a new task"),
            ), //get user input
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DialogButton(text: "Save", onPressed: onSave),
                const SizedBox(width: 8),
                DialogButton(text: "Cancel", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

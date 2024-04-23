import 'package:flutter/material.dart';
import 'package:testapp/components/button.dart';

class DialogBox extends StatelessWidget {
  final onSaveFunc, onCancelFunc;
  final TextEditingController controller;

  const DialogBox(
      {super.key,
      required this.controller,
      required this.onSaveFunc,
      required this.onCancelFunc});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
            height: 140,
            child: Column(
              children: [
                Text("Task"),
                TextField(
                  controller: controller,
                  onSubmitted: (String value) {},
                  decoration: InputDecoration(
                    hintText: "Task",
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Button(text: "Add", onClickedFunc: onSaveFunc),
                    Button(text: "Cancel", onClickedFunc: onCancelFunc),
                  ],
                ),
              ],
            )),
      ),
      backgroundColor: Colors.white,
    );
  }
}

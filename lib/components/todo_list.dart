import 'package:flutter/material.dart';

class ToDoListTile extends StatelessWidget {
  String? textContent;
  bool? checked;
  var onChangedFunc;

  ToDoListTile(
      {super.key,
      required this.checked,
      required this.onChangedFunc,
      required this.textContent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        top: 25,
        bottom: 0,
      ),
      child: Container(
        child: Row(
          children: [
            Checkbox(
              value: checked,
              onChanged: onChangedFunc,
              activeColor: Colors.black,
            ),
            Text(
              "${textContent}",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.cyan,
        ),
      ),
    );
  }
}

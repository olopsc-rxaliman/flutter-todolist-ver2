import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final onClickedFunc;
  final String? text;

  const Button({super.key, required this.text, required this.onClickedFunc});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        "${text}",
      ),
      onPressed: () => onClickedFunc(),
    );
  }
}

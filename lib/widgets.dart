import 'package:flutter/material.dart';

Widget textField({
  required TextEditingController controller,
  required String hint,
}) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(hintText: hint),
  );
}

Widget button({
  required String text,
  required void Function() onPressed,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(text),
  );
}

Widget spacer(double height) {
  return SizedBox(height: height);
}

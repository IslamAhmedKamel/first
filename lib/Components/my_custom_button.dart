import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  final String string;
  final Color? color;
  final VoidCallback onPressed;
  const MyCustomButton({
    this.color,
    required this.string,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.orange,
        ),
        child: Text(
          string,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

// class MyCustomButton extends StatelessWidget {
//   const MyCustomButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {},
//       child: Text("Add 2 points", style: TextStyle(color: Colors.white)),
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.orange,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//       ),
//     );
//   }
// }
class MyCustomButton extends StatefulWidget {
  final String string;
  final Color? color;
  final VoidCallback onPressed;
  const MyCustomButton({
    this.color,
    required this.string,
    required this.onPressed,
  });

  @override
  State<MyCustomButton> createState() => _MyCustomButtonState();
}

class _MyCustomButtonState extends State<MyCustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(
        widget.string,
        style: TextStyle(color: widget.color ?? Colors.white),
      ),
    );
  }
}

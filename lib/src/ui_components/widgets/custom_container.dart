
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double? width;
  final double ?height;
  final Widget childWidget;
  final Color color; 
  const CustomContainer({
    super.key, this.width, this.height, required this.childWidget, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: childWidget
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_application/src/ui_components/theme/app_colors.dart';

class CustomButton extends StatelessWidget {
  final Widget childWidget;
  
  const CustomButton({
    required this.childWidget,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: blue,
        borderRadius: BorderRadius.circular(15),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: childWidget,
    );
  }
}

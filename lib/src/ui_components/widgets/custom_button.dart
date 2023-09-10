
import 'package:flutter/material.dart';
import 'package:test_application/src/ui_components/theme/app_colors.dart';
import 'package:test_application/src/ui_components/theme/text_style.dart';
class CustomButtom extends StatelessWidget {
  final Widget childWidget;
  const CustomButtom({
    required this.childWidget,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      padding: const EdgeInsets.only(left: 16 , right: 16 , top: 12 , bottom: 28),
      child: Container(
        decoration: BoxDecoration(
          color: blue,
          borderRadius: BorderRadius.circular(15),
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: childWidget
      ),
    );
  }
}

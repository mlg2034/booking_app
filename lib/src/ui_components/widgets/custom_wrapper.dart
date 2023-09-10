import 'package:flutter/material.dart';
import 'package:test_application/src/ui_components/theme/app_colors.dart';
import 'package:test_application/src/ui_components/theme/text_style.dart';
import 'package:test_application/src/ui_components/widgets/custom_container.dart';

class CustomWrapper extends StatelessWidget {
  const CustomWrapper({
    super.key,
    required this.hotelFeatures,
  });

  final List<String> hotelFeatures;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 8.0,
      runSpacing: 8.0,
      children: hotelFeatures.map((feature) {
        return CustomContainer(
          childWidget: Text(
            feature,
            style: w500s18.copyWith(color: grey),
          ),
          color: lightGrey,
        );
      }).toList(),
    );
  }
}

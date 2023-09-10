
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_application/src/ui_components/theme/app_colors.dart';
import 'package:test_application/src/ui_components/theme/text_style.dart';
class HotelFeatureWidget extends StatelessWidget {
  const HotelFeatureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: lightGrey,
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/icons/smile.svg'),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Удобства',
                      style: w500s16.copyWith(color: black),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Самое необходимое',
                      style: w500s14.copyWith(color: grey),
                    ),
                  ],
                ),
                const Spacer(),
                SvgPicture.asset(
                    'assets/icons/arrow_right.svg')
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Divider(
                height: 2,
                color: grey,
              ),
            ),
            Row(
              children: [
                SvgPicture.asset('assets/icons/check.svg'),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Удобства',
                      style: w500s16.copyWith(color: black),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Самое необходимое',
                      style: w500s14.copyWith(color: grey),
                    ),
                  ],
                ),
                const Spacer(),
                SvgPicture.asset(
                    'assets/icons/arrow_right.svg')
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Divider(
                height: 2,
                color: grey,
              ),
            ),
            Row(
              children: [
                SvgPicture.asset('assets/icons/remove.svg'),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Удобства',
                      style: w500s16.copyWith(color: black),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Самое необходимое',
                      style: w500s14.copyWith(color: grey),
                    ),
                  ],
                ),
                const Spacer(),
                SvgPicture.asset(
                    'assets/icons/arrow_right.svg')
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_application/src/features/hotel/presentation/widgets/base_info_widget.dart';
import 'package:test_application/src/features/hotel/presentation/widgets/hotel_feature_widget.dart';
import 'package:test_application/src/ui_components/theme/app_colors.dart';
import 'package:test_application/src/ui_components/theme/text_style.dart';
import 'package:test_application/src/ui_components/widgets/custom_button.dart';
import 'package:test_application/src/ui_components/widgets/custom_container.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  final List<String> hotelFeatures = [
    '3-я линия',
    'Платный Wi-Fi в фойе',
    '30 км до аэропорта',
    '1 км до пляжа'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Hotel',
          style: w500s22.copyWith(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BaseHotelInfo(),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 12),
              child: Container(
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          'Об отеле',
                          style: w500s22.copyWith(color: black),
                        ),
                      ),
                      Wrap(
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12, bottom: 16),
                        child: Text(
                          'Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!',
                          style: w400s16.copyWith(color: black),
                        ),
                      ),
                      HotelFeatureWidget(),
                    ],
                  ),
                ),
              ),
            ),
            CustomButtom(
              childWidget: Text(
                'К выбору номера',
                style: w500s16.copyWith(color: white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_application/src/ui_components/theme/app_colors.dart';
import 'package:test_application/src/ui_components/theme/text_style.dart';
import 'package:test_application/src/ui_components/widgets/custom_button.dart';
import 'package:test_application/src/ui_components/widgets/custom_container.dart';
import 'package:test_application/src/ui_components/widgets/custom_wrapper.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  int currentIndex = 0;
  List<String> hotelFeatures = ['Все включено', 'Кондиционер'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              GestureDetector(
                onTap: ()=>Navigator.of(context).pop(),
                child: SvgPicture.asset('assets/icons/arrow_left.svg')),
              const Spacer(),
              Text(
                'Hotel',
                style: w500s22.copyWith(color: Colors.black),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CarouselSlider.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        Container(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/hotel.png',
                          width: double.infinity,
                          height: 253,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    options: CarouselOptions(
                        pageSnapping: false,
                        viewportFraction: 1,
                        enableInfiniteScroll: false,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        }),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5)),
                        width: 73,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            3,
                            (index) {
                              return Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 2.0),
                                width: 8.0,
                                height: 8.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (index == currentIndex)
                                      ? black // активный индикатор
                                      : grey.withOpacity(
                                          0.5), // неактивный индикатор
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Стандартный с видом на бассейн или сад',
                  style: w500s22.copyWith(color: black),
                ),
              ),
              CustomWrapper(hotelFeatures: hotelFeatures),
              const SizedBox(
                height: 8,
              ),
              CustomContainer(
                childWidget: Row(
                  children: [
                    Text(
                      'Подробнее о номере',
                      style: w500s16.copyWith(color: blue),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    SvgPicture.asset('assets/icons/blue_arrow_right.svg')
                  ],
                ),
                color: lightBlue,
                width: 192,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    Text(
                      'от 134 673 ₽',
                      style: w600s30.copyWith(color: black),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'за тур с перелётом',
                      style: w400s16.copyWith(color: grey),
                    )
                  ],
                ),
              ),
              CustomButton(
                childWidget: Center(
                  child: Text(
                    'Выбрать номер',
                    style: w500s16.copyWith(color: white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

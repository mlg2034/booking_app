import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_application/src/ui_components/theme/app_colors.dart';
import 'package:test_application/src/ui_components/theme/text_style.dart';
import 'package:test_application/src/ui_components/widgets/custom_container.dart';

class BaseHotelInfo extends StatefulWidget {
  const BaseHotelInfo({
    super.key,
  });

  @override
  State<BaseHotelInfo> createState() => _BaseHotelInfoState();
}

class _BaseHotelInfoState extends State<BaseHotelInfo> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
    decoration:const ShapeDecoration(
color: Colors.white,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12) , bottomRight: Radius.circular(12) ),
),
),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              CarouselSlider.builder(
                itemCount: 3,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
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
                    decoration: BoxDecoration(color: white , borderRadius: BorderRadius.circular(5)),
                    width: 73,
                    padding:const EdgeInsets.symmetric(horizontal: 10 , vertical:5 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 2.0),
                            width: 8.0,
                            height: 8.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (index == currentIndex)
                                  ? black // активный индикатор
                                  : grey
                                      .withOpacity(0.5), // неактивный индикатор
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
            padding: const EdgeInsets.only(top: 16),
            child: CustomContainer(
              height: 29,
              width: 151,
              childWidget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/star.svg'),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    '5 Превосходно',
                    style: w500s16.copyWith(color: yellow),
                  ),
                ],
              ),
              color: lightYellow,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              'Steigenberger Makadi',
              style: w500s22.copyWith(color: black),
            ),
          ),
          Text(
            'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
            style: w500s14.copyWith(color: blue),
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
          )
        ],
      ),
    );
  }
}

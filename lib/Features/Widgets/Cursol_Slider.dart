import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceproject/Core/Resources/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Core/Resources/App_Card.dart';
class CursolSlider extends StatefulWidget {
  const CursolSlider({super.key});

  @override
  State<CursolSlider> createState() => _CursolSliderState();
}

class _CursolSliderState extends State<CursolSlider> {
  final CarouselSliderController carouselController = CarouselSliderController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              autoPlay: true,
              enableInfiniteScroll: true,
              viewportFraction: 1.0,
              height: 135,
            onPageChanged: (index,reason){
                setState(() {
                  currentIndex=index;
                });
            }
          ),
          items: [1,2,3,4,5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return AppCard();
              },
            );
          }).toList(),
        ),
        SizedBox(height: 10,),
        AnimatedSmoothIndicator(
          activeIndex: currentIndex,
          count: 5,
          effect: const WormEffect(
            dotHeight: 10,
            dotWidth: 10,
            activeDotColor: AppColor.PrimaryColor,
            dotColor: Colors.grey,
          ),
          onDotClicked: (index) {
            carouselController.animateToPage(index);
          },
        ),
      ],
    );
  }
}

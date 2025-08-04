import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: CarouselControllerImpl(),
      items: [slideImg1, slideImg2, slideImg3, slideImg4, slideImg5, slideImg6]
          .map((e) => ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      e,
                      height: 700,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ))
          .toList(),
      options: CarouselOptions(
        autoPlay: true,
        enableInfiniteScroll: false,
        enlargeCenterPage: true,
        height: 200,
      ),
    );
  }
}

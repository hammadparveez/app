import 'package:carousel_slider/carousel_slider.dart';
import 'package:fasion/screens/home/components/about_me.dart';
import 'package:flutter/material.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          const HeadingWithHztDivider(heading: 'Portfolio'),
          const SizedBox(height: 12),
          CarouselSlider.builder(
            itemCount: 4,
            itemBuilder: (context, index, realIndex) {
              return Image.asset(
                'assets/portfolio/meritas.png',
              );
            },
            options: CarouselOptions(
              height: 350,
              autoPlay: true,
              enlargeCenterPage: true,
              enlargeFactor: 0.5,
              autoPlayCurve: Curves.decelerate,
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

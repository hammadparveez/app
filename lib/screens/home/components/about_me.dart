import 'package:fasion/utils/colors.dart';
import 'package:fasion/utils/images.dart';
import 'package:fasion/utils/styles.dart';
import 'package:flutter/material.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          const HeadingWithHztDivider(heading: 'About Me'),
          Container(
            height: 300,
            width: 300,
            margin: EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(AppImages.aboutMe),
                )),
          ),
          Text(
            'Hammad Parveez',
            style: AppTextStyles.heading2.copyWith(fontSize: 26),
          ),
          const SizedBox(height: 12),
          FittedBox(
            child: Text(
              'B.Sc. (Software Engineering)—Virtual University of Pakistan',
              style: AppTextStyles.heading3.copyWith(fontSize: 12),
            ),
          ),
          const SizedBox(height: 12),
          FractionallySizedBox(
            widthFactor: .5,
            child: Divider(
              color: AppColors.textColor,
              thickness: 2.5,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Professional & Self-taught Software Developer with more than 3 years of experience. Skilled, motivated and product-oriented with strong Object-Oriented Programming Concepts and design skills Experience in developing iOS, Android and Web applications.',
            textAlign: TextAlign.center,
            style: AppTextStyles.heading3.copyWith(
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}

class HeadingWithHztDivider extends StatelessWidget {
  final String heading;
  const HeadingWithHztDivider({
    super.key,
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(height: 1, color: AppColors.heading1)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            heading,
            style: AppTextStyles.heading2,
          ),
        ),
        Expanded(child: Container(height: 2, color: AppColors.heading1)),
      ],
    );
  }
}

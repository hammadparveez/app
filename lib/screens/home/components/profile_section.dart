import 'package:fasion/utils/colors.dart';
import 'package:fasion/utils/images.dart';
import 'package:fasion/utils/styles.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.profileImage,
          width: 250,
        ),
        const SizedBox(height: 24),
        Text('Hello', style: AppTextStyles.heading1),
        Text("I'm Hammad", style: AppTextStyles.heading3),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Text.rich(TextSpan(
            style: AppTextStyles.heading3,
            children: [
              const TextSpan(text: 'F'),
              WidgetSpan(child: Image.asset(AppImages.appIcon, height: 30)),
              const TextSpan(text: 'lutter Developer')
            ],
          )),
        ),
        Image.asset(AppImages.wave, width: 180),
        Text('#Android', style: AppTextStyles.heading2),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Text('Development', style: AppTextStyles.heading3),
        ),
        Text('#iOS', style: AppTextStyles.heading2),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Text('Development', style: AppTextStyles.heading3),
        ),
        Text('#Web', style: AppTextStyles.heading2),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Text('Development', style: AppTextStyles.heading3),
        ),
        const SizedBox(height: 24),
        FractionallySizedBox(
          widthFactor: .7,
          child: Row(
            children: [
              Expanded(child: Container(height: 1, color: AppColors.heading1)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'About Me',
                  style: AppTextStyles.heading2,
                ),
              ),
              Expanded(child: Container(height: 2, color: AppColors.heading1)),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(AppImages.aboutMe))),
        ),
      ],
    );
  }
}

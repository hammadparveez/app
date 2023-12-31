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
        const Text('Hello', style: AppTextStyles.heading1),
        const Text("I'm Hammad", style: AppTextStyles.heading3),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: FittedBox(
            child: Text.rich(TextSpan(
              style: AppTextStyles.heading3,
              children: [
                const TextSpan(text: 'F'),
                WidgetSpan(child: Image.asset(AppImages.appIcon, height: 30)),
                const TextSpan(text: 'lutter Developer')
              ],
            )),
          ),
        ),
        Image.asset(AppImages.wave, width: 180),
        const Text('#Android', style: AppTextStyles.heading2),
        const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: Text('Development', style: AppTextStyles.heading3),
        ),
        const Text('#iOS', style: AppTextStyles.heading2),
        const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: Text('Development', style: AppTextStyles.heading3),
        ),
        const Text('#Web', style: AppTextStyles.heading2),
        const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: Text('Development', style: AppTextStyles.heading3),
        ),
      ],
    );
  }
}

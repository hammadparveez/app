import 'package:fasion/utils/colors.dart';
import 'package:fasion/utils/styles.dart';
import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          const FittedBox(
              child: Text(
            'Start a conversation',
            style: AppTextStyles.heading2,
          )),
          InkWell(
            onTap: () {
              debugPrint('Open Whatsapp');
            },
            borderRadius: BorderRadius.circular(4),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
              child: Text(
                '+92 318 210 0470',
                style: AppTextStyles.heading3.copyWith(
                  fontSize: 14,
                  decorationColor: AppColors.textColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              debugPrint('Open Email');
            },
            borderRadius: BorderRadius.circular(4),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
              child: Text(
                'app@devhammad.com',
                style: AppTextStyles.heading3.copyWith(
                  fontSize: 14,
                  decorationColor: AppColors.textColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:fasion/screens/home/components/about_me.dart';
import 'package:fasion/utils/colors.dart';
import 'package:fasion/utils/styles.dart';
import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final list = [
      'Dart',
      'Flutter',
      'Android Development',
      'Ios Development',
      'Web Development',
      'Restul Integration',
      'Firebase',
      'Version Control (GIT)',
      'CI/CD, JIRA, UNIT TESTING',
      'DESIGN PATTERNS, MVC, MVVM',
      'OOPS SOLID PRINCIPLES',
      'HTML, CSS, JAVASCRIPT',
      'PHP, NODE JS, REACT'
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          const HeadingWithHztDivider(heading: 'Skills'),
          const SizedBox(height: 12),
          ListView.separated(
            itemCount: list.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    list[index].toUpperCase(),
                    style: AppTextStyles.heading3.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4),
                  LinearProgressIndicator(
                    value: .5,
                    minHeight: 10,
                    color: AppColors.heading1,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

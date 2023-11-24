import 'package:fasion/screens/home/components/about_me.dart';
import 'package:fasion/utils/colors.dart';
import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          const HeadingWithHztDivider(heading: 'Experience'),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Column(
              children: [
                //Heading Section
                Container(
                  width: double.infinity,
                  color: AppColors.heading1,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    children: [
                      Text('Jan 2023 – Present'),
                      Text('Bayt (Talentera)'),
                      Text('Location: Dubai, UAE'),
                    ],
                  ),
                ),
                //Body Section
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      const SizedBox(height: 12),
                      Text(
                        'Senior Flutter Developer - Remote (Full-Time)',
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24),
                      BulletPoint(
                        text:
                            'Collaborated with cross-functional teams in planning, analysis, design, performance and code refactoring.',
                      ),
                      BulletPoint(
                        text:
                            'Performed REST API implementation, unit-testing, upgrading the application and added caching APIs',
                      ),
                      BulletPoint(
                        text:
                            'Improved code-design, readability and followed application specific architecture such as: MVVM/MVC.',
                      ),
                      BulletPoint(
                        text:
                            'Integrated Continuous Integration and kept the track of performance and deliver record using JIRA',
                      ),
                      BulletPoint(
                        text:
                            'Configured team specific flavor for Android and iOS',
                      ),
                      BulletPoint(
                        text:
                            'Performed specific app feature on a different branch',
                      ),
                      BulletPoint(
                        text:
                            'Optimized user interactivity of the app while loading RESTful APIs',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  const BulletPoint({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('•', style: TextStyle(fontSize: 20)),
          const SizedBox(width: 4),
          Expanded(
              child: Text(
            text,
            style: TextStyle(fontSize: 12),
          )),
        ],
      ),
    );
  }
}

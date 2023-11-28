import 'package:fasion/screens/home/components/about_me.dart';
import 'package:fasion/utils/colors.dart';
import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final experiences = <Map<String, dynamic>>[
      {
        'date': 'Jan 2023 - Present',
        'company': 'Bayt (Talentera)',
        'location': 'Dubai UAE',
        'title': 'Senior Flutter Developer - Remote (Full-Time)',
        'description': [
          'Collaborated with cross-functional teams in planning, analysis, design, performance and code refactoring.',
          'Performed REST API implementation, unit-testing, upgrading the application and added caching APIs',
          'Support using offline storage libraries',
          'Improved code-design, readability and followed application specific architecture such as: MVVM/MVC.',
          'Integrated Continuous Integration and kept the track of performance and deliver record using JIRA',
          'Configured team specific flavor for Android and iOS',
          'Performed specific app feature on a different branch',
          'Optimized user interactivity of the app while loading RESTful APIs'
        ],
      },
      {
        'date': 'Feb 2022 - May 2023',
        'company': 'ShiftCTRL',
        'location': 'New York, USA',
        'title': 'Senior Flutter Developer - Remote (Part-Time)',
        'description': [
          'Designed & build sophisticated and highly scalable pixel-perfect UI, implemented RESTful API and optimized apps performance.'
              'Was Responsible to deploy application on Appstore and Playstore.',
          'Configured Firebase, Cloud-Messaging and Local Notifications and implemented Local Storage support using',
          'Hive, GetStorage and SharedPreferences also used Freezed for easing back-end response parsing.',
          'Performed application testing, adding flavors and reviewing code.',
          'Modified existing third-party libraries using Kotlin and Java to meet the application specific feature',
          'Led the team and helped in solving problems and fixing bugs and debug app',
          'Deployed the product on Hawaii store, Playstore and Appstore',
          'Configured CI using Codemagic & CircleCI and version control tools Github',
          'Performed specific app feature on a different branch',
          'Used different types of state management libraries such as: Provider, BLoC, Riverpod, GetX',
        ],
      },
      {
        'date': 'Jan 2022 - Aug 2022',
        'company': 'Eusopht',
        'location': 'Karachi, Pakistan',
        'title': 'Senior Flutter Developer',
        'description': [
          'Managed overall lifecycle of the application and design',
          'Managed code on different version control systems such as: Git, Bitbucket'
              'Followed the efficient practices while developing an app',
          'Transformed complex animation concepts into code without any library.',
          'Solved Web related issues and collaborated other developers with the design using HTML, CSS, JS and other JS libraries',
        ],
      },
      {
        'date': 'Jun 2021 - Feb 2022',
        'company': 'ZENinspires',
        'location': 'Karachi, Pakistan',
        'title': 'Senior Flutter Developer',
        'description': [
          'Implemented Firebase tools such as: FireStore, Cloud Messaging, Deep-link, Firebase Authentication,',
          'Implemented BloC, Riverpod, GetX, Provider and other well-known libraries',
          'Published my own library on Pub.dev, easy_card_scanner, easy_scroll_animation, easy_handler',
          'Implemented several SOLID principles and Design patterns such as: Singleton, Factory, Template Method',
          'Wrote high-quality, scalable, and reusable code',
        ],
      },
      {
        'date': 'Jan 2021 - May 2021',
        'company': 'Digital Graphiks',
        'location': 'Karachi, Pakistan',
        'title': 'Flutter Developer',
        'description': [
          'Integrated WordPress REST APIs & Shopify Storefront RESTAPIs',
          'Implemented GraphQL library & other libraries',
          'Transformed business requirements into application design',
          'Led the team and helped in solving problems and fixing bugs and debug app',
          'Was responsible to fix front-end issue on the website as well',
        ],
      },
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          const HeadingWithHztDivider(heading: 'Experience'),
          const SizedBox(height: 12),
          ListView.separated(
            shrinkWrap: true,
            itemCount: experiences.length,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final exp = experiences[index];
              return Container(
                width: double.infinity,
                clipBehavior: Clip.hardEdge,
                padding: const EdgeInsets.only(bottom: 12),
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
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: DefaultTextStyle(
                        style: TextStyle(color: Colors.white),
                        child: Column(
                          children: [
                            Text(exp['date']),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                exp['company'],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text('Location: ${exp['location']}'),
                          ],
                        ),
                      ),
                    ),
                    //Body Section
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Column(
                        children: [
                          const SizedBox(height: 12),
                          Text(exp['title'], textAlign: TextAlign.center),
                          const SizedBox(height: 24),
                          ...(exp['description'] as List)
                              .map((e) => BulletPoint(text: e)),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
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
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('•',
              style: TextStyle(fontSize: 20, color: Color(0xFF747474))),
          const SizedBox(width: 4),
          Expanded(
              child: Text(
            text,
            style: const TextStyle(fontSize: 12, color: Color(0xFF747474)),
          )),
        ],
      ),
    );
  }
}

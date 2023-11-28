import 'package:fasion/screens/home/components/about_me.dart';
import 'package:fasion/screens/home/components/contact_form.dart';
import 'package:fasion/screens/home/components/experience.dart';
import 'package:fasion/screens/home/components/footer.dart';
import 'package:fasion/screens/home/components/portfolio_section.dart';
import 'package:fasion/screens/home/components/profile_section.dart';
import 'package:fasion/screens/home/components/skills.dart';
import 'package:fasion/utils/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      // endDrawer: const Drawer(),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: FractionallySizedBox(
              widthFactor: .85,
              child: Column(
                children: [
                  ProfileSection(),
                  AboutMeSection(),
                  PortfolioSection(),
                  SkillsSection(),
                  ExperienceSection(),
                  ContactFormSection(),
                  const SizedBox(height: 24),
                  Divider(color: AppColors.textColor, thickness: 3),
                  FooterSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

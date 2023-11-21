import 'package:fasion/screens/home/components/profile_section.dart';
import 'package:fasion/utils/colors.dart';
import 'package:fasion/utils/images.dart';
import 'package:fasion/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      endDrawer: const Drawer(),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                ProfileSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

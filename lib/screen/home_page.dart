import 'package:flutter/material.dart';
import 'package:portfolio/core/app_colors.dart';
import '../widgets/footer.dart';
import '../widgets/header.dart';
import '../widgets/social_buttons_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: ListView(
            children: const [
              Header(),
              SocialButtonsList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
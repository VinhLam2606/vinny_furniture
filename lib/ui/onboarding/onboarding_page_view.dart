//class cha: quan li cac page con di chuyen qua lai

import 'package:flutter/material.dart';
import 'package:vinny_furniture/ui/onboarding/onboarding_child_page.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({super.key});

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          OnboardingChildPage(),
          OnboardingChildPage(),
          OnboardingChildPage(),
        ],
      ),
    );
  }
}

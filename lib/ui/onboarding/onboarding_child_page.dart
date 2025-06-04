// onboarding_page_view.dart
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vinny_furniture/ultis/enums/onboarding_page_position.dart';

import '../welcome/welcome_page.dart';
import 'onboarding_page_view.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({super.key});

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          OnboardingChildPage(
            position: OnboardingPagePosition.page1,
            pageController: _pageController,
            nextOnpressed: () => _pageController.jumpToPage(1),
            skipOnpressed: _completeOnboardingAndNavigate,
          ),
          OnboardingChildPage(
            position: OnboardingPagePosition.page2,
            pageController: _pageController,
            nextOnpressed: () => _pageController.jumpToPage(2),
            skipOnpressed: _completeOnboardingAndNavigate,
          ),
          OnboardingChildPage(
            position: OnboardingPagePosition.page3,
            pageController: _pageController,
            nextOnpressed: _completeOnboardingAndNavigate,
            skipOnpressed: _completeOnboardingAndNavigate,
          ),
        ],
      ),
    );
  }

  Future<void> _completeOnboardingAndNavigate() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool("kOnboardingCompleted", true);
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WelcomePage()),
      );
    } catch (e) {
      debugPrint('Error saving onboarding status: $e');
    }
  }
}

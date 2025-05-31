import 'package:flutter/material.dart';
import 'package:vinny_furniture/ui/onboarding/onboarding_child_page.dart';
import 'package:vinny_furniture/ultis/enums/onboarding_page_position.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({super.key});

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  final _pageController = PageController();

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
          ),
          OnboardingChildPage(
            position: OnboardingPagePosition.page2,
            pageController: _pageController,
            nextOnpressed: () => _pageController.jumpToPage(2),
          ),
          OnboardingChildPage(
            position: OnboardingPagePosition.page3,
            pageController: _pageController,
            nextOnpressed: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
        ],
      ),
    );
  }
}

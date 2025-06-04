// onboarding_child_page.dart
import 'package:flutter/material.dart';
import 'package:vinny_furniture/ultis/enums/onboarding_page_position.dart';

class OnboardingChildPage extends StatelessWidget {
  final OnboardingPagePosition position;
  final VoidCallback nextOnpressed;
  final PageController pageController;
  final VoidCallback skipOnpressed;

  const OnboardingChildPage({
    super.key,
    required this.position,
    required this.nextOnpressed,
    required this.pageController,
    required this.skipOnpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    _buildSkipButton(context),
                    _buildOnBoardingImage(),
                    _buildOnBoardingPageControl(),
                    _buildOnBoardingPageTileAndContents(),
                  ],
                ),
                _buildOnBoardingPageNextAndPreviousButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSkipButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 18),
      alignment: AlignmentDirectional.centerStart,
      child: TextButton(
        onPressed: skipOnpressed, // Gọi callback truyền từ cha
        child: const Text(
          "Skip",
          style: TextStyle(
            fontSize: 16,
            fontFamily: "Lato",
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }

  Widget _buildOnBoardingImage() {
    return Container(
      margin: const EdgeInsets.only(top: 80),
      child: Image.asset(
        position.onboardingPageImage(),
        height: 296,
        width: 271,
      ),
    );
  }

  Widget _buildOnBoardingPageControl() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIndicator(OnboardingPagePosition.page1),
        const SizedBox(width: 8),
        _buildIndicator(OnboardingPagePosition.page2),
        const SizedBox(width: 8),
        _buildIndicator(OnboardingPagePosition.page3),
      ],
    );
  }

  Widget _buildIndicator(OnboardingPagePosition page) {
    return Container(
      height: 4,
      width: 26,
      decoration: BoxDecoration(
        color:
            position == page
                ? Colors.blueAccent
                : Colors.blueAccent.withOpacity(0.4),
        borderRadius: BorderRadius.circular(56),
      ),
    );
  }

  Widget _buildOnBoardingPageTileAndContents() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 24),
            child: Text(
              position.onboardingPageTitle(),
              style: const TextStyle(
                fontSize: 28,
                color: Colors.blueAccent,
                fontFamily: "Lato",
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 30),
          Text(
            position.onboardingPageContents(),
            style: TextStyle(
              fontSize: 18,
              color: Colors.blueAccent.withOpacity(0.8),
              fontFamily: "Lato",
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildOnBoardingPageNextAndPreviousButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 60),
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              final currentIndex = position.index;
              if (currentIndex > 0) {
                pageController.jumpToPage(currentIndex - 1);
              }
            },
            child: const Text(
              "Previous",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Lato",
                color: Colors.blueAccent,
              ),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: nextOnpressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              "Next",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

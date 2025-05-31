enum OnboardingPagePosition { page1, page2, page3 }

extension OnboardingPagePositionExtension on OnboardingPagePosition {
  String onboardingPageImage() {
    switch (this) {
      case OnboardingPagePosition.page1:
        return "assets/images/intro/page1.png";
      case OnboardingPagePosition.page2:
        return "assets/images/intro/page2.png";
      case OnboardingPagePosition.page3:
        return "assets/images/intro/page3.png";
    }
  }

  String onboardingPageTitle() {
    switch (this) {
      case OnboardingPagePosition.page1:
        return "Easily Find New Furniture";
      case OnboardingPagePosition.page2:
        return "Big sales with amazing offers";
      case OnboardingPagePosition.page3:
        return "View the product in actual size";
    }
  }

  String onboardingPageContents() {
    switch (this) {
      case OnboardingPagePosition.page1:
        return "You can easily find new furniture for your home with a variety of options at reasonable prices.";
      case OnboardingPagePosition.page2:
        return "Enjoy exclusive deals every week, every month, and on special occasions.";
      case OnboardingPagePosition.page3:
        return "Easily verify the real size of the product — no more worries about mismatched purchases.";
    }
  }
}

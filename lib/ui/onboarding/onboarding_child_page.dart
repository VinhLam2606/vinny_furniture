import 'package:flutter/material.dart';

class OnboardingChildPage extends StatelessWidget {
  const OnboardingChildPage({super.key});

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Đẩy 2 đầu
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    _buildSkipButtom(),
                    _buildOnBoardingImage(),
                    _buildOnBoardingPageControl(),
                    _buildOnBoardingPageTileAndContents(),
                  ],
                ),
                _buildOnBoardingPageNextAndPreviousButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSkipButtom() {
    return Container(
      margin: EdgeInsets.only(top: 18),
      alignment: AlignmentDirectional.centerStart,
      child: TextButton(
        onPressed: () {},
        child: Text(
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
      margin: EdgeInsets.only(top: 80),
      child: Image.asset(
        'assets/images/intro/page1.png',
        height: 296,
        width: 271,
      ),
    );
  }

  Widget _buildOnBoardingPageControl() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 4,
            width: 26,
            decoration: BoxDecoration(
              color: Colors.blueAccent.withOpacity(0.4),
              borderRadius: BorderRadius.circular(56),
            ),
          ),
          Container(
            height: 4,
            width: 26,
            margin: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(56),
            ),
          ),
          Container(
            height: 4,
            width: 26,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(56),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOnBoardingPageTileAndContents() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Text(
              "Easily Find New Furniture",
              style: TextStyle(
                fontSize: 28,
                color: Colors.blueAccent,
                fontFamily: "Lato",
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 30),
          Text(
            "You can easily find new furniture for your home with a variety of options at reasonable prices.",
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

  Widget _buildOnBoardingPageNextAndPreviousButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 60),
      child: Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Previous",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Lato",
                color: Colors.blueAccent,
              ),
            ),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              "Next",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Lato",
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

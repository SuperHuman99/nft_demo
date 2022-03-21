import 'package:flutter/material.dart';
import 'package:nft_demo/ui/constants.dart';
import 'package:nft_demo/ui/pages/landing_page.dart';
import 'package:nft_demo/ui/widgets/custom_elevated_button.dart';
import 'package:nft_demo/ui/widgets/fade_in_animation.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: secondaryColor,
        body: Container(
          height: screenHeight,
          width: screenWidth,
          padding: EdgeInsets.symmetric(horizontal: 0.05 * screenWidth),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(
                flex: 5,
              ),
              const FadeInAnimation(
                delay: 300,
                child: Text(
                  "Great !",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const FadeInAnimation(
                delay: 800,
                child: Text(
                  "We send an email,",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const FadeInAnimation(
                delay: 1200,
                child: Text(
                  successText,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              const Spacer(
                flex: 5,
              ),
              FadeInAnimation(
                delay: 1600,
                child: CustomElevatedButton(
                  buttonText: "Back Home",
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const LandingPage(),
                      ),
                      (route) => true,
                    );
                  },
                  width: 0.9 * screenWidth,
                  color: primaryColor,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

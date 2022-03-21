import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nft_demo/core/models/nft_model.dart';
import 'dart:math' as math;

import 'package:nft_demo/ui/constants.dart';
import 'package:nft_demo/ui/pages/details_page.dart';
import 'package:nft_demo/ui/widgets/custom_elevated_button.dart';
import 'package:nft_demo/ui/widgets/fade_in_animation.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<NFTModel> nftsOne = [];
  List<NFTModel> nftsTwo = [];
  List<NFTModel> nftsThree = [];
  List<NFTModel> nftsFour = [];

  @override
  void initState() {
    super.initState();
    nftsOne = generateNFTsOne();
    nftsTwo = generateNFTsTwo();
    nftsThree = generateNFTsThree();
    nftsFour = generateNFTsFour();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme appTextTheme = Theme.of(context).textTheme;

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    double slidingPaneHeight = 0.15 * screenHeight;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 0.65 * screenHeight,
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    left: -50,
                    child: slidingPane(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      paneHeight: slidingPaneHeight,
                      listType: 1,
                    ),
                  ),
                  Positioned(
                    top: 40 + slidingPaneHeight,
                    left: -50,
                    child: slidingPane(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      paneHeight: slidingPaneHeight,
                      listType: 2,
                    ),
                  ),
                  Positioned(
                    top: 30 + (slidingPaneHeight * 2),
                    left: -50,
                    child: slidingPane(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      paneHeight: slidingPaneHeight,
                      listType: 3,
                    ),
                  ),
                  Positioned(
                    top: 20 + (slidingPaneHeight * 3),
                    left: -50,
                    child: slidingPane(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      paneHeight: slidingPaneHeight,
                      listType: 4,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: primaryColor,
                      offset: Offset(0, -35),
                      blurRadius: 30.0,
                      spreadRadius: 20),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(landingPageTextTitle, style: appTextTheme.titleLarge),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(landingPageText, style: appTextTheme.bodySmall),
                  const Spacer(
                    flex: 5,
                  ),
                  CustomElevatedButton(
                    buttonText: "Discover",
                    onPressed: () {},
                    width: 0.3 * screenWidth,
                  ),
                  const Spacer(
                    flex: 1,
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget slidingPane({
    required double screenWidth,
    required double screenHeight,
    required double paneHeight,
    required int listType,
  }) {
    return Transform.rotate(
      angle: -math.pi / 16.0,
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: accentColor, offset: Offset(4, 4), blurRadius: 18.0),
          ],
        ),
        width: screenWidth + 100,
        height: paneHeight,
        child: CarouselSlider(
          items: listType == 1
              ? nftsOne.map((nft) {
                  return carouselItem(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      paneHeight: paneHeight,
                      nft: nft);
                }).toList()
              :  listType == 2 ? nftsTwo.map((nft) {
                  return carouselItem(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      paneHeight: paneHeight,
                      nft: nft);
                }).toList() : listType == 3 ? nftsThree.map((nft) {
            return carouselItem(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                paneHeight: paneHeight,
                nft: nft);
          }).toList() : nftsFour.map((nft) {
            return carouselItem(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                paneHeight: paneHeight,
                nft: nft);
          }).toList(),
          options: CarouselOptions(
              autoPlay: true,
              viewportFraction: 0.25,
              autoPlayCurve: Curves.linear,
              autoPlayAnimationDuration: const Duration(milliseconds: 1000),
              autoPlayInterval: const Duration(milliseconds: 1000)),
        ),
      ),
    );
  }

  Widget carouselItem({
    required double screenWidth,
    required double screenHeight,
    required double paneHeight,
    required NFTModel nft,
  }) {
    return SizedBox(
      width: 0.32 * screenWidth,
      height: paneHeight * 1.6,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsPage(nft: nft,),
            ),
          );
        },
        child: Hero(
          tag: nft.itemName,
          child: Image(
            image: AssetImage(nft.imageLocation),
          ),
        ),
      ),
    );
  }
}

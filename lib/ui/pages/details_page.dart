import 'package:flutter/material.dart';
import 'package:nft_demo/core/models/nft_model.dart';
import 'package:nft_demo/ui/pages/order_page.dart';
import 'package:nft_demo/ui/widgets/custom_elevated_button.dart';
import 'package:nft_demo/ui/widgets/fade_in_animation.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key, required this.nft}) : super(key: key);

  final NFTModel nft;

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    TextTheme appTextTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: screenWidth,
              height: screenHeight * 0.45,
              child: Hero(
                tag: widget.nft.itemName,
                child: Image(
                  image: AssetImage(widget.nft.imageLocation),
                  fit: BoxFit.fill,
                ),
              ),
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(0, -15),
                    blurRadius: 25.0)
              ]),
            ),
            const Spacer(
              flex: 1,
            ),
            Container(
              height: 0.1 * screenHeight,
              width: screenWidth,
              margin: const EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 0.05 * screenWidth),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInAnimation(
                    delay: 500,
                    child: Text(
                      widget.nft.itemName,
                      style: appTextTheme.titleMedium,
                    ),
                  ),
                  FadeInAnimation(
                    delay: 700,
                    child: Text(
                      "Owned by Mister Grinch",
                      style: appTextTheme.displayLarge,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth,
              height: 0.1 * screenHeight,
              padding: EdgeInsets.symmetric(horizontal: 0.05 * screenWidth),
              child: Row(
                children: [
                  Container(
                    height: 0.1 * screenHeight,
                    width: 0.35 * screenWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeInAnimation(
                          delay: 1000,
                          child: Text(
                            widget.nft.timeRemaining,
                            style: appTextTheme.titleSmall,
                          ),
                        ),
                        FadeInAnimation(
                          delay: 1300,
                          child: Text(
                            "Remaining Time",
                            style: appTextTheme.displayLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 0.1 * screenHeight,
                    width: 0.35 * screenWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeInAnimation(
                          delay: 1000,
                          child: Text(
                            "${widget.nft.highestBid} ETH",
                            style: appTextTheme.titleSmall,
                          ),
                        ),
                        FadeInAnimation(
                          delay: 1300,
                          child: Text(
                            "Highest Bid",
                            style: appTextTheme.displayLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 5,
            ),
            FadeInAnimation(
              delay: 1800,
              child: CustomElevatedButton(
                buttonText: "Place Bid",
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => OrderPage(
                        nft: widget.nft,
                      ),
                    ),
                  );
                },
                width: 0.9 * screenWidth,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}

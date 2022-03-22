import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:nft_demo/core/models/nft_model.dart';
import 'package:nft_demo/ui/constants.dart';
import 'package:nft_demo/ui/pages/success_page.dart';
import 'package:nft_demo/ui/widgets/fade_in_animation.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key, required this.nft}) : super(key: key);

  final NFTModel nft;

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>
    with SingleTickerProviderStateMixin {
  late AnimationController buttonScaleAnimationController;

  late Animation buttonScaleAnimation;

  bool showButtonIcon = true;

  @override
  void initState() {
    super.initState();
    buttonScaleAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));

    buttonScaleAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(buttonScaleAnimationController);

    buttonScaleAnimation.addStatusListener((status) {
      if(status == AnimationStatus.forward){
        setState(() {
          showButtonIcon = false;
        });
      }

      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const SuccessPage(),
          ),
              (route) => true,
        );
      }
    });
  }

  @override
  void dispose() {
    buttonScaleAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    TextTheme appTextTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 0.6 * screenWidth,
              height: 0.6 * screenWidth,
              child: Hero(
                tag: widget.nft.itemName,
                child: Image(
                  image: AssetImage(widget.nft.imageLocation),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            FadeInAnimation(
              delay: 300,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      const Color(0xFF6E60BF).withOpacity(0.5),
                      const Color(0xFF6E60BF).withOpacity(0.3),
                    ],
                  ),
                ),
                width: 0.9 * screenWidth,
                height: 0.15 * screenHeight,
                child: Column(
                  children: [
                    Container(
                      height: 0.075 * screenHeight,
                      width: 0.9 * screenWidth,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 0.45 * screenWidth,
                            height: 0.075 * screenHeight,
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FadeInAnimation(
                                  delay: 600,
                                  child: Text(
                                    "El Crispin.",
                                    style: appTextTheme.bodyLarge,
                                  ),
                                ),
                                FadeInAnimation(
                                  delay: 900,
                                  child: Text(
                                    "Offered to you",
                                    style: appTextTheme.displaySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 0.1 * screenWidth,
                            height: 0.1 * screenWidth,
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            child: FadeInAnimation(
                              delay: 1000,
                              child: Image(
                                image: AssetImage(widget.nft.imageLocation),
                                fit: BoxFit.fill,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FadeInAnimation(
                              delay: 1300,
                              child: Text(
                                "total amount",
                                style: appTextTheme.displaySmall,
                              ),
                            ),
                            FadeInAnimation(
                              delay: 1500,
                              child: Text(
                                "${widget.nft.highestBid} ETH",
                                style: appTextTheme.bodyLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0.05 * screenWidth),
              child: Column(
                children: [
                  orderDetailsPageItem(
                      appTextTheme: appTextTheme,
                      itemName: "Flat Amount",
                      itemValue: "${widget.nft.flatAmount} USD",
                      itemNameDelay: 1800,
                      itemValueDelay: 2000),
                  orderDetailsPageItem(
                    appTextTheme: appTextTheme,
                    itemName: "Order Number",
                    itemValue: widget.nft.orderNumber,
                    itemNameDelay: 2300,
                    itemValueDelay: 2500,
                  ),
                  orderDetailsPageItem(
                    appTextTheme: appTextTheme,
                    itemName: "Network",
                    itemValue: widget.nft.network,
                    itemNameDelay: 2800,
                    itemValueDelay: 3000,
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: screenWidth,
              margin: EdgeInsets.only(right: 0.1 * screenWidth),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 0.4 * screenWidth,
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        FadeInAnimation(
                          delay: 3200,
                          child: Icon(
                            Icons.account_balance_wallet_outlined,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        FadeInAnimation(
                          delay: 3500,
                          child: Icon(
                            LineIcons.moneyBill,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      buttonScaleAnimationController.forward();
                      // Navigator.of(context).push(MaterialPageRoute(
                      //   builder: (context) => const SuccessPage(),
                      // ));
                    },
                    child: AnimatedBuilder(
                        animation: buttonScaleAnimationController,
                        builder: (context, child) => Transform.scale(
                              scale: buttonScaleAnimationController.value == 0.0 ? 1 : buttonScaleAnimationController.value * 40,
                              child: FadeInAnimation(
                                delay: 3700,
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: secondaryColor,
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              secondaryColor.withOpacity(0.4),
                                          offset: const Offset(-4, -4),
                                          blurRadius: 15.0),
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.6),
                                          offset: const Offset(4, 4),
                                          blurRadius: 15.0),
                                    ],
                                  ),
                                  child: Center(
                                    child: Visibility(
                                      visible: showButtonIcon,
                                      child: const Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container orderDetailsPageItem({
    required TextTheme appTextTheme,
    required itemName,
    required String itemValue,
    required int itemNameDelay,
    required int itemValueDelay,
  }) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FadeInAnimation(
            delay: itemNameDelay,
            child: Text(
              itemName,
              style: appTextTheme.displayLarge,
            ),
          ),
          FadeInAnimation(
            delay: itemValueDelay,
            child: Text(
              itemValue,
              style: appTextTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}

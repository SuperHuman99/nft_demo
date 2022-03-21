import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nft_demo/core/models/nft_model.dart';

//app colors
const Color primaryColor = Color(0xFF040249);
const Color secondaryColor = Color(0xFF5135FB);
const Color accentColor = Color(0xFF0B0983);

//texts
const String landingPageText =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae mi varius lectus eget"
    " mauris, vitae risus, magna. Viverra purus vestibulum eu urna at non. Lorem ipsum dolor sit amet, consectetur"
    " adipiscing elit. Vitae mi varius lectus eget mauris, vitae risus, magna. Viverra purus vestibulum eu urna at non."
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.";

const String successText =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae mi varius lectus eget"
    " mauris, vitae risus, magna. Viverra purus vestibulum eu urna at non. Lorem ipsum dolor sit amet, consectetur"
    " adipiscing elit. Vitae mi varius lectus eget mauris, vitae risus, magna. Viverra purus vestibulum eu urna at non."
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.";

const landingPageTextTitle = "Arts with NFTs.";

//dummies
List<String> imageLocationsOne = [
  "assets/images/chris.png",
  "assets/images/fred.png",
  "assets/images/japhet.png",
  "assets/images/jemima.png",
  "assets/images/justice.png",
];

List<String> imageLocationsTwo = [
  "assets/images/sherif.jpg",
  "assets/images/birdman.png",
  "assets/images/blackmonkey.png",
  "assets/images/cheetah.png",
  "assets/images/chef.png",
  "assets/images/travis.jpg",
  "assets/images/rainbowmonkey.png",
];

List<String> imageLocationsThree = [
  "assets/images/frog.jpg",
  "assets/images/avatar_kurtis.png",
  "assets/images/boredhoody.png",
  "assets/images/chairmandj.png",
  "assets/images/octopus.png",
  "assets/images/nakeddj.png",
];

List<String> imageLocationsFour = [
  "assets/images/kingsley.jpg",
  "assets/images/obu.jpg",
  "assets/images/roki.png",
  "assets/images/selorm.jpg",
  "assets/images/gold.jpg",
  "assets/images/hoodmonkey.png",
  "assets/images/lebron.jpg",
];

List<String> itemNamesOne = [
  "Chairman Monkey",
  "Panda Monkey",
  "Mallam Monkey",
  "Tiger Monkey",
  "Squid Game Monkey",
];

List<String> itemNamesTwo = [
  "Terminator Monkey",
  "Birdman Monkey",
  "Afro Monkey",
  "Cheetah Monkey",
  "Chef Monkey",
  "Travis Monkey",
  "Homo Monkey",
];

List<String> itemNamesThree = [
  "Frogman Monkey",
  "Avatar Kurtis",
  "Sad Monkey",
  "Tiger DJ Monkey",
  "Octopus Friend Monkey",
  "Naked DJ Monkey",
];

List<String> itemNamesFour = [
  "Evil Fire Monkey",
  "Gangsta Monkey",
  "Chain Monkey",
  "Money Monkey",
  "Goldman Monkey",
  "Street Monkey",
  "Lebron Monkey",
];

List<List<int>> generateTimeRemainingOne() {
  List<List<int>> times = [];
  for (int i = 0; i <= imageLocationsOne.length-1; i++) {
    List<int> time = [
      Random().nextInt(10),
      Random().nextInt(23),
      Random().nextInt(59),
    ];
    times.add(time);
  }
  return times;
}

List<List<int>> generateTimeRemainingTwo() {
  List<List<int>> times = [];
  for (int i = 0; i <= imageLocationsTwo.length-1; i++) {
    List<int> time = [
      Random().nextInt(10),
      Random().nextInt(23),
      Random().nextInt(59),
    ];
    times.add(time);
  }
  return times;
}

List<List<int>> generateTimeRemainingThree() {
  List<List<int>> times = [];
  for (int i = 0; i <= imageLocationsThree.length-1; i++) {
    List<int> time = [
      Random().nextInt(10),
      Random().nextInt(23),
      Random().nextInt(59),
    ];
    times.add(time);
  }
  return times;
}

List<List<int>> generateTimeRemainingFour() {
  List<List<int>> times = [];
  for (int i = 0; i <= imageLocationsFour.length-1; i++) {
    List<int> time = [
      Random().nextInt(10),
      Random().nextInt(23),
      Random().nextInt(59),
    ];
    times.add(time);
  }
  return times;
}

List<int> generateFlatAmountsOne() {
  List<int> amounts = [];
  for (int i = 0; i <= imageLocationsOne.length-1; i++) {
    int amount = Random().nextInt(5000000);
    amounts.add(amount);
  }
  return amounts;
}

List<int> generateFlatAmountsTwo() {
  List<int> amounts = [];
  for (int i = 0; i <= imageLocationsTwo.length-1; i++) {
    int amount = Random().nextInt(5000000);
    amounts.add(amount);
  }
  return amounts;
}

List<int> generateFlatAmountsThree() {
  List<int> amounts = [];
  for (int i = 0; i <= imageLocationsThree.length-1; i++) {
    int amount = Random().nextInt(5000000);
    amounts.add(amount);
  }
  return amounts;
}

List<int> generateFlatAmountsFour() {
  List<int> amounts = [];
  for (int i = 0; i <= imageLocationsFour.length-1; i++) {
    int amount = Random().nextInt(5000000);
    amounts.add(amount);
  }
  return amounts;
}

List<String> generateHighestBidsOne() {
  List<String> bids = [];
  for (int i = 0; i <= imageLocationsOne.length-1; i++) {
    double bid = Random().nextDouble() * 50;
    bids.add(bid.toStringAsFixed(1));
  }
  return bids;
}

List<String> generateHighestBidsTwo() {
  List<String> bids = [];
  for (int i = 0; i <= imageLocationsTwo.length-1; i++) {
    double bid = Random().nextDouble() * 50;
    bids.add(bid.toStringAsFixed(1));
  }
  return bids;
}

List<String> generateHighestBidsThree() {
  List<String> bids = [];
  for (int i = 0; i <= imageLocationsThree.length-1; i++) {
    double bid = Random().nextDouble() * 50;
    bids.add(bid.toStringAsFixed(1));
  }
  return bids;
}

List<String> generateHighestBidsFour() {
  List<String> bids = [];
  for (int i = 0; i <= imageLocationsFour.length-1; i++) {
    double bid = Random().nextDouble() * 50;
    bids.add(bid.toStringAsFixed(1));
  }
  return bids;
}

List<NFTModel> generateNFTsOne() {
  List<NFTModel> nfts = [];
  List<List<int>> timesRemaining = generateTimeRemainingOne();
  List<int> flatAmounts = generateFlatAmountsOne();
  List<String> highestBids = generateHighestBidsOne();
  for (int i = 0; i <= imageLocationsOne.length-1; i++) {
    NFTModel model = NFTModel(
      timeRemaining: "${timesRemaining[i][0]}d ${timesRemaining[i][1]}h ${timesRemaining[i][2]}m",
      itemName: itemNamesOne[i],
      flatAmount: flatAmounts[i].toString(),
      highestBid: highestBids[i],
      orderNumber: "n3A50n9HB9jn0H9as9JS",
      network: "Binance smart chain",
      imageLocation: imageLocationsOne[i],
    );
    nfts.add(model);
  }

  return nfts;
}

List<NFTModel> generateNFTsTwo() {
  List<NFTModel> nfts = [];
  List<List<int>> timesRemaining = generateTimeRemainingTwo();
  List<int> flatAmounts = generateFlatAmountsTwo();
  List<String> highestBids = generateHighestBidsTwo();
  for (int i = 0; i <= imageLocationsTwo.length-1; i++) {
    NFTModel model = NFTModel(
      timeRemaining: "${timesRemaining[i][0]}d ${timesRemaining[i][1]}h ${timesRemaining[i][2]}m",
      itemName: itemNamesTwo[i],
      flatAmount: flatAmounts[i].toString(),
      highestBid: highestBids[i].toString(),
      orderNumber: "n3A50n9HB9jn0H9as9JS",
      network: "Binance smart chain",
      imageLocation: imageLocationsTwo[i],
    );
    nfts.add(model);
  }
  return nfts;
}

List<NFTModel> generateNFTsThree() {
  List<NFTModel> nfts = [];
  List<List<int>> timesRemaining = generateTimeRemainingThree();
  List<int> flatAmounts = generateFlatAmountsThree();
  List<String> highestBids = generateHighestBidsThree();
  for (int i = 0; i <= imageLocationsThree.length-1; i++) {
    NFTModel model = NFTModel(
      timeRemaining: "${timesRemaining[i][0]}d ${timesRemaining[i][1]}h ${timesRemaining[i][2]}m",
      itemName: itemNamesThree[i],
      flatAmount: flatAmounts[i].toString(),
      highestBid: highestBids[i].toString(),
      orderNumber: "n3A50n9HB9jn0H9as9JS",
      network: "Binance smart chain",
      imageLocation: imageLocationsThree[i],
    );
    nfts.add(model);
  }
  return nfts;
}

List<NFTModel> generateNFTsFour() {
  List<NFTModel> nfts = [];
  List<List<int>> timesRemaining = generateTimeRemainingFour();
  List<int> flatAmounts = generateFlatAmountsFour();
  List<String> highestBids = generateHighestBidsFour();
  for (int i = 0; i <= imageLocationsFour.length-1; i++) {
    NFTModel model = NFTModel(
      timeRemaining: "${timesRemaining[i][0]}d ${timesRemaining[i][1]}h ${timesRemaining[i][2]}m",
      itemName: itemNamesFour[i],
      flatAmount: flatAmounts[i].toString(),
      highestBid: highestBids[i].toString(),
      orderNumber: "n3A50n9HB9jn0H9as9JS",
      network: "Binance smart chain",
      imageLocation: imageLocationsFour[i],
    );
    nfts.add(model);
  }
  return nfts;
}


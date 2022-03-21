class NFTModel {
  final String itemName;
  final String timeRemaining;
  final String highestBid;
  final String flatAmount;
  final String orderNumber;
  final String network;
  final String imageLocation;

  NFTModel({
    required this.timeRemaining,
    required this.itemName,
    required this.flatAmount,
    required this.highestBid,
    required this.orderNumber,
    required this.network,
    required this.imageLocation,
  });
}

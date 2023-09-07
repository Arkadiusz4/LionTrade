class Portfolio {
  final int id;
  final String name;
  final List<PortfolioAsset> assets;
  final double totalValue;
  final DateTime lastUpdated;

  Portfolio({
    required this.id,
    required this.name,
    required this.assets,
    required this.totalValue,
    required this.lastUpdated,
  });
}

class PortfolioAsset {
  final String symbol;
  final String name;
  final int quantity;
  final double purchasePrice;
  final DateTime purchaseDate;

  PortfolioAsset({
    required this.symbol,
    required this.name,
    required this.quantity,
    required this.purchasePrice,
    required this.purchaseDate,
  });
}

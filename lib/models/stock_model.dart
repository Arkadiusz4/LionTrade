class Stock {
  final String symbol;
  final String name;
  final String exchange;
  final double price;
  final double change;
  final double changePercentage;
  final String currency;
  final DateTime lastUpdated;

  Stock({
    required this.symbol,
    required this.name,
    required this.exchange,
    required this.price,
    required this.change,
    required this.changePercentage,
    required this.currency,
    required this.lastUpdated,
  });
}

class Watchlist {
  final int id;
  final String name;
  final List<WatchlistItem> items;
  final DateTime lastUpdated;

  Watchlist({
    required this.id,
    required this.name,
    required this.items,
    required this.lastUpdated,
  });
}

class WatchlistItem {
  final String symbol;
  final String name;
  final String exchange;
  final double currentPrice;
  final double change;
  final double changePercentage;
  final DateTime lastUpdated;

  WatchlistItem({
    required this.symbol,
    required this.name,
    required this.exchange,
    required this.currentPrice,
    required this.change,
    required this.changePercentage,
    required this.lastUpdated,
  });
}

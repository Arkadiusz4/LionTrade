class Alert {
  final int id;
  final String name;
  final String symbol;
  final double triggerPrice;
  final AlertType type;
  final bool isActive;
  final DateTime createdAt;

  Alert({
    required this.id,
    required this.name,
    required this.symbol,
    required this.triggerPrice,
    required this.type,
    required this.isActive,
    required this.createdAt,
  });
}

enum AlertType {
  price,
  volume,
  custom,
}

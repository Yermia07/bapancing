class FishStock {
  final String species;
  final int currentStock;
  final int quota;

  FishStock({
    required this.species,
    required this.currentStock,
    required this.quota,
  });

  bool isStockSufficient() {
    return currentStock <= quota;
  }
}

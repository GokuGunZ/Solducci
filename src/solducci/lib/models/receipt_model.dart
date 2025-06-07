class Receipt {
  final String store;
  final DateTime date;
  final double total;

  Receipt({required this.store, required this.date, required this.total});

  Map<String, dynamic> toJson() => {
    'Negozio': store,
    'Data': date.toIso8601String(),
    'Totale': total.toStringAsFixed(2),
  };
}

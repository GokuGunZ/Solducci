import '../../models/receipt_model.dart';

class ReceiptParser {
  Receipt parse(String rawText) {
    // TODO: parsing regex
    return Receipt(
      store: 'Supermercato XYZ',
      date: DateTime.now(),
      total: 24.90,
    );
  }
}

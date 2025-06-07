import '../../core/services/image_picker_service.dart';
import '../../core/services/ocr_service.dart';
import '../../core/services/google_sheets_service.dart';
import '../../core/utils/receipt_parser.dart';
import '../../models/receipt_model.dart';

class HomeViewModel {
  final ImagePickerService picker;
  final OcrService ocr;
  final ReceiptParser parser;
  final GoogleSheetsService sheets;

  Receipt? receipt;

  HomeViewModel({
    required this.picker,
    required this.ocr,
    required this.parser,
    required this.sheets,
  });

  Future<void> scanReceipt() async {
    final path = await picker.pickImageFromCamera();
    if (path == null) return;

    final rawText = await ocr.extractTextFromImage(path);
    final parsed = parser.parse(rawText);
    await sheets.sendReceipt(parsed);

    receipt = parsed;
  }
}

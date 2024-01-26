import 'package:hiragana/feature/hiragana/enum/convert_type.dart';
import 'package:hiragana/foundation/api_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final hiraganaRepositoryProvider = Provider((ref) => HiraganaRepository());

class HiraganaRepository {
  Future<Map<String, dynamic>> convertRequest({required String sentence, required ConvertType convertType }) async {
    final result = await ApiClient.shared.post(
      path: 'api/hiragana',
      queryParameters: {
        'sentence': sentence,
        'output_type': convertType.name,
      },
    );
    return result;
  }
}

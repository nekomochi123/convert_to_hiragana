
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hiragana/feature/hiragana/enum/convert_type.dart';
import 'package:hiragana/feature/hiragana/repository/hiragana_repository.dart';
import 'package:hiragana/foundation/reader.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'hiragana_controller.freezed.dart';

final hiraganaControllerProvider = StateNotifierProvider.autoDispose<HiraganaController, HiraganaState>(
  (ref) => HiraganaController(const HiraganaState(), ref.read),
);

@freezed
class HiraganaState with _$HiraganaState {
  const factory HiraganaState({
    @Default(AsyncValue.data(null)) AsyncValue<String?> convertedText,
  }) = _HiraganaState;
}

class HiraganaController extends StateNotifier<HiraganaState> {
  HiraganaController(super.state, this._read);

  final Reader _read;

  HiraganaRepository get _hiraganaRepository => _read(hiraganaRepositoryProvider);

  Future<void> convert({required String sentence}) async {
    if (!mounted || state.convertedText is AsyncLoading) {
      return;
    }

    state = state.copyWith.call(convertedText: const AsyncValue.loading());

    try {
      const convertType = ConvertType.hiragana;

      final result = await _hiraganaRepository.convertRequest(
        sentence: sentence,
        convertType: convertType,
      );

      state = state.copyWith.call(convertedText: AsyncValue.data(result['converted']));
    } on Exception catch (e, st) {
      print(e);
      state = state.copyWith.call(convertedText: AsyncValue.error(e, st));
    }
  }
}

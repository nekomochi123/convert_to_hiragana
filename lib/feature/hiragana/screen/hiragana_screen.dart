
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hiragana/feature/hiragana/controller/hiragana_controller.dart';
import 'package:hiragana/feature/hiragana/enum/convert_type.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HiraganaScreen extends HookConsumerWidget {
  const HiraganaScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final convertedText = ref.watch(hiraganaControllerProvider.select((v) => v.convertedText));
    final textFieldController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('hiragana app'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 240,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // api通信の状態によって表示を変えるよ
                convertedText.when(
                  data: (text) => Text(text ?? ''),
                  error: (_, __) => const Text('エラーです'),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                const Gap(24),
                TextField(controller: textFieldController),
                const Gap(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 100,
                      child: TextButton(
                        onPressed: () async{
                          final controller = ref.read(hiraganaControllerProvider.notifier);
                          await controller.convert(sentence: textFieldController.text, convertType: ConvertType.hiragana);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.pink,
                          foregroundColor: Colors.white,
                        ),
                        child: const Text('かな変換'),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: TextButton(
                        onPressed: () async{
                          final controller = ref.read(hiraganaControllerProvider.notifier);
                          await controller.convert(sentence: textFieldController.text, convertType: ConvertType.katakana);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.pink,
                          foregroundColor: Colors.white,
                        ),
                        child: const Text('カナ変換'),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

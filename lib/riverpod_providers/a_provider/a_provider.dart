import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/riverpod_providers/b_state_provider/b_state_provider.dart';

final provider = Provider.autoDispose.family<Map<String, String>, String>((ref, title) {
  final counter = ref.watch(counterObjectStatePd);
  final data = {
    'title': title,
    'description': 'A simple example of using riverpod providers.',
    'author': 'Flutter Community',
    'version': '${counter.firstCounter}.0.0',
    'homepage': ''
  };
  return data;
});

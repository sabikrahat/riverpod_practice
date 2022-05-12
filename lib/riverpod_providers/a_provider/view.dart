import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/riverpod_providers/a_provider/a_provider.dart';
import 'package:riverpod_practice/riverpod_providers/b_state_provider/b_state_provider.dart';

class ProviderView extends ConsumerWidget {
  const ProviderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Consumer(
        builder: (_, ref, __) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                ref.watch(provider('Riverpod initialize')).toString(),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.check),
        onPressed: () {
          final StateController<TestObject> currObj =
              ref.read(counterObjectStatePd.state);
          currObj.state = currObj.state
              .copyWith(firstCounter: currObj.state.firstCounter + 1);
        },
      ),
    );
  }
}

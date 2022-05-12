import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/riverpod_providers/b_state_provider/b_state_provider.dart';

/// using single value update
///
///
// class StateProviderView extends ConsumerWidget {
//   const StateProviderView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('StateProvider'),
//       ),
//       body: Consumer(
//         builder: (_, ref, __) {
//           // final counter = ref.read(counterStatePd); // <-- this is the same as below but counter value will not update on realtime
//           final counter = ref.watch(counterStatePd);
//           return Center(
//             child: Text('$counter'),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () {
//           final StateController<int> currVal = ref.read(counterStatePd.state);
//           currVal.state++;
//         },
//       ),
//     );
//   }
// }

/// using object update
///
///
class StateProviderView extends ConsumerWidget {
  const StateProviderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StateProvider'),
      ),
      body: Consumer(
        builder: (_, ref, __) {
          // final TestObject counter = ref.watch(counterObjectStatePd);
          final int counter = ref.watch(counterObjectStatePd.select((value) =>
              value.firstCounter)); // watching only single value from object
          debugPrint('Value listening');
          return Center(
            // child: Text('${counter.firstCounter}'),
            child: Text('$counter'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
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

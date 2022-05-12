import 'package:flutter/material.dart';
import 'package:riverpod_practice/riverpod_providers/a_provider/view.dart';
import 'package:riverpod_practice/riverpod_providers/b_state_provider/view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Providers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    child: const Text('Provider'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const ProviderView(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    child: const Text('State Provider'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const StateProviderView(),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  flex: 3,
                  child: ElevatedButton(
                    child: const Text('State Notifier Provider'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: ElevatedButton(
                    child: const Text('Future Provider'),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    child: const Text('Stream Provider'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

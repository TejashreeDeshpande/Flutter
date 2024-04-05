import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_poc/riverpod.dart';

class HardPage extends ConsumerWidget {
  const HardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Hard Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              ref.watch(riverpodHardLevel).counter.toString(),
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(riverpodHardLevel).addCounter();
              },
              icon: const Icon(Icons.add),
              label: const Text('Add'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(riverpodHardLevel).removeCounter();
              },
              icon: const Icon(Icons.remove),
              label: const Text('Remove'),
            ),
          ],
        ),
      ),
    );
  }
}
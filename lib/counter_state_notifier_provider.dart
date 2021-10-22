import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _counterProvider = StateNotifierProvider((ref) {
  return Counter();
});

class CounterStateNotifierProvider extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(_counterProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Counter StateNotifierProvider')),
      body: Center(
        child: Text('$state'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.refresh(_counterProvider).increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}

//状態クラス
class Counter extends StateNotifier {
  Counter() : super(0);
  void increment() => state++;
}

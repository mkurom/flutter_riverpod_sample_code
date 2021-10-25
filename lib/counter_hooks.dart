import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final _counterProvider = StateNotifierProvider((ref) {
  return Counter();
});

class Counter extends StateNotifier<int> {
  Counter() : super(0);

  void increment() => state++;
}

// HookWidgetを継承する
class CounterHooks extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // builder内でuseProviderを使用する
    final count = useProvider(_counterProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Counter riverpod hook')),
      body: Center(
        child: Text('$count'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.refresh(_counterProvider).increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}

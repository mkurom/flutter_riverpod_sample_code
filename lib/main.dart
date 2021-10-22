import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_sample/counter_state_notifier_provider.dart';
import 'package:flutter_riverpod_sample/counter_state_provider.dart';

void main() {
  runApp(
    // App クラスより下層のクラスでriverpodが使用できる
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: CounterStateProvider(),
      home: CounterStateNotifierProvider(),
    );
  }
}

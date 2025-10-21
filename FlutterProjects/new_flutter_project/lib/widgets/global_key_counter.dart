import 'package:flutter/material.dart';
import 'package:new_flutter_project/widgets/global_counter.dart';

class GlobalKeyCounter extends StatelessWidget {
  final GlobalKey<GlobalCounterState> counterKey =
      GlobalKey<GlobalCounterState>();

  GlobalKeyCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter App")),

      body: Center(child: GlobalCounter(key: counterKey)),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {counterKey.currentState?.incrementCounter()},
        child: const Icon(Icons.add),
      ),
    );
  }
}

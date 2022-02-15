import 'package:di_demo/di/service_locator.dart';
import 'package:di_demo/ui/screens/counter/counter_vm.dart';
import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget {
  final CounterScreenVm vm;

  const CounterScreen({
    Key? key,
    required this.vm,
  }) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  CounterScreenVm get vm => widget.vm;

  void _incrementCounter() {
    vm.inc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${vm.counter.count}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

import 'package:flutter/material.dart';

import 'package:hello_world/src/widgets/widgets.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({
    super.key,
  });

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counterOfClicks;

  _CounterScreenState() : _counterOfClicks = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Counter',
      ).build(context),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Contador',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 14.0,
            ),
            Text(
              '$_counterOfClicks',
              style: const TextStyle(
                fontSize: 64.0,
              ),
            ),
            Text(
              'Click${_counterOfClicks == 1 ? "" : "s"}',
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => setState(() => _counterOfClicks--),
            child: const Icon(
              Icons.exposure_minus_1_outlined,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FloatingActionButton(
            onPressed: () => setState(() => _counterOfClicks = 0),
            child: const Icon(
              Icons.restore_outlined,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FloatingActionButton(
            onPressed: () => setState(() => _counterOfClicks++),
            child: const Icon(
              Icons.plus_one,
            ),
          ),
        ],
      ),
    );
  }
}

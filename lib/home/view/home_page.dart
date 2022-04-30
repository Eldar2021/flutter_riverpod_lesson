import 'package:flutter/material.dart';
import 'package:flutter_riverpod_lesson/counter/counter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Counter page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<CounterPage>(
                builder: (context) => const CounterPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}

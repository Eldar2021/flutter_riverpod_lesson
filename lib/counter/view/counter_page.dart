import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_lesson/counter/cubit/counter_cubit.dart';
import 'package:flutter_riverpod_lesson/l10n/l10n.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
      body: const Center(child: CounterText()),
    );
  }
}

class CounterText extends ConsumerWidget {
  const CounterText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final watch = ref.watch(counterProvider(3));

    return Text(
      watch
          .when(
            data: (int data) => data,
            error: (Object o, _) => o,
            loading: () => 0,
          )
          .toString(),
      style: theme.textTheme.displayLarge,
    );
  }
}

// import 'package:bloc/bloc.dart';

// class CounterCubit extends Cubit<int> {
//   CounterCubit() : super(0);

//   void increment() => emit(state + 1);
//   void decrement() => emit(state - 1);
// }

import 'package:flutter_riverpod/flutter_riverpod.dart';

final webSocketClientProvider = Provider<WebSocketClient>((red) {
  return FakeWebSocketClient();
});

final counterProvider = StreamProvider.family<int, int>((ref, s) {
  final wsClient = ref.watch(webSocketClientProvider);
  return wsClient.getCounterStream(s);
});

abstract class WebSocketClient {
  Stream<int> getCounterStream([int s]);

  Future<bool> getBool();
}

class FakeWebSocketClient implements WebSocketClient {
  @override
  Future<bool> getBool() {
    throw UnimplementedError();
  }

  @override
  Stream<int> getCounterStream([int s = 0]) async* {
    var i = s;
    while (true) {
      await Future<dynamic>.delayed(const Duration(seconds: 1));
      yield i++;
    }
  }
}

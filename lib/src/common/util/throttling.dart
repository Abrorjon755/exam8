import 'dart:async';

class Throttling {
  Throttling(this.duration);

  final Duration duration;
  Timer? _timer;

  void call(void Function() myFunction) {
    _timer ??= Timer(duration, () {
      _timer?.cancel();
      _timer = null;

      myFunction();
    });
  }

  void dispose() {
    _timer?.cancel();
    _timer = null;
  }
}

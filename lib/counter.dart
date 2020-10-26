class Counter {
  var _value = 0;

  int get value => _value;

  void increment() => _value++;

  void decrement() {
    _value = _value - 1;
  }
}

import 'dart:async';
import 'package:flutter/material.dart';

class NumberStream {
  StreamController<int> controller = StreamController<int>();

  addNumberToSink(int newNumber) {
    controller.sink.add(newNumber);
  }

  close() {
    controller.close();
  }

  addError() {
    controller.sink.addError('error');
  }
}

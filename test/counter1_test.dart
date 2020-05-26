import 'package:brain_flower/blocs/home_screen/home_event.dart' show SelectScreenEvent;
import 'package:brain_flower/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  group('Counter', () {
    test('value should start at 0', () {
      expect(Counter().value, 0);
    });

    test('value should be incremented', () {
      final counter = Counter();

      counter.increment();

      expect(counter.value, 1);
    });

    test('value should be decremented', () {
      final counter = Counter();

      counter.decrement();

      expect(counter.value, -1);
    });


  });
}
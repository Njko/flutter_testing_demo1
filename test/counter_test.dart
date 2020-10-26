import 'package:test/test.dart';
import 'package:flutter_testing_demo1/counter.dart';

void main() {
  Counter counter;

  setUp(() {
    //reinit Counter before each test
    counter = Counter();
  });
  group('Counter Increment', () {
    test('Counter value should be incremented', () {
      //Arrange
      final expectedResult = 1;

      //Act
      counter.increment();

      //Assert
      expect(counter.value, expectedResult);
    });

    test('Counter value should have a default value', () {
      //Arrange
      //1 - Our counter will start at 0
      final expectedResult = 0;

      //Act
      //2 - There are no actions in this test

      //Assert
      expect(counter.value, expectedResult);
    });

    test('Counter value should be incremented twice', () {
      //Arrange
      final expectedResult = 2;
      final numberOfIncrements = 2;

      //Act
      for (var i = 0; i < numberOfIncrements; i++) {
        counter.increment();
      }

      //Assert
      expect(counter.value, expectedResult);
    });

    test('Counter value should be incremented a hundred times', () {
      //Arrange
      final expectedResult = 100;
      final numberOfIncrements = 100;

      //Act
      for (var i = 0; i < numberOfIncrements; i++) {
        counter.increment();
      }

      //Assert
      expect(counter.value, expectedResult);
    });
  });

  group('Counter decrement', () {
    test('Counter should decrement', () {
      //Arrange
      final expectedResult = -1;

      //Act
      counter.decrement();

      //Assert
      expect(counter.value, expectedResult);
    });

    test('Counter should decrement twice', () {
      //Arrange
      final expectedResult = -2;
      final numberOfIncrements = 2;

      //Act
      for (var i = 0; i < numberOfIncrements; i++) {
        counter.decrement();
      }

      //Assert
      expect(counter.value, expectedResult);
    });

    test('Counter value should decrement ten times', () {
      //Arrange
      final expectedResult = -10;
      final numberOfIncrements = 10;

      //Act
      for (var i = 0; i < numberOfIncrements; i++) {
        counter.decrement();
      }

      //Assert
      expect(counter.value, expectedResult);
    });
  });

  group('Counter increment and decrement', () {
    test('Counter value should apply increment and decrement', () {
      //Arrange
      final expectedResult = 1;

      //Act
      counter.increment();
      counter.increment();
      counter.decrement();

      //Assert
      expect(counter.value, expectedResult);
    });
  });
}

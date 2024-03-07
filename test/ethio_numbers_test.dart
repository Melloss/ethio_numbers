import 'package:flutter_test/flutter_test.dart';

import 'package:ethio_numbers/ethio_numbers.dart';

void main() {
  group('Amharic Number -> ', () {
    test('when number is 300 it should return ሶስት መቶ', () {
      expect(300.toAmharicText(), 'ሶስት መቶ');
    });
    test('when number is 0 it should return ዜሮ', () {
      expect(0.toAmharicText(), 'ዜሮ');
    });
    test('when number is 3,000,000,000,215 it should return ዜሮ', () {
      expect(3000000000215.toAmharicText(), 'ሶስት ትሪሊዮን ሁለት መቶ አስራ አምስት');
    });
    test('when number is -32 it should return አሉታ ሰላሳ ሁለት', () {
      expect((-32).toAmharicText(), 'አሉታ ሰላሳ ሁለት');
    });
  });
}

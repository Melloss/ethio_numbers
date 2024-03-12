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
    test(
        'when number is 3,000,000,000,215 it should return ሶስት ትሪሊዮን ሁለት መቶ አስራ አምስት',
        () {
      expect(3000000000215.toAmharicText(), 'ሶስት ትሪሊዮን ሁለት መቶ አስራ አምስት');
    });
    test('when number is -32 it should return አሉታ ሰላሳ ሁለት', () {
      expect((-32).toAmharicText(), 'አሉታ ሰላሳ ሁለት');
    });
    test('when number is 10.35 it should return አስር ነጥብ ሶስት አምስት', () {
      expect((10.35).toAmharicText(), 'አስር ነጥብ ሶስት አምስት');
    });
    test('when number is 10.35 it should return አስር ብር ከ ሰላሳ አምስት ሳንቲም', () {
      expect(
          (10.35).toAmharicText(monetizeValue: true), 'አስር ብር ከ ሰላሳ አምስት ሳንቲም');
    });
    test('when number is 5.23425353523 it should return አምስት ነጥብ ሁለት አራት', () {
      expect(
          (5.23625353523).toAmharicText(fractionDigits: 2), 'አምስት ነጥብ ሁለት አራት');
    });
    test('when number is 5.23425353523 it should return አምስት ብር ከ ሃያ አራት ሳንቲም',
        () {
      expect(
          (5.23625353523).toAmharicText(
            fractionDigits: 2,
            monetizeValue: true,
          ),
          'አምስት ብር ከ ሃያ አራት ሳንቲም');
    });
  });
  group('Afaan Oromoo Number -> ', () {
    test('when number is 10 it should return khudan', () {
      expect(10.toAfaanOromoText(), 'khudan');
    });
    test('when number is 14 it should return khuda afur', () {
      expect(14.toAfaanOromoText(), 'khuda afur');
    });
    test('when number is 1000 it should return kuma afur', () {
      expect(1000.toAfaanOromoText(), 'kuma');
    });
    test('when number is 100 it should return dhiba afur', () {
      print(100.toAfaanOromoText());
      expect(100.toAfaanOromoText(), 'dhibba');
    });
    test('when number is 200 it should return lama dhibba', () {
      print(200.toAfaanOromoText());
      expect(200.toAfaanOromoText(), 'lama dhibba');
    });
  });
}

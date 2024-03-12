import 'package:ethio_numbers/amharic_numbers.dart';
import 'package:ethio_numbers/afaan_oromo_numbers.dart';

extension EthioNumbersInt on int {
  /// it converts int value to corresponding Amharic Text.
  ///
  /// Returns Amharic Text.
  String toAmharicText() {
    return AmharicNumber.changeIntToAmharicText(this);
  }

  /// it converts int value to corresponding Afaan Oromo Text.
  ///
  /// Returns Afaan Oromo Text.
  String toAfaanOromoText() {
    return AfaanOromoNumber.changeToAfaanOromoText(this);
  }
}

extension EthioNumbersDouble on double {
  /// it converts double value to corresponding Amharic Text.
  ///```dart
  /// //you can monetize the number
  /// double money = 34.50;
  /// money.toAmharicText(monetizeValue: true); //Output: ሰላሳ አራት ብር ከ ሃምሳ ሳንቲም
  ///
  /// double num = 524.53523;
  /// num.toAmharicText(fractionDigits: 2); //Output: አምስት መቶ ሃያ አራት ነጥብ አምስት አራት
  ///```
  /// Returns Amharic Text.
  String toAmharicText({bool monetizeValue = false, int? fractionDigits}) {
    return AmharicNumber.changeDoubleToAmharicText(
      this,
      fractionDigits: fractionDigits,
      monetizeValue: monetizeValue,
    );
  }
}

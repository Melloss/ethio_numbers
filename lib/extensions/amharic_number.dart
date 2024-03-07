import 'package:ethio_numbers/amharic_number.dart';

extension EthioNumbers on int {
  // extension for amharic number
  String toAmharicText() {
    return AmharicNumber.changeToAmharicText(this);
  }
}

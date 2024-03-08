import 'package:ethio_numbers/amharic_numbers.dart';
import 'package:ethio_numbers/afaan_oromo_numbers.dart';

extension EthioNumbers on int {
  // extension for amharic number
  String toAmharicText() {
    return AmharicNumber.changeToAmharicText(this);
  }

  String toAfaanOromoText() {
    return AfaanOromoNumber.changeToAfaanOromoText(this);
  }
}

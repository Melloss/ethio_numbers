/// The `ethio_numbers` library provides utility extensions for Arabic numbers convertion to corresponding Amharic, Afaan Oromo and Tigrigna text.
///
/// This library exports two main components:
/// - [EthioNumbersInt]: A class used to convert int value to corresponding amharic, afaan oromo or Tigrigna text
/// - [EthioNumbersDouble]: A class used to convert double value to corresponding amharic, afaan oromo or Tigrigna text
///
/// Example usage:
/// ```dart
/// import 'package:ethio_numbers/ethio_numbers.dart';
///
/// void main() {
///   // Convert Arabic number to Amharic Text
///   String num = 7023.toAmharicText(); //Output: ሰባት ሺ ሀያ ሶስት
///
///   double money = 34.50;
///   money.toAmharicText(monetizeValue: true); //Output: ሰላሳ አራት ብር ከ ሃምሳ ሳንቲም
///
///
///   // Convert Arabic number to Afaan Oromo Text
///   String num = 125.toAfaanOromoText(); // Output: dhibba digdamii shan
///
///   // Convert Arabic Number to Tigrigna
///   String num = 14000.toTigrigna(); // Output: ዓሰርተ ኣርባዕተ ሽሕ
/// }
/// ```
///

library ethio_numbers;

export 'extension/ethio_numbers.dart';
export 'amharic_numbers.dart';

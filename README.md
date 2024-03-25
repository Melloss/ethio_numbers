`ethio_numbers` package used to convert Arabic number to Amharic, Afaan Oromo or Tigrigna text upto decillion (10^33) number.

## Features

* Number to Amharic Text.
* Number to Afaan Oromo Text.
* Number to Tigrigna Text.
* Monetize Number to Amharic Text.

## Getting started
you can add the package using the following command

```
flutter pub add ethio_numbers
```
or

```
dart pub add ethio_numbers
```


## Usage
Import the package in your Dart code:
```dart
import 'package:ethio_numbers/ethio_numbers.dart';
```
convert the number using `.toAmharicText()` or `.toAfaanOromoText()` extension.


```dart
print(7023.toAmharicText()); //Output: ሰባት ሺ ሀያ ሶስት

print(125.toAfaanOromoText()); //Output:dhibba digdamii shan

print(14000.toTigrigna()); // Output: ዓሰርተ ኣርባዕተ ሽሕ


```

for `double` values you can add `fractionDigits` and `monetizeValue` named parameter to get additional feature.

```dart
double money = 34.50;
money.toAmharicText(monetizeValue: true); //Output: ሰላሳ አራት ብር ከ ሃምሳ ሳንቲም

double n = 524.53523;
n.toAmharicText(); //Output: አምስት መቶ ሃያ አራት ነጥብ አምስት ሶስት አምስት ሁለት ሶስት
n.toAmharicText(fractionDigits: 2); //Output: አምስት መቶ ሃያ አራት ነጥብ አምስት አራት

```

## Contributions

Contributions to the ethio_numbers are welcomed, If you find any issues or have suggestions for improvements, please open an issue or submit a pull request on the GitHub repository.

## Spcial Thanks
[Yordanos Mekonin](https://www.linkedin.com/in/yordanos-mekonen-2096ab228?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3Bdq2nJzBvRgufQkP9rIS7MA%3D%3D) helps me on Tigrigna Numbers

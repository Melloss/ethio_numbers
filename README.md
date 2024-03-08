`ethio_numbers` package used to convert number to Amharic or Afaan Oromo text upto decillion (10^33) number.

## Features

* Number to Amharic Text.
* Number to Afaan Oromo.

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
```

## Contributions

Contributions to the ethio_numbers are welcomed and encouraged! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request on the GitHub repository.


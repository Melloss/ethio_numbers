class TigrignaNumber {
  /// used to changes double number to Tigrigna letter including negative number.
  // static String changeDoubleToTigrignaText(double number,
  //     {int? fractionDigits, bool monetizeValue = false}) {
  //   String n = '';
  //   if (fractionDigits != null) {
  //     n = number.toStringAsFixed(fractionDigits);
  //   } else {
  //     n = number.toString();
  //   }

  //   int pointIndex = n.indexOf('.');
  //   String firstNumber = n.substring(0, pointIndex);
  //   String lastNumbers = n.substring((pointIndex + 1));
  //   String tempNumber = '';
  //   if (lastNumbers != '0') {
  //     if (monetizeValue) {
  //       tempNumber = '${changeIntToTigrignaText(int.parse(firstNumber))} ብር ከ';
  //       tempNumber =
  //           '$tempNumber ${_monetizeLastNumber('${lastNumbers[0]}${lastNumbers.length == 2 ? lastNumbers[1] : 0}')} ሳንቲም';
  //     } else {
  //       tempNumber = '${changeIntToTigrignaText(int.parse(firstNumber))} ነጥብ';
  //       for (var i = 0; i < lastNumbers.length; i++) {
  //         String number = lastNumbers[i];
  //         tempNumber = '$tempNumber ${_getOnes(int.parse(number))}';
  //       }
  //     }
  //   } else {
  //     if (monetizeValue) {
  //       tempNumber = '${changeIntToTigrignaText(int.parse(firstNumber))} ብር';
  //     } else {
  //       tempNumber = changeIntToTigrignaText(int.parse(firstNumber));
  //     }
  //   }

  //   return tempNumber;
  // }

  /// used to changes integer number to Tigrigna letter including negative number
  static String changeIntToTigrignaText(int number) {
    if (number.isNegative) {
      return 'አሉታ ${_convertNumberToTigrignaText(number.abs())}'.trim();
    }
    return _convertNumberToTigrignaText(number).trim();
  }

  // static String _monetizeLastNumber(String n) {
  //   if (n[0] == '0') {
  //     return '${_getOnes(0)} ${_getOnes(int.parse(n[1]))}';
  //   }
  //   return changeIntToTigrignaText(int.parse(n));
  // }

  static String _convertNumberToTigrignaText(int number) {
    String n = number.toString();
    if (n.length == 1) {
      return _getOnes(number);
    } else if (n.length == 2) {
      if (n[1] == '0') {
        return _getTens(int.parse(n[0]));
      }
      return '${_getTens(int.parse(n[0]))} ${_getOnes(int.parse(n[1]))}';
    } else if (n.length == 3) {
      int lastNumbers = int.parse(n.substring(1));
      int firstNumbers = int.parse(n.substring(0, 1));

      return '${_convertNumberToTigrignaText(firstNumbers)} ሚኢቲ ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 4) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToTigrignaText(firstNumbers)} ሽሕ ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 5) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToTigrignaText(firstNumbers)} ሽሕ ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 6) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToTigrignaText(firstNumbers)} ሽሕ ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 7) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToTigrignaText(firstNumbers)} ሚልየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 8) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToTigrignaText(firstNumbers)} ሚልየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 9) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToTigrignaText(firstNumbers)} ሚልየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 10) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToTigrignaText(firstNumbers)} ቢሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 11) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToTigrignaText(firstNumbers)} ቢሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 12) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToTigrignaText(firstNumbers)} ቢሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 13) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToTigrignaText(firstNumbers)} ትሪሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 14) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToTigrignaText(firstNumbers)} ትሪሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 15) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToTigrignaText(firstNumbers)} ትሪሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 16) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToTigrignaText(firstNumbers)} ኳድሪሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 17) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToTigrignaText(firstNumbers)} ኳድሪሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 18) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToTigrignaText(firstNumbers)} ኳድሪሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 19) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToTigrignaText(firstNumbers)} ኳንቲሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 20) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToTigrignaText(firstNumbers)} ኳንቲሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 21) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToTigrignaText(firstNumbers)} ኳንቲሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 22) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToTigrignaText(firstNumbers)} ሴክስቲሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 23) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToTigrignaText(firstNumbers)} ሴክስቲሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 24) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToTigrignaText(firstNumbers)} ሴክስቲሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 25) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToTigrignaText(firstNumbers)} ሴፕቲሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 26) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToTigrignaText(firstNumbers)} ሴፕቲሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 27) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToTigrignaText(firstNumbers)} ሴፕቲሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 28) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToTigrignaText(firstNumbers)} ኦክቲሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 29) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToTigrignaText(firstNumbers)} ኦክቲሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 30) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToTigrignaText(firstNumbers)} ኦክቲሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 28) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToTigrignaText(firstNumbers)} ኖኒሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 29) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToTigrignaText(firstNumbers)} ኖኒሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 30) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToTigrignaText(firstNumbers)} ኖኒሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 31) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToTigrignaText(firstNumbers)} ዴሲሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 32) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToTigrignaText(firstNumbers)} ዴሲሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    } else if (n.length == 33) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToTigrignaText(firstNumbers)} ዴሲሊየን ${lastNumbers != 0 ? _convertNumberToTigrignaText(lastNumbers) : ''}';
    }
    return n;
  }

  /// used to get one's number in tigrigna
  static String _getOnes(int number) {
    switch (number) {
      case 0:
        return 'ዜሮ';
      case 1:
        return 'ሓደ';
      case 2:
        return 'ክልተ';
      case 3:
        return 'ሰለስተ';
      case 4:
        return 'ኣርባዕተ';
      case 5:
        return 'ሓሙሽተ';
      case 6:
        return 'ሽድሽተ';
      case 7:
        return 'ሸውዓተ';
      case 8:
        return 'ሸሞንተ';
      case 9:
        return 'ትሽዓተ';
      default:
        return '';
    }
  }

  /// used to get ten's number in tigrigna
  static String _getTens(int number) {
    switch (number) {
      case 1:
        return 'ዓሰርተ';
      case 2:
        return 'ዕስራ';
      case 3:
        return 'ሰላሳ';
      case 4:
        return 'ኣርብዓ';
      case 5:
        return 'ሓምሳ';
      case 6:
        return 'ሱሳ';
      case 7:
        return 'ሰብዓ';
      case 8:
        return 'ሰማንያ';
      case 9:
        return 'ቴስዓ';
      default:
        return '';
    }
  }
}

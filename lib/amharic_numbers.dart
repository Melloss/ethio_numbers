class AmharicNumber {
  /// used to changes double number to amharic letter including negative number.
  static String changeDoubleToAmharicText(double number,
      {int? fractionDigits, bool monetizeValue = false}) {
    String n = '';
    if (fractionDigits != null) {
      n = number.toStringAsFixed(fractionDigits);
    } else {
      n = number.toString();
    }

    int pointIndex = n.indexOf('.');
    String firstNumber = n.substring(0, pointIndex);
    String lastNumbers = n.substring((pointIndex + 1));
    String tempNumber = '';
    if (lastNumbers != '0') {
      if (monetizeValue) {
        tempNumber = '${changeIntToAmharicText(int.parse(firstNumber))} ብር ከ';
        tempNumber =
            '$tempNumber ${_monetizeLastNumber('${lastNumbers[0]}${lastNumbers.length == 2 ? lastNumbers[1] : 0}')} ሳንቲም';
      } else {
        tempNumber = '${changeIntToAmharicText(int.parse(firstNumber))} ነጥብ';
        for (var i = 0; i < lastNumbers.length; i++) {
          String number = lastNumbers[i];
          tempNumber = '$tempNumber ${_getOnes(int.parse(number))}';
        }
      }
    } else {
      if (monetizeValue) {
        tempNumber = '${changeIntToAmharicText(int.parse(firstNumber))} ብር';
      } else {
        tempNumber = changeIntToAmharicText(int.parse(firstNumber));
      }
    }

    return tempNumber;
  }

  /// used to changes integer number to amharic letter including negative number
  static String changeIntToAmharicText(int number) {
    if (number.isNegative) {
      return 'አሉታ ${_convertNumberToAmharicText(number.abs())}'.trim();
    }
    return _convertNumberToAmharicText(number).trim();
  }

  static String _monetizeLastNumber(String n) {
    if (n[0] == '0') {
      return '${_getOnes(0)} ${_getOnes(int.parse(n[1]))}';
    }
    return changeIntToAmharicText(int.parse(n));
  }

  static String _convertNumberToAmharicText(int number) {
    String n = number.toString();
    if (n.length == 1) {
      return _getOnes(number);
    } else if (n.length == 2) {
      if (n[1] == '0') {
        return _getTens(int.parse(n[0]));
      }
      if (n[0] == '1') {
        return '${_getTens(int.parse(n[0]), isAsra: true)} ${_getOnes(int.parse(n[1]))}';
      }
      return '${_getTens(int.parse(n[0]))} ${_getOnes(int.parse(n[1]))}';
    } else if (n.length == 3) {
      int lastNumbers = int.parse(n.substring(1));
      int firstNumbers = int.parse(n.substring(0, 1));

      return '${_convertNumberToAmharicText(firstNumbers)} መቶ ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 4) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToAmharicText(firstNumbers)} ሺ ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 5) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToAmharicText(firstNumbers)} ሺ ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 6) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToAmharicText(firstNumbers)} ሺ ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 7) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToAmharicText(firstNumbers)} ሚሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 8) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToAmharicText(firstNumbers)} ሚሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 9) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToAmharicText(firstNumbers)} ሚሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 10) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToAmharicText(firstNumbers)} ቢሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 11) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToAmharicText(firstNumbers)} ቢሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 12) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToAmharicText(firstNumbers)} ቢሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 13) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToAmharicText(firstNumbers)} ትሪሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 14) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToAmharicText(firstNumbers)} ትሪሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 15) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToAmharicText(firstNumbers)} ትሪሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 16) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToAmharicText(firstNumbers)} ኳድሪሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 17) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToAmharicText(firstNumbers)} ኳድሪሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 18) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToAmharicText(firstNumbers)} ኳድሪሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 19) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToAmharicText(firstNumbers)} ኳንቲሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 20) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToAmharicText(firstNumbers)} ኳንቲሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 21) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToAmharicText(firstNumbers)} ኳንቲሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 22) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToAmharicText(firstNumbers)} ሴክስቲሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 23) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToAmharicText(firstNumbers)} ሴክስቲሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 24) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToAmharicText(firstNumbers)} ሴክስቲሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 25) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToAmharicText(firstNumbers)} ሴፕቲሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 26) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToAmharicText(firstNumbers)} ሴፕቲሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 27) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToAmharicText(firstNumbers)} ሴፕቲሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 28) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToAmharicText(firstNumbers)} ኦክቲሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 29) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToAmharicText(firstNumbers)} ኦክቲሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 30) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToAmharicText(firstNumbers)} ኦክቲሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 28) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToAmharicText(firstNumbers)} ኖኒሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 29) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToAmharicText(firstNumbers)} ኖኒሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 30) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToAmharicText(firstNumbers)} ኖኒሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 31) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${_convertNumberToAmharicText(firstNumbers)} ዴሲሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 32) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${_convertNumberToAmharicText(firstNumbers)} ዴሲሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 33) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${_convertNumberToAmharicText(firstNumbers)} ዴሲሊዮን ${lastNumbers != 0 ? _convertNumberToAmharicText(lastNumbers) : ''}';
    }
    return n;
  }

  /// used to get one's number in amharic
  static String _getOnes(int number) {
    switch (number) {
      case 0:
        return 'ዜሮ';
      case 1:
        return 'አንድ';
      case 2:
        return 'ሁለት';
      case 3:
        return 'ሶስት';
      case 4:
        return 'አራት';
      case 5:
        return 'አምስት';
      case 6:
        return 'ስድስት';
      case 7:
        return 'ሰባት';
      case 8:
        return 'ስምንት';
      case 9:
        return 'ዘጠኝ';
      default:
        return '';
    }
  }

  /// used to get ten's number in amharic
  static String _getTens(int number, {bool isAsra = false}) {
    switch (number) {
      case 1:
        return isAsra ? 'አስራ' : 'አስር';
      case 2:
        return 'ሃያ';
      case 3:
        return 'ሰላሳ';
      case 4:
        return 'አርባ';
      case 5:
        return 'ሃምሳ';
      case 6:
        return 'ስድሳ';
      case 7:
        return 'ሰባ';
      case 8:
        return 'ሰማንያ';
      case 9:
        return 'ዘጠና';
      default:
        return '';
    }
  }
}

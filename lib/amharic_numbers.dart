class AmharicNumber {
  // this method changes number to amharic letter including negative number
  static String changeToAmharicText(int number) {
    if (number.isNegative) {
      return 'አሉታ ${convertNumberToAmharicText(number.abs())}'.trim();
    }
    return convertNumberToAmharicText(number).trim();
  }

  static String convertNumberToAmharicText(int number) {
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

      return '${convertNumberToAmharicText(firstNumbers)} መቶ ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 4) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAmharicText(firstNumbers)} ሺ ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 5) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAmharicText(firstNumbers)} ሺ ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 6) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAmharicText(firstNumbers)} ሺ ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 7) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAmharicText(firstNumbers)} ሚሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 8) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAmharicText(firstNumbers)} ሚሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 9) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAmharicText(firstNumbers)} ሚሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 10) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAmharicText(firstNumbers)} ቢሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 11) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAmharicText(firstNumbers)} ቢሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 12) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAmharicText(firstNumbers)} ቢሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 13) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAmharicText(firstNumbers)} ትሪሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 14) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAmharicText(firstNumbers)} ትሪሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 15) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAmharicText(firstNumbers)} ትሪሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 16) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAmharicText(firstNumbers)} ኳድሪሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 17) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAmharicText(firstNumbers)} ኳድሪሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 18) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAmharicText(firstNumbers)} ኳድሪሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 19) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAmharicText(firstNumbers)} ኳንቲሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 20) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAmharicText(firstNumbers)} ኳንቲሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 21) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAmharicText(firstNumbers)} ኳንቲሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 22) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAmharicText(firstNumbers)} ሴክስቲሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 23) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAmharicText(firstNumbers)} ሴክስቲሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 24) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAmharicText(firstNumbers)} ሴክስቲሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 25) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAmharicText(firstNumbers)} ሴፕቲሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 26) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAmharicText(firstNumbers)} ሴፕቲሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 27) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAmharicText(firstNumbers)} ሴፕቲሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 28) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAmharicText(firstNumbers)} ኦክቲሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 29) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAmharicText(firstNumbers)} ኦክቲሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 30) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAmharicText(firstNumbers)} ኦክቲሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 28) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAmharicText(firstNumbers)} ኖኒሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 29) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAmharicText(firstNumbers)} ኖኒሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 30) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAmharicText(firstNumbers)} ኖኒሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 31) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAmharicText(firstNumbers)} ዴሲሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 32) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAmharicText(firstNumbers)} ዴሲሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    } else if (n.length == 33) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAmharicText(firstNumbers)} ዴሲሊዮን ${lastNumbers != 0 ? convertNumberToAmharicText(lastNumbers) : ''}';
    }
    return n;
  }

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

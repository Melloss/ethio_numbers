class AfaanOromoNumber {
  // this method changes number to amharic letter including negative number
  static String changeToAfaanOromoText(int number) {
    if (number.isNegative) {
      return 'Lakkoofsa Hirisoo: ${convertNumberToAfaanOromoText(number.abs())}'
          .trim();
    }
    return convertNumberToAfaanOromoText(number).trim();
  }

  static String convertNumberToAfaanOromoText(int number) {
    String n = number.toString();
    if (n.length == 1) {
      return _getOnes(number);
    } else if (n.length == 2) {
      if (n[1] == '0') {
        return _getTens(int.parse(n[0]));
      }
      return '${_getTens(int.parse(n[0]), isFullNumber: true)} ${_getOnes(int.parse(n[1]))}';

      // return '${_getTens(int.parse(n[0]))} ${_getOnes(int.parse(n[1]))}';
    } else if (n.length == 3) {
      int lastNumbers = int.parse(n.substring(1));
      int firstNumbers = int.parse(n.substring(0, 1));

      return '${n[0] == '1' ? '' : convertNumberToAfaanOromoText(firstNumbers)} dhibba ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 4) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${n[0] == '1' ? '' : convertNumberToAfaanOromoText(firstNumbers)} kuma ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 5) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAfaanOromoText(firstNumbers)} kuma ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 6) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAfaanOromoText(firstNumbers)} kuma ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 7) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${n[0] == '1' ? '' : convertNumberToAfaanOromoText(firstNumbers)} milliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 8) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAfaanOromoText(firstNumbers)} milliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 9) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAfaanOromoText(firstNumbers)} milliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 10) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAfaanOromoText(firstNumbers)} billiyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 11) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAfaanOromoText(firstNumbers)} billiyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 12) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAfaanOromoText(firstNumbers)} billiyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 13) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAfaanOromoText(firstNumbers)} trilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 14) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAfaanOromoText(firstNumbers)} trilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 15) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAfaanOromoText(firstNumbers)} trilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 16) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAfaanOromoText(firstNumbers)} kuadrilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 17) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAfaanOromoText(firstNumbers)} kuadrilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 18) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAfaanOromoText(firstNumbers)} kuadrilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 19) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAfaanOromoText(firstNumbers)} kuantilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 20) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAfaanOromoText(firstNumbers)} kuantilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 21) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAfaanOromoText(firstNumbers)} kuantilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 22) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAfaanOromoText(firstNumbers)} sextilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 23) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAfaanOromoText(firstNumbers)} sextilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 24) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAfaanOromoText(firstNumbers)} sextilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 25) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAfaanOromoText(firstNumbers)} septilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 26) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAfaanOromoText(firstNumbers)} septilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 27) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAfaanOromoText(firstNumbers)} septilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 28) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAfaanOromoText(firstNumbers)} octilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 29) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAfaanOromoText(firstNumbers)} octilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 30) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAfaanOromoText(firstNumbers)} octilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 28) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAfaanOromoText(firstNumbers)} nonilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 29) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAfaanOromoText(firstNumbers)} nonilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 30) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAfaanOromoText(firstNumbers)} nonilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 31) {
      int firstNumbers = int.parse(n.substring(0, 1));
      int lastNumbers = int.parse(n.substring(1));

      return '${convertNumberToAfaanOromoText(firstNumbers)} decilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 32) {
      int firstNumbers = int.parse(n.substring(0, 2));
      int lastNumbers = int.parse(n.substring(2));

      return '${convertNumberToAfaanOromoText(firstNumbers)} decilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    } else if (n.length == 33) {
      int firstNumbers = int.parse(n.substring(0, 3));
      int lastNumbers = int.parse(n.substring(3));

      return '${convertNumberToAfaanOromoText(firstNumbers)} decilliyoonii ${lastNumbers != 0 ? convertNumberToAfaanOromoText(lastNumbers) : ''}';
    }
    return n;
  }

  static String _getOnes(int number) {
    switch (number) {
      case 0:
        return 'duwwa';
      case 1:
        return 'tokko';
      case 2:
        return 'lama';
      case 3:
        return 'sadi';
      case 4:
        return 'afur';
      case 5:
        return 'shan';
      case 6:
        return 'jaa\'a';
      case 7:
        return 'torba';
      case 8:
        return 'saddeet';
      case 9:
        return 'sagal';
      default:
        return '';
    }
  }

  static String _getTens(int number, {bool isFullNumber = false}) {
    switch (number) {
      case 1:
        return isFullNumber ? 'khuda' : 'khudan';
      case 2:
        return isFullNumber ? 'digdamii' : 'digdama';
      case 3:
        return isFullNumber ? 'soddomii' : 'soddoma';
      case 4:
        return isFullNumber ? 'afurtamii' : 'afurtama';
      case 5:
        return isFullNumber ? 'shantamii' : 'shantama';
      case 6:
        return isFullNumber ? 'jaatamii' : 'jaatama';
      case 7:
        return isFullNumber ? 'torbatamii' : 'torbatama';
      case 8:
        return isFullNumber ? 'saddeetamii' : 'saddeetama';
      case 9:
        return isFullNumber ? 'sagaltamii' : 'sagaltama';
      default:
        return '';
    }
  }
}

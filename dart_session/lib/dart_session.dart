/**String caesarEncrypt(String text, int shift) {
  String result = "";
  
  for (int i = 0; i < text.length; i++) {
    String char = text[i];
    
    // لو الحرف Capital
    if (char.codeUnitAt(0) >= 65 && char.codeUnitAt(0) <= 90) {
      int encryptedCode = ((char.codeUnitAt(0) - 65 + shift) % 26) + 65;
      result += String.fromCharCode(encryptedCode);
    }
    
    // لو Small
    else if (char.codeUnitAt(0) >= 97 && char.codeUnitAt(0) <= 122) {
      int encryptedCode = ((char.codeUnitAt(0) - 97 + shift) % 26) + 97;
      result += String.fromCharCode(encryptedCode);
    }

    // غير كده، سيبه زي ما هو (مسافات - رموز)
    else {
      result += char;
    }
  }

  return result;
}

void main() {
  String original = "Hello Flutter!";
  int shift = 3;

  String encrypted = caesarEncrypt(original, shift);
  print("Encrypted: $encrypted");
}**/
/**import 'dart:io';

void main() {
  print("Enter the message : ");
  String message = stdin.readLineSync() ?? "unknown";
  print("Enter the number of shifts : ");
  int? shift = int.parse(stdin.readLineSync()!);
  String encrypted = Result(message, shift);
  print("Encrypted : $encrypted");
}

String Result(String text, int shift) {
  String result = "";

  for (int i = 0; i < text.length; i++) {
    String char = text[i];

    //if the character was capital
    if (char.codeUnitAt(0) >= 65 && char.codeUnitAt(0) <= 90) {
      int shifted = ((char.codeUnitAt(0) - 65 + shift) % 26) + 65;
      result += String.fromCharCode(shifted);
    }

    //if the character was small
    if (char.codeUnitAt(0) >= 97 && char.codeUnitAt(0) <= 122) {
      int shifted = ((char.codeUnitAt(0) - 97 + shift) % 26) + 97;
      result += String.fromCharCode(shifted);
    } else {
      result += char;
    }
  }
  return result;
}**/

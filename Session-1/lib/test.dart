import 'dart:io';

void main() {
  print("Enter message : ");
  String message = stdin.readLineSync() ?? "";
  print("Enter the number of shifts : ");
  int? shift = int.parse(stdin.readLineSync()!);
  String shifted = caeserEncrypt(message, shift);
  print("encrypted message : $shifted");
}

String caeserEncrypt(String text, int shift) {
  String result = "";
  for (int i = 0; i < text.length; i++) {
    String char = text[i];
    // if char is capital
    if (char.codeUnitAt(0) >= 65 && char.codeUnitAt(0) <= 90) {
      int encrypted = ((char.codeUnitAt(0) - 65 + shift) % 26) + 65;
      result += String.fromCharCode(encrypted);
    }
    // if char is small
    else if (char.codeUnitAt(0) >= 97 && char.codeUnitAt(0) <= 122) {
      int encrypted = ((char.codeUnitAt(0) - 97 + shift) % 26) + 97;
      result += String.fromCharCode(encrypted);
    } else {
      result += char;
    }
  }
  return result;
}
double? getNumsByString(String s) {
  String resStr = '';
  bool dotExists = false;
  for (int i = 0; i < s.length; i++) {
    // Перебираем все символы строки
    num? tmp = num.tryParse(s[i]);
    String char = s[i].replaceAll(',', '.');
    if ((char == '.') & (!dotExists)) {
      resStr = resStr + char;
      dotExists = true;
    }
    if (tmp != null) {
      resStr = (resStr + s[i]);
    }
  }
  return double.tryParse(resStr);
}

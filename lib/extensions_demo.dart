extension intExtension on int {
  bool get isEvenNumber => this % 2 == 0;
}

extension StringX on String {
  bool get isGmail => contains("gmail.com");
}

void main() {
  print(78885463346.isEvenNumber);
  print("abdul@gmail.com".isGmail);
}

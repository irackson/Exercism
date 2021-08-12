class Isogram {
  List<String> exceptions = [' ', '-'];

  bool isIsogram(String word) {
    return false;
  }
}

void main() {
  String testString = 'asdf';
  Isogram isogram = new Isogram();
  print(isogram.isIsogram(testString));
}

Map<List<String>, int> scrabbleMap = {
  ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T']: 1,
  ['D', 'G']: 2,
  ['B', 'C', 'M', 'P']: 3,
  ['F', 'H', 'V', 'W', 'Y']: 4,
  ['K']: 5,
  ['J', 'X']: 8,
  ['Q', 'Z']: 10
};

int score(String str) {
  int sum = 0;
  List<String> strArr = str.split('');
  for (var i = 0; i < strArr.length; i++) {
    sum += scrabbleMap[scrabbleMap.keys
        .firstWhere((element) => element.contains(strArr[i].toUpperCase()))];
  }
  return sum;
}

//* cool alternative solution: https://exercism.io/tracks/dart/exercises/scrabble-score/solutions/b14c7e2cae214b1eb7e0e09681864d21
/* int score(String str) {
  final Map<String, int> map = const {
    'A': 1, 'E': 1, 'I': 1, 'O': 1, 'U': 1, 'L': 1, 'N': 1, 'R': 1, 'S': 1, 'T': 1, //1
    'D': 2, 'G': 2, //2
    'B': 3, 'C': 3, 'M': 3, 'P': 3, //3
    'F': 4, 'H': 4, 'V': 4, 'W': 4, 'Y': 4, //4
    'K': 5, //5
    'J': 8, 'X': 8, //8
    'Q': 10, 'Z': 10 //10
  };

  return str.toUpperCase().split('').fold(0, (prev, ch) => prev + map[ch]);
} */
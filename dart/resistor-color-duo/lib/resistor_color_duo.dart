class ResistorColorDuo {
  List<String> colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white'
  ];
  int value(List<String> arr) {
    return int.parse("${colors.indexOf(arr[0])}${colors.indexOf(arr[1])}");
  }
}

//* nicer solution from https://exercism.io/tracks/dart/exercises/resistor-color-duo/solutions/0608f3f6d1584e85ba5aca635d310420
/* class ResistorColorDuo {
  int value(List<String> input) {
    try {
      if (colorCodes[input[0]] != null && colorCodes[input[1]] != null) {
        return int.parse('${colorCodes[input[0]]!}${colorCodes[input[1]]!}');
      } else {
        throw Exception;
      }
    } on Exception catch (_){
      rethrow;
    }
  }

  static Map<String, int> colorCodes = {
    'black': 0,
    'brown': 1,
    'red': 2,
    'orange': 3,
    'yellow': 4,
    'green': 5,
    'blue': 6,
    'violet': 7,
    'grey': 8,
    'white': 9,
  };

} */
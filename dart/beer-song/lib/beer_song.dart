class BeerSong {
  List<String> recite(int startNum, int totalRounds) {
    List<String> songArr = [];
    if (startNum == 0) {
      songArr.addAll([
        'No more bottles of beer on the wall, no more bottles of beer.',
        'Go to the store and buy some more, 99 bottles of beer on the wall.'
      ]);
      return songArr;
    }
    for (var i = 0; i < totalRounds; i++) {
      songArr.add(
          "${startNum - i} bottle${((startNum - i == 1) ? '' : 's')} of beer on the wall, ${startNum - i} bottle${((startNum - i == 1) ? '' : 's')} of beer.");
      if ((startNum - i - 1 == 0)) {
        songArr.add(
            "Take it down and pass it around, no more bottles of beer on the wall.");
        if ((startNum < totalRounds)) {
          songArr.addAll([
            '',
            'No more bottles of beer on the wall, no more bottles of beer.',
            'Go to the store and buy some more, 99 bottles of beer on the wall.'
          ]);
          return songArr;
        }
      } else {
        songArr.add(
            "Take one down and pass it around, ${startNum - i - 1} bottle${((startNum - i - 1 == 1) ? '' : 's')} of beer on the wall.");
      }
      if ((i + 1 < totalRounds)) {
        songArr.add("");
      }
    }

    return songArr;
  }
}


// ! better solution from https://exercism.io/tracks/dart/exercises/beer-song/solutions/8cfeffbe12f94e11bd8d9094d687d08e
/* class BeerSong {
  String bottlesOfBeer({int index, bool onTheWall, bool capitalized}) =>
      "${index == 0 ? "${capitalized ? "N" : "n"}o more" : index} bottle${index == 1 ? "" : "s"} of beer" +
      (onTheWall ? " on the wall" : "");

  String takeOneDownOrGoToTheStore(int index) => index == 0
      ? "Go to the store and buy some more"
      : "Take ${index == 1 ? "it" : "one"} down and pass it around";

  List<String> recite(int startIndex, int count) {
    List<String> result = [];

    int crt = startIndex;
    for (int i = 0; i < count; i++) {
      result.add(
          "${bottlesOfBeer(index: crt, onTheWall: true, capitalized: true)}, ${bottlesOfBeer(index: crt, onTheWall: false, capitalized: false)}.");

      int nextStepCrt = (crt == 0) ? 99 : crt - 1;

      result.add(
          "${takeOneDownOrGoToTheStore(crt)}, ${bottlesOfBeer(index: nextStepCrt, onTheWall: true, capitalized: false)}.");
      if (i < count - 1) result.add("");

      crt -= 1;
      if (crt == -1) crt = 99;
    }

    return result;
  }
}
 */
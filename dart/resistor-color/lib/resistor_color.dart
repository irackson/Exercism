class ResistorColor {
  // Put your code here
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
  int colorCode(String c) {
    return colors.indexOf(c);
  }
}

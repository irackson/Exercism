import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int num) {
    List<String> strList = num.toString().split('');
    return strList
            .asMap()
            .entries
            .map((e) => pow(int.parse(e.value), strList.length))
            .toList()
            .reduce((value, element) => (value + element)) as int ==
        num;
  }
}

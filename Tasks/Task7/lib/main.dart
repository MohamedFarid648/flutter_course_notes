/*
! Input: List<int> numbers = [8, 5, 6, 16, 5], int left = 1, int right = 3
! Output: List<bool> result = [false, false, true, false, true]

! i = 2
? 6 = (2 + 1) * x
? 6 = 3x
? x = 6 / 3

1. loop number: {
  x = numbers[i] / (i + 1)
  if ((x == x.toInt()) && x >= left && x <= right) {
    result.add(true)
  } else {
    result.add(false)
  }
}
*/
void main() {
  //print(solution([10, 20, 30], 5, 10));
  //print(solution([1, 2, 3, 4, 5], 1, 1));
  print(mySolution([8, 5, 6, 16, 5], 1, 3));
  print(solution(numbers: [8, 5, 6, 16, 5], left: 1, right: 3));
}

List<bool> mySolution(List<int> numbers, int left, int right) {
  List<bool> result = [];
  List<int> xNumbers = []; //[left,...,right];
  for (int i = left; i <= right; i++) {
    xNumbers.add(i);
  }
  print(xNumbers);
  for (int i = 0; i < numbers.length; i++) {
    bool isNumBetween = false;
    xNumbers.forEach(
      // ignore: unnecessary_set_literal
      (num) => {if (numbers[i] == (i + 1) * num) isNumBetween = true},
    );
    result.add(isNumBetween);
    print(result);
  }
  return result;
}

List<bool> solution({
  required List<int> numbers,
  required int left,
  required int right,
}) {
  int i = 0;
  return numbers.map<bool>((item) {
    num x = item / (i + 1);
    i++;
    if (right <= left) throw Exception('invalid range');
    if ((x == x.toInt()) && x >= left && x <= right) {
      return true;
    }
    return false;
  }).toList();
}

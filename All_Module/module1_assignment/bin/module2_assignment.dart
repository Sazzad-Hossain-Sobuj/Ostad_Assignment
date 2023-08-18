void main() {
  List<int> grades = [85, 92, 78, 65, 88, 72];

  int sum = 0;
  for (int mark in grades) {
    sum += mark;
  }

  int numberCount = grades.length;
  double avg = sum / numberCount;
  int roundedAvg = avg.round();
  print("Student's average grade: $avg \n" +
        "Rounded average: $roundedAvg");

  if (roundedAvg >= 70) {
    print('Passed');
  } else {
    print('Failed');
  }
}

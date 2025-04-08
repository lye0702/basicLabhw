import 'dart:io';

void main() {
  stdout.write('정수를 입력하세요: ');
  String? inputStr = stdin.readLineSync();

    if (inputStr == null) {
    print('입력이 잘못되었습니다.');
    return;
  }

  int? input = int.tryParse(inputStr);
  if (input == null) {
    print('숫자를 입력해주세요.');
    return;
  }

  if (input > 0) {
    int sum = 0;
    int temp = input;

    while ( temp > 0) {
      sum += temp % 10;
      temp ~/= 10;
    }
    print(sum);
  } else {
    print(input);
  }
}
import 'dart:math';
import 'dart:io';

//ignore_for_file:avoid_print

void main() {
  var correctAns = false;
  var count = 0;
  var answer = Random().nextInt(100) + 1;

  do {
    count++;
    stdout.write(count.toString() + ' Please Guess The Number : ');
    var guess = int.tryParse(stdin.readLineSync()!);
    if (guess != null) {
      if (guess == answer) {
        correctAns = true;
        print('Total Count is ' + count.toString() + ' Time.');
        stdout.write(answer.toString() + ' is correct.');
      } else {
        if (guess > answer) {
          print('--> ' + guess.toString() + ' is TOO HIGH.');
        } else {
          print('--> ' + guess.toString() + ' is TOO LOW.');
        }
      }
    }
  } while (correctAns != true);
}

import 'dart:math';
import 'dart:io';

//ignore_for_file:avoid_print

void main() {
  var correctAns = false;
  var count = 0;
  var answer = Random().nextInt(100) + 1;
  print('╔════════════════════════════════════════════');
  print('║             GUESS THE NUMBER');
  print('╟────────────────────────────────────────────');
  do {
    stdout.write('║ Please Guess The Number : ');
    var guess = int.tryParse(stdin.readLineSync()!);

    if (guess != null) {
      count++;

      if (guess == answer) {
        correctAns = true;
        print('║ ➜' + answer.toString() + ' is correct ❤, Total Guess is ' + count.toString() + ' Time.');
      }
      else {
        if (guess > answer) {
          print('║ ➜ ' + guess.toString() + ' is TOO HIGH! ▲');
        }
        else {
          print('║ ➜ ' + guess.toString() + ' is TOO LOW! ▼');
        }
      }
      print('╟────────────────────────────────────────────');
    }
  } while (correctAns != true);
  print('║                    END');
  print('╚════════════════════════════════════════════');
}

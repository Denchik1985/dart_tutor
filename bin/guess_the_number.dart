import 'dart:io';
import 'dart:convert';
import 'dart:math';

void main() {
  int secret = Random().nextInt(10) + 1;

  int guess = 0;
  int attempts = 0;

  print('Я загадал число от 1 до 10. Угадай!');

  while (guess != secret) {
    attempts++;
    print('Попытка $attempts');

    String? input = stdin.readLineSync(encoding: utf8);
    if (input == null || input.isEmpty) continue;

    try {
    guess = int.parse(input);
    } catch (e) {
      print('Вводи только цифры');
      continue;
    }


    if (guess < secret){
      print ('Больше!');
      print ('God Mode $secret');
    } else if (guess > secret){
      print('Меньше!');
      print ('God Mode $secret');
    } else {
      print('Поздравляю, ты угадал за $attempts попыток');
    }
  }
}

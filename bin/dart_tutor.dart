import 'dart:io';
import 'dart:convert';

void main() {
  print('Как тебя зовут, Путник?');

  String? name = stdin.readLineSync(encoding: utf8);

  if (name != null && name.isNotEmpty) {
    print('Привет $name! Рад познакомиться!');
    print('Твоё имя состоит из ${name.length} букв.');
  } else {
    print('Эй, ну как тебя зовут-то?');
  }
  print('Программа завершена.');
}

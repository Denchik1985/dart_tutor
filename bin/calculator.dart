import 'dart:io';
import 'dart:convert';

void main() {
  print('Введи первое число:');
  String? a = stdin.readLineSync(encoding: utf8);

  if (a == null || a.isEmpty) {
    print('Ты ничего не ввёл');
    return;
  }
  String clean = a.replaceAll(' ', '');
  double b;
  try {
    b = double.parse(clean);
  } catch (e) {
    print('"$a" не является числом!');
    return;
  }

  print('Введи второе число:');
  String? c = stdin.readLineSync(encoding: utf8);
  if (c == null || c.isEmpty) {
    print('Ты что дурак, ты ни хуя не ввёл!');
    return;
  }

  String clean2 = c.replaceAll(' ', '');
  double d;
  try {
    d = double.parse(clean2);
  } catch (e) {
    print('"$c" Ну ты тупой!');
    return;
  }

  print('сумма: ${b + d}');
  print('разность: ${b - d}');
  print('произведение: ${b * d}');
  print('Частное: ${b / d}');
}
// КАЛЬКУЛЯТОР
// Created: 02.03.2026
// Author: Денис (он же Деонисий великолепный)
//
// Понял тут:
// - null != пустая строка (бля)
// - trim() не режет пробелы внутри (сука)
// - replaceAll(' ', '') — режет всё (огонь)
// - переменные надо объявлять до try/catch (запомни, дебил)
// - try/catch ловит ошибки, а не даёт их
//
// Пользователи - пидорасы, вводят всякую хуйню
// Мы - программисты - должны быть готовы
import 'package:flutter/material.dart';

const Color numberButtonColor = Color(0xFF222428);
const Color operatorButtonColor = Color(0xFFff9503);
const Color answerButtonColor = Color(0xFF2acb70);
const Color clearButtonColor = Color(0xFFff1c6b);

const Color textColor = Color(0xFFf7f8fa);
const TextStyle bottomTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: textColor,
);
const TextStyle answerTextStyle = TextStyle(
  fontSize: 40,
  color: Colors.white,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
);
const TextStyle previousAnswerTextStyle = TextStyle(
  fontSize: 20,
  color: Color(0xFFcccccc),
  letterSpacing: 2,
);

const List<String> operations = [
  "AC",
  "π",
  "%",
  "/",
  "7",
  "8",
  "9",
  "x",
  "4",
  "5",
  "6",
  "-",
  "1",
  "2",
  "3",
  "+",
  "0",
  ".",
  "=",
];

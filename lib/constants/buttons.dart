import '../constants/constants.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  const MyButton(this.buttonText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: buttonText == "0" ? 170 : 70,
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: buttonText == "="
            ? answerButtonColor
            : ["/", "x", "-", "+"].contains(buttonText)
                ? operatorButtonColor
                : buttonText == "AC"
                    ? clearButtonColor.withOpacity(0.2)
                    : numberButtonColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 21,
          color: buttonText == "AC" ? clearButtonColor : Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

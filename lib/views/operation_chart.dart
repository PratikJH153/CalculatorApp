import '../constants/constants.dart';
import 'package:flutter/material.dart';

class OperationChart extends StatelessWidget {
  final String previousOperation;
  final String operationAndAnswer;
  const OperationChart({
    required this.previousOperation,
    required this.operationAndAnswer,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        left: 26,
        right: 26,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            previousOperation,
            style: previousAnswerTextStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            operationAndAnswer == "" ? "0" : operationAndAnswer,
            style: answerTextStyle,
          ),
        ],
      ),
    );
  }
}

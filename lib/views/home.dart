import 'package:calculatorapp/constants/buttons.dart';
import 'package:math_expressions/math_expressions.dart';
import '../views/operation_chart.dart';
import '../constants/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _operationAndAnswer = "";
  String _previousAnswer = "";

  void calculate(String operation) {
    operation = operation.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(operation);
    ContextModel cm = ContextModel();
    var eval;
    if (operation.contains('.')) {
      eval = exp.evaluate(EvaluationType.REAL, cm).toStringAsFixed(1);
    } else {
      eval = exp.evaluate(EvaluationType.REAL, cm).round();
    }

    setState(() {
      _previousAnswer = _operationAndAnswer;
      _operationAndAnswer = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: OperationChart(
              operationAndAnswer: _operationAndAnswer,
              previousOperation: _previousAnswer,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.only(bottom: 20),
              child: Wrap(
                children: operations
                    .map(
                      (buttontx) => GestureDetector(
                        onTap: () {
                          if (buttontx == "AC") {
                            setState(() {
                              _operationAndAnswer = "";
                            });
                          } else if (buttontx == "=") {
                            calculate(_operationAndAnswer);
                          } else {
                            setState(() {
                              _operationAndAnswer += buttontx;
                            });
                          }
                        },
                        child: MyButton(buttontx),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

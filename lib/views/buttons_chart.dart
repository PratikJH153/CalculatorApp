import '../constants/buttons.dart';
import 'package:flutter/material.dart';

class ButtonChart extends StatelessWidget {
  final List<String> operations;
  const ButtonChart(this.operations, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        alignment: Alignment.bottomCenter,
        margin: const EdgeInsets.only(bottom: 20),
        child: Wrap(
          children: operations
              .map(
                (buttontx) => MyButton(buttontx),
              )
              .toList(),
        ),
      ),
    );
  }
}

import './buttons_chart.dart';
import '../constants/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                left: 26,
                right: 26,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    "123 x 45",
                    style: previousAnswerTextStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "2456",
                    style: answerTextStyle,
                  ),
                ],
              ),
            ),
          ),
          const ButtonChart(operations),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BmiCalcResultScreen extends StatelessWidget {
  const BmiCalcResultScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI 계산기'),
      ),
      body: Center(
        child: Text('결과 화면'),
      ),
    );
  }
}



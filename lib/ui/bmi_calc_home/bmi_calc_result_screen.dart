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
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            '결과 화면' ,
            style: TextStyle(
              fontSize: 30
            ),),
        ),
      ),
    );
  }
}

// onPressed:(){
//   Navigator.pop(context);
// }
// 라이브 템플릿으로 만들어놈

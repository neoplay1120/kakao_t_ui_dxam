import 'package:flutter/material.dart';
import 'package:kakao_t_ui_dxam/ui/bmi_calc_home/bmi_calc_result_screen.dart';

class BmiCalcHomeScreen extends StatelessWidget {
  const BmiCalcHomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI 계산기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(),
            TextField(),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BmiCalcResultScreen()),
              );
            }, child: Text('계산')),
          ],
        ),
      )
    );
  }
}

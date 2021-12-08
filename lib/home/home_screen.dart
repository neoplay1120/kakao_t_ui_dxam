import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kakao_t_ui_dxam/ui/bmi_calc_home/bmi_calc_home_screen.dart';
import 'package:kakao_t_ui_dxam/ui/counter/counter_screen.dart';
import 'package:kakao_t_ui_dxam/ui/kakao_t/kakao_t_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _screens = [
    KakaoTSreen(),
    CounterScreen(),
    BmiCalcHomeScreen(),
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_screens[_index],
        bottomNavigationBar: BottomNavigationBar(
          // currentIndex: _index,
          currentIndex: _index,
          onTap: (index) {
            setState(() {
              _index = index;
            });

          },
          items:[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '카카오 T'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.watch),
                label: '카운터'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.fifteen_mp_outlined),
                label: 'BMI'
            ),
          ],
        ),
    );
  }
}

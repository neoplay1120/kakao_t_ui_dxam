//stless >> StatelessWidget 만드는 단축키
// * import
//
//디렉토리명은 소문자 snake_case, 클래스 이름은 CamelCase
//
//초기 프로젝트 설정 변경 web>pubspec.yaml
//
import 'package:flutter/material.dart';
import 'package:kakao_t_ui_dxam/ui/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}


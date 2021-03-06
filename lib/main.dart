//stless >> StatelessWidget 만드는 단축키
// * import
//
//디렉토리명은 소문자 snake_case, 클래스 이름은 CamelCase
//
//초기 프로젝트 설정 변경 web>pubspec.yaml
//
import 'package:flutter/material.dart';

import 'package:kakao_t_ui_dxam/ui/kakao_t/kakao_t_screen.dart';

import 'home/home_screen.dart';
//stless 를 치면 아래에 것이 나온다
//stless

//stateful  'f5'필요하면(동적) "플러터 숫자 카운터" 할때도 새로고침
//stateless 'f5'필요없으면
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


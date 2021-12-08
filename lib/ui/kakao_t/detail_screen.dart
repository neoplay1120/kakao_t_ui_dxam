import 'package:flutter/material.dart';
import 'package:kakao_t_ui_dxam/model/menu.dart';

class DetailScreen extends StatelessWidget {
  final Menu menu;
  const DetailScreen({Key key , this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text(menu.title),
          ),
          body: Center(
            child: Image.network(menu.imageUrl, fit: BoxFit.cover,)
          ),
        );
  }
}

//Image.asset을 사용하면 내부에 있는것을
//Image.network를 사용하면 인터넷에 있는 이미지를 가져다 사용하겠다는 것.
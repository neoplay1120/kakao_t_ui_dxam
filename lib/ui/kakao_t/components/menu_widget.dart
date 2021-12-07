import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kakao_t_ui_dxam/model/menu.dart';

class MenuWidget extends StatelessWidget {
  final Menu menu;

  const MenuWidget({
    Key key,
    this.menu
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.network(
              menu.imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            Positioned(
              right: 0,
                bottom: 5,
                child: Icon(
                  Icons.star_outlined,
                  color: menu.isFavorite ? Colors.yellow : Colors.black,
                )),
          ],
        ),
        Text(
           menu.title,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:kakao_t_ui_dxam/model/ad.dart';

class Adview extends StatelessWidget {
  final Ad ad;

  const Adview({
    Key key,
    this.ad,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color:ad.color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ad.title,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Text('늦은거 편하게 택시타고 가자'),
                  ],
                ),
              ),
              Image.network(
                ad.imageUrl,
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}

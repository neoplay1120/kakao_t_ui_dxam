//stless 를 치면 아래에 것이 나온다
//stless

//stateful  'f5'필요하면(동적) "플러터 숫자 카운터" 할때도 새로고침
//stateless 'f5'필요없으면
import 'package:flutter/material.dart';
import 'package:kakao_t_ui_dxam/data/fake_data.dart';
import 'package:kakao_t_ui_dxam/model/ad.dart';

import 'components/ad_view.dart';
import 'components/menu_widget.dart';
import 'detail_screen.dart';

//stless 를 치면 아래에 것이 나온다
//stless

//stateful  'f5'필요하면(동적) "플러터 숫자 카운터" 할때도 새로고침
//stateless 'f5'필요없으면

class KakaoTSreen extends StatelessWidget {
  const KakaoTSreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(
          '카카오 T',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    //001 SingleChildScrollView 차일드가 하나만 있는데 하나의 덩어리리로 만들어서 스크롤 만들기(전체 스크롤 적용)
    //002 ListView 만들기 쉡게 가기 !!! ListView 안에 ListView를 사용하면 충돌나서 스크롤이 안됨
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ListView(
        children: [
          _buildMenu2(context),
          _buildAds(controller),
          _buildNotice(),
        ],
      ),
    );
  }

  Widget _buildMenu2(BuildContext context) {
    return GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        childAspectRatio: 2 / 3,
        physics: NeverScrollableScrollPhysics(),
        children: fakeMenus.map((menu) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
              context, MaterialPageRoute(builder: (context) {
                return  DetailScreen(
                  title: menu.title,
                );
              }));
            },
            child: MenuWidget(menu: menu),
          );
        }).toList());
  }

  // List<Widget> _buildMenu(){
  //   return [
  //     Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //           MenuWidget(),
  //         Column(
  //           children: [
  //             Image.network(
  //               'https://w.namu.la/s/40de86374ddd74756b31d4694a7434ee9398baa51fa5ae72d28f2eeeafdadf0c475c55c58e29a684920e0d6a42602b339f8aaf6d19764b04405a0f8bee7f598d2922db9475579419aac4635d0a71fdb8a4b2343cb550e6ed93e13c1a05cede75',
  //               width: 80,
  //               height: 80,
  //               fit: BoxFit.cover,
  //             ),
  //             SizedBox(
  //               height: 10,
  //             ),
  //             Text(
  //               '택시',
  //               style: TextStyle(fontSize: 30),
  //             ),
  //           ],
  //         ),
  //         Column(
  //           children: [
  //             Image.network(
  //               'https://w.namu.la/s/40de86374ddd74756b31d4694a7434ee9398baa51fa5ae72d28f2eeeafdadf0c475c55c58e29a684920e0d6a42602b339f8aaf6d19764b04405a0f8bee7f598d2922db9475579419aac4635d0a71fdb8a4b2343cb550e6ed93e13c1a05cede75',
  //               width: 80,
  //               height: 80,
  //               fit: BoxFit.cover,
  //             ),
  //             SizedBox(
  //               height: 10,
  //             ),
  //             Text(
  //               '택시',
  //               style: TextStyle(fontSize: 30),
  //             ),
  //           ],
  //         ),
  //         Column(
  //           children: [
  //             Image.network(
  //               'https://w.namu.la/s/40de86374ddd74756b31d4694a7434ee9398baa51fa5ae72d28f2eeeafdadf0c475c55c58e29a684920e0d6a42602b339f8aaf6d19764b04405a0f8bee7f598d2922db9475579419aac4635d0a71fdb8a4b2343cb550e6ed93e13c1a05cede75',
  //               width: 80,
  //               height: 80,
  //               fit: BoxFit.cover,
  //             ),
  //             SizedBox(
  //               height: 10,
  //             ),
  //             Text(
  //               '택시',
  //               style: TextStyle(fontSize: 30),
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //     SizedBox(
  //       height: 30,
  //     ),
  //     Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Column(
  //           children: [
  //             Image.network(
  //               'https://w.namu.la/s/40de86374ddd74756b31d4694a7434ee9398baa51fa5ae72d28f2eeeafdadf0c475c55c58e29a684920e0d6a42602b339f8aaf6d19764b04405a0f8bee7f598d2922db9475579419aac4635d0a71fdb8a4b2343cb550e6ed93e13c1a05cede75',
  //               width: 80,
  //               height: 80,
  //               fit: BoxFit.cover,
  //             ),
  //             SizedBox(
  //               height: 10,
  //             ),
  //             Text(
  //               '택시',
  //               style: TextStyle(fontSize: 30),
  //             ),
  //           ],
  //         ),
  //         Column(
  //           children: [
  //             Image.network(
  //               'https://w.namu.la/s/40de86374ddd74756b31d4694a7434ee9398baa51fa5ae72d28f2eeeafdadf0c475c55c58e29a684920e0d6a42602b339f8aaf6d19764b04405a0f8bee7f598d2922db9475579419aac4635d0a71fdb8a4b2343cb550e6ed93e13c1a05cede75',
  //               width: 80,
  //               height: 80,
  //               fit: BoxFit.cover,
  //             ),
  //             SizedBox(
  //               height: 10,
  //             ),
  //             Text(
  //               '택시',
  //               style: TextStyle(fontSize: 30),
  //             ),
  //           ],
  //         ),
  //         Column(
  //           children: [
  //             Image.network(
  //               'https://w.namu.la/s/40de86374ddd74756b31d4694a7434ee9398baa51fa5ae72d28f2eeeafdadf0c475c55c58e29a684920e0d6a42602b339f8aaf6d19764b04405a0f8bee7f598d2922db9475579419aac4635d0a71fdb8a4b2343cb550e6ed93e13c1a05cede75',
  //               width: 80,
  //               height: 80,
  //               fit: BoxFit.cover,
  //             ),
  //             SizedBox(
  //               height: 10,
  //             ),
  //             Text(
  //               '택시',
  //               style: TextStyle(fontSize: 30),
  //             ),
  //           ],
  //         ),
  //         SizedBox(
  //           width: 80,
  //           height: 80,
  //         ),
  //         // Column(
  //         //   children: [
  //         //     Image.network(
  //         //       'https://w.namu.la/s/40de86374ddd74756b31d4694a7434ee9398baa51fa5ae72d28f2eeeafdadf0c475c55c58e29a684920e0d6a42602b339f8aaf6d19764b04405a0f8bee7f598d2922db9475579419aac4635d0a71fdb8a4b2343cb550e6ed93e13c1a05cede75',
  //         //       width: 80,
  //         //       height: 80,
  //         //       fit: BoxFit.cover,
  //         //     ),
  //         //     SizedBox(height: 10,),
  //         //     Text(
  //         //       '택시',
  //         //       style: TextStyle(fontSize: 30),
  //         //     ),
  //         //   ],
  //         // ),
  //       ],
  //     ),
  //
  //   ];
  //
  // }

  SizedBox _buildAds(PageController controller) {
    return SizedBox(
      // width: 100,
      height: 150,
      child: PageView(
        /// [PageView.scrollDirection] defaults to [Axis.horizontal].
        /// Use [Axis.vertical] to scroll vertically.
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: fakeAds.map((Ad e) => Adview(ad: e)).toList(),
        // children: <Widget>[
        //   Adview(
        //     ad: fakeAds[0],
        //   ),
        //   Adview(
        //     ad: fakeAds[1],
        //   ),
        //   Adview(
        //     ad: fakeAds[2],
        //   ),
        // ],
      ),
    );
  }

  Widget _buildNotice() {
    return Column(
      children: List.generate(
          50,
          (index) => ListTile(
                leading: Icon(Icons.notifications),
                title: Text('공지 $index'),
                trailing: Icon(
                  Icons.navigate_next_outlined,
                ),
              )),
      //children: List.generate(50, (index) => Text('공지 $index')),
    );
  }
}
/////
///굳이 ListView를 사용하겠다면 아래와 같이 터치가 안되게 만드는 방법을 줄 수 있다.
//shirinkWrap: true,
//physics : NeverScrollableScrollPhysics() 굳이 터치가 안되게 만들어서

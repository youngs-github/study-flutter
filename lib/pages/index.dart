import 'package:flutter/material.dart';

import 'package:study_flutter/pages/home.dart';

// app
class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  // 活动菜单
  int active = 0;

  // 活动视图
  Widget getActiveView() {
    if (active == 0) {
      return HomePage();
    } else if (active == 1) {
      return Text('page 2');
    } else if (active == 2) {
      return Text('page 3');
    } else {
      return Text('page 4');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getActiveView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: active,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            active = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: '列表',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '购物车',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '我',
          )
        ],
      ),
    );
  }
}

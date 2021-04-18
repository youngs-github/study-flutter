import 'package:flutter/material.dart';

// 首页
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 21,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              // 横向容器
              return Container(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    // 横向元素
                    return Text('横向元素：${index + 1}...');
                  },
                  scrollDirection: Axis.horizontal,
                ),
                height: 60,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              );
            }
            // 纵向元素
            return ListTile(
              leading: ClipRRect(
                child: Image.network(
                  'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/125678/35/5947/4868/5efbf28cEbf04a25a/e2bcc411170524f0.png',
                  width: 40,
                  height: 40,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              title: Text('纵向元素：$index...'),
              onTap: () {
                // log('点击了listTile元素...');
              },
            );
          },
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}

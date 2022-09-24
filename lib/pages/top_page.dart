//トップページのUIをここに記述する、stfulで雛形を作成できる
import 'package:flutter/material.dart';

import '../model/user.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  //クラスをインスタンス化する
  List<User> userList = [
    User(name: '佐藤', uid: '13',
        imagePath: 'https://www.shinrin-ringyou.com/topics/img/mori-hayashi/00.jpg',
        lastMessage: 'HelloWorld'),
    User(name: '伊東', uid: '14',
        imagePath: 'https://www.shinrin-ringyou.com/topics/img/mori-hayashi/00.jpg',
        lastMessage: 'Thank you'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ChatApp'),),
      body: const Text('Main Screen'),
    );
  }
}


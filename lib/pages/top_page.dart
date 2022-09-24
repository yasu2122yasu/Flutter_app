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
    User(name: '北野順也', uid: '13',
        imagePath: 'https://www.shinrin-ringyou.com/topics/img/mori-hayashi/00.jpg',
        lastMessage: 'HelloWorld'),
    User(name: '仁村高台', uid: '14',
        imagePath: 'https://www.shinrin-ringyou.com/topics/img/mori-hayashi/00.jpg',
        lastMessage: 'Thank you!!!'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ChatApp'),),
      body: ListView.builder(
        itemCount: userList.length, //Userの数だけ要素を取り出す。
        itemBuilder: (context, index){
          return SizedBox(
            height: 70,
            child: Row (
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0), //左右にpaddingを当てる。上下の場合はhorizontalの代わりにvertical
                  child: CircleAvatar(
                    radius: 30, //画像のサイズを大きくする
                    backgroundImage: userList[index].imagePath == null
                      ? null
                      : NetworkImage(userList[index].imagePath!),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text (userList[index].name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    Text(userList[index].lastMessage, style: TextStyle(fontSize: 14, color: Colors.grey),),
                  ],
                )
              ],

            ),
          );
        }
      ),
    );
  }
}


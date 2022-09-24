import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TalkRoomPage extends StatefulWidget {
  const TalkRoomPage({Key? key}) : super(key: key);

  @override
  State<TalkRoomPage> createState() => _TalkRoomPageState();
}

class _TalkRoomPageState extends State<TalkRoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('タイトル'),
      ),
    );
  }
}

//トップページのUIをここに記述する、stfulで雛形を作成できる
import 'package:flutter/material.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ChatApp'),),
      body: const Text('Main Screen'),
    );
  }
}


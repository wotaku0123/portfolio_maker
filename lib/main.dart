import 'package:flutter/material.dart';
import 'pages/users/choose_categories_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(), // ホーム画面を表示するウィジェットに変更
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PF Maker'),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 80,
          child: ElevatedButton(
            onPressed: () {
              // ボタンが押された時の処理を記述します
              print('\"履歴書作成する\"ボタンが押されました');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => choose_categolies_page(),
                ),
              );
            },
            child: Text('履歴書を作成する'),
          ),
        ),
      ),
    );
  }
}

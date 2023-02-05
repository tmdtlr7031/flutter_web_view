import 'package:flutter/material.dart';
import 'package:web_view/home_screen.dart';

void main() {
  // Flutter 프레임워크가 앱을 실행할 준비가 될때까지 기다림 (main 함수안에 유일하게 실행할 함수가 runApp 하나인 경우 자동으로 실행됨)
  // 하지만 웹뷰 4.x 쓰려면 넣어줘야함
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}
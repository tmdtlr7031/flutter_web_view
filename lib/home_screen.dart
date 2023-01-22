import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl = 'https://blog.codefactory.ai';
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Code Factory'),
          backgroundColor: Colors.orange,
          centerTitle: true, // 설정 안하면 안드는 기본이 왼쪽, ios는 센터가 초기 세팅 값이기 때문에 어느쪽으로든 통일해줘야함
          actions: [
            IconButton(
              onPressed: () {
                if (controller == null) return;
                controller!.loadUrl(homeUrl);
              },
              icon: Icon(Icons.home),
            )
          ],
        ),
        body: WebView(
          onWebViewCreated: (WebViewController controller) {
            this.controller = controller;
          },
          // 웹뷰가 실행될 때 어떤 사이트를 처음으로 띄울 것인지
          initialUrl: homeUrl,
          javascriptMode: JavascriptMode.unrestricted, // 웹튜에서 자바스크립트 사용
        ));
  }
}

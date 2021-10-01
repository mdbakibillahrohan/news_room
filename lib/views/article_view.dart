import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/main.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  final String initialUrl;
  ArticleView(this.initialUrl);
  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  final Completer<WebViewController> _completer =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;
    double widthInPercent = fullWidth / 100;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          SizedBox(
            width: widthInPercent * 13,
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0.8,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "News",
              style: TextStyle(color: Colors.black),
            ),
            const Text(
              "Room",
              style: TextStyle(color: Colors.blueAccent),
            )
          ],
        ),
      ),
      body: Container(
        child: WebView(
          initialUrl: widget.initialUrl,
          onWebViewCreated: ((WebViewController webviewController) {
            _completer.complete(webviewController);
          }),
        ),
      ),
    );
  }
}

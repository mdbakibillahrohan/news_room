import 'package:flutter/material.dart';
import 'package:news_app/views/home.dart';

void main(){
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "News Room",
        home: Home(),
    );

  }
}


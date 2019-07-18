import 'package:flutter/material.dart';
import 'package:plk_ui/Screens/CameraWidget.dart';
import 'package:plk_ui/Screens/Items.dart';
import 'package:plk_ui/Screens/Login.dart';
import 'package:plk_ui/Screens/SellItem.dart';
import 'package:plk_ui/Screens/ViewItem.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      initialRoute: '/',
      routes: {
        "/":(context) => LoginWidget(),
        "/login": (context) => LoginWidget(),
        "/home": (context) => ItemsWidget(),
        "/viewItem": (context) => ViewItemWidget(),
        "/camera":(context) => CameraWidget(),
        "/sellItem": (context) => SellItemWidget(),
      },
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      //home: new LoginWidget()
    );
  }
}
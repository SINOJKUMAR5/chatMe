import 'package:chartme/home_page.dart';
import 'package:chartme/info.dart';
import 'package:chartme/login_page.dart';
import 'package:chartme/theme.dart/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

void main() {
  ZIMKit().init(appID: info.appId, appSign: info.appSign);
  runApp(MyMaterialApp());
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: light_theme,
      home: login_page(),
    );
  }
}

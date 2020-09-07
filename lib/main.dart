import 'dart:ui';
import 'package:flutter/material.dart';
import 'fit/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    //物理分辨率 physicalSize
    MyBoxFit.initatal(standardSize: 750);
    //手机屏幕大小
    // MediaQuery.of(context).size.width
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('rpx'),
      ),
      body: Center(
        child: Container(
            width: MyBoxFit.setRpx(400), //400物理像素 750*1334 分辨率
            height: MyBoxFit.setPx(200), //200pt 逻辑像素 375 * 667 尺寸
            color: Colors.red,
            child: Text('Hello')),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

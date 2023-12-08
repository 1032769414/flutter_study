import 'package:flutter/material.dart';

import 'builder_animate_widget.dart';
import 'normal_animate_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterDemo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            children: [
              NormalAnimateWidget(),
              BuilderAnimateWidget(),
              NormalAnimateWidget(),
              NormalAnimateWidget(),
            ],
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "普通动画"),
              Tab(icon: Icon(Icons.rss_feed), text: "Builder动画"),
              Tab(icon: Icon(Icons.perm_identity), text: "Widget动画"),
              Tab(
                icon: Icon(Icons.message),
                text: "hero动画",
              )
            ],
            unselectedLabelColor: Colors.blueGrey,
            labelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.red,
          ),
        ));
  }
}

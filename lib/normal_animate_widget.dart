import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NormalAnimateWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NormalAnimateState();
  }
}

class _NormalAnimateState extends State<NormalAnimateWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: animation.value,
            height: animation.value,
            child: FlutterLogo(),
          ),
        ),
      ),



    );



  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 100));

    CurvedAnimation curvedAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticOut);
    animation = Tween(begin: 50.0, end: 200.0).animate(curvedAnimation)
      ..addListener(() => setState(() {}));

    controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();

  }
}

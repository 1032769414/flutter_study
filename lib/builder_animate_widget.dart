import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuilderAnimateWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BuilderAnimateState();
  }
}

class _BuilderAnimateState extends State<BuilderAnimateWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    CurvedAnimation curvedAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticOut);

    animation = Tween(begin: 50.0, end: 200.0).animate(curvedAnimation);
    controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AnimatedBuilder(
            animation: animation,
            builder: (context, child) => Container(
              width: animation.value,
              height: animation.value,
              child: FlutterLogo(),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:practice_project/background_painter.dart';
import 'package:practice_project/widget/signIn.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: CustomPaint(
              painter: BackGroundPainter(
                animation: _controller.view,
              ),
            ),
          ),
          SignIn(
            onRegisterClicked: () {
              _controller.forward();
            },
          ),
        ],
      ),
    );
  }
}

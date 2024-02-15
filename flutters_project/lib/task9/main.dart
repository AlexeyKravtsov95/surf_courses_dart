import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GestureMaster',
      theme: ThemeData(
      ),
      home: const AnimationDemoPage(),
    );
  }
}

class AnimationDemoPage extends StatefulWidget {
  const AnimationDemoPage({super.key});

  @override
  State<AnimationDemoPage> createState() => _AnimationDemoPageState();
}

class _AnimationDemoPageState extends State<AnimationDemoPage> with TickerProviderStateMixin{
  late final AnimationController _controller;
  late final Animation<double> _animation;
  late double _deltaY = MediaQuery.of(context).size.height / 2 - height / 2;
  late double _deltaX = MediaQuery.of(context).size.width / 2 - width / 2;
  bool flag = false;
  double width = 100;
  double height = 100;

  @override
  void initState() {
    super.initState();
  
    _controller = AnimationController(
      duration: const Duration(seconds: 2), 
      vsync: this)
      ..reset();
    _animation = CurvedAnimation(
      parent: _controller, 
      curve: Curves.elasticInOut
      );
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  void _startAnimation() {
    _controller.forward();
  }

  void _stopAnimation() {
    _controller.reset();
  }

  void _onTap() {
    setState(() {
      flag = !flag;
    });
  }

  void _onLongPress() {
    setState(() {
      _controller.isCompleted ? _stopAnimation() : _startAnimation();
    });
  }

  void _drag(DragUpdateDetails details) {
    setState(() {
      _deltaX = details.localPosition.dx - width / 2;
      _deltaY = details.localPosition.dy - height / 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: _deltaY,
            left: _deltaX,
            height: height,
            width: width,
            child: RotationTransition(
              turns: _animation,
              child: AnimatedContainer(
                duration: const Duration(seconds: 2),
                color: flag ? Colors.redAccent : Colors.blueAccent,
                alignment: Alignment.center,
                curve: Curves.bounceInOut,
                ),
            ),
          ),
          Positioned.fill(
            child: GestureDetector(
               onTap: _onTap,
               onLongPress: _onLongPress,
               onHorizontalDragUpdate: _drag,
               onVerticalDragUpdate: _drag,
            ),
          ),
        ],
      ),
    );
  }
}
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lottokinggpt/utils/size_config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  List<int> numbers = [];

  late AnimationController _controller;
  late Animation<double> _animation;

  bool animating = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _generateNumbers() {
    if (animating) return;
    animating = true;
    final random = Random();
    Set<int> usedNumbers = {}; // 추첨된 번호를 추적
    List<int> newNumbers = [];
    while (usedNumbers.length < 6) {
      // 추첨된 번호가 6개가 될 때까지 반복
      int number = random.nextInt(45) + 1;
      if (!usedNumbers.contains(number)) {
        usedNumbers.add(number);
        newNumbers.add(number);
      }
    }
    setState(() {
      numbers = newNumbers;
    });
    _animateNumbers();
  }

  void _animateNumbers() async {
    for (int i = 0; i < numbers.length; i++) {
      _animateNumber(i);
      // await Future.delayed(const Duration(milliseconds: 500));
    }
    animating = false;
  }

  void _animateNumber(int index) {
    // _controller.reset();
    _controller.forward();
    // Future.delayed(const Duration(milliseconds: 500), () {
    //   _controller.reverse();
    // });
  }

  Widget _buildNumberBall(int number) {
    const double ballSize = 60.0;

    return Container(
      // key: ValueKey<int>(number),
      constraints: const BoxConstraints(maxWidth: ballSize, maxHeight: ballSize),
      width: ballSize,
      height: ballSize,
      child: Center(
        child: ScaleTransition(
          scale: Tween(begin: 0.0, end: 1.0).animate(
            CurvedAnimation(
              curve: Curves.elasticOut,
              parent: _animation,
            ),
          ),
          child: Transform.rotate(
            angle: Random().nextDouble() * pi,
            child: Container(
              width: ballSize,
              height: ballSize,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 2,
                    spreadRadius: 1,
                    offset: const Offset(1, 1),
                  )
                ],
              ),
              child: Center(
                child: Text(
                  number.toString(),
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNumberBalls() {
    List<Widget> children = [];
    double ballSize = 60.0;

    for (int i = 0; i < numbers.length; i++) {
      double left = Random().nextDouble() * (SizeConfig.screenWidth - ballSize);
      double top = Random().nextDouble() * (SizeConfig.screenHeight * 0.3 - ballSize);
      children.add(
        AnimatedPositioned(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          left: left,
          top: top,
          child: _buildNumberBall(numbers[i]),
        ),
      );
    }
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight * 0.5,
      child: Stack(
        children: children,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('여프로 로또 번호 추첨기'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue[800]!,
              Colors.blue[700]!,
              Colors.blue[600]!,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.network(
                      'https://assets5.lottiefiles.com/packages/lf20_SyUX5x.json',
                      width: 200,
                      height: 200,
                    ),
                    const SizedBox(height: 40),
                    TextButton(
                      onPressed: _generateNumbers,
                      child: const Text(
                        '여기를 누르세요!',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: _buildNumberBalls()),
            ],
          ),
        ),
      ),
    );
  }
}

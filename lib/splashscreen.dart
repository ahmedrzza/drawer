import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:testproject/home/loginscreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  
  void initState() {
    super.initState();
    Timer(
     const Duration(seconds: 10),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const loginScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:const[
        Center(
          child: (Image(
            image: AssetImage(
                'assets/360_F_331938599_nmkc39B7E74s1G5P01b0YCJ6x0MNMqJz.jpg'),
          )),
        ),
      ],
    ));
  }
}

containerfunction(Color) {
  return Container(
    height: 100,
    width: 100,
    color: Color,
    child: const Text('abc'),
  );
}

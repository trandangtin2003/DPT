import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin
{
  late AnimationController _animationCOntroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationCOntroller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animationCOntroller.forward();
    Timer(const Duration(seconds: 3),(){
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: Tween<double>(begin: 0,end: 1).animate(
                CurvedAnimation(
                  parent: _animationCOntroller,
                  curve: Curves.easeOut,
                ),
              ),
              child: Image.asset('images/logo.png', height:150),
              ),
              const SizedBox(
                height: 50 ,
              ),
              const Text(
                'MY APP',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              )
          ],
        ),
      ),
      bottomNavigationBar: const SizedBox(
        height: 40,
        child: Text('AAAAAAAAAAAA',textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black,fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
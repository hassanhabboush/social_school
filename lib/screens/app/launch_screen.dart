import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/home_screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage('assets/images/splash.png'),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),

          Container(
            alignment: Alignment.center,
            child: Image.asset('assets/images/logo.png'),
          ),
        ],
      ),
    );
  }
}

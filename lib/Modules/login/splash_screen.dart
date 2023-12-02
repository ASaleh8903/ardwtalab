import 'package:ardwtalab/Modules/login/login_screen.dart';
import 'package:flutter/material.dart'; // Import your main content screen

class LoginSplashScreen extends StatefulWidget {
  @override
  LoginSplashScreenState createState() => LoginSplashScreenState();
}

class LoginSplashScreenState extends State<LoginSplashScreen> {
  double opacityLevel = 0.0;

  @override
  void initState() {
    super.initState();

    // Start the fading animation after a delay
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacityLevel = 1.0;
      });
    });

    // Set a timer to navigate to the main content screen after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: opacityLevel,
          duration: Duration(seconds: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: Duration(seconds: 2),
                width: opacityLevel == 1.0 ? 200 : 0,
                height: opacityLevel == 1.0 ? 200 : 0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/Logo.jpeg'), // Replace with your splash screen image
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

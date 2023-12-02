// import 'dart:async';
//
import 'package:ardwtalab/Modules/login/login_screen.dart';
import 'package:flutter/material.dart';
//
// import '../../Shared/Components/components.dart';
// import 'login_screen.dart';
//
// class LoginSplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Timer(Duration(seconds: 2), () {
//       navigateAndFinish(context, LoginScreen());
//     });
//
//     return Scaffold(
//       body: Center(
//         child: Container(
//           width: 400,
//           height: 400,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/images/Logo.jpeg'),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class LayoutSplashScreen extends StatefulWidget {
  @override
  _CustomSplashScreenState createState() => _CustomSplashScreenState();
}

class _CustomSplashScreenState extends State<LayoutSplashScreen> {
  bool _animationComplete = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _animationComplete = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: _animationComplete ? 0.0 : 1.0,
          duration: Duration(seconds: 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/images/Logo.jpeg'), // Replace with your splash screen image
            ],
          ),
        ),
      ),
      floatingActionButton: _animationComplete
          ? FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ));
              },
              child: Icon(Icons.arrow_forward),
            )
          : null,
    );
  }
}

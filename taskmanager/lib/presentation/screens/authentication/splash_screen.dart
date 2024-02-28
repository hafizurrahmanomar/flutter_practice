import 'package:flutter/material.dart';
import 'package:taskmanager/presentation/screens/authentication/sign_in_screen.dart';

import '../../wedget/app_logo.dart';
import '../../wedget/background_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    /// At first SignInScreen call
    _moveToSignInScreen();
    super.initState();
  }

  /// SplashScreen stay time code
  Future<void> _moveToSignInScreen() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );

    if (mounted) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const SignInScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundWidget(
        child: Center(child: AppLogo()),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class loadingPage extends StatelessWidget {
  const loadingPage({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 2),
      () {
        Get.offAllNamed("/home");
      },
    );
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 100,
              height: 100,
            ),
            Container(height: 30),
            const SpinKitFadingCube(color: Colors.blue, size: 30),
          ],
        ),
      ),
    );
  }
}

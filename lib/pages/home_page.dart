import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.white10,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.contain,
                height: 60,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.offNamed("/");
              },
              child: const Text("To loading Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offNamed("/http_parsing");
              },
              child: const Text("To http page"),
            ),
          ],
        ),
      ),
    );
  }
}

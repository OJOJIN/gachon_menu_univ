import 'package:flutter/material.dart';
import 'package:gachon_univ_menu/pages/week_menu.dart';
import 'package:get/get.dart';

List<String> fruits = ['Apple', 'Banana', 'Kiwi'];

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
        margin: const EdgeInsets.fromLTRB(18, 18, 18, 18),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 18),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(16.0),
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "  오늘의 메뉴(비전타워)",
                    style: TextStyle(fontSize: 23, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  weekMenuBox(),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 18),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(16.0),
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "  오늘의 메뉴(교육대학원)",
                    style: TextStyle(fontSize: 23, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  weekMenuBox(),
                ],
              ),
            ),
            const SizedBox(height: 30, width: double.infinity),
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

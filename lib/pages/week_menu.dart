import 'package:flutter/material.dart';

List<String> fruits1 = ['Apple', 'Banana', 'Kiwi'];

class weekMenuBox extends StatelessWidget {
  const weekMenuBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      height: 240.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
        children: <Widget>[
          weekMenuList(fruits1),
          weekMenuList(fruits1),
          weekMenuList(fruits1),
          weekMenuList(fruits1),
          weekMenuList(fruits1),
        ],
      ),
    );
  }
}

class weekMenuList extends StatelessWidget {
  final List<String> menu;
  const weekMenuList(this.menu);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black12,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(16.0),
      ),
      margin: const EdgeInsets.fromLTRB(0, 0, 7, 0),
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: menu.length,
        itemBuilder: (BuildContext context, int index) {
          return menuString(menu[index]);
        },
      ),
    );
  }
}

class menuString extends StatelessWidget {
  final String str;
  const menuString(this.str);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Text(
        str,
        style: const TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}

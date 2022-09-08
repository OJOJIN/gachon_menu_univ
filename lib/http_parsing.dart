import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;

Future<Map<dynamic, dynamic>> getPageHtml() async {
  var dataList = {};
  final url = Uri.parse('https://www.gachon.ac.kr/kor/7347/subview.do');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    var document = parse(response.body);
    for (var element in document
        .getElementsByTagName('table')[0]
        .getElementsByTagName('tbody')[0]
        .getElementsByTagName('tr')) {
      for (var elementTh in element.getElementsByTagName('th')) {
        String menu = element.getElementsByTagName('td')[1].text;
        if (menu.contains('\n\n')) {
          menu = menu.substring(0, menu.indexOf('\n\n'));
          var menuData = menu.split('\n');
          dataList[elementTh.text.replaceAll(RegExp('\\s+'), '')] = menuData;
        }
      }
    }
  } else {
    throw Exception();
  }
  return dataList;
}

class MyWidget extends StatelessWidget {
  MyWidget({super.key});

  var dataList = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('http Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            dataList = await getPageHtml();
          },
          child: Text('${dataList["2022.09.05(월)"]}'),
        ),
      ),
    );
  }
}

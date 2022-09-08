import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;

void _getPageHtml() async {
  List dataList = [];
  var url = Uri.parse('https://www.gachon.ac.kr/kor/7347/subview.do');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    var document = parse(response.body);
    for (var element in document
        .getElementsByTagName('table')[0]
        .getElementsByTagName('tbody')[0]
        .getElementsByTagName('tr')) {
      for (var elementTh in element.getElementsByTagName('th')) {
        dataList.add(elementTh.text.replaceAll(new RegExp('\\s+'), ''));
      }
    }
    //print(document.getElementsByTagName('table')[0].getElementsByTagName('tr'));
  } else {
    throw Exception();
  }
  print(dataList);
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('http Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _getPageHtml,
          child: const Text('Call API'),
        ),
      ),
    );
  }
}

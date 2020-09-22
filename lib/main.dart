import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Builder',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text(
            'ListView Builder',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: _PageList(),
      ),
    );
  }
}

class _PageList extends StatefulWidget {
  @override
  _PageListState createState() => _PageListState();
}

class _PageListState extends State<_PageList> {
  List langauges = ["Dart", "Python", "Go", "Kotlin", "JS"];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: ListView.builder(
          itemCount: langauges.length,
          itemBuilder: (BuildContext contex, int index) {
            final number = index + 1;
            final language = langauges[index].toString();
            return Card(
              child: ListTile(
                leading: Text(number.toString()),
                title: Text(language),
                trailing: Icon(Icons.check),
              ),
            );
          }),
    );
  }
}

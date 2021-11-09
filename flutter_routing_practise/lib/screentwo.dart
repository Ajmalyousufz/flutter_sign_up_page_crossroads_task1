import 'package:flutter/material.dart';

class screenTwo extends StatelessWidget {
  final String name;

  const screenTwo({Key? key, required this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        Text("page2"),
        ElevatedButton(onPressed: () {}, child: Text(name)),
      ])),
    );
  }
}

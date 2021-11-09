import 'package:flutter/material.dart';

class SecondOne extends StatelessWidget {
  final String name;

  const SecondOne({Key? key, required this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('back'))
          ],
        ),
      ),
    );
  }
}

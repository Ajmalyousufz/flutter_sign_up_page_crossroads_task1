import 'package:flutter/material.dart';
import 'package:flutter_routing_practise/screentwo.dart';

class screenOne extends StatelessWidget {
  screenOne({Key? key}) : super(key: key);
  final _textcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: _textcontroller,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return screenTwo(name: _textcontroller.text);
                  }));
                },
                child: Text("Next page")),
          ],
        ),
      )),
    );
  }
}

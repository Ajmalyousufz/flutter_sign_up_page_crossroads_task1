import 'package:flutter/material.dart';
import 'package:flutter_routing_intent/sample2.dart';

class MySample extends StatelessWidget {
  const MySample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return MySample2();
                }));
              },
              child: Text("Next page"))),
    );
  }
}

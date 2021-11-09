import 'package:flutter/material.dart';

class MySample2 extends StatelessWidget {
  const MySample2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ElevatedButton(onPressed: () {}, child: Text("Sample2"))),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_routing_intent/sample.dart';
import 'package:flutter_routing_intent/screen2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text("Person $index"),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return MySample();
                    }));
                  },
                );
              },
              separatorBuilder: (ctx, index) {
                return Divider();
              },
              itemCount: 30),
        ),
      ),
    );
  }
}

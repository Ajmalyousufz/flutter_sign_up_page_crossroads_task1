import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _textcontroller = TextEditingController();

  String _displayText = "sample text";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            color: Colors.blueGrey[100],
            child: Column(
              children: [
                TextField(
                    controller: _textcontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Type Something')),
                ElevatedButton(
                    onPressed: () {
                      print(_textcontroller.text);
                      setState(() {
                        _displayText = _textcontroller.text;
                      });
                    },
                    child: Text("Click Here")),
                Text(_displayText)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

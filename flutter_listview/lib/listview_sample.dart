import 'package:flutter/material.dart';

class ListSample extends StatefulWidget {
  const ListSample({Key? key}) : super(key: key);

  @override
  _ListSampleState createState() => _ListSampleState();
}

class _ListSampleState extends State<ListSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview sample project'),
      ),
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text('Person $index'),
                  subtitle: Text('Message $index'),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.green,
                    backgroundImage: AssetImage('assets/images/imae_1.jpeg'),
                  ),
                  trailing: Text('1 $index : 00 PM'),
                );
              },
              separatorBuilder: (ctx, index) {
                return Divider();
              },
              itemCount: 30)),
    );
  }
}

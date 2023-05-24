import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List'),
        ),
        body: ListView.builder(
          // separatorBuilder: (context, index) {
          //   return Divider();
          // },
          itemCount: 7,
          itemBuilder: (context, index) {
            return const ListTile(
              title: Text('HAlooo'),
              subtitle: Text('Good Morning !!'),
              leading: CircleAvatar(),
              trailing: Text('10:00 am'),
              enabled: true,
            );
          },
        ),
      ),
    );
  }
}

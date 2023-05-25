import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dynamic state'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 20 + counter.toDouble()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (counter >= 1) {
                      setState(() {
                        counter--;
                      });
                    }
                  },
                  child: Icon(Icons.remove),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: Icon(Icons.add),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

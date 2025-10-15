/*! European Union Public License version 1.2 !*/
/*! Copyright © 2021 Rick Beerendonk          !*/

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Index as Key Issue',
      home: Scaffold(
        appBar: AppBar(title: Text('Index as Key Issue')),
        body: App(),
      ),
    );
  }
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<String> items = ['one', 'two', 'three'];

  void insertTop() {
    setState(() {
      items = [(items.length + 1).toString(), ...items];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Add some text in an input and observe what happens if you click the button.',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: insertTop,
            child: Text('Insert at Top'),
          ),
          SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                // Using index as key (demonstrates the issue)
                return ListTile(
                  key: ValueKey(index),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: items[index],
                      border: OutlineInputBorder(),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

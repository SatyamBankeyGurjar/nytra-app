import 'package:flutter/material.dart';

void main() {
  runApp(DemoApiRequest());
}

class DemoApiRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App with Backend'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Call the API function here
            },
            child: Text('Fetch Data from Backend'),
          ),
        ),
      ),
    );
  }
}

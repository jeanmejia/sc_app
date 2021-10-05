import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Inbox'),
        ),
        body: Center(
          child: Text(
            'Inbox',
            style: TextStyle(fontSize: 60),
          ),
        ),
      );
}

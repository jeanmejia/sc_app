import 'package:flutter/material.dart';

class GradesPage extends StatelessWidget {
  const GradesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Notas'),
      ),
      body: Center(
        child: Text(
          'Notas',
          style: TextStyle(fontSize: 60),
        ),
      ));
}

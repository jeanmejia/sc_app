import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Configuración'),
        ),
        body: Center(
          child: Text(
            'Configuración',
            style: TextStyle(fontSize: 60),
          ),
        ),
      );
}

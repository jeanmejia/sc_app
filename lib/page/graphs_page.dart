import 'package:flutter/material.dart';

class GraphsPage extends StatelessWidget {
  const GraphsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Gráficos'),
        ),
        body: Center(
          child: Text(
            'Gráficos',
            style: TextStyle(fontSize: 60),
          ),
        ),
      );
}

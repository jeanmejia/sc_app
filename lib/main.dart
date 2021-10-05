import 'package:flutter/material.dart';
import 'package:test_project/page/grades_page.dart';
import 'package:test_project/page/graphs_page.dart';
import 'package:test_project/page/home_page.dart';
import 'package:test_project/page/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.title}) : super(key: key);

  final String title;
  

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    GradesPage(),
    GraphsPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        
        body: IndexedStack(index: currentIndex,children: screens,),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Inbox',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: 'Notas',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.assessment),
                label: 'Gráficos',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Configuración',
                backgroundColor: Colors.blue)
          ],
        ),
      );
}

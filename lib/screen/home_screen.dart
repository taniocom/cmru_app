import 'package:cmru_app/widget/my_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = 'Boontan Rithitraipop';
  String accountEmail = 'taniocom@gmail.com';

  void changeName() {
    setState(() {
      name = 'Rithi Boontan';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: const Text('CMRU APP'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text("Hello, $name!"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeName();
        },
        tooltip: 'Increment',
        child:  Icon(Icons.add),
      ),
    );
  }
}



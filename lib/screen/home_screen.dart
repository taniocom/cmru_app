import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = 'Boontan Rithitraipop';

  void changeName() {
    setState(() {
      name = 'Rithi Boontan';
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
      ),
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
        child: const Icon(Icons.add),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


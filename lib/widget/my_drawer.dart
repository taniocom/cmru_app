import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String name = 'Boontan Rithitraipop';
  String accountEmail = 'taniocom@gmail.com';
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(name),
              accountEmail: Text(accountEmail),
              currentAccountPicture: CircleAvatar(),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading:  Icon(Icons.home),
                  title:  Text("Home"),
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
                ListTile(
                  leading:  Icon(Icons.info),
                  title:  Text("About"),
                  onTap: () {
                    Navigator.pushNamed(context, '/about');
                  },
                  trailing: Icon(Icons.chevron_right),
                ),
              ],
            )
          ],
        ),
      );
  }
}
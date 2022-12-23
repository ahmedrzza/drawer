import 'package:flutter/material.dart';
import 'package:testproject/home/loginscreen.dart';

class MyDrawerlist extends StatefulWidget {
  const MyDrawerlist({super.key});

  @override
  State<MyDrawerlist> createState() => _MyDrawerlistState();
}

class _MyDrawerlistState extends State<MyDrawerlist> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          // tileColor: Colors.amber,
          title: const Text('Your Profile'),
          leading: const Icon(Icons.people),
          onTap: (() {}),
        ),
        onTap(const Icon(Icons.settings), const Text('Setting'), () {}),
        onTap(const Icon(Icons.logout), const Text('Logout'), () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const loginScreen()));
        })
      ],
    );
  }
}

onTap(Icon, Text, ontap) {
  return ListTile(
    // tileColor: Colors.amber,
    title: Text,
    leading: Icon,
    onTap: ontap,
  );
}

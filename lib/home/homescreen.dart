import 'package:flutter/material.dart';
import 'package:testproject/drawer/drawerheader.dart';
import 'package:testproject/home/loginscreen.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        // actions: [Icon(Icons.tab,),Navi)],
        title: const Center(
          child: Text('Welcome'),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [Myheaderdrawer()],
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          InkWell(
            onTap: () => Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => loginScreen()),
            ),
            child: containerfunction(),
          )
        ],
      )),
    );
  }
}

containerfunction() {
  return Container(
    height: 100,
    width: 100,
    color: Colors.green,
    child: const Text('abc'),
  );
}

import 'package:flutter/material.dart';
import 'package:testproject/drawer/drawerlist.dart';

class Myheaderdrawer extends StatefulWidget {
  const Myheaderdrawer({super.key});

  @override
  State<Myheaderdrawer> createState() => _MyheaderdrawerState();
}

class _MyheaderdrawerState extends State<Myheaderdrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.purple[400],
          width: double.infinity,
          height: 200,
          padding: const EdgeInsets.all(35.0),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 80,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/360_F_331938599_nmkc39B7E74s1G5P01b0YCJ6x0MNMqJz.jpg'),
                  ),
                ),
              ),
              const Text(
                'Ahmed Rehan',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const Text(
                'raza65170@gmail.com',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        const MyDrawerlist()
      ],
    );
  }
}

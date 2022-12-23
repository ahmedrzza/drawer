import 'package:flutter/material.dart';
import 'package:testproject/home/homescreen.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String email = 'raza65170@gmail.com';
    int Password = 1234567;
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // FloatingActionButton.small(onPressed: (){}),
            Container(
              height: 300,
              width: double.infinity,
              child: const Image(
                  image: AssetImage(
                      'assets/360_F_331938599_nmkc39B7E74s1G5P01b0YCJ6x0MNMqJz.jpg')),
            ),
            SingleChildScrollView(
              child: newtextfilled('Email', Icons.email),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              // scrollDirection: ScrollDirection,
              child: newtextfilled('Password', Icons.lock),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.yellow,
                  shape: const StadiumBorder(),
                  minimumSize: const Size(300, 50)),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => homescreen()),
                  ),
                );
              },
              // style: ,
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.yellow,
                  shape: const StadiumBorder(),
                  minimumSize: const Size(300, 50)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => homescreen()),
                  ),
                );
              },
              child: const Text(
                'Registor',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

newtextfilled(text, icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      decoration: InputDecoration(
        hintText: text,
        // border: Border(),
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(icon),
        focusedBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: Color.fromARGB(255, 255, 255, 252)),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}

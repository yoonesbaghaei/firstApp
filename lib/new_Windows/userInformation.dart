import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:yoones_test/new_Windows/tab2.dart';

class showInformation extends StatelessWidget {
  // const showInformation({Key? key}) : super(key: key);
  final User user;
  showInformation({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 118, 99, 148),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 181, 126, 199),
          title: const Text("show user information"),
          automaticallyImplyLeading: false,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              user.id.toString(),
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              user.name,
              style: const TextStyle(fontFamily: 'App', fontSize: 26),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(user.gmail,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'fan'))
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            Navigator.pop(context);
          }),
          backgroundColor: Color.fromARGB(255, 14, 59, 88),
          child: const Icon(Icons.arrow_back_ios_new),
        ));
  }
}

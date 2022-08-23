import 'package:flutter/material.dart';
import 'package:yoones_test/pages/thirsPage.dart';

class secondPage extends StatelessWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("this second Page"),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "this second Page",
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => thirsPage()));
                },
                color: const Color.fromARGB(255, 56, 240, 148),
                child: const Text(
                  "go to thirs Page",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: const Color.fromARGB(255, 202, 29, 6),
                  child: const Text(
                    "back",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ))
            ],
          ),
        ));
  }
}
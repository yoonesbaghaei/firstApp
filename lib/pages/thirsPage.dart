import 'package:flutter/material.dart';

class thirsPage extends StatelessWidget {
  const thirsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("this thirs Page"),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "this thirs Page",
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              // MaterialButton(
              //   onPressed: () {},
              //   color: const Color.fromARGB(255, 56, 240, 148),
              //   child: const Text(
              //     "go to second page",
              //     style: TextStyle(fontSize: 20, color: Colors.black),
              //   ),
              // ),
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
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ))
            ],
          ),
        ));
  }
}

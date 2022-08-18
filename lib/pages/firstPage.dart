import 'package:flutter/material.dart';

class firstPage extends StatelessWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("this first page"),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "this firts page",
                style: TextStyle(fontSize: 30),
              ),
              MaterialButton(
                onPressed: null,
                color: Colors.grey,
                child: Text(
                  "go to second page",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              MaterialButton(
                  onPressed: null,
                  child: Text(
                    "back",
                    style: TextStyle(fontSize: 20),
                  ))
            ],
          ),
        ));
  }
}

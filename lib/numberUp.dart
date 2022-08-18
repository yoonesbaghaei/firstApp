import 'package:flutter/material.dart';

import 'main.dart';

class numberUpp extends StatefulWidget {
  const numberUpp({Key? key}) : super(key: key);

  @override
  State<numberUpp> createState() => _numberUppState();
}

double FontSize = 15;
int a = 0;

class _numberUppState extends State<numberUpp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 23,
        backgroundColor: Colors.black,
        title: const Text("test App first",
            style: TextStyle(fontFamily: 'App', fontSize: 20)),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const firstAppYoones();
                  },
                ));
              },
              icon: const Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.cyan,
              ));
        }),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  a = 0;
                  FontSize = 15;
                });
              },
              icon: const Icon(
                Icons.refresh_outlined,
                size: 30,
                color: Colors.teal,
              ))
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 252, 158, 216),
      body: Center(
        child: Text(
          "$a",
          style: TextStyle(
              // fontWeight: FontWeight.bold,
              fontFamily: 'App',
              fontSize: FontSize,
              color: a == 0
                  ? Colors.white
                  : a % 2 == 0
                      ? const Color.fromARGB(255, 18, 124, 196)
                      : const Color.fromARGB(255, 79, 236, 161)),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "btn2",
            backgroundColor: Colors.black,
            onPressed: () {
              setState(() {
                if (a < 100) {
                  FontSize += 10;
                }
                if (a < 100) {
                  a += 5;
                }
              });
            },
            child: const Icon(
              Icons.add,
              color: Colors.tealAccent,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            heroTag: "btn3",
            backgroundColor: Colors.black,
            onPressed: () {
              setState(() {
                if (a > 0) {
                  FontSize -= 10;
                }
                if (a > 0) {
                  a -= 5;
                }
              });
            },
            child: const Icon(
              Icons.remove,
              color: Colors.tealAccent,
            ),
          ),
        ],
      ),
    );
  }
}

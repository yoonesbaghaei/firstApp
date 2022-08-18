import 'package:flutter/material.dart';

class Yoones extends StatelessWidget {
  const Yoones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 209, 69, 69),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "created by :",
            style: TextStyle(fontFamily: 'App', fontSize: 20),
          ),
          SizedBox(
            height: 60,
          ),
          Text("YOONES",
              style: TextStyle(
                  fontFamily: 'Yoones',
                  fontSize: 85,
                  color: Color.fromARGB(255, 255, 201, 23)))
        ],
      ),
    );
  }
}

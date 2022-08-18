import 'package:flutter/material.dart';
import 'package:yoones_test/new_Windows/newWindow.dart';
import 'package:yoones_test/numberUp.dart';
import 'package:yoones_test/pages/firstPage.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: firstAppYoones()));
}

class firstAppYoones extends StatefulWidget {
  const firstAppYoones({Key? key}) : super(key: key);

  @override
  State<firstAppYoones> createState() => _firstAppYoonesState();
}

class _firstAppYoonesState extends State<firstAppYoones> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: homePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(0, 223, 0, 126),
          title: const Align(
            alignment: Alignment.center,
            child: Text(
              "first my application",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 26,
                  fontFamily: 'App'),
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            // icons :
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 238, 45, 45),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const numberUpp();
                      }),
                    );
                  },
                  child: const Icon(
                    Icons.numbers,
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return newWindow();
                      }),
                    );
                  },
                  child: const Icon(
                    Icons.window_sharp,
                    color: Color.fromARGB(255, 238, 45, 45),
                  ),
                ),
                FloatingActionButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return firstPage();
                      }));
                    },
                    child: const Icon(
                      Icons.insert_page_break_rounded,
                    ))
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            // textIcons:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  "App number",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'App',
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
                Text("Slider",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'App',
                        color: Color.fromARGB(255, 238, 45, 45))),
                Text(
                  "       Pages",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                    fontFamily: 'App',
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 130, 0, 0),
              child: Image.asset(
                'assets/images/yin-yang.png',
                height: 320,
                width: 320,
              ),
            )
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class tab1 extends StatefulWidget {
  const tab1({Key? key}) : super(key: key);

  @override
  State<tab1> createState() => _tab1State();
}

class _tab1State extends State<tab1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 26, 5, 121),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/cover.jpg",
              width: 380,
              height: 380,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 40),
              child: Text(
                "Billi Eilish - You Should See Me In a Crown",
                style: TextStyle(
                    fontFamily: 'Music', fontSize: 27, color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // befor
                FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  onPressed: () {},
                  child: Image.asset(
                    "assets/images/Befor.png",
                  ),
                ),
                // pause
                FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  onPressed: () {},
                  child: Image.asset(
                    "assets/images/pause.png",
                  ),
                ),
                // play
                FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  onPressed: () {},
                  child: Image.asset(
                    "assets/images/play.png",
                  ),
                ),
                // next
                FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  onPressed: () {},
                  child: Image.asset(
                    "assets/images/next.png",
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const LikeButton(
                      size: 29,
                      circleColor: CircleColor(
                          start: Color.fromARGB(255, 255, 0, 0),
                          end: Color.fromARGB(255, 60, 224, 230)),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Color.fromARGB(255, 229, 226, 51),
                        dotSecondaryColor: Color.fromARGB(255, 122, 0, 204),
                      ),
                    ),
                  ),
                )
                // FloatingActionButton(
                //   elevation: 0,
                //   backgroundColor: Color.fromARGB(255, 0, 0, 0),
                //   onPressed: () {},
                //   child:
                // )
              ],
            )
          ],
        ));
  }
}

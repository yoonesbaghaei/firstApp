import 'package:flutter/material.dart';
import 'package:yoones_test/main.dart';
import 'package:yoones_test/new_Windows/tab1.dart';
import 'package:yoones_test/new_Windows/tab2.dart';
import 'package:yoones_test/new_Windows/tab3.dart';

class newWindow extends StatefulWidget {
  @override
  State<newWindow> createState() => _newWindowState();
}

class _newWindowState extends State<newWindow>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 59, 75, 88),
          leading: Builder(builder: (BuildContext context) {
            return FloatingActionButton(
                backgroundColor: const Color.fromARGB(0, 104, 39, 116),
                elevation: 0,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const firstAppYoones();
                    },
                  ));
                },
                child: const Icon(
                  Icons.arrow_back_ios_sharp,
                  color: Color.fromARGB(255, 255, 255, 255),
                ));
          }),
          title: const Text(
            "slider page",
            style: TextStyle(fontFamily: 'App', fontSize: 26),
          )),
      body: TabBarView(
          controller: tabController, children: [Yoones(), tab1(), tab2()]),
      bottomNavigationBar: Container(
          color: const Color.fromARGB(255, 63, 15, 35),
          height: 60,
          child: TabBar(
              controller: tabController,
              indicatorColor: const Color.fromARGB(255, 255, 255, 255),
              indicatorSize: TabBarIndicatorSize.label,
              tabs: const [
                Tab(
                  child: ImageIcon(
                    AssetImage('assets/images/king2.png'),
                    color: Color.fromARGB(255, 255, 208, 0),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.library_music,
                    color: Color.fromARGB(255, 101, 76, 214),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.view_list,
                    color: Color.fromARGB(255, 171, 26, 255),
                  ),
                )
              ])),
    );
  }
}

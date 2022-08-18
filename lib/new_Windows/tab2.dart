import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:yoones_test/new_Windows/userInformation.dart';

class tab2 extends StatelessWidget {
  List<User> allUser = List.generate(50, (index) {
    var faker = Faker();
    return User(
        id: index + 1,
        name: faker.person.name(),
        gmail: faker.internet.email());
  });
  // = [
  //   User(id: 1, name: "ali", gmail: "sdihk@gmail.com"),
  //   User(id: 2, name: "amir", gmail: "fdgd@gmail.com"),
  //   User(id: 3, name: "mobina", gmail: "dsgd@gmail.com"),
  //   User(id: 4, name: "morteza", gmail: "jhguy@gmail.com"),
  //   User(id: 5, name: "sohrab", gmail: "xcvas@gmail.com"),
  //   User(id: 6, name: "nazanin", gmail: "bbhv@gmail.com"),
  //   User(id: 7, name: "samira", gmail: "sdew3@gmail.com"),
  //   User(id: 8, name: "vahid", gmail: "dfs4ds@gmail.com"),
  //   User(id: 9, name: "leila", gmail: "gjnfj@gmail.com"),
  //   User(id: 10, name: "navid", gmail: "awq3@gmail.com"),
  //   User(id: 11, name: "sahar", gmail: "jkhk8@gmail.com"),
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 88, 60, 107),
      child: ListView.builder(
          // reverse: true,
          // physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: allUser.length,
          itemBuilder: (BuildContext conetxt, int index) {
            return Card(
              color: const Color.fromARGB(255, 161, 161, 161),
              child: Container(

                  // height: 300,
                  // width: 200,
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  child: ListTile(
                    title: Text(
                      allUser[index].name,
                      style: const TextStyle(fontSize: 17, fontFamily: 'Bold'),
                    ),
                    subtitle: Text(allUser[index].gmail,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            fontFamily: 'fan')),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return showInformation(
                          user: allUser[index],
                        );
                      }));
                    },
                    leading: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 161, 21, 68),
                      child: Text(
                        allUser[index].id.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
            );
          }),
    );
  }
}

class User {
  int id;
  String name;
  String gmail;

  User({required this.id, required this.name, required this.gmail});
}

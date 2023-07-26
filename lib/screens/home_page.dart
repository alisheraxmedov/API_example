import 'package:api_http/api/api.dart';
import 'package:api_http/models/user.dart';
import 'package:api_http/screens/full_info_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      appBar: AppBar(
        title: const Text(
          "API Contact List",
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder(
        future: getUsers(20),
        builder: ((context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          List<User> users = snapshot.data!;

          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Card(
                  color: Colors.blue.shade100,
                  elevation: 7.0,
                  shadowColor: Colors.black,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(users[index].smallImage),
                    ),
                    title: Text(
                      "${users[index].firstName} ${users[index].lastName}",
                      style: const TextStyle(fontSize: 24.0, color: Colors.black),
                    ),
                    subtitle: Text(users[index].email),
                    //
                    onTap: () {
                      Navigator.pushNamed(context, FullInfoPage.routeName, arguments: users[index]);
                    },
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}

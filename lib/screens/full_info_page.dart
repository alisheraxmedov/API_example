import 'package:api_http/models/user.dart';
import 'package:flutter/material.dart';

class FullInfoPage extends StatelessWidget {
  static const String routeName = '/full';
  final User users;
  const FullInfoPage(this.users, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      appBar: AppBar(
        title: const Text(
          "API Example",
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10.0),
          Center(
            child: Container(
              alignment: Alignment.center,
              height: 200.0,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: CircleAvatar(
                radius: 100.0,
                backgroundImage: NetworkImage(users.bigImage),
              ),
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              Card(
                elevation: 7.0,
                child: ListTile(
                  tileColor: Colors.blue.shade200,
                  title: Text(
                    "First name: ${users.firstName}",
                    style: const TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                elevation: 7.0,
                child: ListTile(
                  tileColor: Colors.blue.shade200,
                  title: Text(
                    "Last name: ${users.lastName}",
                    style: const TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                elevation: 7.0,
                child: ListTile(
                  tileColor: Colors.blue.shade200,
                  title: Text(
                    "Tel: ${users.phoneNUmber}",
                    style: const TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                elevation: 7.0,
                child: ListTile(
                  tileColor: Colors.blue.shade200,
                  title: Text(
                    "Country: ${users.country}",
                    style: const TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                elevation: 7.0,
                child: ListTile(
                  tileColor: Colors.blue.shade200,
                  title: Text(
                    "City: ${users.city}",
                    style: const TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                elevation: 7.0,
                child: ListTile(
                  tileColor: Colors.blue.shade200,
                  title: Text(
                    "Email: ${users.email}",
                    style: const TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                elevation: 7.0,
                child: ListTile(
                  tileColor: Colors.blue.shade200,
                  title: Text(
                    "Birth: ${users.dob}",
                    style: const TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

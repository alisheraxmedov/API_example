import 'package:api_http/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MyApp(),
      onGenerateRoute: onGenerateRoute,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.indigo.shade400),
      ),
    ),
  );
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Random User API',
//       home: RandomUserList(),
//     );
//   }
// }

// class RandomUserList extends StatefulWidget {
//   @override
//   _RandomUserListState createState() => _RandomUserListState();
// }

// class _RandomUserListState extends State<RandomUserList> {
//   List<String> names = [];
//   List<String> photos = [];
//   List<String> phone = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchRandomUsers();
//   }

//   Future<void> fetchRandomUsers() async {
//     try {
//       final url = Uri.https("randomuser.me", "/api", {'results': '10'});
//       final response = await http.get(url);
//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         final users = data['results'];

//         List<String> userNames = [];
//         List<String> userPhoto = [];
//         List<String> userTel = [];

//         for (var user in users) {
//           String title = user['name']['title'];
//           String firstName = user['name']['first'];
//           String lastName = user['name']['last'];
//           String picture = user['picture']['thumbnail'];
//           String contact = user['phone'];
//           userNames.add('$title $firstName $lastName');

//           userPhoto.add(picture);
//           userTel.add(contact);
//         }

//         setState(() {
//           names = userNames;
//           photos = userPhoto;
//           phone = userTel;
//         });
//       } 
//     } catch (e) {
//       print('Dasturdagi istisno: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Random User API'),
//       ),
//       body: ListView.builder(
//         itemCount: names.length,
//         itemBuilder: (context, index) {
//           return Card(
//             shadowColor: Colors.black,
//             elevation: 7.0,
//             color: Colors.white,
//             child: ListTile(
//               leading: CircleAvatar(
//                 child: Container(
//                   decoration: const BoxDecoration(shape: BoxShape.circle),
//                   child: Image.network(photos[index], fit: BoxFit.fill),
//                 ),
//               ),
//               title: Text(
//                 names[index],
//                 style: const TextStyle(color: Colors.black, fontSize: 20.0),
//               ),
//               subtitle: Text(
//                 phone[index],
//                 style: const TextStyle(color: Colors.grey, fontSize: 16.0),
//               ),
//               trailing: const Icon(
//                 Icons.info,
//                 size: 35.0,
//                 color: Colors.blue,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:bookbytes/views/screens/loginpage.dart';
import 'package:bookbytes/views/screens/registrationpage.dart';
import 'package:flutter/material.dart';
import 'package:bookbytes/views/screens/mydrawer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "My Profile",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 40,
            ),
          ],
        ),           
        backgroundColor: Colors.deepOrange,
        elevation: 0.0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey,
            height: 1.0,
          ),
        )),            
      drawer: const MyDrawer(),
      body: Center(
        child: Column(children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (content) => const RegistrationPage()));  
            },
            child: Text("Register")),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (content) => const LoginPage()));  
            },
            child: Text("Login"))           
        ]),
      ));
  }
}
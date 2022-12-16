import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
    ),
  );
}

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: Center(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(30), //apply padding to all four sides
            child: Text(
              "Profil",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            child: Column(children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(90),
                  topRight: Radius.circular(90),
                  bottomLeft: Radius.circular(90),
                  bottomRight: Radius.circular(90),
                ),
                child: Image.network(
                    'https://images.unsplash.com/photo-1570053381569-78f606b5caab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill),
              ),
              new Text("Change profile picture"),
            ]),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.person),
              hintText: 'Enter your new name',
              labelText: 'Name',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.person),
              hintText: 'Enter your new first name',
              labelText: 'First name',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.person),
              hintText: 'Enter your new email',
              labelText: 'Email',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.person),
              hintText: 'Enter your new Password',
              labelText: 'Password',
            ),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.blue,
                onSurface: Colors.grey,
              ),
              child: Text(
                'Edit',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ),
        ]),
        // ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
    ),
  );
}

class WhyUsScreen extends StatelessWidget {
  const WhyUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Why Us'),
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            Container(
                child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Text("Why Us",
                        style: TextStyle(fontSize: 30, color: Colors.black)))),
            Container(
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.network(
                      "https://images.unsplash.com/photo-1492681290082-e932832941e6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80")),
            ),
            Container(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "Ut id nunc viverra sed. Non faucibus lacus lectus neque, sem eget ut. Vulputate mattis lacus iaculis tortor ultricies nullam non. Amet ac praesent libero massa aliquet fermentum eu. Facilisis suspendisse enim massa porta tristique nisl lectus."))),
            Container(
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.network(
                      "https://images.unsplash.com/photo-1492681290082-e932832941e6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80")),
            ),
            Container(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "Ut id nunc viverra sed. Non faucibus lacus lectus neque, sem eget ut. Vulputate mattis lacus iaculis tortor ultricies nullam non. Amet ac praesent libero massa aliquet fermentum eu. Facilisis suspendisse enim massa porta tristique nisl lectus."))),
            Container(
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.blue,
                        onSurface: Colors.grey,
                      ),
                      child: Container(
                        child: Column(children: [
                          const Icon(Icons.explore),
                          Text(
                            'Explore',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ]),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.blue,
                        onSurface: Colors.grey,
                      ),
                      child: Container(
                        child: Column(children: [
                          const Icon(Icons.airplane_ticket),
                          Text(
                            'Tickets',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ]),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/list');
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.blue,
                        onSurface: Colors.grey,
                      ),
                      child: Container(
                        child: Column(children: [
                          const Icon(Icons.person),
                          Text(
                            'Profil',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ]),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/profil');
                      },
                    ),
                  ],
                ))
          ],
        )),
      ),
    );
  }
}

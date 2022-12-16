import 'package:flutter/foundation.dart';
import 'package:flutter_project/list.dart';
import 'package:flutter_project/main.dart';
import 'package:flutter_project/profil.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // initialRoute: '/',
      // routes: {
      //   '/profil': (context) => const ProfilScreen(),
      //   '/list': (context) => const ProfilScreen(),
      // },
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  Future<List> _loadData() async {
    List posts = [];
    try {
      final String response =
          await rootBundle.loadString('assets/database.json');
      posts = json.decode(response);
    } catch (err) {
      if (kDebugMode) {
        print(err);
      }
    }

    return posts;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Index',
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon: const Icon(Icons.person, color: Colors.black),
              onPressed: () {
                Navigator.pushNamed(context, '/profil');
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: screenWidth,
            // height: 1000,
            color: Colors.white,
            child: Column(children: [
              Container(
                height: 100,
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
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
                              width: 50,
                              height: 50,
                              fit: BoxFit.fill),
                        ),
                        new Text("Concert"),
                      ]),
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
                              width: 50,
                              height: 50,
                              fit: BoxFit.fill),
                        ),
                        new Text("Festival"),
                      ]),
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
                              width: 50,
                              height: 50,
                              fit: BoxFit.fill),
                        ),
                        new Text("Soirée dansante"),
                      ]),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                padding: EdgeInsets.only(top: 10, bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    new GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/about');
                      },
                      child: Container(
                          child: Column(
                        children: [
                          Image.network(
                            "https://images.unsplash.com/photo-1528747045269-390fe33c19f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                            width: 125,
                            height: 100,
                          ),
                          Text(
                            "About",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                    ),
                    new GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/why');
                      },
                      child: Container(
                          child: Column(
                        children: [
                          Image.network(
                            "https://images.unsplash.com/photo-1528747045269-390fe33c19f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                            width: 125,
                            height: 100,
                          ),
                          Text(
                            "WHY US",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                    )
                  ],
                ),
              ),
              Container(
                  width: screenWidth,
                  child: Image.network(
                      "https://images.unsplash.com/photo-1493225774800-a08bb7034783?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=863&q=80")),
              Container(
                // margin: const EdgeInsets.symmetric(vertical: 20.0),
                // height: 200.0,
                child: Column(children: [
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Popular Events"),
                      TextButton(
                        child: const Text(
                          'See All',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          //signup screen
                          Navigator.pushNamed(context, '/list');
                        },
                      )
                    ],
                  )),
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 20.0),
                      height: 200.0,
                      child: FutureBuilder(
                          future: _loadData(),
                          builder: (BuildContext ctx,
                                  AsyncSnapshot<List> snapshot) =>
                              snapshot.hasData
                                  ? Container(
                                      child: GridView.builder(
                                          gridDelegate:
                                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                                  maxCrossAxisExtent: 200,
                                                  childAspectRatio: 4 / 3,
                                                  crossAxisSpacing: 10,
                                                  mainAxisSpacing: 10),
                                          itemCount: snapshot.data!.length,
                                          scrollDirection: Axis.horizontal,
                                          shrinkWrap: true,
                                          itemBuilder:
                                              (BuildContext ctx, index) {
                                            return Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                      child: Column(
                                                    children: [
                                                      Image.network(
                                                          snapshot.data![index]
                                                              ['image']!,
                                                          width: 150,
                                                          height: 150,
                                                          fit: BoxFit.fill),
                                                      TextButton(
                                                        child: Text(
                                                          snapshot.data![index]
                                                              ['date']!,
                                                          style: TextStyle(
                                                            fontSize: 20.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        onPressed: () {
                                                          Navigator.pushNamed(
                                                              context, '/list');
                                                        },
                                                      ),
                                                    ],
                                                  )),
                                                ],
                                              ),
                                            );
                                          }))
                                  : const Center(
                                      // render the loading indicator
                                      child: CircularProgressIndicator(),
                                    )))
                ]),
              ),
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
            ]),
          ),
        ));
  }
}

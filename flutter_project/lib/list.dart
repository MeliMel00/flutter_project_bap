import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';
// import 'package:flutter_project/db/database.json';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListState();
}

class _ListState extends State<ListScreen> {
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
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: const Text('List'),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: screenWidth,
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
                // height: 800,
                child: FutureBuilder(
                    future: _loadData(),
                    builder: (BuildContext ctx, AsyncSnapshot<List> snapshot) =>
                        snapshot.hasData
                            ? Container(
                                child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithMaxCrossAxisExtent(
                                            maxCrossAxisExtent: 200,
                                            childAspectRatio: 3 / 4,
                                            crossAxisSpacing: 20,
                                            mainAxisSpacing: 20),
                                    itemCount: snapshot.data!.length,
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    itemBuilder: (BuildContext ctx, index) {
                                      return Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.network(
                                                  snapshot.data![index]
                                                      ['image'],
                                                  width: screenWidth / 2,
                                                  // height: a,
                                                  fit: BoxFit.fill),
                                              Padding(
                                                padding: EdgeInsets.all(10),
                                                child: Text(
                                                  snapshot.data![index]['name'],
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: Text(
                                                  snapshot.data![index]['date'],
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                    child: Text(
                                                      snapshot.data![index]
                                                              ['price'] +
                                                          '€',
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  TextButton(
                                                    child: const Text(
                                                      'Book now',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: Colors.black),
                                                    ),
                                                    onPressed: () {
                                                      //signup screen
                                                      showDialog(
                                                          context: context,
                                                          builder: (BuildContext
                                                                  context) =>
                                                              SingleChildScrollView(
                                                                  child:
                                                                      AlertDialog(
                                                                title: const Text(
                                                                    'Concert Daft Punk'),
                                                                content:
                                                                    Container(
                                                                  // height: 350,
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                        padding: EdgeInsets.only(
                                                                            top:
                                                                                10,
                                                                            bottom:
                                                                                10),
                                                                        child: Text(
                                                                            "Date: 12/12/2021"),
                                                                      ),
                                                                      Container(
                                                                        padding: EdgeInsets.only(
                                                                            top:
                                                                                10,
                                                                            bottom:
                                                                                10),
                                                                        child: Text(
                                                                            "Bibendum nibh mattis vestibulum semper vitae. Mus in porta duis a, quam ipsum. Mi ipsum at metus in gravida pulvinar. Urna aenean montes, consectetur orci luctus. Aliquet massa tellus molestie scelerisque. "),
                                                                      ),
                                                                      Container(
                                                                        child: Column(
                                                                            children: [
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text(
                                                                                    "Place Bronze",
                                                                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                                                                  ),
                                                                                  Text(
                                                                                    "50 €",
                                                                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Form(
                                                                                child: new TextField(
                                                                                  decoration: new InputDecoration(labelText: "0"),
                                                                                  keyboardType: TextInputType.number,
                                                                                  maxLength: 1,
                                                                                  inputFormatters: <TextInputFormatter>[
                                                                                    FilteringTextInputFormatter.digitsOnly
                                                                                  ], // Only numbers can be entered
                                                                                ),
                                                                              ),
                                                                            ]),
                                                                      ),
                                                                      Container(
                                                                        child: Column(
                                                                            children: [
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text(
                                                                                    "Place Argent",
                                                                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                                                                  ),
                                                                                  Text(
                                                                                    "75 €",
                                                                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Form(
                                                                                child: new TextField(
                                                                                  decoration: new InputDecoration(labelText: "0"),
                                                                                  keyboardType: TextInputType.number,
                                                                                  maxLength: 1,
                                                                                  inputFormatters: <TextInputFormatter>[
                                                                                    FilteringTextInputFormatter.digitsOnly
                                                                                  ], // Only numbers can be entered
                                                                                ),
                                                                              ),
                                                                            ]),
                                                                      ),
                                                                      Container(
                                                                        child: Column(
                                                                            children: [
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text(
                                                                                    "Place Gold",
                                                                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                                                                  ),
                                                                                  Text(
                                                                                    "120 €",
                                                                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Form(
                                                                                child: new TextField(
                                                                                  decoration: new InputDecoration(labelText: "0"),
                                                                                  keyboardType: TextInputType.number,
                                                                                  maxLength: 1,
                                                                                  inputFormatters: <TextInputFormatter>[
                                                                                    FilteringTextInputFormatter.digitsOnly
                                                                                  ], // Only numbers can be entered
                                                                                ),
                                                                              ),
                                                                            ]),
                                                                      ),
                                                                      Container(
                                                                        child: Column(
                                                                            children: [
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text(
                                                                                    "Place Diamond",
                                                                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                                                                  ),
                                                                                  Text(
                                                                                    "150 €",
                                                                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Form(
                                                                                child: new TextField(
                                                                                  decoration: new InputDecoration(labelText: "0"),
                                                                                  keyboardType: TextInputType.number,
                                                                                  maxLength: 1,
                                                                                  inputFormatters: <TextInputFormatter>[
                                                                                    FilteringTextInputFormatter.digitsOnly
                                                                                  ], // Only numbers can be entered
                                                                                ),
                                                                              ),
                                                                            ]),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                actions: [
                                                                  Text(
                                                                    "€ 25.00",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                  TextButton(
                                                                    child: const Text(
                                                                        'Book now'),
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.pushNamed(
                                                                          context,
                                                                          '/booking');
                                                                    },
                                                                  ),
                                                                  TextButton(
                                                                    child: const Text(
                                                                        'Cancel'),
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.of(
                                                                              context)
                                                                          .pop();
                                                                    },
                                                                  ),
                                                                ],
                                                              )));
                                                    },
                                                  )
                                                ],
                                              )
                                            ],
                                          ));
                                    }),
                              )
                            : const Center(
                                // render the loading indicator
                                child: CircularProgressIndicator(),
                              )),
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
  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   throw UnimplementedError();
  // }
// }
// class _ListState extends StatelessWidget {
//   const ListScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('List'),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           width: screenWidth,
//           height: 1000,
//           color: Colors.white,
//           child: Column(children: [
//             Container(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.max,
//                 children: <Widget>[
//                   Container(
//                     child: Column(children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(90),
//                           topRight: Radius.circular(90),
//                           bottomLeft: Radius.circular(90),
//                           bottomRight: Radius.circular(90),
//                         ),
//                         child: Image.network(
//                             'https://images.unsplash.com/photo-1570053381569-78f606b5caab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
//                             width: 50,
//                             height: 50,
//                             fit: BoxFit.fill),
//                       ),
//                       new Text("Concert"),
//                     ]),
//                   ),
//                   Container(
//                     child: Column(children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(90),
//                           topRight: Radius.circular(90),
//                           bottomLeft: Radius.circular(90),
//                           bottomRight: Radius.circular(90),
//                         ),
//                         child: Image.network(
//                             'https://images.unsplash.com/photo-1570053381569-78f606b5caab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
//                             width: 50,
//                             height: 50,
//                             fit: BoxFit.fill),
//                       ),
//                       new Text("Festival"),
//                     ]),
//                   ),
//                   Container(
//                     child: Column(children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(90),
//                           topRight: Radius.circular(90),
//                           bottomLeft: Radius.circular(90),
//                           bottomRight: Radius.circular(90),
//                         ),
//                         child: Image.network(
//                             'https://images.unsplash.com/photo-1570053381569-78f606b5caab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
//                             width: 50,
//                             height: 50,
//                             fit: BoxFit.fill),
//                       ),
//                       new Text("Soirée dansante"),
//                     ]),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               height: 500,
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 // Generate 100 widgets that display their index in the List.
//                 children: List.generate(100, (index) {
//                   return Center(
//                     child: Container(
//                      child: Column(children: [

//                      ]),
//                     ),
//                   );
//                 }),
//               ),
//             )
//           ]),
//         ),
//       ),
//     );
//   }
// }

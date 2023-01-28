// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: OurApp(),
  ));
}

class OurApp extends StatelessWidget {
// OurApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DOING HARD THINGS"), //TITLE OF THE APP BAR
          centerTitle: true, // MAKING THE TITLE CENTRED
          backgroundColor:
              Color.fromARGB(175, 7, 255, 69), //DEFINING BACKGROUND
          elevation: 0.0, //rEMOVING ELEVATION
        ),
        drawer: new Drawer(
          //CREATING A SIDE MENU
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Maxine Beni'),
                accountEmail: Text('maxinebeni@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.lightGreenAccent,
                  child: const Text('MB'),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Padding(
            //ADDING PADDING
            padding: EdgeInsets.fromLTRB(15.0, 9.0, 10.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .center, // MAKING ALL THE CONTENT START FROM THE START OF THE PAGE.
              children: <Widget>[
                Row(
                  // CREATING A ROW
                  mainAxisAlignment:
                      MainAxisAlignment.end, // MOVING IT TO THE FAR END
                  children: <Widget>[
                    RotatedBox(
                      //MAKING A ROTATED BOX
                      quarterTurns: 3,
                      child: Text(
                        'We are lit',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  //CREATING AN AVATAR ON THE PAGE
                  backgroundImage: AssetImage('assets/icon.jpg'),
                  radius: 30.0,
                ),
                SizedBox(
                    height:
                        20.0), //ADDING SPACE BETWEEN CONTENT WITH A SIZEDBOX
                Text('Group Number Three', //ADDING TEXT
                    style: TextStyle(
                        letterSpacing: 2.0,
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 20.0),
                Text('Welcome to our APP!',
                    style: TextStyle(
                        color: Colors.lightGreen,
                        letterSpacing: 2.0,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 20.0),
                Container(
                  color: Color.fromARGB(255, 185, 243, 216),
                  child: FittedBox(
                    //DEMONSTRATING A FIITED BOX USING COINTANERS.
                    child: Text('we are tying fitted box',
                        style: TextStyle(
                            letterSpacing: 2.0,
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(height: 30.0),
                ConstrainedBox(
                  //DEMONSTRATING A CONSTRAINED BOX WITH CONTAINER
                  constraints: BoxConstraints.tightFor(width: 500, height: 60),
                  child: Container(
                    color: Colors.lightGreen,
                    child: Text(
                      'Hello everyone Welcome, to our page! ',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color.fromARGB(255, 239, 242, 243),
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      //USING ICONS
                      Icons.email,
                      color: Colors.lightGreenAccent,
                    ),
                    SizedBox(width: 30.0),
                    Text(
                      'weareusing_rows@gmail.com',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.0,
                        letterSpacing: 2.0,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  // DEMONSTRATING THE USE OF CHIPS
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Chip(
                      label: Text('Fashion'),
                      avatar: Icon(Icons.shopping_basket),
                      backgroundColor: Colors.lightBlueAccent,
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    ),
                    SizedBox(width: 20.0),
                    Chip(
                      label: Text('Africa'),
                      avatar: Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 160, 238, 96),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Chip(
                      label: Text('Food'),
                      avatar: Icon(
                        Icons.restaurant,
                        color: Color.fromARGB(255, 34, 223, 207),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        // Demonstrating floatingaction button
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              print("Clicked");
            },
            backgroundColor: Colors.lightGreen,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(88)))));
  }
}

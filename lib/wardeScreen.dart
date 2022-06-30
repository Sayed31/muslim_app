import 'package:flutter/material.dart';
import 'package:sebha/azkarAlmanzel.dart';
import 'package:sebha/azkarAlnoum.dart';
import 'package:sebha/azkarAlsala.dart';
import 'package:sebha/azkarElmasaa.dart';

import 'azkarSabah.dart';
class wardeScreen extends StatefulWidget {
  // the wardescreen has many cards where the user
  // taps on it and takes them to a new page for the cards' own azkar
  // the azkar is in its own different cards created in a dependant class
  // that the developer can only call the card and then pass the azkar and the its count
  @override
  _wardeScreenState createState() => _wardeScreenState();
}

class _wardeScreenState extends State<wardeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black,
    body: GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>azkarSabah()
              ),
              );
            } ,
            child: Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width:50 ,
              child: Card(
                elevation: 4,
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.grey,
                child: Center(
                  child: Text("أذكار الصباح",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,

                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                 MaterialPageRoute(
                     builder: (context)=>azkarElmasaa(),
                 ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width:50 ,
              child: Card(
                elevation: 4,
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.grey,
                child: Center(
                  child: Text("أذكار المساء",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,

                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>azkarAlnoum()));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width:50 ,
              child: Card(
                elevation: 4,
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.grey,
                child: Center(
                  child: Text("أذكار النوم",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>azkarAlmanzel())
              );
              
            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width:50 ,
              child: Card(
                elevation: 4,
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.grey,
                child: Center(
                  child: Text("أذكار المنزل",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>azkarAlsala()));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: 75,
              width:40 ,
              child: Card(
                elevation: 4,
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.grey,
                child: Center(
                  child: Text("أذكار بعد الصلاة",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),

      ],
    ),

    );
  }
}

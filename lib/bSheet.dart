import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

class bSheet extends StatefulWidget {

  // the bottom sheet of the prayers time

  @override
  _bSheetState createState() => _bSheetState();
}

class _bSheetState extends State<bSheet> {
  getAzan() async{
    var url= Uri.parse("https://api.pray.zone/v2/times/today.json?city=cairo");
    var response= await http.get(url);
    var responsebody= jsonDecode(response.body)["results"]["datetime"][0];

    return responsebody;

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child:FutureBuilder(
        future: getAzan(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if(snapshot.hasData)
            {
              return  ListView(

                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${snapshot.data["date"]["gregorian"]}",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        },
                          icon: Icon(Icons.close_outlined),
                          iconSize: 30,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xff0d4715),
                    indent: 20,
                    endIndent: 20,
                    thickness: 2,

                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${snapshot.data["times"]["Fajr"]}",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        Text("الفجر",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xff0d4715),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${snapshot.data["times"]["Dhuhr"]}",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        Text("الظهر",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xff0d4715),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${snapshot.data["times"]["Asr"]}",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        Text("العصر",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xff0d4715),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${snapshot.data["times"]["Maghrib"]}",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        Text("المغرب",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xff0d4715),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${snapshot.data["times"]["Isha"]}",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        Text("العشاء",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ],
                    ),
                  ),
                  // Divider(
                  //   color: Colors.green[700],
                  // ),
                ],
              );
            }
          else
            {
              return Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation(
                      Color(0xff0d4715)
                  ),
                ),
              );

            }
        },),
    );
  }
}

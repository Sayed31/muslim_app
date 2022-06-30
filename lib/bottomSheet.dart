import 'package:flutter/material.dart';
class bottomSheet extends StatefulWidget {

  // the bottom sheet of the app description
  @override
  _bottomSheetState createState() => _bottomSheetState();
}

class _bottomSheetState extends State<bottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,

      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 300,
            ),
            child: IconButton(onPressed: (){
              Navigator.pop(context);
            },

                icon: Icon(Icons.close,size: 30,)
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsetsDirectional.only(
            start: 100
            ),
            child: Text("تطبيق إسلامي للتسبيح وللأذكار",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
            ),
            ),
          ),
                ],
      ),
    );
  }
}

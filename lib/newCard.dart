import 'package:flutter/material.dart';
// newCard class where the developer can call it in
// the azkar pages and pass the azkar and its count
class newCard extends StatefulWidget {
  String _txt;
  int _count;
  newCard(this._txt,this._count);


  @override
  _newCardState createState() => _newCardState();
}

class _newCardState extends State<newCard> {
  Color _fontColor= Colors.black;
  Color _bottomColor=Color(0xff0d4715);
  Color _progressed_font_color=Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(22)
        ),
        color: Colors.white,
        elevation: 5,
        shadowColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0,top: 5),
              child: Text("${widget._txt}",
              style: TextStyle(
                color: _fontColor,
                fontSize: 18,



              ),
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(height: 10,),
            FlatButton(onPressed: (){
              setState(() {
                if(widget._count!=0)
                  {
                    widget._count--;
                  }
                if(widget._count==0)
                  {
                    _fontColor=_progressed_font_color;
                    _bottomColor=_progressed_font_color;
                  }
              });

            },
              minWidth: double.infinity,
              color: _bottomColor,
              height: 49,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),

                child: Text("${widget._count}",
                style: TextStyle(
                  color: Colors.white,
                ),
                ),

            )
          ],
        ),

      ),
    );
  }
}

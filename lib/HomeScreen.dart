
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// the homescreen is sebha has 2 buttons : one for incrementing
// and one for reset the counter to zero
// and a counter
class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // creating a counter and the methodes of incrementing and resetting
  int _counter=0;
   incrementCounter ()
  {
    setState(() {
       _counter++;
    });
  }
  zeroCounter(){
     setState(() {
       _counter=0;
     });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 120,

              ),

              child: OutlinedButton(onPressed: zeroCounter,
                  style: OutlinedButton.styleFrom(
                    shape: CircleBorder(),
                    side: BorderSide(color: Color(0xff0d4715),
                  ),
                  ),

                  child:Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.exposure_zero_sharp,color: Colors.grey,),
                  ),

              ),
            ),
            SizedBox(height: 4,),


            CircleAvatar(
              backgroundColor: Colors.white.withOpacity(0.2),
              radius: 60,
              child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.8),
                radius: 50,
                child: Text('${_counter}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,

                ),

                ),
              ),
            ),
            SizedBox(height: 15,),
            OutlinedButton(onPressed: incrementCounter,

                style: OutlinedButton.styleFrom(
                  shape: CircleBorder(),
                  side: BorderSide(color: Color(0xff0d4715)),





                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.arrow_drop_up,color: Colors.grey,),
                )

            )
          ],
        ),
      )

    );
  }
}

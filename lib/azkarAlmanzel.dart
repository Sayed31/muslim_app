import 'package:flutter/material.dart';
import 'package:sebha/newCard.dart';
class azkarAlmanzel extends StatefulWidget {


  @override
  _azkarAlmanzelState createState() => _azkarAlmanzelState();
}

class _azkarAlmanzelState extends State<azkarAlmanzel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      appBar: AppBar(
        backgroundColor:Colors.black,
        centerTitle: true,
        title: Text("أَذْكَارْ الصَباح",
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff0d4715)
          ),

        ),
        leading: IconButton(icon:Icon(Icons.arrow_back_ios_new),
          onPressed: (){
            Navigator.pop(context);
          },
          color: Color(0xff0d4715),
        ),


        // actions: [
        //   IconButton(onPressed: (){
        //     showModalBottomSheet(context: context,
        //         builder: (BuildContext context){
        //           return bottomSheet();
        //         }
        //     );
        //   },
        //     icon: Icon(Icons.help_outline_outlined),
        //     color: Color(0xff0d4715),
        //   )
        // ],


      ),
      body: ListView(
        children: [
          newCard("""أذكار الدخول إلى المنزل
بِسْـمِ اللهِ وَلَجْنـا، وَبِسْـمِ اللهِ خَـرَجْنـا، وَعَلـى رَبِّنـا تَوَكّلْـنا""", 1),
          newCard("""أذكار الخروج من المنزل
بِسْمِ اللهِ ، تَوَكَّلْـتُ عَلى اللهِ وَلا حَوْلَ وَلا قُـوَّةَ إِلاّ بِالله.
اللّهُـمَّ إِنِّـي أَعـوذُ بِكَ أَنْ أَضِـلَّ أَوْ أُضَـل ، أَوْ أَزِلَّ أَوْ أُزَل ، أَوْ أَظْلِـمَ أَوْ أَُظْلَـم ، أَوْ أَجْهَلَ أَوْ يُـجْهَلَ عَلَـيّ""", 1),
        ],
      ),


    );
  }
}

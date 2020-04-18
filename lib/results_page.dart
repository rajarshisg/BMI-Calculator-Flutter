import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_page.dart';
class ResultsPage extends StatelessWidget {
  //double bmi=weight/(height*height);

  String b="a";
  String res1="a";
  String res2="a";
  ResultsPage({@required this.b,@required this.res1,@required this.res2});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xFFF5F6F8),
        title: Text(
          'Your Result',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            fontFamily: 'VarelaRound',
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height:10.0),
          Container(
            //color: Colors.black,
              height:500.0,
              width:300.0,
              decoration: new BoxDecoration(
                  color: Colors.black,//ew Color.fromRGBO(255, 0, 0, 0.0),

                  borderRadius: new BorderRadius.only(
                    topLeft:  const  Radius.circular(30.0),
                    topRight: const  Radius.circular(30.0),
                    bottomLeft: const  Radius.circular(30.0),
                    bottomRight: const  Radius.circular(30.0),
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(res1==null?'a':res1,style: TextStyle(
                      fontSize: 25.0,
                      color: Color(0xFFF5F6F8),
                      fontFamily: 'VarelaRound,',
                      fontWeight:FontWeight.bold),),
                  //SizedBox(height:20.0),
                  Text(b==null?'b':b,style: TextStyle(
                    fontSize: 90.0,
                    fontFamily: 'VarelaRound',
                    fontWeight: FontWeight.w900,
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(res2==null?'a':res2,style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFFF5F6F8),
                        fontFamily: 'VarelaRound,'),),
                  ),
                ],
              )),
          Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              height: 80.0,
              width: double.infinity,
              child: GestureDetector(
                onTap: (){

                  route: Navigator.pop(context);
                },
                child: Center(
                  child: Text(
                    'Re-Calculate',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'VarelaRound'),
                  ),
                ),
              )),],
      ),

    );
  }
}



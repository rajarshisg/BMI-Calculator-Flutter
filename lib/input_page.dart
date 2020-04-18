import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'results_page.dart';
import 'calc_brain.dart';

const Color inactivecolor = Color(0xFF000000);
const Color activecolor = Color(0xFF263238);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecolor = inactivecolor;
  Color femalecolor = inactivecolor;
  int height = 175;
  int weight = 60;
  int age = 25;
  void colorselect(int gender) {
    if (gender == 1) {
      if (malecolor == activecolor) {
        malecolor = inactivecolor;
        femalecolor = inactivecolor;
      } else {
        malecolor = activecolor;
        femalecolor = inactivecolor;
      }
    } else {
      if (femalecolor == activecolor) {
        femalecolor = inactivecolor;
        malecolor = inactivecolor;
      } else {
        femalecolor = activecolor;
        malecolor = inactivecolor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        // backgroundColor: Colors.black,
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            fontFamily: 'VarelaRound',
            color: Colors.black,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'BMI Calculator',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'VarelaRound',
                  color: Color(0xFFF5F6F8),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xFF000000),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.report_problem,
                color: Color(0xFF0A0E21),
              ),
              title: Text('Caution'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              indent: 60.0,
              endIndent: 20.0,
              thickness: 0.6,
              color: Color(0xFF1D1E33),
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                color: Color(0xFF0A0E21),
              ),
              title: Text('FAQ'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              indent: 60.0,
              endIndent: 20.0,
              thickness: 0.6,
              color: Color(0xFF1D1E33),
            ),
            ListTile(
              leading: Icon(
                Icons.email,
                color: Color(0xFF0A0E21),
              ),
              title: Text('Send Feedback'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      colorselect(1);
                    });
                  },
                  child: ReusableCard(
                    colour: malecolor,
                    h: 150.0,
                    w: 170.0,
                    CardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.mars,
                            size: 80.0, color: Color(0xFFF5F6F8)),
                        SizedBox(height: 15.0),
                        Text(
                          'Male',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFFF5F6F8),
                              fontFamily: 'VarelaRound,'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      colorselect(2);
                    });
                  },
                  child: ReusableCard(
                    colour: femalecolor,
                    h: 150.0,
                    w: 170.0,
                    CardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.venus,
                            size: 80.0, color: Color(0xFFF5F6F8)),
                        SizedBox(height: 15.0),
                        Text('Female',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFFF5F6F8),
                                fontFamily: 'VarelaRound'))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ReusableCard(
              colour: Color(0xFF000000),
              h: 200.0,
              w: 380.0,
              CardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFFF5F6F8),
                        fontFamily: 'VarelaRound,'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        '$height',
                        style: TextStyle(
                          fontSize: 50.0,
                          fontFamily: 'VarelaRound',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFFF5F6F8),
                            fontFamily: 'VarelaRound,'),
                      ),
                    ],
                  ),
                  //SliderTheme(data:SliderTheme.of(context).copyWith(thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16.0),overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RawMaterialButton(
                        fillColor:Color(0xFFEB1555),
                        shape: CircleBorder(),
                        constraints: BoxConstraints.tightFor(
                          width:45.0,
                          height:45.0,
                        ),
                        child: Icon(FontAwesomeIcons.minus,color:Color(0xFFF5F6F8)),
                        onPressed: (){
                          setState(() {
                            height--;
                          });
                        },
                      ),
                      Slider(
                        value: height.toDouble(),
                        onChanged: (double newVal) {
                          setState(() {
                            height = newVal.round();
                          });
                        },
                        min: 80,
                        max: 280,
                        activeColor: Color(0xFFEB1555),
                        inactiveColor: Color(0xFF8D8E98),
                      ),
                      RawMaterialButton(
                        fillColor:Color(0xFFEB1555),
                        shape: CircleBorder(),
                        constraints: BoxConstraints.tightFor(
                          width:45.0,
                          height:45.0,
                        ),
                        child: Icon(FontAwesomeIcons.plus,color:Color(0xFFF5F6F8)),
                        onPressed: (){
                          setState(() {
                            height++;
                          });
                        },
                      ),],
                  )
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF000000),
                    h: 160.0,
                    w: 170.0,
                    CardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFFF5F6F8),
                              fontFamily: 'VarelaRound'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              '$weight',
                              style: TextStyle(
                                fontSize: 50.0,
                                fontFamily: 'VarelaRound',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              'kg',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Color(0xFFF5F6F8),
                                  fontFamily: 'VarelaRound,'),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RawMaterialButton(
                              fillColor:Color(0xFFEB1555),
                              shape: CircleBorder(),
                              constraints: BoxConstraints.tightFor(
                                width:45.0,
                                height:45.0,
                              ),
                              child: Icon(FontAwesomeIcons.minus,color:Color(0xFFF5F6F8)),
                              onPressed: (){
                                setState(() {
                                  if(weight==0)
                                    weight=0;
                                  else
                                    weight--;

                                });
                              },
                            ),
                            SizedBox(width: 20.0),
                            RawMaterialButton(
                              fillColor:Color(0xFFEB1555),
                              shape: CircleBorder(),
                              constraints: BoxConstraints.tightFor(
                                width:45.0,
                                height:45.0,
                              ),
                              child: Icon(FontAwesomeIcons.plus,color:Color(0xFFF5F6F8)),
                              onPressed: (){
                                setState(() {
                                  if(weight==180)
                                    weight=180;
                                  else
                                    weight++;
                                });
                              },),
                          ],
                        )
                      ],
                    ),
                  )),
              Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF000000),
                    h: 160.0,
                    w: 170.0,
                    CardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Age',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFFF5F6F8),
                              fontFamily: 'VarelaRound'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              '$age',
                              style: TextStyle(
                                fontSize: 50.0,
                                fontFamily: 'VarelaRound',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              'yrs',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Color(0xFFF5F6F8),
                                  fontFamily: 'VarelaRound,'),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RawMaterialButton(
                              fillColor:Color(0xFFEB1555),
                              shape: CircleBorder(),
                              constraints: BoxConstraints.tightFor(
                                width:45.0,
                                height:45.0,
                              ),
                              child: Icon(FontAwesomeIcons.minus,color:Color(0xFFF5F6F8)),
                              onPressed: (){
                                setState(() {
                                  if(age==0)
                                    age=0;
                                  else
                                    age--;
                                });
                              },
                            ),
                            SizedBox(width: 20.0),
                            RawMaterialButton(
                              fillColor:Color(0xFFEB1555),
                              shape: CircleBorder(),
                              constraints: BoxConstraints.tightFor(
                                width:45.0,
                                height:45.0,
                              ),
                              child: Icon(FontAwesomeIcons.plus,color:Color(0xFFF5F6F8)),
                              onPressed: (){
                                setState(() {
                                  if(age==120)
                                    age=120;
                                  else
                                    age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
            ],
          ),
          Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              height: 80.0,
              width: double.infinity,
              child: GestureDetector(

                onTap: (){setState(() {
                  CalcBrain calc=new CalcBrain(height:height,weight:weight);
                  route: Navigator.push(context,MaterialPageRoute(builder: (context) => ResultsPage(b:calc.Calculate(),res1:calc.Weight(),res2:calc.Message())));
                  height=175;
                  weight=60;
                  age=25;
                  malecolor=inactivecolor;
                  femalecolor=inactivecolor;
                });},
                child: Center(
                  child: Text(
                    'Calculate your BMI',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'VarelaRound'),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

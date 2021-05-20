import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var clrHead = Color.fromRGBO(68, 70, 79, 1);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return new Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: size.height / 4.2, left: size.width / 6),
                child: Column(
                  children: <Widget>[
                    Text(
                      'BEST OF',
                      style: TextStyle(
                          fontFamily: 'NewsRead',
                          fontSize: 35.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'THE DAY',
                      style: TextStyle(
                          fontFamily: 'NewsRead',
                          fontSize: 35.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 3.0,
                      width: 50.0,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Container(
                height: size.height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        image: AssetImage('assets/breakfast.jpg'),
                        fit: BoxFit.cover)),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
                    child: Container(
                      height: 75.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.0),
                          color: Colors.brown.withOpacity(0.3)),
                    ),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.fromLTRB(15.0, size.height / 20, 15.0, 10.0),
                    child: Material(
                      color: Colors.white.withOpacity(0.5),
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(25.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.white),
                          contentPadding:
                              EdgeInsets.only(left: 15.0, top: 15.0),
                          hintText: 'Search for recipes and channels',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    padding: EdgeInsets.only(top: 15.0, left: 15.0),
                    height: 160.0,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _foodCard(size),
                        SizedBox(width: 10.0),
                        _foodCard(size),
                        SizedBox(width: 10.0),
                        _foodCard(size),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: size.height / 35),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 25.0),
                child: Text(
                  'September 7',
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ),
              SizedBox(height: size.height / 80),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 25.0),
                child: Text(
                  'TODAY',
                  style: TextStyle(
                      fontFamily: 'NewsRead',
                      fontWeight: FontWeight.w900,
                      color: this.clrHead,
                      fontSize: 30.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _foodCard(var size) {
    return Container(
      width: size.width / 1.2,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 1,
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                      image: AssetImage('assets/balanced.jpg'))),
              height: 125.0,
              width: 100.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10.0),
                Container(
                    width: 120,
                    child: Text(
                      'Grilled Chicken with Fruit Salad',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: this.clrHead,
                        fontFamily: 'OpenSan',
                        fontSize: 14,
                      ),
                    )),
                SizedBox(height: 10.0),
                Container(
                  height: 2.0,
                  width: 75.0,
                  color: Color.fromRGBO(254, 195, 143, 0.3),
                ),
                SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 25.0,
                      width: 25.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.5),
                          image: DecorationImage(
                              image: AssetImage('assets/chris.jpg'))),
                    ),
                    SizedBox(width: 10.0),
                    Text('James Oliver',
                        style: TextStyle(
                          fontFamily: 'OpenSan',
                        ))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

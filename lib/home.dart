import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_app/foodDetails.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var imgs = [
    'assets/food.jpg',
    'assets/pasta.jpg',
    'assets/balanced.jpg',
    'assets/sandwich.jpg'
  ];
  var clrHead = Color.fromRGBO(68, 70, 79, 1);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                    image: AssetImage('assets/back.jpg'), fit: BoxFit.cover)),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                child: Container(
                  height: 75.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.0),
                      color: Colors.brown.withOpacity(0.3)),
                ),
              ),
            ),
          ),
          Container(
            child: Container(
              height: 140,
              margin: EdgeInsets.only(top: size.height / 1.33),
              padding: EdgeInsets.only(left: 25.0),
              child: ListView.separated(
                itemCount: this.imgs.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return _buildFoodCards(size, this.imgs[index]);
                },
                separatorBuilder: (context, index) => SizedBox(width: 10.0),
              ),
            ),
          ),
          Container(
            padding:
                EdgeInsets.only(top: size.height / 2.15, left: size.width / 15),
            child: Column(
              children: <Widget>[
                Text(
                  'ROASTED \nLAMB',
                  style: TextStyle(
                      fontFamily: 'NewsRead',
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                height: 115,
                padding:
                    EdgeInsets.fromLTRB(15.0, size.height / 20, 15.0, 20.0),
                child: Material(
                  color: Colors.white.withOpacity(0.5),
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(25.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                      contentPadding: EdgeInsets.only(left: 15.0, top: 18.0),
                      hintText: 'Search for recipes and channels',
                      hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: size.width / 1.4,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: size.height / 4.1, left: 25.0),
            child: Text(
              'His parents continued to question him. He didnt know what to say to them since they refused to believe the truth. ',
              style: TextStyle(color: Colors.white54, fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodCards(var size, String img) {
    return Container(
      width: size.width / 1.4,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: GestureDetector(
        onTap: () => {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => FoodDetailsPage()))
        },
        child: Card(
          color: Colors.white.withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 1,
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(image: AssetImage(img))),
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
                          color: Colors.white,
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
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(20.5),
                            image: DecorationImage(
                                image: AssetImage('assets/chris.jpg'))),
                      ),
                      SizedBox(width: 10.0),
                      Text('James Oliver',
                          style: TextStyle(
                              fontFamily: 'OpenSan', color: Colors.white))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

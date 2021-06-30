import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Accueil extends StatefulWidget {
  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height / 4,
                  viewportFraction: 1.0,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.ease,
                  enlargeCenterPage: true,
                  // onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  'assets/images/maxresdefault.jpg',
                  'assets/images/My-Airtel-App.jpg',
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Padding(
                        padding: EdgeInsets.only(
                          top: ScreenUtil().setHeight(7.0),
                          bottom: ScreenUtil().setHeight(7.0),
                          left: ScreenUtil().setHeight(10.0),
                          right: ScreenUtil().setHeight(10.0),
                        ),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(i),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.zero,
                                  topRight: Radius.zero,
                                  bottomLeft: Radius.zero,
                                  bottomRight: Radius.zero)),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: ScreenUtil().setHeight(7.0),
                  right: ScreenUtil().setHeight(7.0),
                ),
                child: Card(
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: ScreenUtil().setHeight(7.0),
                          right: ScreenUtil().setHeight(7.0),
                          left: ScreenUtil().setHeight(7.0)),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(
                              //   width: ScreenUtil().setHeight(15.0),
                              // ),
                              CircleAvatar(
                                backgroundColor: Colors.deepPurple,
                                child: Text(
                                  "D",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: ScreenUtil().setHeight(15.0),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("djumah risasi célestin",
                                        style: TextStyle(
                                            fontFamily: "DayRow",
                                            fontSize:
                                                ScreenUtil().setHeight(10.0),
                                            color: Colors.black)),
                                    Text("Prepayé - 974818977",
                                        style: TextStyle(
                                            fontFamily: "DayRow",
                                            fontSize:
                                                ScreenUtil().setHeight(10.0),
                                            color: Colors.black)),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Ajouter un compte",
                                            style: TextStyle(
                                                fontFamily: "DayRow",
                                                fontSize: ScreenUtil()
                                                    .setHeight(10.0),
                                                color: Colors.blue)),
                                        Text("GERER UN COMPTE",
                                            style: TextStyle(
                                                fontFamily: "DayRow",
                                                fontSize: ScreenUtil()
                                                    .setHeight(10.0),
                                                color: Colors.blue)),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Divider(
                            thickness: 0.5,
                            color: Colors.grey,
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(7.0)),
                            height: MediaQuery.of(context).size.height / 10,
                            child: Row(
                              // mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                soldeInformations("11,40", "UNI", "Solde"),
                                VerticalDivider(
                                  thickness: 0.5,
                                  color: Colors.grey,
                                ),
                                soldeInformations("0", "Mins", "Solde Appel"),
                                VerticalDivider(
                                  thickness: 0.5,
                                  color: Colors.grey,
                                ),
                                soldeInformations("0", "Ko", "Solde Internet"),
                              ],
                            ),
                          ),
                          Row(children: [
                            
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column soldeInformations(String solde, String detail, String type) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(solde,
            style: TextStyle(
                fontFamily: "Aclonica",
                fontWeight: FontWeight.bold,
                fontSize: ScreenUtil().setHeight(15.0),
                color: Colors.black)),
        Text(detail,
            style: TextStyle(
                fontFamily: "Aclonica",
                fontWeight: FontWeight.bold,
                fontSize: ScreenUtil().setHeight(13.0),
                color: Colors.red)),
        Text(type,
            style: TextStyle(
                fontFamily: "DayRow",
                fontWeight: FontWeight.bold,
                fontSize: ScreenUtil().setHeight(13.0),
                color: Colors.grey)),
      ],
    );
  }
}

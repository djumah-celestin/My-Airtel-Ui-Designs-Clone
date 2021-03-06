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
                                  Text("djumah risasi c??lestin",
                                      style: TextStyle(
                                          fontFamily: "DayRow",
                                          fontSize:
                                              ScreenUtil().setHeight(10.0),
                                          color: Colors.black)),
                                  Text("Prepay?? - 974818977",
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
                                              fontSize:
                                                  ScreenUtil().setHeight(10.0),
                                              color: Colors.blue)),
                                      Text("GERER UN COMPTE",
                                          style: TextStyle(
                                              fontFamily: "DayRow",
                                              fontSize:
                                                  ScreenUtil().setHeight(10.0),
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
                          padding: EdgeInsets.only(
                              bottom: ScreenUtil().setHeight(10.0)),
                          height: MediaQuery.of(context).size.height / 9,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: MediaQuery.of(context).size.height / 20,
                                width: MediaQuery.of(context).size.width / 2,
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey[900],
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                            ScreenUtil().setHeight(5.0)),
                                        bottomLeft: Radius.circular(
                                            ScreenUtil().setHeight(5.0)),
                                        topRight: Radius.circular(
                                            ScreenUtil().setHeight(5.0)),
                                        bottomRight: Radius.circular(
                                            ScreenUtil().setHeight(5.0)))),
                                child: Center(
                                  child: Text("CPT - Cr??dit de communication",
                                      style: TextStyle(
                                          fontSize: ScreenUtil().setHeight(10),
                                          color: Colors.white)),
                                )),
                            Text("Voir tous les soldes",
                                style: TextStyle(
                                    fontFamily: "DayRow",
                                    fontSize: ScreenUtil().setHeight(10.0),
                                    color: Colors.blue)),
                          ],
                        ),
                        Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top: ScreenUtil().setHeight(10.0)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Nos suggestions",
                                      style: TextStyle(
                                          fontFamily: "DayRow",
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              ScreenUtil().setHeight(15.0),
                                          color: Colors.black)),
                                  Text("TOUTES LES OFFRES",
                                      style: TextStyle(
                                          fontFamily: "DayRow",
                                          fontSize:
                                              ScreenUtil().setHeight(10.0),
                                          color: Colors.blue)),
                                ],
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(15.0),
                              ),
                              offresInformations("8 minutes + 25 minutes",
                                  "Validit?? 1 Jr", "50"),
                              SizedBox(
                                height: ScreenUtil().setHeight(10.0),
                              ),
                              offresInformations(
                                  "1 GB", "Validit?? 1 Jr", "100"),
                              SizedBox(
                                height: ScreenUtil().setHeight(10.0),
                              ),
                              offresInformations(
                                  "10 GB", "Validit?? 30 Jrs", "1 000"),
                              SizedBox(
                                height: ScreenUtil().setHeight(15.0),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              20,
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      decoration: BoxDecoration(
                                          color: Colors.blueGrey[900],
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                  ScreenUtil().setHeight(5.0)),
                                              bottomLeft: Radius.circular(
                                                  ScreenUtil().setHeight(5.0)),
                                              topRight: Radius.circular(
                                                  ScreenUtil().setHeight(5.0)),
                                              bottomRight: Radius.circular(
                                                  ScreenUtil()
                                                      .setHeight(5.0)))),
                                      child: Center(
                                        child: Text("AUTO-RECHARGE",
                                            style: TextStyle(
                                                fontSize:
                                                    ScreenUtil().setHeight(10),
                                                color: Colors.white)),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(15.0),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20.0),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: ScreenUtil().setHeight(7.0),
                right: ScreenUtil().setHeight(7.0),
              ),
              child: Card(
                child: Container(
                  padding: EdgeInsets.only(
                    left: ScreenUtil().setHeight(7.0),
                    top: ScreenUtil().setHeight(7.0),
                    right: ScreenUtil().setHeight(7.0),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Action rapides",
                              style: TextStyle(
                                  fontFamily: "DayRow",
                                  fontWeight: FontWeight.bold,
                                  fontSize: ScreenUtil().setHeight(15.0),
                                  color: Colors.black)),
                        ],
                      ),
                      Divider(thickness: 0.5, color: Colors.grey),
                      Container(
                        padding: EdgeInsets.only(
                            top: ScreenUtil().setHeight(10.0),
                            left: ScreenUtil().setHeight(10.0),
                            right: ScreenUtil().setHeight(10.0),
                            bottom: ScreenUtil().setHeight(10.0)),
                        height: MediaQuery.of(context).size.height / 2.25,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Card(
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Colors.white,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      ScreenUtil()
                                                          .setHeight(50.0))),
                                          child: CircleAvatar(
                                            radius:
                                                ScreenUtil().setHeight(27.5),
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              Icons.phone_android_rounded,
                                              size:
                                                  ScreenUtil().setHeight(30.0),
                                              color: Colors.black,
                                            ),
                                          )),
                                      Text("Recharger",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "DayRow",
                                              fontWeight: FontWeight.normal,
                                              fontSize:
                                                  ScreenUtil().setHeight(10.0),
                                              color: Colors.black)),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Card(
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Colors.white,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      ScreenUtil()
                                                          .setHeight(50.0))),
                                          child: CircleAvatar(
                                            radius:
                                                ScreenUtil().setHeight(27.5),
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              Icons.turned_in_not_outlined,
                                              size:
                                                  ScreenUtil().setHeight(30.0),
                                              color: Colors.black,
                                            ),
                                          )),
                                      Text("Paiement de factures",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "DayRow",
                                              fontWeight: FontWeight.normal,
                                              fontSize:
                                                  ScreenUtil().setHeight(10.0),
                                              color: Colors.black)),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Card(
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Colors.white,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      ScreenUtil()
                                                          .setHeight(50.0))),
                                          child: CircleAvatar(
                                            radius:
                                                ScreenUtil().setHeight(27.5),
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              Icons.date_range_outlined,
                                              size:
                                                  ScreenUtil().setHeight(30.0),
                                              color: Colors.black,
                                            ),
                                          )),
                                      Text("Acheter des forfaits",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "DayRow",
                                              fontWeight: FontWeight.normal,
                                              fontSize:
                                                  ScreenUtil().setHeight(10.0),
                                              color: Colors.black)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Card(
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Colors.white,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      ScreenUtil()
                                                          .setHeight(50.0))),
                                          child: CircleAvatar(
                                            radius:
                                                ScreenUtil().setHeight(27.5),
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              Icons.person,
                                              size:
                                                  ScreenUtil().setHeight(30.0),
                                              color: Colors.black,
                                            ),
                                          )),
                                      Text("Parraine et Gagne",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "DayRow",
                                              fontWeight: FontWeight.normal,
                                              fontSize:
                                                  ScreenUtil().setHeight(10.0),
                                              color: Colors.black)),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Card(
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Colors.white,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      ScreenUtil()
                                                          .setHeight(50.0))),
                                          child: CircleAvatar(
                                            radius:
                                                ScreenUtil().setHeight(27.5),
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              Icons.shopping_cart_outlined,
                                              size:
                                                  ScreenUtil().setHeight(30.0),
                                              color: Colors.black,
                                            ),
                                          )),
                                      Text("Produits et Services",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "DayRow",
                                              fontWeight: FontWeight.normal,
                                              fontSize:
                                                  ScreenUtil().setHeight(10.0),
                                              color: Colors.black)),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Card(
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Colors.white,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      ScreenUtil()
                                                          .setHeight(50.0))),
                                          child: CircleAvatar(
                                            radius:
                                                ScreenUtil().setHeight(27.5),
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              Icons.card_membership_outlined,
                                              size:
                                                  ScreenUtil().setHeight(30.0),
                                              color: Colors.black,
                                            ),
                                          )),
                                      Text("Envoyer de l'argent",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "DayRow",
                                              fontWeight: FontWeight.normal,
                                              fontSize:
                                                  ScreenUtil().setHeight(10.0),
                                              color: Colors.black)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Card(
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Colors.white,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      ScreenUtil()
                                                          .setHeight(50.0))),
                                          child: CircleAvatar(
                                            radius:
                                                ScreenUtil().setHeight(27.5),
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              Icons.card_membership,
                                              size:
                                                  ScreenUtil().setHeight(30.0),
                                              color: Colors.black,
                                            ),
                                          )),
                                      Text("Crediter son compte Airtel Money",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "DayRow",
                                              fontWeight: FontWeight.normal,
                                              fontSize:
                                                  ScreenUtil().setHeight(10.0),
                                              color: Colors.black)),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Card(
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Colors.white,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      ScreenUtil()
                                                          .setHeight(50.0))),
                                          child: CircleAvatar(
                                            radius:
                                                ScreenUtil().setHeight(27.5),
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              Icons.router_outlined,
                                              size:
                                                  ScreenUtil().setHeight(30.0),
                                              color: Colors.black,
                                            ),
                                          )),
                                      Text("Recharger Routeur Wifi",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "DayRow",
                                              fontWeight: FontWeight.normal,
                                              fontSize:
                                                  ScreenUtil().setHeight(10.0),
                                              color: Colors.black)),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Card(
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Colors.white,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      ScreenUtil()
                                                          .setHeight(50.0))),
                                          child: CircleAvatar(
                                            radius:
                                                ScreenUtil().setHeight(27.5),
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              Icons.star_border_outlined,
                                              size:
                                                  ScreenUtil().setHeight(30.0),
                                              color: Colors.black,
                                            ),
                                          )),
                                      Text("Favoris",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "DayRow",
                                              fontWeight: FontWeight.normal,
                                              fontSize:
                                                  ScreenUtil().setHeight(10.0),
                                              color: Colors.black)),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10.0),
            )
          ],
        ),
      ),
    );
  }

  Row offresInformations(String offre, String validite, String valeur) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.purple[300],
          child: Icon(
            Icons.where_to_vote_rounded,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: ScreenUtil().setHeight(15.0),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(offre,
                style: TextStyle(
                    fontFamily: "DayRow",
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil().setHeight(12.0),
                    color: Colors.black)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(validite,
                    style: TextStyle(
                        fontFamily: "DayRow",
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setHeight(9.0),
                        color: Colors.black)),
                Row(
                  children: [
                    Text(valeur,
                        style: TextStyle(
                            fontFamily: "DayRow",
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenUtil().setHeight(9.0),
                            color: Colors.black)),
                    SizedBox(
                      width: ScreenUtil().setWidth(5.0),
                    ),
                    Text("UNI",
                        style: TextStyle(
                            fontFamily: "DayRow",
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenUtil().setHeight(9.0),
                            color: Colors.red)),
                  ],
                )
              ],
            ),
          ],
        ))
      ],
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

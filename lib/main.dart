import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairtel/Screens/Accueil.dart';
import 'Screens/AirtelMoney.dart';

void main() => runApp(MyAirtel());

class MyAirtel extends StatelessWidget {
  TabBar get _tabBar => TabBar(
        tabs: [
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home),
                Text("ACCUEIL",
                    style: TextStyle(
                        fontFamily: "DayRow", fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.shop),
                Text("Airtel Money",
                    style: TextStyle(
                        fontFamily: "DayRow", fontWeight: FontWeight.w500)),
              ],
            ),
          )
        ],
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.transparent,
        labelColor: Colors.red,
      );

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Airtel',
        theme: ThemeData(
          primaryColor: Colors.red,
        ),
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
              drawer: Drawer(
                child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    Column(
                      children: [
                        DrawerHeader(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            // stops: [0.1, 0.4, 0.6, 0.9],
                            colors: [
                              Colors.red,
                              Colors.blue,
                              // Colors.yellow,
                              // Colors.teal,
                            ],
                          )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.red[300],
                                      child: Icon(
                                        Icons.person,
                                        size: ScreenUtil().setHeight(40),
                                      ),
                                      maxRadius: ScreenUtil().setHeight(30.0),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("djumah risasi célestin",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "DayRow")),
                                          Text("974818977",
                                              style: TextStyle(
                                                fontFamily: "DayRow",
                                                color: Colors.white,
                                              )),
                                        ],
                                      ))
                                ],
                              ),
                              Divider(
                                thickness: 1.0,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.person_outline_sharp,
                                  size: ScreenUtil().setHeight(40),
                                  color: Colors.blue,
                                )),
                            Expanded(
                              flex: 3,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: ListTile(
                                      title: Text(
                                        'Compte',
                                        style: TextStyle(
                                            fontFamily: "DayRow",
                                            fontWeight: FontWeight.w700),
                                      ),
                                      subtitle: Text(
                                        "Afficher l'historique des transactions",
                                        style: TextStyle(
                                            fontSize:
                                                ScreenUtil().setHeight(10.0)),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(thickness: 0.5, color: Colors.grey),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.notifications_none,
                                  size: ScreenUtil().setHeight(40),
                                  color: Colors.blue,
                                )),
                            Expanded(
                              flex: 3,
                              child: ListTile(
                                title: Text(
                                  'Boîte de notifications',
                                  style: TextStyle(
                                      fontFamily: "DayRow",
                                      fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text(
                                  "Voir toutes les notifications",
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setHeight(10.0)),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                        Divider(thickness: 0.5, color: Colors.grey),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.shop,
                                  size: ScreenUtil().setHeight(40),
                                  color: Colors.blue,
                                )),
                            Expanded(
                              flex: 3,
                              child: ListTile(
                                title: Text(
                                  'Boutiques Airtel',
                                  style: TextStyle(
                                      fontFamily: "DayRow",
                                      fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text(
                                  "Liste des boutiques Airtel Money",
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setHeight(10.0)),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                        Divider(thickness: 0.5, color: Colors.grey),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.phone_in_talk_outlined,
                                  size: ScreenUtil().setHeight(40),
                                  color: Colors.blue,
                                )),
                            Expanded(
                              flex: 3,
                              child: ListTile(
                                title: Text(
                                  'Aide et Assistance',
                                  style: TextStyle(
                                      fontFamily: "DayRow",
                                      fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text(
                                  "Nous sommes là pour vous aider",
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setHeight(10.0)),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                        Divider(thickness: 0.5, color: Colors.grey),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.card_membership,
                                  size: ScreenUtil().setHeight(40),
                                  color: Colors.blue,
                                )),
                            Expanded(
                              flex: 3,
                              child: ListTile(
                                title: Text(
                                  'Carte à grater',
                                  style: TextStyle(
                                      fontFamily: "DayRow",
                                      fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text(
                                  "Recharge by scratch",
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setHeight(10.0)),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                        Divider(thickness: 0.5, color: Colors.grey),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.settings,
                                  size: ScreenUtil().setHeight(40),
                                  color: Colors.blue,
                                )),
                            Expanded(
                              flex: 3,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: ListTile(
                                      title: Text(
                                        'Réglages',
                                        style: TextStyle(
                                            fontFamily: "DayRow",
                                            fontWeight: FontWeight.w700),
                                      ),
                                      subtitle: Text(
                                        "Paramètres de l'application, déconnexion",
                                        style: TextStyle(
                                            fontSize:
                                                ScreenUtil().setHeight(10.0)),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(thickness: 0.5, color: Colors.grey),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.info_outline,
                                  size: ScreenUtil().setHeight(40),
                                  color: Colors.blue,
                                )),
                            Expanded(
                              flex: 3,
                              child: ListTile(
                                title: Text(
                                  'A propos de nous',
                                  style: TextStyle(
                                      fontFamily: "DayRow",
                                      fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text(
                                  "A propos de nous",
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setHeight(10.0)),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                        Divider(thickness: 0.5, color: Colors.grey),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.share_rounded,
                                  size: ScreenUtil().setHeight(40),
                                  color: Colors.blue,
                                )),
                            Expanded(
                                flex: 3,
                                child: ListTile(
                                  title: Text(
                                    'Parraine et Gargne',
                                    style: TextStyle(
                                        fontFamily: "DayRow",
                                        fontWeight: FontWeight.w700),
                                  ),
                                )),
                          ],
                        ),
                        Divider(thickness: 0.5, color: Colors.grey),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.star_half_rounded,
                                  size: ScreenUtil().setHeight(40),
                                  color: Colors.blue,
                                )),
                            Expanded(
                                flex: 3,
                                child: ListTile(
                                  title: Text(
                                    'Evaluez nous',
                                    style: TextStyle(
                                        fontFamily: "DayRow",
                                        fontWeight: FontWeight.w700),
                                  ),
                                )),
                          ],
                        ),
                        Divider(thickness: 0.5, color: Colors.grey),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: ScreenUtil().setHeight(30.0),
                            ),
                            Text(
                              "Version 1.3.8",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              appBar: AppBar(
                bottom: PreferredSize(
                    child: ColoredBox(color: Colors.white, child: _tabBar),
                    preferredSize: _tabBar.preferredSize),
                title: Text('airtel', style: TextStyle(fontFamily: "Aclonica")),
                actions: [
                  Icon(Icons.notifications),
                  SizedBox(
                    width: ScreenUtil().setWidth(15.0),
                  )
                ],
              ),
              body: TabBarView(
                children: [
                  Center(
                    child: Accueil(),
                  ),
                  Center(
                    child: AirtelMoney(),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

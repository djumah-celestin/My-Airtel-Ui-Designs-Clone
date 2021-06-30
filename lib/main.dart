import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyAirtel());

class MyAirtel extends StatelessWidget {
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
        home: Scaffold(
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
                        stops: [0.1, 0.4, 0.6, 0.9],
                        colors: [
                          Colors.red,
                          Colors.blue,
                          Colors.yellow,
                          Colors.teal,
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
                                  maxRadius: ScreenUtil().setHeight(35.0),
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
                                          )),
                                      Text("+243974818977",
                                          style: TextStyle(
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
                          child: ListTile(
                            title: Text('Compte', style: TextStyle(),),
                            subtitle: Text(
                              "Afficher l'historique des transactions",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            onTap: () {
                              // Update the state of the app
                              // ...
                              // Then close the drawer
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('airtel', style: TextStyle(fontFamily: "Aclonica")),
            actions: [
              Icon(Icons.notifications),
              SizedBox(
                width: ScreenUtil().setWidth(15.0),
              )
            ],
          ),
          body: Center(
            child: Text('My Airtel RDC Clone'),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AirtelMoney extends StatefulWidget {
  @override
  _AirtelMoneyState createState() => _AirtelMoneyState();
}

class _AirtelMoneyState extends State<AirtelMoney> {
  String amount = "0";

  buttonPressed(String buttonText) {
    setState(() {
      if (amount == "0" || (amount == ".")) {
        amount = buttonText;
      } else {
        amount = amount + buttonText;
      }
    });
  }

  Widget buildButton(String buttonText, double buttonHeight) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,

        // ignore: deprecated_member_use
        child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: BorderSide(width: 1, style: BorderStyle.none),
            ),
            // padding: EdgeInsets.all(16.0),
            onPressed: () => buttonPressed(buttonText),
            child: Text(
              buttonText,
              style: TextStyle(
                  fontFamily: "DayRow",
                  fontSize: ScreenUtil().setHeight(45.0),
                  fontWeight: FontWeight.normal,
                  color: Colors.grey),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    "Veuillez saisir votre code PIN Airtel Money",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "DayRow",
                        fontSize: ScreenUtil().setHeight(20.0),
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                    maxLines: 2,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: ScreenUtil().setHeight(15.0),
                        right: ScreenUtil().setHeight(15.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Text(
                            amount,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "DayRow",
                                fontSize: ScreenUtil().setHeight(45.0),
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                amount = amount.substring(0, amount.length - 1);
                              });
                              if (amount == "") {
                                setState(() {
                                  amount = "0";
                                });
                              }
                            },
                            icon: Icon(Icons.clear,
                                size: ScreenUtil().setSp(40),
                                color: Colors.grey))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  children: [
                    Table(
                      children: [
                        TableRow(children: [
                          buildButton("1", 1),
                          buildButton("2", 1),
                          buildButton("3", 1),
                        ]),
                        TableRow(children: [
                          buildButton("4", 1),
                          buildButton("5", 1),
                          buildButton("6", 1),
                        ]),
                        TableRow(children: [
                          buildButton("7", 1),
                          buildButton("8", 1),
                          buildButton("9", 1),
                        ]),
                        TableRow(children: [
                          buildButton("", 1),
                          buildButton("0", 1),
                          buildButton("", 1),
                        ])
                      ],
                    ),
                    Text("PIN oublié ?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: ScreenUtil().setHeight(15.0),
                            color: Colors.blue)),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: double.infinity,
              child: Expanded(
                  child: FlatButton(
                      color: Colors.blue[300],
                      onPressed: () {},
                      child: Text("Procedez",
                          style: TextStyle(
                            color: Colors.white,
                          )))),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Button extends StatelessWidget {
  String bName='';
  String func='';
  double left=40;
  dynamic color= Colors.green;
  Button(this.bName,this.func,this.color,this.left);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: left, right: 0, top: 20),
      child: Center(
          child: MaterialButton(
            height: 35.0,
            minWidth: 70.0,
            color: color,
            textColor: Colors.white,
            child: Text(
              bName,
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            onPressed: () {
              launch(func);
            },
          )),
    );
  }
}

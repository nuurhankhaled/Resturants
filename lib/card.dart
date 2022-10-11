import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:tenresturants/button.dart';
import 'package:url_launcher/url_launcher.dart';

class Cards extends StatelessWidget {
  var size,width,height;
  late double left;
  String name='';
  String pic='';
  String type='';
  dynamic x  =  Text("");
  dynamic x1 =  Text("");
  dynamic x2 =  Text("");
  Cards(this.name,this.pic,this.type,this.x, this.x1,this.x2);
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    left = width * 0.15;
    return  Container(
      width: width*0.88,
      height: 205,
      child: Padding(
        padding: const EdgeInsets.only(top: 30,bottom: 5),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: left),
              child: Container(
                width: width * 0.8,
                height: 160,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        spreadRadius: 0.2,
                      )
                    ],
                    borderRadius: BorderRadius.circular(35)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18, left: 100),
                      child:Text("   "+type,
                        style: TextStyle(
                          fontSize:12,
                          fontFamily: "fred",
                          color: Colors.blue,
                        ),),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 90),
                      child: Text(name,
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "pac",
                          color: Colors.black87,
                        ),),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 50,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            x,
                            x1,
                            x2,
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.035,top: 5),
              child: Container(
                width: width * 0.25,
                height: height * 0.16,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      spreadRadius: 5,
                    )
                  ],
                  image: DecorationImage(
                    image: AssetImage(
                      pic,
                    ),
                    //scale: 1,
                  ),
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

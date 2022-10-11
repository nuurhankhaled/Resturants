import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenresturants/button.dart';
import 'package:tenresturants/card.dart';

class Home extends StatelessWidget {
  var size,width,height;
  late double left;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    left = width * 0.15;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: ListView(
          children: [
            Cards("Pizza Pronto","images/masimo.png","Pizza Resturant",
                Button("WAPP","http://wa.me//201286999367", Colors.green,65),
                Button("CALL","tel:01286999367", Colors.indigo,15),
                Button("MAP","https://maps.google.com/?q=30.591107303020078, 32.27519992364673", Colors.blueAccent,15)),
            Cards("Bab El-Sharq","images/bab.jpg","Syrian Resturant",
                Button("WAPP","http://wa.me//201277233582", Colors.green,65),
                Button("CALL","tel:01277233582", Colors.indigo,15),
                Button("MAP","https://maps.google.com/?q=30.045494962746734, 31.232191170925518", Colors.blueAccent,15)),
            Cards("Jeeda's","images/jeeda.jpg","Resturant",
                Button("WAPP","http://wa.me//201030932835", Colors.green,65),
                Button("CALL","tel:01030932835", Colors.indigo,15),
                Button("MAP","https://maps.google.com/?q=31.19675841168952, 29.903789395840512", Colors.blueAccent,15)),
            Cards("Wild Burger","images/wild.jpg","Fast Food Resturant",
                Button("WAPP","http://wa.me//201001320413", Colors.green,65),
                Button("CALL","tel:01001320413", Colors.indigo,15),
                Button("MAP","https://maps.google.com/?q=29.955238886028717, 32.5422620187463", Colors.blueAccent,15)),
            Cards("Cairoma","images/cairoma.jpg","Resturant",
                Button("WAPP","http://wa.me//201001320413", Colors.green,65),
                Button("CALL","tel:01001320413", Colors.indigo,15),
                Button("MAP","https://maps.google.com/?q=30.045854, 31.239318", Colors.blueAccent,15)),
            Cards("Spectra","images/spectra.jpg","Resturant",
                Button("WAPP","http://wa.me//20223923228", Colors.green,65),
                Button("CALL","tel:0223923228", Colors.indigo,15),
                Button("MAP","https://maps.google.com/?q=30.1662477434054, 31.60316153895974", Colors.blueAccent,15)),
            Cards("Burger King","images/bking.jpg","Resturant",
                Button("WAPP","http://wa.me//20224886943", Colors.green,65),
                Button("CALL","tel:0224886943", Colors.indigo,15),
                Button("MAP","https://maps.google.com/?q=30.048924957488108, 31.200313576821845", Colors.blueAccent,15)),
            Cards("Buffalo Burger","images/buffalo.jpg","Resturant",
                Button("WAPP","http://wa.me//20219914", Colors.green,65),
                Button("CALL","tel:0219914", Colors.indigo,15),
                Button("MAP","https://maps.google.com/?q=29.995634, 31.151327", Colors.blueAccent,15)),
          ],
        ),
      ),
    );
  }
}

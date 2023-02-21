import 'package:flutter/material.dart';

Widget albumPage({required BuildContext context}) {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        rowPictures(),
        SizedBox(height: 10,),
        rowPictures(),
        SizedBox(height: 10,),
        rowPictures(),
        SizedBox(height: 10,),
        rowPictures(),
        SizedBox(height: 10,),
        rowPictures(),
        SizedBox(height: 10,),
        rowPictures(),
        SizedBox(height: 10,),
        rowPictures(),
        SizedBox(height: 10,),
        rowPictures(),
        SizedBox(height: 10,),
        rowPictures(),
        SizedBox(height: 10,),
        rowPictures(),
        SizedBox(height: 10,),
        rowPictures(),
        SizedBox(height: 10,),
        rowPictures(),
      ],
    ),
  );
}

Widget rowPictures() {
  return Row(
    children: <Widget>[
      Expanded(child: albumCards(text: 'images/paysage1.jpeg')),
      SizedBox(width: 10,),
      Expanded(child: albumCards(text: 'images/paysage2.jpeg'),),
    ],
  );
}

Widget albumCards({required String text}) {
  return Card(
    child: Column(
      children: <Widget>[
        Image.asset(text),
        Text("Nom de l'album"),
      ],
    ),
  );
}
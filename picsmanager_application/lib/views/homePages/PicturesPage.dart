import 'package:flutter/material.dart';

Widget picturesPage({required BuildContext context}) {
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
      Expanded(child: Image.asset('images/paysage1.jpeg'),),
      SizedBox(width: 10,),
      Expanded(child: Image.asset('images/paysage2.jpeg'),),
      SizedBox(width: 10,),
      Expanded(child: Image.asset('images/paysage3.jpeg'),),
    ],
  );
}
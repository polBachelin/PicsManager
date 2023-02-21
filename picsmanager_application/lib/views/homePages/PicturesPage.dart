import 'package:flutter/material.dart';

Widget PicturesPage({required BuildContext context}) {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        RowPictures(),
        SizedBox(height: 10,),
        RowPictures(),
        SizedBox(height: 10,),
        RowPictures(),
        SizedBox(height: 10,),
        RowPictures(),
        SizedBox(height: 10,),
        RowPictures(),
        SizedBox(height: 10,),
        RowPictures(),
        SizedBox(height: 10,),
        RowPictures(),
        SizedBox(height: 10,),
        RowPictures(),
        SizedBox(height: 10,),
        RowPictures(),
        SizedBox(height: 10,),
        RowPictures(),
        SizedBox(height: 10,),
        RowPictures(),
        SizedBox(height: 10,),
        RowPictures(),
      ],
    ),
  );
}

Widget RowPictures() {
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
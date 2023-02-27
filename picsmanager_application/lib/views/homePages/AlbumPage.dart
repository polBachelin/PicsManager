import 'package:flutter/material.dart';

Widget albumPage({required BuildContext context}) {
  return Container(
    alignment: Alignment.centerRight,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    color: Colors.white,
    padding: paddingDimension(context: context),
    child: Container(
      width: double.infinity,
      height: double.infinity,
      child: scrollAlbum(),
    ),
  );
}

Widget scrollAlbum() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        rowPictures(),
        SizedBox(
          height: 10,
        ),
        rowPictures(),
        SizedBox(
          height: 10,
        ),
        rowPictures(),
        SizedBox(
          height: 10,
        ),
        rowPictures(),
        SizedBox(
          height: 10,
        ),
        rowPictures(),
        SizedBox(
          height: 10,
        ),
        rowPictures(),
        SizedBox(
          height: 10,
        ),
        rowPictures(),
        SizedBox(
          height: 10,
        ),
        rowPictures(),
        SizedBox(
          height: 10,
        ),
        rowPictures(),
        SizedBox(
          height: 10,
        ),
        rowPictures(),
        SizedBox(
          height: 10,
        ),
        rowPictures(),
        SizedBox(
          height: 10,
        ),
        rowPictures(),
      ],
    ),
  );
}

Widget rowPictures() {
  return Row(
    children: <Widget>[
      Expanded(child: albumCards(text: 'assets/images/paysage1.jpeg')),
      SizedBox(
        width: 10,
      ),
      Expanded(
        child: albumCards(text: 'assets/images/paysage1.jpeg'),
      ),
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

EdgeInsets paddingDimension({required BuildContext context}) {
  return EdgeInsets.fromLTRB(
    MediaQuery.of(context).size.width * 0.02,
    0,
    MediaQuery.of(context).size.width * 0.02,
    0,
  );
}

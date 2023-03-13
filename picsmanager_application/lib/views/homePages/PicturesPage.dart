import 'package:flutter/material.dart';

Widget picturesPage({required BuildContext context}) {
  return Container(
    alignment: Alignment.centerRight,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    color: Colors.white,
    padding: paddingDimension(context: context),
    child: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: scrollPictures(),
    ),
  );
}

Widget scrollPictures() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        const SizedBox(height: 10),
        rowPictures(),
        const SizedBox(height: 10),
        rowPictures(),
        const SizedBox(height: 10),
        rowPictures(),
        const SizedBox(height: 10),
        rowPictures(),
        const SizedBox(height: 10),
        rowPictures(),
        const SizedBox(height: 10),
        rowPictures(),
        const SizedBox(height: 10),
        rowPictures(),
        const SizedBox(height: 10),
        rowPictures(),
        const SizedBox(height: 10),
        rowPictures(),
        const SizedBox(height: 10),
        rowPictures(),
        const SizedBox(height: 10),
        rowPictures(),
        const SizedBox(height: 10),
        rowPictures(),
      ],
    ),
  );
}

Widget rowPictures() {
  return Row(
    children: <Widget>[
      Expanded(
        child: Image.asset('assets/images/paysage1.jpeg'),
      ),
      SizedBox(
        width: 10,
      ),
      Expanded(
        child: Image.asset('assets/images/paysage2.jpeg'),
      ),
      SizedBox(
        width: 10,
      ),
      Expanded(
        child: Image.asset('assets/images/paysage3.jpeg'),
      ),
    ],
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

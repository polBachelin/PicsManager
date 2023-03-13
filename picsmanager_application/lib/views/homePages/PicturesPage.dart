import 'package:flutter/material.dart';

Widget picturesPage({required BuildContext context}) {
  return Container(
    alignment: Alignment.centerRight,
    width: double.infinity,
    height: double.infinity,
    color: Colors.white,
    child: scrollPictures(context: context),
  );
}

Widget scrollPictures({required BuildContext context}) {
  return Column(
    children: [
      SizedBox(height: 10),
      Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                icon: IconButton(
                  onPressed: null,
                  icon: const Icon(Icons.search),
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          IconButton(
            onPressed: null,
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      SizedBox(height: 10),
      Expanded(
        child: SingleChildScrollView(
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
        ),
      )
    ],
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

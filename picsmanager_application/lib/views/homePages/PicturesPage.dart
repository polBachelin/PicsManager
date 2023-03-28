import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:picsmanager_application/models/core/Picture.dart';
import 'package:picsmanager_application/providers/AuthenticationProvider.dart';
import 'package:picsmanager_application/providers/PicturePageProvider.dart';
import 'package:provider/provider.dart';

Widget picturesPage({required BuildContext context}) {
  final token = Provider.of<AuthenticationProvider>(context, listen: true).getToken;

  return Container(
    alignment: Alignment.centerRight,
    width: double.infinity,
    height: double.infinity,
    color: Colors.white,
    child: scrollPictures(context: context, token: token),
  );
}

Widget scrollPictures({required BuildContext context, required String token}) {
  final controller = TextEditingController();
  return Column(
    children: [
      SizedBox(height: 10),
      Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                icon: IconButton(
                  onPressed: () async {
                    await Provider.of<PicturePageProvider>(context, listen: false).startTrendingByName(token, controller.value.text);
                  },
                  icon: const Icon(Icons.search),
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          IconButton(
            onPressed: () { controller.clear(); },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      SizedBox(height: 10),
      Expanded(
        child: SingleChildScrollView(
            child: Selector<PicturePageProvider, List<Picture>>(
              selector: (_, provider) => provider.pictures,
              shouldRebuild: (previous, next) => true,
              builder: (_, data, __){
                print("image selector ${data.length}");
                return Wrap(
                  children: data.map((e) =>
                      cardPicture(context: context, picture: e)
                  ).toList()
                );
              },
            )
        ),
      )
    ],
  );
}

Widget cardPicture({required BuildContext context, required Picture picture}) {
  return Container(
      color: Colors.red,
      width: MediaQuery.of(context).size.width * 0.33,
      child: picture.visualPicture,
  
  );
}

EdgeInsets paddingDimension({required BuildContext context}) {
  return EdgeInsets.fromLTRB(
    MediaQuery
        .of(context)
        .size
        .width * 0.02,
    0,
    MediaQuery
        .of(context)
        .size
        .width * 0.02,
    0,
  );
}

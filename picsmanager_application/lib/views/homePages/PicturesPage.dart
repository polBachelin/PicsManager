import 'package:flutter/material.dart';
import 'package:picsmanager_application/models/core/Picture.dart';
import 'package:picsmanager_application/providers/AuthenticationProvider.dart';
import 'package:picsmanager_application/providers/PicturePageProvider.dart';
import 'package:provider/provider.dart';

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
                  onPressed: () {
                    // TODO FILL WITH QUERY
                    final token = Provider.of<AuthenticationProvider>(context, listen: true).getToken;
                    Provider.of<PicturePageProvider>(context, listen: false).startTrendingByName(token, "");
                  },
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
            child: Selector<PicturePageProvider, List<Picture>>(
              selector: (_, provider) => provider.pictures,
              builder: (_, data, __){

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
  return SizedBox(
    width: MediaQuery
        .of(context)
        .size
        .width * 0.33,
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

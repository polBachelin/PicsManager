import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:picsmanager_application/models/core/Album.dart';
import 'package:picsmanager_application/providers/AlbumProvider.dart';
import 'package:picsmanager_application/providers/AuthenticationProvider.dart';
import 'package:picsmanager_application/providers/PicturePageProvider.dart';
import 'package:provider/provider.dart';

Widget albumPage({required BuildContext context}) {
  return SizedBox(
    width: double.infinity,
    height: double.infinity,
    child: scrollAlbum(context),
  );
}

Widget scrollAlbum(BuildContext context) {
  final controller = TextEditingController();
  final token = Provider.of<AuthenticationProvider>(context, listen: true).getToken;

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
                  onPressed: () {
                    Provider.of<AlbumProvider>(context, listen: false).startTrendingByName(token, controller.value.text);
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
          child: Selector<AlbumProvider, List<Album>>(
            selector: (_, provider) => provider.albums,
            shouldRebuild: (previous, next) => true,
            builder: (_, data, __){
              final children = data.map((e) => albumCards(
                  context: context,
                  source: e
                )
              ).toList();
              children.insert(0, const SizedBox(height: 10));

              return Wrap(
                children: children
              );
            },
          )
        ),
      ),
    ],
  );
}

Widget albumCards({required BuildContext context, required Album source}) {
  return ElevatedButton(
    onPressed: (){
      // TODO rediriger vers PicturesPage en affichant uniquement les images de cette album
    },
    onLongPress: (){
      // TODO possibilité de partagé l'album ou de le modifier
    },
    child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.49,
      child: Card(
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: Column(
          children: <Widget>[
            source.image,
            Text(source.name),
          ],
        ),
      ),
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

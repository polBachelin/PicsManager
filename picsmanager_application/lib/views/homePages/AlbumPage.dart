import 'package:flutter/material.dart';
import 'package:picsmanager_application/models/core/Album.dart';
import 'package:picsmanager_application/providers/AlbumProvider.dart';
import 'package:provider/provider.dart';

Widget albumPage({required BuildContext context}) {
  return SizedBox(
    width: double.infinity,
    height: double.infinity,
    child: scrollAlbum(context),
  );
}

Widget scrollAlbum(BuildContext context) {
  AlbumProvider albumProvider =
      Provider.of<AlbumProvider>(context, listen: false);
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
          child: Selector<AlbumProvider, List<Album>>(
            selector: (_, provider) => provider.albums,
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
  return Container(
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

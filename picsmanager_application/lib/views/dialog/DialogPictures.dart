import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picsmanager_application/providers/AlbumProvider.dart';
import 'package:picsmanager_application/providers/InsertAlbumProvider.dart';
import 'package:picsmanager_application/providers/PicturePageProvider.dart';
import 'package:picsmanager_application/ressources/Network.dart';
import 'package:provider/provider.dart';

import '../../models/core/Album.dart';

void dialogPicturesInAlbum(
    {required BuildContext context, required String token}) {
  showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: insertInAlbum(context, token),
        );
      });
}

Widget insertInAlbum(BuildContext context, String token) {
  AlbumProvider albumProvider =
      Provider.of<AlbumProvider>(context, listen: false);
  InsertAlbumProvider insertAlbumProvider =
      Provider.of<InsertAlbumProvider>(context, listen: false);
  insertAlbumProvider.valueId = albumProvider.albums.first.id;

  return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.75,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(width: 50),
              Selector<InsertAlbumProvider, String>(
                selector: (_, provider) => provider.valueId,
                builder: (_, data, __) {
                  return DropdownButton<String>(
                    value: data,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? value) {
                      insertAlbumProvider.valueId = value!;
                    },
                    items: albumProvider.albums
                        .map<DropdownMenuItem<String>>((Album value) {
                      return DropdownMenuItem<String>(
                        value: value.id,
                        child: Text(value.name),
                      );
                    }).toList(),
                  );
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    Provider.of<PicturePageProvider>(context, listen: false);
                  },
                  child: Text("OK"))
            ],
          ),
          ElevatedButton(onPressed: () {}, child: Text("Delete Pictures"))
        ],
      ));
}

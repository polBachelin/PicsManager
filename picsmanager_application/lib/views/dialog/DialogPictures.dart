import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picsmanager_application/models/core/User.dart';
import 'package:picsmanager_application/protobuf/service/picture_service.pb.dart';
import 'package:picsmanager_application/providers/AlbumProvider.dart';
import 'package:picsmanager_application/providers/InsertAlbumProvider.dart';
import 'package:picsmanager_application/providers/ListUserProvider.dart';
import 'package:picsmanager_application/providers/PicturePageProvider.dart';
import 'package:picsmanager_application/ressources/Network.dart';
import 'package:provider/provider.dart';

import '../../models/core/Album.dart';

void dialogPicturesInAlbum(
    {required BuildContext context,
    required String token,
    required PictureMessage picture}) {
  showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: insertInAlbum(context, token, picture),
        );
      });
}

Widget insertInAlbum(
    BuildContext context, String token, PictureMessage source) {
  AlbumProvider albumProvider =
      Provider.of<AlbumProvider>(context, listen: false);
  InsertAlbumProvider insertAlbumProvider =
      Provider.of<InsertAlbumProvider>(context, listen: false);
  insertAlbumProvider.valueId = albumProvider.albums.first.id;
  ListUserProvider listUserProvider =
      Provider.of<ListUserProvider>(context, listen: false);
  PicturePageProvider provider =
      Provider.of<PicturePageProvider>(context, listen: false);
  final controller = TextEditingController(text: source.name);
  var userController = TextEditingController();
  String? selectedId = null;

  return Container(
    width: double.infinity,
    height: double.infinity,
    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                  onPressed: () async {
                    await NetworkManager(token)
                        .pictureRepository
                        .setAlbum(source, insertAlbumProvider.valueId);
                    Navigator.pop(context, true);
                  },
                  child: Text("OK"))
            ],
          ),
          ElevatedButton(
            onPressed: () async {
              await NetworkManager(token)
                  .pictureRepository
                  .deletePicture(source.imageId);
              provider.deleteImageFromList(source.imageId);
              Navigator.pop(context, true);
            },
            child: Text("Delete Pictures"),
          ),
          Container(
            width: 300,
            height: 500,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Titre du dialog
                  SizedBox(height: 10),
                  Text("Picture ${source.name}"),
                  //Premier widget pour renommer le dossier
                  Container(
                    width: 300,
                    height: 100,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text("renommer la photo :"),
                        TextFormField(
                          controller: controller,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 100,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text("Partager avec : "),
                        TextFormField(
                          controller: userController,
                          onChanged: (String value) {
                            listUserProvider.startTrendingByName(token, value);
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 300,
                    alignment: Alignment.center,
                    child: SingleChildScrollView(
                      child: Selector<ListUserProvider, List<User>>(
                          selector: (_, provider) => provider.users,
                          shouldRebuild: (previous, next) => true,
                          builder: (_, data, __) {
                            return (data.isEmpty)
                                ? Text("No result")
                                : ListView(
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    children: data
                                        .map(
                                          (e) => ListTile(
                                            title: Text(e.email),
                                            onTap: () {
                                              userController.text = e.email;
                                              selectedId = e.id;
                                            },
                                          ),
                                        )
                                        .toList());
                          }),
                    ),
                  ),
                  OutlinedButton(
                      onPressed: () async {
                        final obj = NetworkManager(token);
                        await obj.pictureRepository.setName(source, controller.value.text);
                        if (selectedId != null) {
                          await obj.pictureRepository.sharedPicture(source.imageId, selectedId ?? "");
                        }
                      },
                      child: Text("save"))
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

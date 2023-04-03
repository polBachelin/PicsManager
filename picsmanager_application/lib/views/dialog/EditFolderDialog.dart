import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:picsmanager_application/models/core/Album.dart';
import 'package:picsmanager_application/models/core/Picture.dart';
import 'package:picsmanager_application/models/core/User.dart';
import 'package:picsmanager_application/protobuf/service/album_service.pb.dart';
import 'package:picsmanager_application/providers/AuthenticationProvider.dart';
import 'package:picsmanager_application/providers/InsertNewPictureForAlbum.dart';
import 'package:picsmanager_application/providers/ListUserProvider.dart';
import 'package:picsmanager_application/providers/PicturePageProvider.dart';
import 'package:picsmanager_application/ressources/Network.dart';
import 'package:picsmanager_application/views/dialog/editFolderWidget/renameFolderWidget.dart';
import 'package:provider/provider.dart';

void EditFolderDialog({required BuildContext context, required Album album}) {
  AuthenticationProvider token =
      Provider.of<AuthenticationProvider>(context, listen: false);
  ListUserProvider listUserProvider =
      Provider.of<ListUserProvider>(context, listen: false);
  // PicturePageProvider picturePageProvider = Provider.of<PicturePageProvider>(context, listen: false);
  // picturePageProvider.startTrendingByAlbum(token.getToken, album);
  // InsertNewPictureForAlbum insertNewPictureForAlbum = Provider.of<InsertNewPictureForAlbum>(context);
  // insertNewPictureForAlbum.picture = picturePageProvider.pictures.first;
  var controller = TextEditingController(text: album.name);
  var userController = TextEditingController();
  List<int> selected = List.empty();

  showDialog(
      context: context,
      builder: (context) {
        return Selector<PicturePageProvider, List<Picture>>(
          selector: (_, provider) => provider.pictures,
          shouldRebuild: (previous, next) => true,
          builder: (_, data, __) {
            return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // Titre du dialog
                        SizedBox(height: 10),
                        Text("Album ${album.name}"),
                        //Premier widget pour renommer le dossier
                        Container(
                          width: 300,
                          height: 100,
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Text("renommer le dossier :"),
                              TextFormField(
                                controller: controller,
                              )
                            ],
                          ),
                        ),
                        // Changer l'image du dossier
                        // Row(
                        //   children: [
                        //     Selector<InsertNewPictureForAlbum, Picture>(
                        //       selector: (_, provider,) => provider.picture,
                        //       builder: (_, data, __) {
                        //         return DropdownButton<String>(
                        //           value: data.id,
                        //             items: picturePageProvider.pictures
                        //             .map<DropdownMenuItem<String>>((Picture picture) {
                        //               return DropdownMenuItem<String>(
                        //                 value: picture.id,
                        //                   child: Text(picture.name),
                        //               );
                        //             }).toList(),
                        //             onChanged: (String? value) {
                        //               insertNewPictureForAlbum.picture.name = value!;
                        //             },);
                        //       },
                        //     )
                        //   ],
                        // ),
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
                                  listUserProvider.startTrendingByName(
                                      token.getToken, value);
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
                                                  },
                                                ),
                                              )
                                              .toList());
                                }),
                          ),
                        ),
                        OutlinedButton(
                            onPressed: () async {
                              await NetworkManager(token.getToken)
                                  .albumRepository
                                  .updateAlbum(
                                      album.raw, controller.text, selected);
                            },
                            child: Text("save"))
                      ],
                    ),
                  ),
                ));
          },
        );
      });
}

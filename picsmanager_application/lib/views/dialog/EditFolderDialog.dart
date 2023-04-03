import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:picsmanager_application/models/core/Album.dart';
import 'package:picsmanager_application/models/core/Picture.dart';
import 'package:picsmanager_application/models/core/User.dart';
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
  // PicturePageProvider picturePageProvider = Provider.of<PicturePageProvider>(context, listen: false);
  // picturePageProvider.startTrendingByAlbum(token.getToken, album);
  // InsertNewPictureForAlbum insertNewPictureForAlbum = Provider.of<InsertNewPictureForAlbum>(context);
  // insertNewPictureForAlbum.picture = picturePageProvider.pictures.first;
  final controller = TextEditingController(text: album.name);
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
                    height: 200,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text("Partager avec : "),
                        TextFormField(
                          onChanged: (String value) {
                            // Provider.of<ListUserProvider>(context)
                            //     .startTrendingByName(
                            //         token.getToken, value);
                          },
                        ),
                         SingleChildScrollView(
                            child: Selector<ListUserProvider, List<User>>(
                                selector: (_, provider) => provider.users,
                                builder: (_, data, __) {
                                  return ListView(
                                      children: data
                                          .map((e) =>
                                              ListTile(title: Text(e.email)))
                                          .toList());
                                }),
                          ),
                      ],
                    ),
                  ),
                  OutlinedButton(
                      onPressed: () async {
                        await NetworkManager(token.getToken)
                            .albumRepository
                            .updateAlbum(album.raw, controller.text, selected);
                        Navigator.pop(context, true);
                      },
                      child: Text("save"))
                ],
              ),
            );
          },
        );
      });
}

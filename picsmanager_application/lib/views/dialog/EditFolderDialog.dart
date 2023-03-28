import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:picsmanager_application/models/core/Album.dart';
import 'package:picsmanager_application/models/core/Picture.dart';
import 'package:picsmanager_application/providers/AuthenticationProvider.dart';
import 'package:picsmanager_application/providers/PicturePageProvider.dart';
import 'package:picsmanager_application/ressources/Network.dart';
import 'package:provider/provider.dart';

void EditFolderDialog({required BuildContext context, required Album album}) {
  AuthenticationProvider token = Provider.of<AuthenticationProvider>(context, listen: false);
  final controller = TextEditingController(text: album.name);
  List<int> selected = List.empty();

  showDialog(
      context: context,
      builder: (context) {
        return Selector<PicturePageProvider, List<Picture>>(
          selector: (_, provider) => provider.pictures,
          shouldRebuild: (previous, next) => true,
          builder: (_, data, __){
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                children: [
                  Text("Album ${album.name}"),
                  TextFormField(controller: controller),
                  DropdownButton<Picture>(
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (Picture? value) {
                      selected = value?.visualPicture ?? List.empty();
                    },
                    items: data.map<DropdownMenuItem<Picture>>((Picture value) {
                      return DropdownMenuItem<Picture>(
                        value: value,
                        child: Text(value.name),
                      );
                    }).toList(),
                  ),
                  OutlinedButton(
                      onPressed: () async {
                        await NetworkManager(token.getToken).albumRepository.updateAlbum(album.id, controller.text, selected);
                      },
                      child: Text("save")
                  )
                ],
              ),
            );
          },
        );
      }
  );
}
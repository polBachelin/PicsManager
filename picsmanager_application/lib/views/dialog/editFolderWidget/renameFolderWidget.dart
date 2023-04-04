import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picsmanager_application/models/core/Album.dart';

Widget renameFolderWidget(String albumName, TextEditingController controller) {

  return Container(
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
  );
}
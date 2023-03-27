import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:picsmanager_application/protobuf/service/album_service.pb.dart';

class Album {
  Image image;
  String name;

  Album({required this.image, required this.name});
}

Album fromProtobuf(AlbumMessage source) {
  final imageSource = Uint8List.fromList(source.thumbnailData);

  return Album(image: Image.memory(imageSource), name: source.name);
}
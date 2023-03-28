import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:picsmanager_application/protobuf/service/album_service.pb.dart';

class Album {
  String id;
  Image image;
  String name;

  Album({required this.id, required this.image, required this.name});
}

Album fromProtobuf(AlbumMessage source) {
  return (source.thumbnailData.isNotEmpty)
      ? Album(id: source.albumId, image: Image.memory(Uint8List.fromList(source.thumbnailData)), name: source.name)
      : Album(id: source.albumId, image: Image.asset("assets/images/paysage1.jpeg"), name: source.name);
}
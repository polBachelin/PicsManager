import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:picsmanager_application/protobuf/service/album_service.pb.dart';

class Album {
  String id;
  Image image;
  String name;
  AlbumMessage raw;

  Album({required this.id, required this.image, required this.name, required this.raw});
}

Album fromProtobuf(AlbumMessage source) {
  return (source.thumbnailData.isNotEmpty)
      ? Album(id: source.albumId, image: Image.memory(Uint8List.fromList(source.thumbnailData)), name: source.name, raw: source)
      : Album(id: source.albumId, image: Image.asset("assets/images/paysage1.jpeg"), name: source.name, raw: source);
}
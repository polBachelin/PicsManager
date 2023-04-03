import 'dart:typed_data';

import 'package:flutter/widgets.dart';
import 'package:picsmanager_application/protobuf/service/picture_service.pb.dart';

class Picture {
  List<int> visualPicture;
  MetaData metaPicture;
  String name;
  String albumId;
  String id;
  PictureMessage raw;

  Picture(
      {
        required this.visualPicture,
        required this.metaPicture,
        required this.name,
        required this.albumId,
        required this.id,
        required this.raw
      }
   );

  Image getImage() {
    final imageSource = Uint8List.fromList(visualPicture);
    return Image.memory(imageSource);
  }
}

Picture fromProtobuf(PictureMessage source) {
  final metaData = MetaData();

  return Picture(visualPicture: source.data, metaPicture: metaData, name: source.name, albumId: source.albumId, id: source.imageId, raw: source);
}
import 'dart:typed_data';

import 'package:flutter/widgets.dart';
import 'package:picsmanager_application/protobuf/message/picture_message.pb.dart';

class Picture {
  Image visualPicture;
  MetaData metaPicture;
  String name;

  Picture(
      {required this.visualPicture,
      required this.metaPicture,
      required this.name});
}

Picture fromProtobuf(PictureMessage source) {
  final imageSource = Uint8List.fromList(source.data);
  final metaData = MetaData();

  return Picture(visualPicture: Image.memory(imageSource), metaPicture: metaData, name: source.name);
}
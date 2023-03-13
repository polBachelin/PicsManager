import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:picsmanager_application/providers/CameraProvider.dart';
import 'package:provider/provider.dart';
import 'dart:io';
import 'package:image/image.dart' as img;

Widget cameraPage({required BuildContext context}) {
  CameraProvider camera = Provider.of<CameraProvider>(context, listen: true);
  var theSize = camera.controller.value;
  var scale = MediaQuery.of(context).size.aspectRatio * theSize.aspectRatio;
  if (scale < 1) scale = 1 / scale;
  return Container(
    alignment: Alignment.centerRight,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: Stack(
      children: [
        Selector<CameraProvider, Widget>(
          selector: (context, provider) => provider.show,
          builder: (context, data, child) {
            return Transform.scale(scale: scale, child: Center(child: data));
          },
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: OutlinedButton(
              onPressed: () async {
                XFile file = await camera.picture;
                final path = file.path;
                final bytes = await File(path).readAsBytes();
                final img.Image? image = img.decodeImage(bytes);
              },
              style: ButtonStyle(
                  side: MaterialStateProperty.all(
                      const BorderSide(style: BorderStyle.none))),
              child: const Icon(
                Icons.photo_camera,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

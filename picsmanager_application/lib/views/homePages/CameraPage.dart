import 'dart:convert';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:intl/intl.dart';
import 'package:picsmanager_application/providers/AuthenticationProvider.dart';
import 'package:picsmanager_application/providers/CameraProvider.dart';
import 'package:picsmanager_application/ressources/Network.dart';
import 'package:provider/provider.dart';
import 'dart:io';

Widget cameraPage({required BuildContext context}) {
  AuthenticationProvider token = Provider.of<AuthenticationProvider>(context, listen: false);
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
                final compressed = await FlutterImageCompress.compressWithList(bytes, quality: 80);
                final name = DateFormat("yyyyMMddhhmmss").format(DateTime.now());

                await NetworkManager(token.getToken).pictureRepository.uploadPicture(compressed, "img-$name");
                // final byte = base64Decode("iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAApgAAAKYB3X3/OAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAANCSURBVEiJtZZPbBtFFMZ/M7ubXdtdb1xSFyeilBapySVU8h8OoFaooFSqiihIVIpQBKci6KEg9Q6H9kovIHoCIVQJJCKE1ENFjnAgcaSGC6rEnxBwA04Tx43t2FnvDAfjkNibxgHxnWb2e/u992bee7tCa00YFsffekFY+nUzFtjW0LrvjRXrCDIAaPLlW0nHL0SsZtVoaF98mLrx3pdhOqLtYPHChahZcYYO7KvPFxvRl5XPp1sN3adWiD1ZAqD6XYK1b/dvE5IWryTt2udLFedwc1+9kLp+vbbpoDh+6TklxBeAi9TL0taeWpdmZzQDry0AcO+jQ12RyohqqoYoo8RDwJrU+qXkjWtfi8Xxt58BdQuwQs9qC/afLwCw8tnQbqYAPsgxE1S6F3EAIXux2oQFKm0ihMsOF71dHYx+f3NND68ghCu1YIoePPQN1pGRABkJ6Bus96CutRZMydTl+TvuiRW1m3n0eDl0vRPcEysqdXn+jsQPsrHMquGeXEaY4Yk4wxWcY5V/9scqOMOVUFthatyTy8QyqwZ+kDURKoMWxNKr2EeqVKcTNOajqKoBgOE28U4tdQl5p5bwCw7BWquaZSzAPlwjlithJtp3pTImSqQRrb2Z8PHGigD4RZuNX6JYj6wj7O4TFLbCO/Mn/m8R+h6rYSUb3ekokRY6f/YukArN979jcW+V/S8g0eT/N3VN3kTqWbQ428m9/8k0P/1aIhF36PccEl6EhOcAUCrXKZXXWS3XKd2vc/TRBG9O5ELC17MmWubD2nKhUKZa26Ba2+D3P+4/MNCFwg59oWVeYhkzgN/JDR8deKBoD7Y+ljEjGZ0sosXVTvbc6RHirr2reNy1OXd6pJsQ+gqjk8VWFYmHrwBzW/n+uMPFiRwHB2I7ih8ciHFxIkd/3Omk5tCDV1t+2nNu5sxxpDFNx+huNhVT3/zMDz8usXC3ddaHBj1GHj/As08fwTS7Kt1HBTmyN29vdwAw+/wbwLVOJ3uAD1wi/dUH7Qei66PfyuRj4Ik9is+hglfbkbfR3cnZm7chlUWLdwmprtCohX4HUtlOcQjLYCu+fzGJH2QRKvP3UNz8bWk1qMxjGTOMThZ3kvgLI5AzFfo379UAAAAASUVORK5CYII=");
                // final compressed = await FlutterImageCompress.compressWithList(byte, quality: 80);
                // await NetworkManager(token.getToken).pictureRepository.uploadPicture(compressed, "img-test");
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

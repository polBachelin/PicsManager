import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void getPictures({required BuildContext context}) {
  showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Container(),
        );
      });
}

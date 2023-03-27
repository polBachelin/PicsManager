import 'dart:io';

import 'package:flutter/material.dart';
import 'package:picsmanager_application/models/helpers/SignUpHelper.dart';
import 'package:picsmanager_application/providers/SignUpProvider.dart';

Widget signUpButtons(BuildContext context, GlobalKey<FormState> signUpKey,
    SignUpProvider accountProvider, SignUpHelper signUpHelper) {
  return Row(
    children: [
      SizedBox(width: 20),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Container(
          width: 100,
          height: 40,
          alignment: Alignment.center,
          child: Icon(Icons.arrow_back),
        ),
      ),
      Spacer(),
      ElevatedButton(
        onPressed: () async {
          if (signUpKey.currentState!.validate()) {
            // if (await signUpHelper.signUp() == HttpStatus.ok) {
            //   Navigator.of(context).pop();
            // }
          }
        },
        child: Container(
          width: 100,
          height: 40,
          alignment: Alignment.center,
          child: Text('sign up'),
        ),
      ),
      SizedBox(width: 20),
    ],
  );
}

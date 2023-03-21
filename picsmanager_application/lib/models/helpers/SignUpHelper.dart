import 'package:flutter/material.dart';
import 'package:picsmanager_application/models/core/AccountInput.dart';
import 'package:picsmanager_application/providers/SignUpProvider.dart';
import 'package:provider/provider.dart';

class SignUpHelper {
  BuildContext context;

  // SignUpApi signUpApi = SignUpApi();

  late SignUpProvider accountProvider;

  SignUpHelper({required this.context}) {
    accountProvider = Provider.of<SignUpProvider>(context, listen: false);
  }

  // Future<int> signUp() async {
  //   int status = await signUpApi.resultSignUp(
  //       input: AccountInput(
  //           password: accountProvider.password,
  //           userName: accountProvider.userName,
  //           firstName: accountProvider.firstName,
  //           lastName: accountProvider.lastName));
  //   return status;
  // }
}

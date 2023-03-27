import 'dart:io';

import 'package:flutter/material.dart';
import 'package:picsmanager_application/models/core/AccountInput.dart';
import 'package:picsmanager_application/providers/SignUpProvider.dart';
import 'package:picsmanager_application/ressources/Network.dart';
import 'package:provider/provider.dart';

class SignUpHelper {
  BuildContext context;

  // SignUpApi signUpApi = SignUpApi();

  late SignUpProvider accountProvider;

  SignUpHelper({required this.context}) {
    accountProvider = Provider.of<SignUpProvider>(context, listen: false);
  }

  Future<int> signUp() async {
    await NetworkManager("").loginRepository.createAccount(accountProvider.userName, accountProvider.password);
    return HttpStatus.ok;
  }
}

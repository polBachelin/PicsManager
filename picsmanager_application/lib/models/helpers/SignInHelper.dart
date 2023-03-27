import 'package:flutter/material.dart';
import 'package:picsmanager_application/providers/AuthenticationProvider.dart';
import 'package:picsmanager_application/ressources/Network.dart';
import 'package:provider/provider.dart';

import '../../providers/SignInProvider.dart';
import '../../repositories/LoginRepositoryGrpc.dart';
import '../core/User.dart';

class SignInHelper {
  late BuildContext context;
  late SignInProvider signInProvider;
  late AuthenticationProvider authenticationProvider;

  SignInHelper({required this.context}) {
    signInProvider = Provider.of<SignInProvider>(context, listen: false);
    authenticationProvider =
          Provider.of<AuthenticationProvider>(context, listen: false);
  }

  Future<void> login() async {
    String text = await NetworkManager("").loginRepository
        .authentication(signInProvider.username, signInProvider.password);
    print(text);
    authenticationProvider.setToken = text;
  }
}

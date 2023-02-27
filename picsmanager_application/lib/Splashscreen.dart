import 'package:flutter/material.dart';
import 'package:picsmanager_application/providers/AuthenticationProvider.dart';
import 'package:picsmanager_application/views/homePages/HomePage.dart';
import 'package:provider/provider.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Selector<AuthenticationProvider, String>(
        selector: (_, provider) => provider.token,
        shouldRebuild: (previous, next) => true,
        builder: (_, token, __) {
          return HomePage(); //token.isEmpty ? SignInPage() : HomePage();
        });
  }
}
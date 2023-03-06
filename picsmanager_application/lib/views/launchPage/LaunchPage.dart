import 'dart:async';

import 'package:animator/animator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:picsmanager_application/providers/AuthenticationProvider.dart';
import 'package:picsmanager_application/providers/CameraProvider.dart';
import 'package:picsmanager_application/ressources/Images.dart';
import 'package:picsmanager_application/views/homePages/HomePage.dart';
import 'package:picsmanager_application/views/loginPages/SignInPage.dart';
import 'package:provider/provider.dart';

class LaunchPage extends StatefulWidget {
  const LaunchPage({Key? key}) : super(key: key);

  @override
  State<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => Timer(const Duration(seconds: 2), () async {
          final nav = Navigator.of(context);

          // TODO CALL INIT HERE
          await Provider.of<CameraProvider>(context, listen: false).init();

          final startPage = Selector<AuthenticationProvider, String>(
              selector: (_, provider) => provider.getToken,
              shouldRebuild: (previous, next) => true,
              builder: (_, token, __) {
                return token.isEmpty ? const SignInPage() : const HomePage();
              });

          nav.push(MaterialPageRoute(builder: (context) => startPage));
        }));
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Animator(
                duration: const Duration(milliseconds: 1000),
                tween: ColorTween(
                  begin: Colors.red,
                  end: Colors.yellow,
                ),
                cycles: 0,
                builder: (context, state, child) {
                  return SvgPicture.asset(ImagesConfig.logo,
                      color: state.value as Color);
                }),
          ],
        ),
      ),
    );
  }
}
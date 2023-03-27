import 'package:flutter/material.dart';
import 'package:picsmanager_application/models/helpers/SignUpHelper.dart';
import 'package:picsmanager_application/providers/SignUpProvider.dart';
import 'package:provider/provider.dart';

import 'EmailAccountForm.dart';
import 'IdentityAccountForm.dart';
import 'PasswordAccountForm.dart';
import 'SignUpButtons.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late SignUpProvider accountProvider;
  late SignUpHelper signUpHelper;

  final GlobalKey<FormState> _signUpKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    accountProvider = Provider.of<SignUpProvider>(context, listen: false);
    signUpHelper = SignUpHelper(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 100),
                  FlutterLogo(
                    size: 150,
                  ),
                  SizedBox(height: 20),
                  Text("Pics Manager"),
                  SizedBox(height: 20),
                  Form(
                    key: _signUpKey,
                    child: Column(
                      children: [
                        identityAccountForm(accountProvider, context),
                        emailAccountForm(accountProvider),
                        passwordAccountForm(accountProvider),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  signUpButtons(
                      context, _signUpKey, accountProvider, signUpHelper),
                  SizedBox(height: 20)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

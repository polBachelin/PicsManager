import 'package:flutter/material.dart';
import 'package:picsmanager_application/providers/AccountProvider.dart';
import 'package:provider/provider.dart';

import 'EmailAccountForm.dart';
import 'IdentityAccountForm.dart';
import 'PasswordAccountForm.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late AccountProvider accountProvider;
  // late SignUpHelper signUpHelper;

  final GlobalKey<FormState> _signUpKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    accountProvider = Provider.of<AccountProvider>(context, listen: false);
    // signUpHelper = SignUpHelper(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 20,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: 400,
              child: Column(
                children: [
                  SizedBox(height: 80),
                  FlutterLogo(
                    size: 200,
                  ),
                  SizedBox(height: 40),
                  Text("File Flow"),
                  SizedBox(height: 40),
                  Form(
                    key: _signUpKey,
                    child: Column(
                      children: [
                        identityAccountForm(accountProvider),
                        emailAccountForm(accountProvider),
                        passwordAccountForm(accountProvider),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  // signUpButtons(
                  //     context, _signUpKey, accountProvider, signUpHelper),
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

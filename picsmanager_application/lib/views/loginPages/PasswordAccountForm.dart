import 'package:flutter/material.dart';
import 'package:picsmanager_application/providers/SignUpProvider.dart';
import 'package:picsmanager_application/views/loginPages/verifies/VerifyContentPassword.dart';
import 'package:picsmanager_application/views/loginPages/verifies/VerifySecurityPassword.dart';
import 'package:picsmanager_application/views/loginPages/verifies/verifyPass.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

Widget passwordAccountForm(SignUpProvider accountProvider) {
  return Column(
    children: [
      Selector<SignUpProvider, bool>(
          selector: (_, provider) => provider.isObscure,
          shouldRebuild: (previous, next) => true,
          builder: (_, isObscure, __) {
            return TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) return "Enter password";
                accountProvider.password = value;
                return null;
              },
              onChanged: (value) {
                verifyHardPass(value, accountProvider);
                accountProvider.passField1 = value;
                accountProvider.isEqual =
                    verifyIsEqual(value, accountProvider.passField2);
              },
              obscureText: isObscure,
              decoration: InputDecoration(
                hoverColor: Colors.amber,
                labelText: 'Password',
                suffixIcon: IconButton(
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onPressed: () {
                    accountProvider.isObscure = !isObscure;
                  },
                  icon: Icon(
                    isObscure ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
              ),
            );
          }),
      SizedBox(height: 3),
      verifySecurityPassword(),
      SizedBox(height: 10),
      verifyContentPassword(),
      Selector<SignUpProvider, Tuple2<bool, bool>>(
          selector: (_, provider) =>
              Tuple2(provider.isObscure, provider.isEqual),
          shouldRebuild: (previous, next) => true,
          builder: (_, data, __) {
            return TextFormField(
              onChanged: (value) {
                accountProvider.passField2 = value;
                accountProvider.isEqual =
                    verifyIsEqual(value, accountProvider.passField1);
              },
              obscureText: data.item1,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: data.item2
                    ? Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      )
                    : Icon(
                        Icons.cancel,
                        color: Colors.red,
                      ),
              ),
            );
          }),
    ],
  );
}

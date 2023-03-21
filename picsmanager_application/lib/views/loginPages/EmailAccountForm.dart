import 'package:flutter/material.dart';
import 'package:picsmanager_application/providers/AccountProvider.dart';

Widget emailAccountForm(AccountProvider accountProvider) {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) return "Enter email";
      accountProvider.userName = value;
      return null;
    },
    decoration: const InputDecoration(
      labelText: 'Email',
    ),
  );
}

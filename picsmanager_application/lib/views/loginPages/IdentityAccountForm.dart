import 'package:flutter/material.dart';
import 'package:picsmanager_application/providers/AccountProvider.dart';

Widget identityAccountForm(
    AccountProvider accountProvider, BuildContext context) {
  return Row(
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.59,
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) return "Enter lastName";
            accountProvider.lastName = value;
            return null;
          },
          decoration: const InputDecoration(
            labelText: 'LastName',
          ),
        ),
      ),
      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.39,
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) return "Enter firstName";
            accountProvider.firstName = value;
            return null;
          },
          decoration: const InputDecoration(
            labelText: 'FirstName',
          ),
        ),
      ),
    ],
  );
}

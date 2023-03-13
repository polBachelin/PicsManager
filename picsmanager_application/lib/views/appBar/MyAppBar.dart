

import 'package:flutter/material.dart';
import 'package:picsmanager_application/providers/AppBarProvider.dart';
import 'package:picsmanager_application/providers/AuthenticationProvider.dart';
import 'package:provider/provider.dart';

import 'SettingOverlay.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  State<MyAppBar> createState() => _MyAppBar();
}

class _MyAppBar extends State<MyAppBar> {
  late AppBarProvider appBarProvider;
  late AuthenticationProvider authentication;
  @override
  void initState() {
    super.initState();
    authentication =
        Provider.of<AuthenticationProvider>(context, listen: false);
    appBarProvider =
        Provider.of<AppBarProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          showSettingOverlay(context);
        },
        icon: const Icon(Icons.supervised_user_circle_outlined),
      ),
      actions: <Widget>[
        Selector<AppBarProvider, bool>(
          selector: (_, provider) => provider.isEditing,
          shouldRebuild: (previous, next) => true,
          builder: (_, isEditing, __) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  appBarProvider.isEditing = !isEditing;
                },
                child: Row(
                  children: [
                    Text(
                      isEditing ? "Editing" : "Read only",
                      style: TextStyle(color: Colors.blue),
                    ),
                    Icon(
                      isEditing ? Icons.border_color : Icons.find_in_page,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        Container(width: 20),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:picsmanager_application/providers/AppBarProvider.dart';
import 'package:picsmanager_application/providers/AuthenticationProvider.dart';
import 'package:picsmanager_application/providers/ViewProvider.dart';
import 'package:picsmanager_application/views/appBar/CreateFolderDialog.dart';
import 'package:picsmanager_application/views/dialog/CreateFolderDialog.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

import 'SettingOverlay.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  MyAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(50);

  @override
  State<MyAppBar> createState() => _MyAppBar();
}

class _MyAppBar extends State<MyAppBar> {
  late AppBarProvider appBarProvider;
  late ViewProvider viewProvider;
  late AuthenticationProvider authentication;

  @override
  void initState() {
    super.initState();
    authentication =
        Provider.of<AuthenticationProvider>(context, listen: false);
    viewProvider = Provider.of<ViewProvider>(context, listen: false);
    appBarProvider = Provider.of<AppBarProvider>(context, listen: false);
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
        Selector2<ViewProvider, AppBarProvider, Tuple2<int, bool>>(
          selector: (_, provider1, provider2) =>
              Tuple2(provider1.page, provider2.shareFolder),
          shouldRebuild: (previous, next) => true,
          builder: (_, data, __) {
            return data.item1 == 2
                ? IconButton(
                    onPressed: () {
                      appBarProvider.shareFolder = !data.item2;
                    },
                    icon: Icon(
                      data.item2 ? Icons.people : Icons.people_alt_outlined,
                      color: Colors.white,
                    ),
                  )
                : Container();
          },
        ),
        Selector<ViewProvider, int>(
            selector: (_, provider) => provider.page,
          builder: (_,data,__) {
              return data == 2
                  ? IconButton(
                  onPressed: (){
                    CreateFolderDialog(context: context);
                  },
                  icon: Icon(Icons.create_new_folder))
              : Container();
        }, ),
        Selector2<ViewProvider, AppBarProvider, Tuple2<int, bool>>(
          selector: (_, provider1, provider2) =>
              Tuple2(provider1.page, provider2.shareUser),
          shouldRebuild: (previous, next) => true,
          builder: (_, data, __) {
            return data.item1 == 0
                ? IconButton(
                    onPressed: () {
                      appBarProvider.shareUser = !data.item2;
                    },
                    icon: Icon(
                      data.item2
                          ? Icons.folder_copy
                          : Icons.folder_copy_outlined,
                      color: Colors.white,
                    ),
                  )
                : Container();
          },
        ),
        SizedBox(width: 10),
      ],
    );
  }
}

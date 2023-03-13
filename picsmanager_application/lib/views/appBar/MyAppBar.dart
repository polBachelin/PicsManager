import 'package:flutter/material.dart';
import 'package:picsmanager_application/providers/AppBarProvider.dart';
import 'package:picsmanager_application/providers/AuthenticationProvider.dart';
import 'package:picsmanager_application/providers/ViewProvider.dart';
import 'package:provider/provider.dart';

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
//
// PreferredSize bottomBar({required ViewProvider provider}) {
//   return PreferredSize(
//     preferredSize: const Size.fromHeight(1),
//     child: Selector<ViewProvider, int>(
//       selector: (context, provider) => provider.page,
//       builder: (context, data, child) {
//         return provider.page == 1
//             ? Container()
//             : Column(
//                 children: [
//                   Row(
//                     children: <Widget>[
//                       Expanded(
//                         child: TextField(
//                           decoration: InputDecoration(
//                             icon: IconButton(
//                               onPressed: null,
//                               icon: const Icon(Icons.search),
//                             ),
//                             border: OutlineInputBorder(),
//                           ),
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: null,
//                         icon: const Icon(Icons.close),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 5,
//                   )
//                 ],
//               );
//       },
//     ),
//   );
// }

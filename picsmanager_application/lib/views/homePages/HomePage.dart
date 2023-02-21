import 'package:flutter/material.dart';
import 'package:picsmanager_application/providers/ViewProvider.dart';
import 'package:picsmanager_application/views/homePages/AlbumPage.dart';
import 'package:picsmanager_application/views/homePages/PicturesPage.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ViewProvider viewProvider =
    Provider.of<ViewProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(),
        bottomNavigationBar: MediaQuery.of(context).size.width < 1080
            ? Selector<ViewProvider, int>(
          selector: (context, provider) => provider.page,
          builder: (context, data, child) {
            return BottomNavigationBar(
              currentIndex: viewProvider.page,
              onTap: (int page) {
                viewProvider.page = page;
              },
              selectedItemColor: Colors.grey[900],
              unselectedItemColor: Colors.grey[700],
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.folder), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_a_photo_outlined), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.panorama), label: '')
              ],
            );
          },
        )
            : null,
        body: Selector<ViewProvider, int>(
            selector: (context, provider) => provider.page,
            builder: (context, data, child) {
              return Row(mainAxisSize: MainAxisSize.max, children: [
                //NavigationRailWidget(context: context, provider: viewProvider),
                Center(
                  child: Container(
                    color: Colors.grey,
                    alignment: Alignment.centerRight,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: () {
                        switch (viewProvider.page) {
                          case 0:
                            return picturesPage(context: context);
                          case 1:
                            return test1(context: context);
                          case 2:
                            return albumPage(context: context);
                        }
                      }(),
                    ),
                  ),
                ),
              ]);
            }));
  }
}

Widget test1({required BuildContext context}) {
  return Column(
    mainAxisSize: MainAxisSize.max,
    children: [
      Row(
        mainAxisSize: MainAxisSize.max,
      ),
      Container(
        color: Colors.blue,
      )
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:picsmanager_application/providers/ViewProvider.dart';
import 'package:picsmanager_application/views/homePages/AlbumPage.dart';
import 'package:picsmanager_application/views/homePages/CameraPage.dart';
import 'package:picsmanager_application/views/appBar/MyAppBar.dart';
import 'package:picsmanager_application/views/homePages/PicturesPage.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ViewProvider viewProvider =
        Provider.of<ViewProvider>(context, listen: false);

    return Scaffold(
        appBar: MyAppBar(),
        bottomNavigationBar: Selector<ViewProvider, int>(
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
                BottomNavigationBarItem(icon: Icon(Icons.panorama), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_a_photo_outlined), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.folder), label: '')
              ],
            );
          },
        ),
        body: Selector<ViewProvider, int>(
            selector: (context, provider) => provider.page,
            builder: (context, data, child) {
              return Row(mainAxisSize: MainAxisSize.max, children: [
                //NavigationRailWidget(context: context, provider: viewProvider),
                Center(
                  child: Container(
                    color: Colors.grey,
                    alignment: Alignment.topCenter,
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
                            return cameraPage(context: context);
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


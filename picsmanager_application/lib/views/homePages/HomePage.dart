import 'package:flutter/material.dart';
import 'package:picsmanager_application/providers/ViewProvider.dart';
import 'package:picsmanager_application/views/homePages/TaskPage.dart';
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
        bottomNavigationBar: MediaQuery.of(context).size.width < 1080
            ? Selector<ViewProvider, int>(
          selector: (context, provider) => provider.page,
          builder: (context, data, child) {
            return BottomNavigationBar(
              currentIndex: viewProvider.page,
              onTap: (int page) {
                viewProvider.page = page;
              },
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey[700],
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.task), label: 'Tasks'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_month), label: 'Calendar'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.event), label: 'Events'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'Settings')
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
                    width: MediaQuery.of(context).size.width >= 1080
                        ? MediaQuery.of(context).size.width - 72
                        : MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.02,
                      MediaQuery.of(context).size.height * 0.02,
                      MediaQuery.of(context).size.width * 0.02,
                      0,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: () {
                        switch (viewProvider.page) {
                          case 0:
                            return test(context: context);
                          case 1:
                            return test1(context: context);
                          case 2:
                            return test2(context: context);
                        }
                      }(),
                    ),
                  ),
                ),
              ]);
            }));
  }
}

Widget test({required BuildContext context}) {
  return Container(
    alignment: Alignment.centerRight,
    width: MediaQuery.of(context).size.width >= 1080
        ? MediaQuery.of(context).size.width - 72
        : MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    color: Colors.white,
    padding: EdgeInsets.fromLTRB(
      MediaQuery.of(context).size.width * 0.02,
      MediaQuery.of(context).size.height * 0.02,
      MediaQuery.of(context).size.width * 0.02,
      0,
    ),
    child: Container(
      width: double.infinity,
      height: double.infinity,
      child: TaskPage(context: context),
    ),
  );
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

Widget test2({required BuildContext context}) {
  return Column(
    mainAxisSize: MainAxisSize.max,
    children: [
      Row(
        mainAxisSize: MainAxisSize.max,
      ),
      Container(
        color: Colors.red,
      )
    ],
  );
}

/*
NavigationRail(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          labelType: NavigationRailLabelType.selected,
          destinations: <NavigationRailDestination>[
            NavigationRailDestination(
              icon: Icon(Icons.favorite_border),
              selectedIcon: Icon(Icons.favorite),
              label: Text('First'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.bookmark_border),
              selectedIcon: Icon(Icons.book),
              label: Text('Second'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.star_border),
              selectedIcon: Icon(Icons.star),
              label: Text('Third'),
            ),
          ],
        ),
*/

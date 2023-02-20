import 'package:flutter/material.dart';

Widget TaskPage({required BuildContext context}) {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        Card(
          elevation: 5,
          //color: Colors.grey[200],
          child: ExpansionTile(
            title: Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.menu),
                SizedBox(width: 40),
                Text("test 1")
              ],
            ),
            children: [
              SubTask(name: "subtask 1"),
              SubTask(name: "subtask 2"),
              SubTask(name: "subtask 3"),
              SubTask(name: "subtask 4"),
              SubTask(name: "subtask 5"),
            ],
          ),
        ),
        Card(
          elevation: 5,
          //color: Colors.grey[200],
          child: ExpansionTile(
            //backgroundColor: Colors.white,
            title: Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.menu),
                SizedBox(width: 40),
                Text("test 1")
              ],
            ),
            children: [
              SubTask(name: "subtask 1"),
              SubTask(name: "subtask 2"),
              SubTask(name: "subtask 3"),
              SubTask(name: "subtask 4"),
              SubTask(name: "subtask 5"),
            ],
          ),
        ),
        Card(
          elevation: 5,
          //color: Colors.grey[200],
          child: ExpansionTile(
            //backgroundColor: Colors.grey[800],
            title: Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.menu),
                SizedBox(width: 40),
                Text("test 1")
              ],
            ),
            children: [
              SubTask(name: "subtask 1"),
              SubTask(name: "subtask 2"),
              SubTask(name: "subtask 3"),
              SubTask(name: "subtask 4"),
              SubTask(name: "subtask 5"),
            ],
          ),
        ),
        Card(
          elevation: 5,
          //color: Colors.grey[200],
          child: ExpansionTile(
            //backgroundColor: Colors.white,
            title: Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.menu),
                SizedBox(width: 40),
                Text("test 1")
              ],
            ),
            children: [
              SubTask(name: "subtask 1"),
              SubTask(name: "subtask 2"),
              SubTask(name: "subtask 3"),
              SubTask(name: "subtask 4"),
              SubTask(name: "subtask 5"),
            ],
          ),
        ),
        Card(
          elevation: 5,
          //color: Colors.grey[200],
          child: ExpansionTile(
            //backgroundColor: Colors.white,
            title: Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.menu),
                SizedBox(width: 40),
                Text("test 1")
              ],
            ),
            children: [
              SubTask(name: "subtask 1"),
              SubTask(name: "subtask 2"),
              SubTask(name: "subtask 3"),
              SubTask(name: "subtask 4"),
              SubTask(name: "subtask 5"),
            ],
          ),
        ),
        Card(
          elevation: 5,
          //color: Colors.grey[200],
          child: ExpansionTile(
            //backgroundColor: Colors.white,
            title: Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.menu),
                SizedBox(width: 40),
                Text("test 1")
              ],
            ),
            children: [
              SubTask(name: "subtask 1"),
              SubTask(name: "subtask 2"),
              SubTask(name: "subtask 3"),
              SubTask(name: "subtask 4"),
              SubTask(name: "subtask 5"),
            ],
          ),
        ),
        Card(
          elevation: 5,
          //color: Colors.grey[200],
          child: ExpansionTile(
            //backgroundColor: Colors.white,
            title: Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.menu),
                SizedBox(width: 40),
                Text("test 1")
              ],
            ),
            children: [
              SubTask(name: "subtask 1"),
              SubTask(name: "subtask 2"),
              SubTask(name: "subtask 3"),
              SubTask(name: "subtask 4"),
              SubTask(name: "subtask 5"),
            ],
          ),
        ),
        Card(
          elevation: 5,
          //color: Colors.grey[200],
          child: ExpansionTile(
            //backgroundColor: Colors.white,
            title: Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.menu),
                SizedBox(width: 40),
                Text("test 1")
              ],
            ),
            children: [
              SubTask(name: "subtask 1"),
              SubTask(name: "subtask 2"),
              SubTask(name: "subtask 3"),
              SubTask(name: "subtask 4"),
              SubTask(name: "subtask 5"),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget SubTask({required String name}) {
  return Row(
    children: [
      SizedBox(width: 80),
      Checkbox(value: false, onChanged: () {}()),
      SizedBox(width: 40),
      Text(name),
    ],
  );
}
/*
class TaskPage extends StatelessWidget {
  const TaskPage({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        body: MyStatefulWidget(),
      ),
    );
  }
}

// stores ExpansionPanel state information
class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final List<Item> _data = generateItems(8);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    ViewProvider viewProvider =
        Provider.of<ViewProvider>(context, listen: false);
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
              title: Text(item.expandedValue),
              subtitle:
                  const Text('To delete this panel, tap the trash can icon'),
              trailing: const Icon(Icons.delete),
              onTap: () {
                setState(() {
                  _data.removeWhere((Item currentItem) => item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}

 */

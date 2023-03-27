import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void CreateFolderDialog({required BuildContext context}) {
  // CreateFolderProvider createFolderProvider =
  // Provider.of<CreateFolderProvider>(context, listen: false);

  // createFolderProvider.listRule = [];
  // createFolderProvider.indexIcon = 0;

  showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Createfolder(context: context),
        );
      });
}

Widget Createfolder({ required BuildContext context}) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.5 ,
    width: MediaQuery.of(context).size.width * 0.75 ,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(10, 150, 10, 50),
      child: Column(
        children: <Widget>[
          Text("Name for your new Album : "),
          TextField(),
          SizedBox(height: 50),
          ElevatedButton(
              onPressed: (){

              },
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
              ),
              child: Text("OK", style: TextStyle(color: Colors.white),))
        ],
      ),
    ),
  );
}
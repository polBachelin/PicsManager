import 'package:flutter/material.dart';
import 'package:picsmanager_application/providers/AuthenticationProvider.dart';
import 'package:provider/provider.dart';

void showSettingOverlay(BuildContext context) {
  AuthenticationProvider authentication =
    Provider.of<AuthenticationProvider>(context, listen: false);
  OverlayState? overlayState = Overlay.of(context);
  late OverlayEntry overlayEntry;
  overlayEntry = OverlayEntry(builder: (context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ModalBarrier(
            onDismiss: (() {
              overlayEntry.remove();
            }),
          ),
        ),
        Positioned(
          left: 10,
          top: 51,
          child: Material(
            child: Container(
              width: 200,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  ListTile(
                    title: Text("Disconnect"),
                    onTap: () {
                      authentication.setToken = "";
                      overlayEntry.remove();
                    },
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  });
  overlayState!.insert(overlayEntry);
}

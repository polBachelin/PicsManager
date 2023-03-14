import 'dart:io';

import 'package:flutter/material.dart';
import 'package:picsmanager_application/providers/AppBarProvider.dart';
import 'package:picsmanager_application/providers/AuthenticationProvider.dart';
import 'package:picsmanager_application/providers/CameraProvider.dart';
import 'package:picsmanager_application/providers/PicturePageProvider.dart';
import 'package:picsmanager_application/providers/SignInProvider.dart';
import 'package:picsmanager_application/providers/ViewProvider.dart';
import 'package:picsmanager_application/views/launchPage/LaunchPage.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthenticationProvider()),
        ChangeNotifierProvider(create: (_) => SignInProvider()),
        ChangeNotifierProvider(create: (_) => ViewProvider()),
        ChangeNotifierProvider(create: (_) => CameraProvider()),
        ChangeNotifierProvider(create: (_) => AppBarProvider()),
        ChangeNotifierProvider(create: (_) => PicturePageProvider()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const LaunchPage()),
    );
  }
}

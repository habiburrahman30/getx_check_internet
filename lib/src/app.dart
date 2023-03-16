import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/home_page.dart';
import 'services/network_binding.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialBinding: InitialBinding(),
      smartManagement: SmartManagement.onlyBuilder,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

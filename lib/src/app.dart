import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_check_internet/src/controllers/getx_network_manager.dart';
import 'package:getx_check_internet/src/pages/no_internet_page.dart';

import 'pages/home_page.dart';
import 'services/network_binding.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final networkManager = Get.put(GetXNetworkManager());
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialBinding: InitialBinding(),
      smartManagement: SmartManagement.onlyBuilder,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GetBuilder<GetXNetworkManager>(
        init: GetXNetworkManager(),
        initState: (_) {},
        builder: (_) {
          return networkManager.connectionType == 0
              ? NoInternetPage()
              : HomePage();
        },
      ),
    );
  }
}

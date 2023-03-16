import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_check_internet/src/services/network_binding.dart';

import '../controllers/getx_network_manager.dart';

class HomePage extends StatelessWidget {
  final _networkManager = Get.put(GetXNetworkManager());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            GetBuilder<GetXNetworkManager>(
              init: GetXNetworkManager(),
              initState: (_) {},
              builder: (_) {
                return Text(
                  _networkManager.connectionType == 0
                      ? 'No Internet'
                      : (_networkManager.connectionType == 1)
                          ? 'You  are connected to Wifi'
                          : 'ou  are connected to Mobile Internet',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

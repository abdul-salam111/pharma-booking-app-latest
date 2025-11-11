import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/recovery_controller.dart';

class RecoveryView extends GetView<RecoveryController> {
  const RecoveryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recovery'), centerTitle: true),
      body: const Center(
        child: Text('Coming Soon', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

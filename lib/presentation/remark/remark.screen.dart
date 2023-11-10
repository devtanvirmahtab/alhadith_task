import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/remark.controller.dart';

class RemarkScreen extends GetView<RemarkController> {
  const RemarkScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RemarkScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RemarkScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

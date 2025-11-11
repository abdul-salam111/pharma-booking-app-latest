import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

Future<void> saveTextFile(String fileName, String content) async {
  try {
    final dir = await getTemporaryDirectory();
    final file = File("${dir.path}/$fileName.txt");
    await file.writeAsString(content);

    // Get the widget’s position (required for iOS/macOS)
    final box = Get.context!.findRenderObject() as RenderBox?;

    await SharePlus.instance.share(
      ShareParams(
        files: [XFile(file.path)],
        text: fileName,
        sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
      ),
    );
  } catch (e) {
    print("❌ Error while sharing file: $e");
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/home_model.dart';

class HomeController extends GetxController {
  TextEditingController objectName = TextEditingController();
  addToList() async {
    models.add(HomeMoel(title: objectName.text));
    Get.back();
    objectName.clear();
    update();
  }

  deleteInList(value) {
    models.removeAt(value);
    update();
  }
}

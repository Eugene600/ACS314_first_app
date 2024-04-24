import 'package:get/get.dart';

class HomePage_controller extends GetxController {
  var selectedPage = 0.obs;
  updateSelectedPage(index) {
    selectedPage.value = index;
  }
}

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LoginController extends GetxController {
  var isHidden = true.obs;
  toggleHide() {
    isHidden.value = !isHidden.value;
  }

  var admission = ''.obs;
  updateAdmission(str) {
    admission.value = str;
  }
}

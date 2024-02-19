import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CalculatorController extends GetxController {
  var sum = 0.0.obs;
  var a = 0.0.obs;
  var b = 0.0.obs;
  updateSum(newSum) {
    sum.value = newSum;
  }

  updateValue(A, B) {
    a.value = A;
    b.value = B;
  }

  // updateB(B) {
  //   b.value = B;
  // }
}

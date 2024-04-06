// import 'dart:convert';

// import 'package:http/http.dart' as http;

// class Remote {
//   Future<void> remoteLogin() async {
//     http.Response response;
//     response = await http.get(Uri.parse(
//         "https://eugenewachira.co.ke/studentAccount/read.php?adm_no=21-2136&password=1234"));
//     if (response.statusCode == 200) {
//       var serverResponse = json.decode(response.body);
//       int loginStatus = serverResponse['success'];
//       if (loginStatus == 1) {
//         print("Login Success");
//       } else {
//         print("Admission number or password is invalid");
//       }
//     }
//   }
// }

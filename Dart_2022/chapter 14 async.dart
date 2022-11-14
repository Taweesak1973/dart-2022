//================== Future Function =============
// Future<String> fetchUserOrder() {
//   return Future.delayed(Duration(seconds: 2), (() {
//     return 'Cappuccino';
//   }));
// }

// void main() {
//   print('Program started');
//   fetchUserOrder()
//       .then((order) => print('Order is ready:$order'))
//       .catchError((error) => print(error)) //ถ้ามี error จะแสดงออกมา
//       .whenComplete(() => print('Done'));
// }

//============= async and await ==============
// Future<String> fetchUserOrder() {
//   return Future.delayed(Duration(seconds: 2), (() {
//     return 'Cappuccino';
//   }));
// }

// Future<void> main() async {
//   try {
//     print('Program started');
//     final order = await fetchUserOrder();
//     print(order);
//   } catch (e) {
//     print(e);
//   } finally {
//     print('Done');
//   }
// }

//================== Furture.value and Furture.error =============
// Future<String> fetchUserOrder() {
//   return Future.delayed(Duration(seconds: 2), (() {
//     return 'Cappuccino';
//   }));
// }
// //Future.value()จะแสดงข้อมูลแบบเร็ว
// Future<String> fetchUserOrder2() {
//   return Future.value('Espresso');
// }
// //Furture.error()แสดง error แบบเร็ว
// Future<String> fetchUserOrder3() {
//   return Future.error(Exception('Out of Order'));
// }

// Future<void> main() async {
//   try {
//     print('Program started');
//     final order = await fetchUserOrder();
//     print(order);
//     final order2 = await fetchUserOrder2();
//     print(order2);
//     final order3 = await fetchUserOrder3();
//     print(order3);
//   } catch (e) {
//     print(e);
//   } finally {
//     print('Done');
//   }
// }

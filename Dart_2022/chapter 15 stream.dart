//=============== Stream ============
// Future<int> sumStream(Stream<int> stream) async {
//   var sum = 0;
//   await for (var value in stream) {
//     sum += value;
//   }
//   return sum;
// }

// Future<int> sumStream2(Stream<int> stream) =>
//     stream.reduce(((previous, element) => previous + element));

// Future<void> main() async {
//   final stream = Stream<int>.fromIterable([1, 2, 3, 4, 5]);
//   final sum = await sumStream(stream);
//   print('Sum: $sum');
//   // final sum2 = await sumStream2(stream);//ไม่สามารถ ทำงานพร้อมกันได้
//   // print('Sum2: $sum2');
// }

//============ Stream generators: async* and yield ============
// Future<int> sumStream(Stream<int> stream) async {
//   var sum = 0;
//   await for (var value in stream) {
//     sum += value;
//   }
//   return sum;
// }

// Future<int> sumStream2(Stream<int> stream) =>
//     stream.reduce(((previous, element) => previous + element));
// //Stream กับ Iterable ใช้คล้ายกัน
// Stream<int> countStream(int n) async* {
//   for (var i = 1; i <= n; i++) {
//     await Future.delayed(Duration(seconds: 1));
//     print(i);
//     yield i;
//   }
// }

// //Iterable
// Iterable<int> count(int n) sync* {
//   for (var i = 1; i <= n; i++) {
//     yield i;
//   }
// }

// Future<void> main() async {
//   final stream = Stream<int>.fromIterable([1, 2, 3, 4, 5]);

//   final stream2 = countStream(5);
//   final sum = await sumStream(stream2);
// //   print('Sum: $sum');
//   print(sum);
// }

//================= Stream constructors =========
//ตัวอย่างของ Stream ที่ใช้บ่อย
// void main() {
//   Stream.fromFuture(Future.delayed(Duration(seconds: 2)));
//   Stream.fromIterable([1, 3, 4]);
//   Stream.empty();
//   Stream.error(Exception('Someing Wrong'));
//   Stream.value(20);
//   Stream.periodic(Duration(seconds: 1), (index) => index);
// }

//============== Stream Methods =============
//มีเยอะมากสามารถดูได้ใน document
// void main() async {
//   final stream = Stream<int>.fromIterable([1, 2, 3, 4, 5]);
//   // final value = await stream.first;
//   //final double = stream.map((value) => value * 2);//คือค่าเป็นIterable
//   // final value = await stream.forEach(
//   //   (element) => print(element),
//   // );

// }

//============= Single and Multiple subscription streams =========
//หมายถึง Stream ไม่สามารถทำงานพร้อมกันหลายฟังชั่นได้
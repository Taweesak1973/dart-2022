//================== assert ======================

// // import'package:flutter/foundation.dart';
// //ใช้กับ dart version ก่อน 2.12
// //ใช้ assert เพื่อดักข้อผิดพลาด เช่นดักว่าถ้ามีการป้อนตัวเลขที่มีค่าน้อยกว่า1
// //จะแสดงข้อผิดพลาดออกมาให้ผู้พัฒนารู้
// class PositiveInt {
//   const PositiveInt(this.value) : assert(value > 0, 'dddd ');
//   final double value;
// }

// void main() {
//   final a = PositiveInt(-1);
//   print(a.value); //จะไม่แสดงข้อผิดพลาดออกมาเพราะ ใช้ version สูงกว่า 2.12
// } //ดังนั้นการดักข้อผิดพลาดต้องใช้วิธีอื่น

// ignore_for_file: deprecated_member_use

//================ exceptions ==============
class One {
  One(this.number1, this.number2) {
    if (number2 == 0) {
      throw IntegerDivisionByZeroException();
    }
  }
  final int number1;
  final int number2;

  double get value => number1 / number2;
}

void testFraction() {
  try {
    final sum = One(10, 0);
    print(sum.value);
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
      rethrow;
  } on Exception catch (e) {
    print(e);
  } finally {
    print('tesFraction done');
  }
}

void main() {
  testFraction();
  print('done');
}

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//===============  Function (Advance) ===================
// ==================== Anonymoust function =================
// void main() {
//   (name) =>
//       'He $name'; //เป็นฟังชั่นแบบไม่มีชื่อในวงเล็บคือ parameter 
//จะระบุชนิดหรือไม่ก็ได้ หลังวงเล็บคือส่วน body ของ function
//   final sayHi = (name) =>
//       'Hi, $name'; //การเรียกใช้งาน sayHi คือตัวแปรที่อ้างอิงถึงฟังชั่นนี้
//   print(sayHi(
//       'Tawee')); //หลักการทำงานคือ ตัวแปร sayHi ส่ง argument ไปให้แล้วฟังชั่นนำค่านั้นไปแทนค่า
//   //ในส่วนของ body แล้วส่งค่ากลับมาให้ผู้เรียกจากนั้นผู้เรียกก็นำค่าที่ส่งมาแสดงออกทางจอภาพ
//   final a = (num) =>print(num);//แบบนี้ไม่ต้องส่งค่ากลับให้แสดงผลเลย
//   a(100);//คือการเรียกใช้

// }
// //-------------------------------------------------------------
// void main() {
//   welcome(run, 'Tawee');//การเรียกใช้ ต้องใส่อากิวเมนต์ที่เป็นฟังชั้นเข้ามาด้วย
//   //วิธีที่สะดวกที่สุดคือการใช้ ฟังชั่นที่ไม่มีชื่อเข้ามาใช้งานโดยผ่านตัวแปร run
// }
// //ฟังชั่น welcome ต้องการ argument ที่เป็นฟังชั่น
// void welcome(String Function(String) great, String name) {
//   print(great(name));
//   print(name);
// }
// final run = (String a) => 'Take me home';//สร้างตัวแปร run เพื่อเก็บค่าฟังชั่น
// //ฟังชั่นแบบนี้เป็นแบบคืนค่า ถ้าไม่คืนค่าจะมีคำสั่งให้แสดงผลเลยคือ print

//================ function Type ==============
// void main() {
//   welcome(run, );
// }
// // typedef เป็นการระบุชนิดของตัวแปรฟังชั่น เหมือนกับ String int double
// typedef Greet = String Function(String); //สร้างตัวแปรฟังชั่นแบบส่งค่ากลับ
// // typedef String Greet(String name);//สามารถเขียนแบบนี้ก็ได้ความหมายเดียวกัน
// //เพื่อเอาไปเป็นชนิดของฟังชั่น ใน parameter ของฟังชั่น welcome
// //ถ้าไม่ใส่ชนิดของตัวแปรฟังชั่นก็สามารถทำงานได้โดยจะกลายเป็นชนิด dynamic
// void welcome(Greet great, ) {
//   print(great('dk'));

 
// }
// final run = (String a) => 'Take me home';

//============ Closures   ========================
//+++++++++++++++++++   The map method =========================
// void main() {
//   const multiplier = 10;
//   const list = [1, 2, 3];
//   //ฟังชั่น map จะมี ฟังชั่นไม่ระบุชื่อทำงานอยู่ภายในคืนค่าเป็นชุดข้อมูลส่งผลออกมาเป็นแบบ iterable
//   //ถ้าอยากให้เป็นลีสต้องใช้คำสั่ง toList() ต่อท้ายด้วย
//   final result = list.map((x) => x * multiplier).toList();
//   print(result.runtimeType);
// }

//=================== generics  T ========================
// void main() {
//   const list1 = [1, 2, 3];
//   const list2 = [1.0, 2.0, 3.0];

//   final doubles = tranform<int>(
//       list1,
//       (x) =>
//           x *
//           2); //การเรียกใช้ ฟังชั่น tranform ต้องระบุชนิดข้อมูลลีสที่ส่งไปด้วย
//   //เพราะ tranform คืนค่าได้ทุกชนิด
//   //เรียกใช้ฟังชั่น tranform โดยใช้ listที่มีชนิดข้อมูลต่างกัน
//   final doubles2 =
//       tranform<double>(list2, (x) => x * 2); //เรียกใช้ ฟังชั่น tranform
//   final doubles3 =
//
//   print(doubles);
//   print(doubles2);
//
// }

// //สร้างฟังชั่น tranform มี parameter 2 ตัวเป็นลีสชื่อ item และฟังชั่นชื่อ f รับค่าเป็น int และคืนค่าเป็น int
// List<T> tranform<T>(List<T> items, T Function(T) f) {
//   //สามารถใส่ T ต่อท้ายแทน int เพื่อแสดงว่ารับและคืนค่าได้ทุกชนิด
//   var result = <T>[]; //ประกาศตัวแปรสีสชื่อ resultเป็นแบบ int
//   for (var x in items) {
//     //สร้างวงวนขึ้นมาเพื่อเพิ่มค่าเข้าไปในลีส result โดยค่าที่เพิ่มนั้นนำมาจากลีส items
//     result.add(f(
//         x)); //ค่าที่ได้เกิดจากการทำงานของฟังชั่น f ซึ่งจะส่งสมาชิกของ items ไปให้ f ทำงาน
//     //แล้วส่งค่าคืนกลับมาเป็น int และสุดท้ายเอาไปเก็บไว้ใน List ชื่อ result
//   }

//   return result;
// }
// =================== generics  T  R  ========================
// void main() {
//   const list1 = [1, 2, 3];
//   const list2 = [1.0, 2.0, 3.0];

//   final doubles = tranform<int, int>(
//       list1,
//       (x) =>
//           x *
//           2); //การเรียกใช้ ฟังชั่น tranform ต้องระบุชนิดข้อมูลลีสที่ส่งไปด้วย
//   //เพราะ tranform คืนค่าได้ทุกชนิด
//   //เรียกใช้ฟังชั่น tranform โดยใช้ listที่มีชนิดข้อมูลต่างกัน
//   final doubles2 = tranform<double, int>(//ใส่ชนิดของข้อมูลให้ตรงตามที่ส่งและรับ
//       list2, (x) => x.round()); //roune คือการทำให้เป็น int

//   print(doubles);
//   print(doubles2);
// }

// //สร้างฟังชั่น tranform มี parameter 2 ตัวเป็นลีสชื่อ item และฟังชั่นชื่อ f รับค่าเป็น int และคืนค่าเป็น int
// List<R> tranform<T, R>(List<T> items, R Function(T) f) {
//   //สามารถใส่ T ต่อท้ายแทน int เพื่อแสดงว่ารับและคืนค่าได้ทุกชนิด
//   //ใส่ R กรณีที่ข้อมูลตอนรับกับตอนส่งเป็นคนละแบบ
//   // T แทนข้อมูลตอนรับ R แทนข้อมูลตอนส่ง
//   var result = <R>[]; //ประกาศตัวแปรสีสชื่อ resultเป็นแบบ int
//   for (var x in items) {
//     //สร้างวงวนขึ้นมาเพื่อเพิ่มค่าเข้าไปในลีส result โดยค่าที่เพิ่มนั้นนำมาจากลีส items
//     result.add(f(
//         x)); //ค่าที่ได้เกิดจากการทำงานของฟังชั่น f ซึ่งจะส่งสมาชิกของ items ไปให้ f ทำงาน
//     //แล้วส่งค่าคืนกลับมาเป็น int และสุดท้ายเอาไปเก็บไว้ใน List ชื่อ result
//   }

//   return result;
// }

//=================  foEach ===================
//ทำงานเหมือนกับ for
// void main() {
//   const list = [1, 2, 3];
//   list.forEach((element) {
//     print(element);
//   });//forEach มีฟังชั่นไม่ระบุชื่อยู่ภายใน
//   list.forEach(print); //สามารถเขียนแบบย่อได้
// }

//====================== method Where and firstWhere ============
//เป็นฟังชั่นค้นหา โดยมีเงื่อนไขในการค้น
// void main() {
//   const list = [1, 2, 3, 4]; //ค้นหาจำนวนที่หาร2ลงตัว

//   final even = list.where((element) => true);
//   print(even);
//   const list1 = [1, 2, 3, 4]; //ค้นหาจำนวนแรกที่หาร2ลงตัว
//   final even1 = list.firstWhere((element) => element % 2 == 0);
//   print(even1);
//   const list2 = [1, 2, 3, 4]; //ค้นหาจำนวนแรกที่หาร5ลงตัวถ้าไม่มีให้คืน 0
//   final even2 = list.firstWhere((element) => element % 5 == 0, orElse: () {
//     //สามารถใช้คำสัง orElse เพือทำคำสั่งต่อไปได้เหมือน  if else
//     return 0;
//   });
//   print(even2);
// }

//================ ตัวอย่างการใช้ where =====================
// void main() {
//   const list = [1, 2, 3, 4];
//   final result = firstWhere(list,(x) => x==5,orElse: () => -1,);
//   print(result);
// }

// T firstWhere<T>(List<T> items, bool Function(T) f,
//     {required T Function() orElse}) {
//   for (var item in items) {
//     if (f(item)) {
//       return item;
//     }
//   }
//   return orElse();
// }

// //===============  reduce method ==================
// void main() {
//   var list = [1,2,3];

//   final sum = list.reduce((value, element) {
//     return value+2;
//   });
//   print(sum);
// }

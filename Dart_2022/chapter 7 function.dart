// void main() {
// // ======== revers function============

// //   final person = describe('Tawee', 36);
// //   print(person);
// // }

// // String describe(String name, int age) {
// //   return "My name is $name I'm $age years old";

// //============ name argument function ================
// // มี 3 ทางเลือกในการใส่ค่าใน ({parameter}) คือ ใส่  ? ใส่ required และกำหนดค่า default
// //   final person = describe(name:'Tawee',age: 36);//ให้ใส่ชื่อเข้าไป ส่งค่าสลับตำแหน่งได้
// //   print(person);
// // }
// // String describe({ String? name, int? age}) {//ให้ใช้แบบ null safety
// //   return "My name is $name I'm $age years old";
// //------------------------------------------------------------
// //   final person = describe(name:'Tawee',age: 36);//ให้ใส่ชื่อเข้าไป
// //   print(person);
// // }
// // String describe({ String name='Peter', int age=25}) {//หรือให้กำหนดค่าเบื้องต้นเข้าไป

// //   return "My name is $name I'm $age years old";//กรณีไม่ส่งค่ามาจะใช้ค่าที่กำหนดแทนเรียกว่าค่า default
//   //-----------------------------------------------------------
// //    final person = describe(name:'Tawee',age: 36);//ให้ใส่ชื่อเข้าไป
// //   print(person);
// // }
// // String describe({required String name,required int age}) {//หรือให้ใส่   required เข้าไปแทน

// //   return "My name is $name I'm $age years old";

// //-====================== position argument =============
// //     describe('Tawee');//จะส่ง argument ไปครบหรือไม่ก็ได้ถ้าไม่ส่งจะใช้ค่า default แทน
// // }//ถ้า parameter เป็น null จะไม่ส่งอากิวเมนต์ไปก็ได้
// //  describe( String name, [int age=25]) {//หรือให้ใส่ [] เข้าไปและกำหนดค่าให้ด้วยเป็นค่า default
// // //แต่สำคัญคือจะส่งค่าสลับตำแหน่งไม่ได้
// //   print ("My name is $name I'm $age years old");
// //------------------------------------------------------------
// //   run(9,b:7,c:2);
// // }
// //   void run(int a, {b: 2, c: 3}) {
// //     print('$a+$b+$c');

// //==============   fast function notation ================
// //   run(2, 9);
// // }
// // void run(int x, int y) => print(x + y);//สามารถเขียนแบบ arrow function ได้
// }
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//========================== inner function ==================
//คือการเขียน function ภายใน function main สามารถทำได้

// const global = 15;
// void main() {
//   const b = 90;
//   const a = 10;
//   void run() {
//     const a = 200; //ประกาศตัวแปรซ้ำได้
//     print(global);//เรียกใช้ตัวแปรภายนอก main ได้

//     print(a);
//     print(b);//เรียกใช้ตัวแปรภายนอกได้
//   }

//   run(); //ภาษา Dart สามารถเขียน ฟังชั่นซ้อนฟังชั่น main ได้แต่ต้องเรียกใช้หลังจากสร้างฟังชั่นเสร็จแล้ว
// }

//============== global mutable state function wiht side effect =========
//ฟังชั่นที่ดีต้องให้ผลอย่างเดียวกันทุกครั้งที่เรียกถ้าใช้ตัวแปรเดียวกันและเงื่อนใขเดียวกัน
//ไม่ควรประกาศตัวแปรนอกฟังชั่นของตัวเองหรือฟังชั่นเมนต์ เพราะอาจมีข้อผิดพลาด
// var counter = 1; // function ที่ประกาศนอก scope
// void foo() {
//   print('*' * counter);
//   // counter++;//การทำงานของฟังชั่นนี้จะมีข้อผิดพลาดเพราะไปเรียกใช้ตัวแปรที่อยู่ภายนอก scope
// }

// void main() {
//   foo();
//   counter++; //ให้มาใช้ภายในฟังชั่น main แทน
//   foo();
//   counter++;
//   foo();
// }

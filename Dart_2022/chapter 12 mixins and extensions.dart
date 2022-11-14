// mixin Breathing {
//   void breathe() => print('breathing');
// }

// mixin Swimming {
//   void swim() => print('swimming');
// }

// class Animal with Breathing {}

// class Plant with Breathing {}

// class Fish extends Animal with Swimming {}//ใช้ with เชื่อต่อ

// class Human extends Animal with Swimming {}

// void main() {
//   final fish = Fish();
//   fish.swim();
//   final human = Human();
//   human.swim();
//   // final b = Breathing();//mixin ไม่สามารถสร้าง Object  ได้
//   //mixins ไม่สามารถสร้าง constructor   ได้
// }

//================  mixins Drawbacks ==============
//กรณีนำมาต่อสอง mixin และมีตัวแปรเหมือนกันจะเรียกใช้่ตัวหลังก่อน
// mixin Mixin1 {
//   int foo = 1;
// }
// mixin Mixin2 {
//   int foo = 2;
// }

// class Foo with Mixin2, Mixin1 {//เรียกใช้งานตัวหลังก่อน
//   void printFoo() {
//     print(foo);
//   }
// }

// void main() {
//   final foo = Foo();
//   foo.printFoo();
// }

//============= extension ==============
// extension NumberParsing on String {
//   int? toIntOrNull() => int.tryParse(this);
// }

// void main() {
//   var y = int.tryParse('123');
//   var x = ''.toIntOrNull();
//   print(x.runtimeType);
// }

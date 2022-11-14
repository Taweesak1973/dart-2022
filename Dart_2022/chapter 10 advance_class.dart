//============= inheritance/subclass ================
//เป็นการสืบทอดคลาส คือการรับคุณสมบัติจากคลาสที่ไป extends มา
// class Animal {
//   void sleep() => print('sleep');
//   void eat() => print('eat');
//   void move() => print('move');
// }

// class Dog extends Animal {
//   void bark() {
//     print('bark');
//   }
// }

// class Cow extends Animal {
//   void moo() {
//     print('moo');
//   }
// }

// class CleverDog extends Dog {
//   void catchBall() {
//     print('catch');
//   }
// }

// void main() {
//   final animal = Animal();
//   animal.sleep();
//   final dog = Dog();
//   dog.bark();
//   dog.sleep();
//   final cleverDgo = CleverDog();
//   cleverDgo.sleep();
//   cleverDgo.bark();
//   cleverDgo.catchBall();
// }

//================== super constructors ===============
// class Animal {
//   Animal({required this.age});
//   final int age;

//   void sleep() => print('sleep');
//   // void eat() => print('eat');
//   // void move() => print('move');
// }

// class Dog extends Animal {
//   final String name;
//   Dog({required int age, required this.name})
//       : super(
//           age: age,
//         );

//   void bark() {
//     print('bark');
//   }
// }

// class CleverDog extends Dog {
//   // CleverDog({required super.age,required super.name});//เขียนแบบนี้ก็ได้
//   CleverDog({required int age, required String name})
//       : super(age: age, name: name);

//   void catchBall() {
//     print('catch');
//   }
// }

// class Cow extends Animal {
//   // Cow({required super.age});//เขียนแบบนี้ก็ได้
//   Cow({required int age}) : super(age: age);
//   void moo() {
//     print('moo');
//   }
// }

// void main() {
//   final animal = Animal(age: 10);
//   animal.sleep();
//   final dog = Dog(age: 10, name: 'Jumbo');
//   dog.bark();
//   dog.sleep();
//   final cleverDgo = CleverDog(age: 10, name: 'BaaBoo');
//   cleverDgo.sleep();
//   cleverDgo.bark();
//   cleverDgo.catchBall();
// }

//================== overrides ================
// class Animal {
//   Animal({required this.age});
//   final int age;

//   void sleep() => print('Animal sleep');
//   // void eat() => print('eat');
//   // void move() => print('move');
// }

// class Cow extends Animal {
//   Cow({required int age}) : super(age: age);
//   void moo() {
//     print('moo');
//   }

//   @override
//   // void sleep() => print('Cow sleep');//เขียนแบบนี้ได้
//   void sleep() {
//     super.sleep();//เรียกใช้งาน super
//     print('Cow sleepping');//สามารถเพิ่มการทำงานอื่นได้
//   }
// }

// void main() {
//   final cow = Cow(age: 10);
//   cow.sleep();
// }

//============== abstract class ==============
//abstract ไม่มี constructor หรือไม่มี Object
// import 'dart:math';

// abstract class Shape {
//   double get area;
// }

// class Square extends Shape {
//   Square(this.side);
//   final double side;
//   @override //สร้างเมดทอดชื่อเดียวกับคลาสแม่พร้อมกับสร้างตัว bodyด้วย
//   //เป็นการบังคับว่าจะต้องสร้าง
//   double get area => side * side;
// }

// class Circle extends Shape {
//   Circle(this.radius);
//   final double radius;
//   @override
//   double get area => pi * radius * radius;
// }

// void printArea(Shape shape) {
//   print(shape.area);
// }

// void main() {
//   final Shape square = Square(10); //เอาชื่อคลาสแม่มาใส่ด้านหน้าของคลาสลูกได้
//   final Shape circle = Circle(10);
//   final shapes = [Square(5), Circle(3)];
//   shapes.forEach((element) {
//     printArea(element);
//   });
// }

//=============== extends vs implement ============
//implement สามารถมี parent ได้หลายอันแต่ extends มี parentได้อันเดียว
//implement จะต้องมีการ @override เสมอ แต่ extends ไม่ต้องก็ได้
// class One {
//   void one() {
//     print('run');
//   }
// }

// class Two {
//   void two() {
//     print('two');
//   }
// }

// class Three implements Two,One {//สืบทอดได้หลายคลาส
//   void two(){}
//   void one(){}//ต้องมีการ override เสมอ
// }

//============ toString method ========
// class Point {
//   const Point(this.name, this.y);
//   final int name;
//   final int y;
// @override
//   String toString() {//เป็นเมทอดที่รับทอดมาจากคลาสแม่

//     return '$name    $y';
//   }
// }

// void main() {
//   print(Point(1, 5)); //จะทำการคืน String โดยอัตโนมัติ
// }

//============== equality operator and the covariant keyword ============
// equality  หรือ เครื่องหมาย ==
// covariant ใช้บอกชนิดของตัวแปรว่าเป็น Object
// class Point {
//   const Point(this.name);
//   final String name;

//   @override
//   bool operator ==(covariant Point other) {
//     //ใส่ operator เข้ามาเพื่อทำการเปรียบเทียบ Object
//     print('$name  ');
//     print('  ${other.name}');
//     return other.name == name;
//   }
// }

// void main() {
//   print(Point('Tawee') ==
//           Point('Tawee'
//               ) //ถ้าไม่ใช้ operator มาช่วยจะเปรียบเทียบ object ได้ไม่ตรงกับความเป็นจริง
//       );
// }

//============= implement  + and *  operator ====================
// class Point {
//   const Point(this.number);
//   final int number;
//   @override
//   Point operator +(covariant Point other) {
//     print(number);//แทนค่าของออพเจ็ตตัวแรก
//     print(other.number);//แทนค่าออพเจ็ตตัวที่สอง
//     return Point(other.number + number);
//   }
// }
// void main() {
//   var x = Point(10);
//   var y = Point(20);
//   print((x+y).number);
// }

//=======================  cascade =============
// import 'dart:math';
// class ClosedPath {
//   List<Point> _points = [];

//   void moveTo(Point point) {
//     _points = [point];
//   }

//   void lineTo(Point point) {
//     _points.add(point);
//   }
// }

// void main() {
//   final path = ClosedPath()
//     ..moveTo(Point(0, 0))//ใช้ .. แทน path
//     ..lineTo(Point(2, 0))
//     ..lineTo(Point(2, 2))
//     ..lineTo(Point(0, 2))
//     ..lineTo(Point(0, 0));
//   print(path._points);
// }

//============== copyWith ========================
// class Credentials {
//  const Credentials({this.email = '', this.password = ''});
//   final String email;
//   final String password;
// //เป็นการ copy Object
//   Credentials copyWith({String? email, String? password}) {
//     return Credentials(
//         email: email ?? this.email, password: password ?? this.password);
//   }

//   @override
//   String toString() {
//     return 'Credentials   $email   $password';
//   }
// }

// void main() {
//   const credentials = Credentials();
//   final update1 = credentials.copyWith(email: 'Taweeesak@hotmail.com');
//   print(update1);
//   final update2 = update1.copyWith(password: '123456');
//   print(update2);
// }

//================================= Json ==================
// import 'dart:math';

// abstract class Shape {
//   double get area; //สร้างฟังชั่น
//   const Shape(); //สร้าง default constructor เพื่อให้ subclass สืบทอด
//   factory Shape.fromJson(Map<String, Object> json) {
//     //สร้าง constructor  แบบ factory เพื่อส่ง Object ออกไปทำงาน
//     //ถ้าสร้างเป็นแบบ static โดยไม่ใช้ factory หมายถึงให้ทำงานที่นี่
//     final type = json['type'];
//     switch (type) {
//       case 'spuare':
//         final side = json['side'];
//         if (side is double) {
//           //กำหนดให้ side เป็น double
//           return Square(side);
//         } //side เป็น Object ใช้ไม่ได้ต้องกำหนดให้เป็น double โดยใช้ if
//         throw UnsupportedError(
//             'invalid of missing side property*********'); //ใช้แทน break
//       case 'circle':
//         final radius = json['radius'];
//         if (radius is double) {
//           //กำหนดให้ side เป็น double
//           return Circle(radius);
//         } //side เป็น Object ใช้ไม่ได้ต้องกำหนดให้เป็น double โดยใช้ if
//         throw UnsupportedError(
//             'invalid of missing side property>>>>>>>>>>'); //ใช้แทน break
//       default:
//         throw UnimplementedError('shape $type not crcognized ++++++++++++');
//     }
//   }
// }

// class Square extends Shape {
//   Square(this.side);
//   final double side;
//   @override
//   double get area => side * side;
// }

// class Circle extends Shape {
//   Circle(this.radius);
//   final double radius;
//   @override
//   double get area => pi * radius * radius;
// }

// void printArea(Shape shape) {
//   print(shape.area);
// }

// void main() {
//   final shapesJson = [
//     {'type': 'spuare', 'side': 10.0},
//     {'type': 'circle', 'radius': 5.0}
//   ];
//   final shapes = shapesJson.map((shapeJson) => Shape.fromJson(shapeJson));
//   shapes.forEach(printArea);
// }

//=======================/แสดงการสืบทอดคลาสใน flutter ===========
// abstract class Widget {}

// class Text extends Widget {
//   Text(this.text);
//   final String text;
// }

// class Button extends Widget {
//   Button({required this.child, this.onPressed});
//   final Widget child;
//   final void Function()? onPressed;
// }

// void main() {
//   final button = Button(child: Text('hello'),
//   onPressed: ()=>print('button pressed'),);
// }

//   //========================= hashCode  and  equatable package ===========
// import 'package:equatable/equatable.dart';

// //นำเข้าเพคเก็จ equatable
// void main() {
//   var x = Point(2);
//   var y = Point(2);
//   var z = x + y;
//   print(x == y);
//   print(z.number);
// }

// class Point extends Equatable {
//   // ทำการ extends Equatable
//   const Point(this.number);
//   final int number;

//   @override
//   bool? get stringify => true; //ใช้เพื่อเปรียบเทียบ Object

//   @override
//   List<Object?> get props =>
//       [number]; //นำแพคเกจเข้ามาใช้เพื่อป้องกันปัญหากรณีมีการ
//   // + - * == ตัวแปรออบเจ็ค

//   Point operator +(covariant Point other) {
//     return Point(other.number + number);
//   }
// }

//========================= class with Generics ==============
// class Stack<T> {
//   final List<T> _item = [];

//   void push(T item) => _item.add(item);//สามารถมีสมาชิกได้หลายประเภท

//   T pop() => _item.removeLast();
// }

// void main() {
//   final stack = Stack<int>();
//   stack.push(1);//เพิ่มสมาชิกแบบตัวเลข
//   stack.push(2);
//   print(stack._item);

//   final name = Stack<String>();
//   name.push('tawee');//เพิ่มสมาชิกแบบตัวอักษร
//   print(name._item);
// }

//==================== composition vs inheritance ============
// import 'dart:math';

// abstract class Shape {
//   double get area;
// }

// class Square extends Shape {
//   Square(this.side);
//   final double side;
//   @override
//   double get area => side * side;
// }

// class Circle extends Shape {
//   Circle(this.radius);
//   final double radius;
//   @override
//   double get area => pi * radius * radius;
// }

// void printArea(Shape shape) {
//   print(shape.area);
// }


// void main() {
//   final square = Square(10);
//   final circle = Circle(25);

//   printArea(circle);
// }

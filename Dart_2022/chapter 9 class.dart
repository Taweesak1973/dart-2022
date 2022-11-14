//============basic class =================
//  BankAccount(double balance) : this.balance = balance;//กับบรรทัดล่างมีความหมายอย่างเดียวกัน
//  BankAccount(double balance) {this.balance = balance;}//ใช้ : แทน {}

// void main() {
//   final bankAccount = BankAccount(100,'Tawee');
//   bankAccount.deposit(500);
//   bankAccount.widrown(1000);
//   print(bankAccount.balance);
// }

// class BankAccount {
//   BankAccount(this. balance,this.accountHolder);
//   String accountHolder;
//   double balance ;
//   void deposit(double amount) {
//     balance += amount;
//   }

//   bool widrown(double amount) {
//     if (balance >= amount) {
//       balance -= amount;
//       return true;
//     } else
//       return false;
//   }
// }

//===================== name constructor =============
//สามารถกำหนดชื่อ constructor แยกการทำงานแต่ละอย่างตามชื่อได้
//เพื่อความสะดวกในการอ้างอิงและกำหนดค่าเองได้ หรือไ่ม่กำหนดก็ได้ให้ผู้เรียกใช้กำหนดเอง
// class Complex {
//   const Complex(this.im, this.re); //สร้างแบบปกติ
//   Complex.zero() //สร้าง constructor ชื่อ zero ขึ้นมามี parameter ตามหลัง
//       : re = 10,
//         im = 10;
//   Complex.one(this.im, this.re); //หรือจะไม่กำหนด parameter ก็ได้
//   final double re;
//   final double im;
// }

// void main() {
//   final namal = Complex(0, 1);
//   final zero = Complex.zero(); //เรียกใช้ตามชื่อได้เลยไม่ต้องส่งอากิวเมนต์ไปให้
//   final one = Complex.one(10, 15);//การเรียกใช้ให้ใส่อากิวเมนต์ไปด้วย
//   print(one.im);
//   print(zero);
// }
//----------------------------------------------------------

// class Temperature {
//   Temperature.celsius(this.celsius);
//   Temperature.farenheit(double farenheit) : celsius = (farenheit - 32) / 1.8;//กำหนดค่าแบบนี้ก็ได้
//   double celsius;
// }

// void main() {
//    final a = Temperature.celsius(70);
//   final b = Temperature.farenheit(90);
//   print(b.celsius);
// }

//=================== getter and setter ================
// class Temperature {
//   Temperature(this.celsius);
//   Temperature.celsius(this.celsius);
//    Temperature.farenheit(double farenheit) : celsius = (farenheit - 32) / 1.8;

//   //ตัวแปร celsius เรียกว่า ตัวแปร store in memory
//   //ตัวแปร farenheit เรียกว่า ตัวแปร computed
//   // double get farenheit =>
//   //     celsius * 1.8 + 32; //ฟังชั่น get ไม่ต้องมีวงเล็บต่อท้าย
//   //ด้านล่างคือการสร้าง setterจะใช้คู่กับgetter มีชื่อเดียวกัน
//   set farenheit(double farenheit) => celsius = (farenheit - 32) / 1.8;
//   double celsius;
// }

// void main() {
//   final temp1 = Temperature.celsius(20);
//   final temp2 = Temperature.farenheit(90);
//   print(temp1.celsius);
// }

//=========== Restaurant Rating Excercie ======================

// class Restaurant {
//   const Restaurant(
//       {required this.name, required this.cuisine, required this.ratings});
//   final String name;
//   final String cuisine;
//   final List<double> ratings;

//   int get numRatings => ratings.length;
//   double? avgRating() {
//     if (ratings.isEmpty) {
//       return null;
//     }
//     return ratings.reduce((value, element) => value + element / ratings.length);
//   }
// }

// void main() {}

//================== static method ===================
// class One {
//   static const String name = 'Tawee';
// }// staticใช้ได้กับ ตัวแปร เมทรอด และคลาส

// main() {
//   print(One.name);//One ไม่ต้องใส่วงเล็บเพราะไม่ใช่ Object

// }

//============= private =============
//private ถ้าอยู่ในไฟล์เดียวกันจะใช้ได้แต่ถ้าอยู่คนละไฟล์จะใช้โดยตรงไม่ได้
// class BankAccount {
//   BankAccount(this._balance);

//   double _balance;
//   void deposit(double amount) {
//     _balance += amount;
//   }

//  double get balance => _balance;
//   void withdrawn(double amount) {
//     if (_balance > amount) {
//       _balance -= amount;
//     }
//   }
// }
//-----------------------------------
// // ให้แยกไฟล์ main ไปไว้อีกที่หนึ่ง
// import 'chapter 9 class.dart';

// void main() {
//   final bankAccount = BankAccount(
//     100,
//   );

//   bankAccount.deposit(1000);
//   print(bankAccount.balance);
// }

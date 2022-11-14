// void main() {
//====================การขึ้นบันทัดใหม่ ใช้ \n======================
// print(
//     'Modify this program so that the total\n calculation can be moved to'
//      'a separate function that can\n be called multiple times with different orders.'
//     '\nThis function should take the order as\n an argument, and return the total');
//  ===================== ตัวใหญ่ตัวเล้ก ============================
// String a = 'taweesak';
// print(a.toUpperCase());
//===================== การเช็ค ข้อความ  ======================

// String a = 'hello'; //ตรวจเช็คช่องว่างได้ด้วย
// print(a.contains(''));//เช็คว่าตัวอักษรในวงเล็บเป็นตัวเดียวกับตัวอักษรใน a หรือไม่ ตอบเป็น true/false

//================== การแทนที่ข้อความ ======================
// String a = 'Mr. Biden';
// String b = a.replaceAll('Biden', 'Trump');//เปลี่ยนตัวหน้าใส่ตัวหลัง จะใช้ตัวแปรเดิมก็ได้
// print(b);//=Mr.Trump

// ====================  การแปลงตัวเลขเป็นข้อความพร้อมกำหนด จุดทศนิยม =====================
// double a = 1.256;
// String b = a.toStringAsFixed(1);//ตัวเลขในวงเล็บหมายถึงจำนวนทศนิยม
// print(b);

//===================== การเปลี่ยนตัวอักษรเป็นตัวเลข ==================
// String a = '15';
// int b = int.parse(a);
// print(b);//bจะกลายเป็นตัวเลขที่สามารถคำนวนได้
// String helloString = 'hello';
// print(double.parse(helloString));

//============== การปัดเศษ =========================
// int a = 40.7.round(); //ใช้ int ร่วมกับ round() เพื่อทำให้เป็นจำนวนเต็ม
// print(a);

//============= Postfix Prefix =========================
// int x = 1;
// print(x++); // print('x=$x');
// int y = x;
// print(x);
// print('y=$y');
// int z = --y;
// print('z=$z');
//  print('x=$x y=$y z=$z');//  x=2 y=0 z=0

//================  logic  ==============================
// bool a = true; //กรณี & จะเป็นจริง ต้องเป็นจริงทั้งหมดนอกนั้นเป็นเท็จ
// bool b = false; // กรณี || จะป็นเท็จได้ต้องเป็นเท็จทั้งหมด
// bool c = true;
// bool d = false;
// print((b && d) || a && a);

//================ ternary ==================================

// int x = 9; //เป็นการเปรียบเทียบแบบพิเศษ ถ้าเงื่อนไขเป็นจริงจะให้มีค่าอันแรกถ้าไม่เป็นจริงจะให้มีค่าที่สอง
// int y = x == 0 ? 100 : 200;//หมายความว่าถ้าxมีค่า0จะให้yมีค่า100ถ้าไม่เท่ากับ0ให้yมีค่า200
// print(y);//200

//----------------print(0xFfab);ใช้สำหรับเลขฐาน 16 เรื่องค่าสี ARGB
// }

// void main() {
//   // var a = One.count;
//    var b = One.addNumber();
//    var e = One.addNumber();
//   var c = One.x();
//   var d = One.x();
//   c;
//   d;
// }

// class One {
//   static int count = 0;
//   static void x() {
//     print('xxx = ${count}');
//   }

//   static int addNumber() {
//     return ++count;
//   }
// }
//=====================================================

// class Universe{
  
//   String? name;
  
//   static Universe u = Universe.init(); 
  
//   factory Universe(){
//     return u;
//   }
  
//   Universe.init(){
//     name = "A";
//   }
// }

 //======================================================== 

// class SomeService {
//   static SomeService? _object;
//   static SomeService getInstance() {
//     if (_object == null) {
//       _object = SomeService();
//     }

//     return _object!;
//   }

//   int number = 0;
//   int count() {
//     number++;
//     return number;
//   }
// }

// class SomeService1 {
//   SomeService1._one();
//   static SomeService1 getInstance = SomeService1._one();
//   int number = 0;
//   void count() {
//     number++;
//     print('count ${number}');
//   }
// }

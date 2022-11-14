void main() {
//   //============= Lists 1 ====================
  // var cities = ['London', 'Paris', 'Moscow'];
  // for (var i in cities) {
  //   print(i);
  // }//for ทั้งสองแบบให้ผลเหมือนกัน
  // List citie = ['London', 'Paris', 'Moscow'];
  // for (var i =0;i<citie.length;i++) {
  //   {print(citie[i]);}
  // }
 
  //============== List Operator ==================
  // var cities = ['London', 'Paris', 'Moscow'];
  // print(cities.length); //จำนวนสมาชิกในลีส
  // print(cities.isEmpty); //จะเป็นจริงถ้าไม่มีสมาชิก
  // print(cities.isNotEmpty); //จะเป็นจริงถ้ามีสมาชิก
  // print(cities.first); //ตัวแรก
  // print(cities.last); //ตัวสุดท้าย

  //================ list add ================
  // List cities = ['London', 'Paris', 'Moscow'];
  // cities.add('Tokyo'); //เพิ่มต่อท้าย
  // cities.insert(2, 'Yokohama'); //แทรกระบุตำแหน่ง
  // cities.removeAt(2); //ลบสมาชิกอินเดกซ์ที่2
  // cities.contains('Tokyo'); //ตรวจสอบว่ามีสมาชิกนี้หรือไม่ถ้ามีจะตอบ true
  // cities.indexOf('Paris'); //จะแสดงตำแหน่งสมาชิกออกมา
  // cities.clear(); //จะลบสมากชิกทั้งหมดออกจากลีส

  //=================Type notation of List =================
  // List<String> cities = <String>[
  //   'London',
  //   'Paris',
  //   'Moscow'
  // ]; //String คือ Type notation
  // var citie = <String>['London', 'Paris', 'Moscow']; //String คือ Type notation
  // final citi = <String>['London', 'Paris', 'Moscow'];
  // citi[1] = 'Hello'; //สามารถเพิ่มค่าได้
  // const cit = <String>['London', 'Paris', 'Moscow'];
  // cit[1] = 'Hello'; //ไม่สามารถเพิ่มค่าได้ จะ error ตอน runtime

  //================= set ===================
  //เป็นการจัดเก็บสมาชิกแบบไม่ซ้ำกัน
  // var cities = {
  //   'London',
  //   'Paris',
  //   'Moscow',
  //   'London'
  // }; //สมาชิกที่ซ้ำจะไม่ถูกแสดงออกมาแต่สามารถทำงานได้
  // print(cities.elementAt(0)); //การเข้าถึงสมาชิกใช้แบบนี้
  // cities.add('Bankok');//การเพิ่มสมาชิก
  // print(cities);

  //======= set union intersection difference================
  // Set a = {'d', 'e', 'a', 2};
  // Set b = {'a', 'b', 'c'};
  // print(a.union(b)); //สามารถเอาสตริงต่อกับตัวเลขได้แต่จะไม่มีสมาชิกซ้ำกัน
  // print(a.intersection(b)); //จะแสดงเฉพาะตัวที่ซ้ำกัน
  // print(a.difference(b)); //เอาเฉพาะตัวที่ไม่ซ้ำ
  // for (var i in a) {
  //   print(a);
  // } //สามารถใช้วงวนเพื่อดึงสมาชิกออกมาแสดงได้

  //============== Test set ====================
  // const a = {1, 9, 5, 2, 0};
  // const b = {9, 2, 8, 3, 1, 6};
  // final c = a.union(b).difference(a.intersection(b));
  // print(c);
  // //a.union(b)= 1 9 5 2 0 8 3 6   -->==x
  // //a.intersection(b)= 1 8 2    --> ==y
  // //x.difference(y)=5 0 8 3 6

  //=============== Maps =======================
  // var person = <String, dynamic>{//สามารถใช้ Object แทน dynamic ได้
  //   'name': 'Tawee',//เนื่องจากสมาชิกมีหลายชนิดจึงใช้ dynamic แทน
  //   'age': 35,
  //   'height': 168.2,
  // };
  // print(person['age']);

  //=============การเพื่มค่าเข้าไปใน Map================
  //  var a = {};
  // a['ont'] = 100;//ไม่ต้องใช้ add
  // print(a);

  //================= as Operator =================
  // var person = <String, dynamic>{
  //   'name':
  //       'Tawee', //การใช้ dynamic ทำให้ระบบไม่แน่ใจว่าเป็นข้อมูลชนิดไดดังนั้นจึงมีการใช้
  //   'age': 35, //as String เข้ามาใช้เพื่อบอกว่าเป็นข้อมูลชนิดนั้นๆ
  //   'height': 168.2,
  // };
  // int ag = person['age']; //ไม่ต้องใช้ as int เพราะ ได้กำหนดชนิดไว้ข้างหน้าแล้ว
  // var name = person['name'] as String; //.ใช้ as String เพราะข้างหน้าเป็น var
  // print(name);
  // print(ag);

  //============= null value in Map ====================
  // var person = <String, dynamic>{
  //   'name': 'Tawee',
  //   'age': 35,
  //   'height': 168.2,
  // };
  // print(person['hello']);//การเข้าถึงสมาชิกที่ไม่มีอยู่จะได้ค่าเป็น null

  //========== Maps Iterable ============
  //หมายถึงการทำซ้ำ
  // var person = <String, dynamic>{
  //   'name': 'Tawee',
  //   'age': 35,
  //   'height': 168.2,
  // };
  // for (var v in person.values) {//เข้าถึง values
  //   print(v);
  // }
  // for (var k in person.keys) {//เข้าถึง keys
  //   print(k);
  // }
  // for (var e in person.entries) {//เข้าถึง รายการทั้งหมด entries
  //   print(' ${e.key}: ${e.value}');
  // }

  //========== การทำงานร่วมกันของ set map list  =====================
  /*
  'name':'Pizza Mario',
  'cuisine':'Italian',
  'rating':[5.0,3.5,4.5]

  'name': 'Chez Anne',
  'cuisine':'French',
  'ratings':[5.0,4.5,4.0]

  'name':'Navaratna',
  'cuisine':'Indian',
  'raings':[4.0,4.5,4.0]
   
   */
  // var restaurants = [
  //   {
  //     'name': 'Pizza Mario',
  //     'cuisine': 'Italian',
  //     'ratings': [5.0, 3.5, 4.5]
  //   },
  //   {
  //     'name': 'Chez Anne',
  //     'cuisine': 'French',
  //     'ratings': [5.0, 4.5, 4.0]
  //   },
  //   {
  //     'name': 'Navaratna',
  //     'cuisine': 'Indian',
  //     'ratings': [4.0, 4.5, 4.0]
  //   },
  // ];

  // for (var restaurant in restaurants) {
  //   // print('   $restaurant');

  //   //ตัวแปร restaurant จะเก็บสมาชิกของ list restaurants เอาไว้
  //   //restaurant จะเป็นตัวแทนสมาชิกแต่ละตัวใน list
  //   var totalScore = 0.0; //สร้างตัวแปรขึ้นมาเพื่อเก็บค่า rating
  //   var rating = restaurant['ratings'] as List<double>;
  //   //สร้างตัวแปร rating เพื่อเป็นตัวแทนของ rating ในแต่ละแถว
  //   //ใช้ as List<double> เพื่อบอกชนิดของข้อมูลใน rating ไม่ระบุจะ error
  //   for (var score in rating) {
  //     print('   $score');

  //     //ใช้ตัวแปร score เพื่อเข้าถึงสมาชิกแต่ละตัวของ rating
  //     //ตัวแปร score จะเก็บสมาชิกแต่ละตัวใน rating เอาไว้
  //     totalScore += score / 3;
  //   }
  //   var avarage = {'avarage': (totalScore.toStringAsFixed(2))};
  //   restaurant.addAll(avarage);
  //   // print(restaurant);
  //   print('  $restaurant');
  //   print('                 ++++++++++++++++++++++++++++++++++++');
  // }
  //              รูปแบบการทำงานของ for (var restaurant in restaurants)
//-+++++++++++++  restaurants[0]  ทำงานจนเสร็จในแต่ละสมาชิกแล้วค่อยทำตัวต่อไป
// x = 0  {name: Pizza Mario, cuisine: Italian, ratings: [5.0, 3.5, 4.5]}
// y= 0  5.0
// y= 1  3.5
// y= 2  4.5
// z= 0 {name: Pizza Mario, cuisine: Italian, ratings: [5.0, 3.5, 4.5], avarage: 4.33}
//-+++++++++++++++++ restaurants[1] -++++++++++++++++++++++
// x = 1  {name: Chez Anne, cuisine: French, ratings: [5.0, 4.5, 4.0]}
// y= 3  5.0
// y= 4  4.5
// y= 5  4.0
// z= 1 {name: Chez Anne, cuisine: French, ratings: [5.0, 4.5, 4.0], avarage: 4.50}
//-+++++++++++++++++++++++++++ restaurants[2] +++++++++++++++++++++++
// x = 2  {name: Navaratna, cuisine: Indian, ratings: [4.0, 4.5, 4.0]}
// y= 6  4.0
// y= 7  4.5
// y= 8  4.0
// z= 2 {name: Navaratna, cuisine: Indian, ratings: [4.0, 4.5, 4.0], avarage: 4.17}
//           การทำงานแบบ for(var i in x) จะแบบวงวน บนลงล่างอิงรอบตามสมาชิกของ x

  // var restaurants = [
  //   {
  //     'name': 'Pizza Mario',
  //     'cuisine': 'Italian',
  //     'ratings': [5.0, 3.5, 4.5]
  //   },
  //   {
  //     'name': 'Chez Anne',
  //     'cuisine': 'French',
  //     'ratings': [5.0, 4.5, 4.0]
  //   },
  //   {
  //     'name': 'Navaratna',
  //     'cuisine': 'Indian',
  //     'ratings': [4.0, 4.5, 4.0]
  //   },
  // ];

  // for (var restaurant in restaurants) {
  //   restaurant['_'] =true;//การเพิ่มสมาชิกเข้าไปในแมปสามารถทำแบบนี้ได้เลย
  //   print(restaurant);
  // final ratings = restaurant['ratings'] as List<double>;
  // print(ratings);
  // var total = 0.0;
  // for (var rating in ratings) {
  //   total += rating;
  // }
  // print(total);
  // final avgRating = total / ratings.length;
  // print(avgRating);
  // print(restaurants);
  // restaurant['avgRating'] = avgRating;
  // }

  //============================================================================================
  //============== colection if  list map =================================
  //สามารถใส่เงื่อนไขไว้ใน list ได้

  // const addRed = true;
  // const addYellow = false;
  // final color1 = [
  //   'black',
  //   if (addRed) 'red',//เพิ่มเข้ามาได้เพราะเงื่อนไขเป็นจริง ไม่ต้องใช้เครื่องมหาย { }
  //   'purple',
  //   if (addYellow) 'yellow'//yellow จะไม่ถูกรวมเข้ามาเพราะ เป็น เท็จ
  // ];
  // print(color1);

  //============== colection for list map =================================
//   const addRed = true;
//   const addYellow = false;
//   const extraColors = ['One', 'Two'];
//   final color1 = [
//     'black',
//     if (addRed)
//       'red', //เพิ่มเข้ามาได้เพราะเงื่อนไขเป็นจริง ไม่ต้องใช้เครื่องมหาย { }
//     'purple',
//     if (addYellow) 'yellow', //yellow จะไม่ถูกรวมเข้ามาเพราะ เป็น เท็จ
//   for(var color in extraColors)//ไม่ต้องมีวงเล็บปีกกาก็ได้
//   color //เพิ่มสมาชิกเข้าไปโดยอัตโนมัติ ให้ผลเหมือนใช้ฟังชั่น addAll()
//  ];
//   color1.addAll(extraColors);//ไม่จำเป็นต้องใช้แบบนี้
//   print(color1);

  //============== colection spreads list map =================================
  // const addRed = true;

  // const extraColors = ['One', 'Two'];
  // const extraColors1 = ['Three', 'Four'];
  // final color1 = [
  //   'black',
  //   if (addRed) 'red',
  //   'purple',
  //   extraColors,//[black, red, purple, [One, Two]]//ถ้าเพิ่มเข้ามาโดยตรงจะมีวงเล็บก้ามปูติดมาด้วย
  //   ...extraColors1 //[black, red, purple, [One, Two], Three, Four]มีจุดจะไม่มีก้ามปู
  //   //...หมายความว่าให้ดึงสมาชิกในลีสออกมาแสดงทีละตัว เรียกว่า spreads Operator ใช้แทน for
  // ];

  // print(color1);

  //================ Spreads Operator 2 =================
  //การเพิ่มสมาชิกภายใน Map โดยใช้เงือนไขกำกับ
  // const bananas = 5;
  // const apples = 6;
  // const grains = {'pasta': '500g', 'rice': '1kg'};
  // const addGrains = true;
  // var shoppingList = {
  //   if (true) ['bananas']: bananas,
  //   if(true)['apples']:apples,
  //   if(true)
  //  ... grains
  // };
  // print(shoppingList);

  //================ Spreads Operator 2 =================
  //การเพิ่มสมาชิกภายใน List โดยใช้เงือนไขกำกับ
  // const bananas = 5;
  // const apples = 6;
  // const grains = ['pasta','500g', 'rice', '1kg'];
  // const addGrains = true;
  // var shoppingList = [
  //   if (true) 'bananas',
  //   if(true)'apples',
  //   if(true)
  //  ... grains
  // ];
  // print(shoppingList);

  //======================== copy colection ================

//   var a = [1, 2, 4];
//   var b =
//       a; //แบบนี้เป็นการใช้หน่วยความจำร่วมกันดังนั้นถ้าสมาชิกในลีสไดเปลี่ยนอีกลีสจะเปลี่ยนตาม
//   // การ copy ที่ถูกต้องคือการ copy ทีละตัว
//   var c = [for (int i = 0; i < a.length; i++) b[i] = a[i]];//ใช้วงวนในลีส
//   var d = [...a];// หรือจะใช้วงวนแบบสั้นเพื่อ copy ก็ได้

// ============== itarable List  Lazy mode ================
// จะทำงานเฉพาะตัวที่ถูกเรียกเท่านั้นจะไม่ทำงานทั้งหมด
  // var a = Iterable.generate(10, (index) {
  //   print('hello');//ถ้าใช้ List จะทำงาน 10 ครั้ง แต่ Iterable ทำครั้งเดียวเพราะเรียกครั้งเดียว
  //   return index;
  // });
  // print(a.elementAt(5));

//============== Function iterable =========
//ฟังชั่นที่คืนค่าเป็น iterable จะมีลักษณะเป็นลีสในทันทีและจะทำงานเฉพาะที่ถูกเรียกเท่านั้น
//ต้องใช้ sync* หน้าปีกกา และให้ใช้ yield แทน return โดยใส่ได้เรื่อยๆ
  // Iterable a() sync* {
  //   var x = 8;
  //   var y = 2;
  //   while (x > y) {
  //     y += 1;
  //     yield x + y; //ถ้าใช้ return จะใส่ค่าต่อไม่ได้แต่ yield สามารถใส่ได้
  //     if (x == y) {
  //       break;
  //     }
  //   }
  // }
  // print(a());

//=================== Operator  *yield ===================
//ฟังชั่นที่คืนค่าแบบ Iterable เรียกใช้งาน ฟังชั่นแบบเดียวกัน
//   Iterable<int> one() sync* {
//     yield 100;
//     yield 200;
//   }
//   Iterable<int> two() sync* {
//     yield* one();
//   }
//   print(two().elementAt(0));
}

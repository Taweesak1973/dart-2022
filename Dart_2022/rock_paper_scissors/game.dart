// //========= คำสั่งคอมมานไลน์ Commanline =================
// import 'dart:io';
// import 'dart:math'; //นำเข้าเพื่อรับคำสั่งจากแป้นพิมพ์ แสดงผลทาง terminal

// enum Move { rock, paper, scissors }

// void main() {
//   print('It\'s a book');
//   final rng = Random();
//   while (true) {
//     //ใช้ loop เพื่อรับคำสั่งและแสดงผลแบบไม่รู้จบ
//     stdout.write(
//         'Rock,paper or scissors? (r/p/s)'); //stdout คือคำสั่งแสดงผลออกจอภาพ
//     final input = stdin.readLineSync(); //stdin คือคำสั่งรอรับข้อมูลจากคีย์บอร์ด
//     if (input == 'r' || input == 'p' || input == 's') {
//       var playerMove;
//       if (input == 'r') {
//         playerMove = Move.rock;
//       } else if (input == 'p') {
//         playerMove = Move.paper;
//       } else {
//         playerMove = Move.scissors;
//       }
//       final random = rng.nextInt(
//           3); // สุ่มตัวเลขจาก 0-2 มาเก็บใน random เพื่อเป็นค่าอินเดกซ์ใน Move
//       final aiMove = Move
//           .values[random]; //นำอินเดกซ์ ไปแทนค่าจะได้ค่าใน enum มาเก็บใน aiMove
//       print('YOu plsyed: $playerMove');
//       print('Ai Player: $aiMove');
//       if (playerMove == aiMove) {
//         print('It\'s a draw ');
//       } else if (playerMove == Move.rock && aiMove == Move.scissors ||
//           playerMove == Move.paper && aiMove == Move.rock ||
//           playerMove == Move.scissors && aiMove == Move.paper) {
//         print('You win');
//       } else {
//         print('You lose');
//       }
//       print('Select $input');
//     } else if (input == 'q') {
//       break;
//     } else {
//       print('Invalid input');
//     }
//   }
// }

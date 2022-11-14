// void main() {
//   //================  null safety Operator ! ============
//   int? a;
//   int b = 2;
//   // print(a + b);//บวกไม่ได้เพราะ a เป็น null
//   print(a! + b); //สามารถทำได้ไม่มีปัญหาในตอน compli แต่จะ runtime ไม่ผ่าน
//   //เครื่องหมาย ! มีไว้บอก compli ว่าจะไม่เป็น null ให้ทำงานต่อได้
// }
//-----------------------------------------------------------
// void main(){
//   int x = 3;
//   int? y;
//   if (x > 2) {
//     y = x;
//   } //ถ้าใส่  else ตรงนี้จะไม่ต้องใส่ ! เพราะ y จะไม่มีทางเป็น null
//   int z = y!; //ถ้าไม่ใส่เครื่องหมาย ! จะแจ้ง error
//   print(z);
// }
//============= null safety condition =================
// void main(){
//   int x = 10;
//   int y = x < 18 ? 1 : 5; //สามารถตั้งต่าเป็น null แล้วใส่ค่าให้ทีหลังได้
//   int z;
//   if (x != null) {
//     z = 2;
//   } else {
//     //การกำหนดเงื่อนไขต้องมี else ด้วยคือต้องกำหนดให้ครอบคลุมทุกกรณี
//     z = 5;
//   }
//   print(x + y + z);

//============= if null Operator ?? ==================
//   void main(){
//   int x = -1;
//   int? maybeValue;
//   if (x > 0) {
//     maybeValue = x;
//   }
//   int value = maybeValue ??
//       0; //มีความหมายว่า ถ้า maybeValue เป็น null ให้มีค่าเท่ากับ 0
//   print(value);
// //ใช้ ?? กรณีมีค่าเริ่มต้นเอาไว้แล้ว คือถ้าเป็น null ก็ให้ใช้ค่าเริ่มต้นไปก่อน
//   }
//-------------------------------------------------
// void main(){
//   const x = -1;
//   var maybeValue;
//   if (x > 0) {
//     maybeValue = x;
//   }
//   maybeValue ??
//       0; //บรรทัดนี้ maybeValue ยังมีค่าเป็น null เพราะยังไม่ได้แทนค่าเป็นแค่เงื่อนไข

//   final value =
//       maybeValue; //ตอนนี้ก็ยังคงเป็น null เพราะค่าที่รับไปยังมีค่าเท่าเดิม
//   print(value);
// }
// ============ null safety colection =================
// void main(){
//   const name = <String>['one', 'two', null]; //แบบนี้จะ error
//   const name = <String?>['one', 'two', null]; //ใส่เครื่องหมาย ? จะไม่   error
//   //  แต่การทำงานอาจมีปัญหาได้เช่น
//   //  print(name);
//   for (var n in name) {
//     // print(n!.toUpperCase()); //จะทำงานจนกว่าจะเจอตัวที่ทำให้ error
//     if (n != null) {
//       print(n.toUpperCase());
//     }
//     // else{print('n=null');}//ทำเงื่อนไขดัก error ไว้เพื่อให้ทำงานได้จนจบ
//   }
// }
// -----------------------------------
void main() {
  //ใส่ ? เพื่อให้ทำงานไปจนจบเว้นแต่จะcompli ไม่ผ่าน

  const cities = <String?>['London', 'Paris', null];
  for (var city in cities) {
    
    print(city?.toUpperCase());
  }
}

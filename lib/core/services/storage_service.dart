import 'dart:io';

abstract class StorageService {
  Future<String> uploadFile(File file, String path);
//   Future<String>  //ده اساسي ف الميسود انها هتستقبل فايل وهترجع استرينج سواء اي اب اي او فاير ستورج
// File file, //الفايل نفسه متغير لانه مش واحد وحددت نوعه فايل مش استرينج 
//  عشان عملية التحويل تتم داخل الميسود علطول
// لانها لو استرينج هاضطر اني اعمل عملية تحويل او بارس للفايل 
// عشان كده انا بخلي المتغير من نوع فايل مباشرة
// String path //لازم المسار يكون ك كتغير لاني المسار ممكن يتغير


   
}
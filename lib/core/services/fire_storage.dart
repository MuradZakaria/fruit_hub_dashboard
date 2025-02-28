import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:fruit_hub_dashboard/core/services/storage_service.dart';
import 'package:path/path.dart' as b;


class FireStorage implements StorageService {
  final storageReferance = FirebaseStorage.instance.ref();
  @override
  Future<String> uploadFile(File file, String path) async {
    String fileName =b. basename(file.path);
    String extentionName = b.basename(file.path);

    var fileReferance =
        storageReferance.child('$path/$fileName.$extentionName');

    await fileReferance.putFile(file);
    var imageUrl = await fileReferance.getDownloadURL();
    return imageUrl;
  }
}




//الشرح
//انا بقرأ الدكيومنتشن واعدل الكود ع حسب احتياجي
// class FireStorage implements StorageService {
//   final storageReferance = FirebaseStorage.instance.ref();//هنا انا بجيب الريفرانس اللي هسجل فيه
//            //لازم يكون فيه ريفرانس اسجل فيه عشان لو عاوز اعمل داونلود للفايلات فيما بعد
//   @override
//   Future<String> uploadFile(File file, String path) async {
//     String fileName = b.basename(file.path);//عشان اجيب اسم الفايل واخزنه ف المتعير ده من خلال باكدج باث وبستخدم متغير الفايل دوت الاث او المسار الخاص بافايل
//     String extentionName = b.basename(file.path);//عشان اجيب امتداد الفايل واخزنه ف المتغير

//     var fileReferance =  //ده المسار اللي هحط فيه الصورة لازم احدده وممكن يكون ملف جوه ملف جوه ملف عادي او ملف واحد شامل
//         storageReferance.child('$path/$fileName.$extentionName');//دوت عشان انا مش عارف الفايل هيجي اسم دوت الامتداد ولا لأ
//    **/*fileReferance    المتغير ده شايل دلوقتي المسار والاسم والامتداد
// **('$path/ده المسار قبل الفايل بعد كده لازم احط الفايل بالتحديد
// بعد كده انا محتاج تحدد اسم الفايل والامتداد الخاص بيه

//   //المسار انا بعمله كمتغير يعني مش ثابت وكمان اسم الملف ونوع الملف او الامتداد بتاعه كل ده لازم يكونو متغيرات
//     await fileReferance.putFile(file);
//     var imageUrl = fileReferance.getDownloadURL();
//     return imageUrl;
//   }
// }


//الشرح
// بجيب اسم الفايل والامتداد
// بسجلهم ف متغير مع المسار
// بعمل بوت فايل للمتغير اللي مخزن فيه المسار والاسم والامتداد
// من نفس المتغير بجيب اليو ار ال
// بعمل ريترن للمتغير اللي مسجل فيه اليو ار ال

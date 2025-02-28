import 'dart:io';

import 'package:fruit_hub_dashboard/core/consts/consts.dart';
import 'package:fruit_hub_dashboard/core/services/storage_service.dart';
import 'package:path/path.dart' as b;
import 'package:supabase_flutter/supabase_flutter.dart';

class SubabaseStorgeService implements StorageService {
  static late Supabase subabase;

//ده عشان ينشئ بوكيت ويفضل اني اعمل من الداش بورد نفسها
  static createBuckets(String bucketName) async {
    var buckets = await subabase.client.storage.listBuckets();
    bool isBucketExist = false;
    for (var bucket in buckets) {//بعمل تشك عشان لو اسم البوكيت موجود مش يتكرر ويعمل اكسبشن
      if (bucket.id == bucketName) {
        isBucketExist = true;
        break;
      }
    }
    if (!isBucketExist) {
      await subabase.client.storage.createBucket(bucketName);
    }
  }

  static initSubabase() async {
    subabase = await Supabase.initialize(url: kSubabaseUrl, anonKey: kAnonKey);
  }

  @override
  Future<String> uploadFile(File file, String path) async {
    String fileName = b.basename(file.path);  //ده عشان اجيب السم والامتداد
    String extentionName = b.extension(file.path);


//ده بيعمل ابلود للصوره من غير اليو ار ال
    var result = await subabase.client.storage
        .from('Fruits_images')
        .upload('$path/$fileName.$extentionName', file);

//ده بيرجع اليو ار ال الخاص بالصورة
    // ignore: unused_local_variable
    final String publicUrl = subabase.client
        .storage
        .from('Fruits_images')//ده اسم البوكيت
        .getPublicUrl('$path/$fileName.$extentionName');
    return result;
  }
}

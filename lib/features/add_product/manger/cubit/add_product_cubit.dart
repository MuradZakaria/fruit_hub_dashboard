import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_dashboard/core/repos/product%20repo/images_repo/images_repo.dart';
import 'package:fruit_hub_dashboard/core/repos/product%20repo/product_repo.dart';
import 'package:fruit_hub_dashboard/features/add_product/domain/entities/product_entity.dart';

part 'add_product_cubit_state.dart';

class AddProductCubit extends Cubit<AddProductCubitState> {
  AddProductCubit(this.imagesRepo, this.productRepo)
      : super(AddProductCubitInitial());
  final ImagesRepo imagesRepo;
  final ProductRepo productRepo;
//هنا الكيوبيت هيقوم بعمليتين 
//الاولي رفع الصورة ع الداتا بيز ويديني اليو ار ال
//هسجل اليو ار ال ف المتغير الخاص بالكويدل
//ثانيا اضافة المنتج كله بالصوورة
  Future<void> addProduct(
      {required ProductInputEntity addProductInputEntity}) async {
    emit(AddProductCubitLoading());
    var result = await imagesRepo.uploadImage(addProductInputEntity.image);
    result.fold((f) {
      emit(AddProductCubitFailure(f.message));
    }, (url) async {
      addProductInputEntity.imageUrl = url;//بخزن اليو ار ال ف المتغير الخاص بالانتيتي 
      var result = await productRepo.addProduct(addProductInputEntity);
      result.fold((f) {
        emit(AddProductCubitFailure(f.message));
      }, (r) {
        emit(AddProductCubitSuccess());
      });
    });
  }
}

//الشرح
// /*/*/*مهم جدا جلب اليو ار ال وكمان اضافة المنتج كامل بيالبيانات والصورة
// class AddProductCubitCubit extends Cubit<AddProductCubitState> {
//   AddProductCubitCubit(this.imagesRepo, this.productRepo)
//       : super(AddProductCubitInitial());
//   final ImagesRepo imagesRepo;  //بعمل متغيرات من نوع الكلاس اللي مخزن فيه الميسود عشان اكسس الميسود
//                //الاول المسؤل انه يرجعلي اليو اي ال
//   final ProductRepo productRepo;//ده المسؤل انه يضفيف تامنتج بشكل عام

//   Future<void> addProduct(  //بعمل ميسود هضيف المنتج كامل من خلال الانتيتي موديل اللي انا عامله
//       {required AddProductInputEntity addProductInputEntity}) async {
//     emit(AddProductCubitLoading());//في حالة التحميل
//     var result = await imagesRepo.uploadImage(addProductInputEntity.image);//هستخدم ميسود رفع الصورة وهترجع فايل الصورة كامل
//     result.fold((f) { //عشان الميسود ايذر هترجع فشل او نجاح
//       emit(AddProductCubitFailure(f.message));//فشل هيعرض رسالة الفشل
//     }, (url) async {  //النجاح
//       addProductInputEntity.imageUrl = url;//هخزن اليو ار ال اللي جبته ف المتغير الخاص باليو ار ال ف الانتيتي
//                 //كده انا عندي الانتيتي موديل كامل باليو اري ال عشان اعرف استخدمه اني اضيف منتج
//  var result = await productRepo.addProduct(addProductInputEntity);//بستدعي الميسود اللي بضيف المنتج وبتستقبل الانتيتي كوديل كامل البيانات واليو ار ال
//       result.fold((f) {
//         emit(AddProductCubitFailure(f.message));//فشل
//       }, (r) {
//         emit(AddProductCubitSuccess());//او نجاح
//       });
//     });

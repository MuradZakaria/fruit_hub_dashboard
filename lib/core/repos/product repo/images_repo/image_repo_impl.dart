import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fruit_hub_dashboard/core/errors/failure.dart';
import 'package:fruit_hub_dashboard/core/repos/product%20repo/images_repo/images_repo.dart';
import 'package:fruit_hub_dashboard/core/services/storage_service.dart';
import 'package:fruit_hub_dashboard/core/utiles/backend_endpoints.dart';

class ImageRepoImpl implements ImagesRepo {
  final StorageService storageService;
  ImageRepoImpl(this.storageService);
  @override
  Future<Either<Failure, String>> uploadImage(File image) async {//هنا ايذر  عشان الميسود ممكن تكون نجاح او فشل
    try {
      String url =
          await storageService.uploadFile(image, BackendEndpoints.products);//بستدعي الميسود اللي فيها اللوجيك الخاص برفع الصورة
      return Right(url);
    } catch (e) {
      return const Left(ServerFailure('Failed to upload image'));
    }
  }
}

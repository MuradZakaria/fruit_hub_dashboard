import 'package:fruit_hub_dashboard/core/repos/product%20repo/images_repo/image_repo_impl.dart';
import 'package:fruit_hub_dashboard/core/repos/product%20repo/images_repo/images_repo.dart';
import 'package:fruit_hub_dashboard/core/repos/product%20repo/product_repo.dart';
import 'package:fruit_hub_dashboard/core/repos/product%20repo/product_repo_implents.dart';
import 'package:fruit_hub_dashboard/core/services/database_service.dart';
import 'package:fruit_hub_dashboard/core/services/firestore_services.dart';
import 'package:fruit_hub_dashboard/core/services/storage_service.dart';
import 'package:fruit_hub_dashboard/core/services/subabase_storge.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<StorageService>(SubabaseStorgeService());
  getIt.registerSingleton<DatabaseService>(FirestoreServices());
  getIt.registerSingleton<ImagesRepo>(
    ImageRepoImpl(getIt.get<StorageService>()),
  );
    getIt.registerSingleton<ProductRepo>(ProductRepoImplents(
      getIt.get<DatabaseService>(),
      ));
}

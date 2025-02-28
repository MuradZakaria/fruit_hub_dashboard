import 'package:dartz/dartz.dart';
import 'package:fruit_hub_dashboard/core/errors/failure.dart';
import 'package:fruit_hub_dashboard/core/repos/product%20repo/product_repo.dart';
import 'package:fruit_hub_dashboard/core/services/database_service.dart';
import 'package:fruit_hub_dashboard/core/utiles/backend_endpoints.dart';
import 'package:fruit_hub_dashboard/features/add_product/data/models/product_model.dart';
import 'package:fruit_hub_dashboard/features/add_product/domain/entities/product_entity.dart';

class ProductRepoImplents implements ProductRepo {
  final DatabaseService databaseService;
  ProductRepoImplents(this.databaseService);
  @override
  Future<Either<Failure, void>> addProduct(
      ProductInputEntity addProductinputEntity) async {
    try {
      await databaseService.addData(
        path: BackendEndpoints.products,
        data: ProductInputModel.fromEntity(addProductinputEntity).toJson(),
      );
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}

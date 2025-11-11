import 'package:fpdart/fpdart.dart';
import '../../../../../core/core.dart';
import '../../../data/models/get_products_model/get_all_products_model.dart';

abstract interface class ProductAbstractRepository {
  //╔══════════════════════════════════════════════════════════════════════════════╗
  //║                               Remote Operations                              ║
  //╚══════════════════════════════════════════════════════════════════════════════╝

  Future<Either<AppException, List<GetAllProductsModel>>> getAllProducts();

  //╔══════════════════════════════════════════════════════════════════════════════╗
  //║                            Local Products Management                         ║
  //╚══════════════════════════════════════════════════════════════════════════════╝

  /// Retrieves all products from local database
  Future<Either<AppException, List<GetAllProductsModel>>> getAllLocalProducts();

  /// Inserts products into local database
  Future<Either<AppException, List<int>>> insertProductsLocal(
    List<GetAllProductsModel> products,
  );

  /// Clears all products from local database
  Future<Either<AppException, bool>> clearLocalProducts();

  /// Retrieves a local product by its ID
  /// Returns [AppException] if product not found or any error occurs
  Future<Either<AppException, GetAllProductsModel?>> getLocalProductById(
   {required String productId}
  );
}

import 'package:fpdart/fpdart.dart';
import '../../../../../../core/core.dart';
import '../../../data/models/get_products_model/get_all_products_model.dart';
import '../../../data/models/get_products_packing/get_packings.dart';

abstract interface class ProductAbstractRepository {
  //╔══════════════════════════════════════════════════════════════════════════════╗
  //║                               Remote Operations                              ║
  //╚══════════════════════════════════════════════════════════════════════════════╝

  Future<Either<AppException, List<GetAllProductsModel>>> getAllProducts();
  Future<Either<AppException, List<GetPackings>>> getAllPackings();

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

  Future<Either<AppException, GetAllProductsModel?>> getLocalProductById({
    required int productId,
  });

  Future<Either<AppException, List<GetPackings>>> getAllLocalPackings();
  Future<Either<AppException, List<int>>> insertPackingsLocal(
    List<GetPackings> packings,
  );
  Future<Either<AppException, bool>> clearLocalPackings();
  Future<Either<AppException, GetPackings>> getPackingsById({
    required int packingId,
  });
}

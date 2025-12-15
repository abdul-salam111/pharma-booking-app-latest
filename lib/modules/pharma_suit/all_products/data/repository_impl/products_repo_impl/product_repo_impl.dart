import 'package:fpdart/fpdart.dart';

import '../../../../../../core/core.dart';
import '../../../domain/repository/product_repository/product_repository.dart';
import '../../datasources/local_datasource/local_product_datasource/local_product_datasource.dart';
import '../../datasources/remote_datasource/remote_product_datasource/remote_product_datasource.dart';
import '../../models/get_products_model/get_all_products_model.dart';
import '../../models/get_products_packing/get_packings.dart';

class ProductRepoImpl implements ProductAbstractRepository {
  final RemoteProductDatasource remoteProductDataSource;
  final LocalProductDatasource localProductDataSource;

  const ProductRepoImpl({
    required this.remoteProductDataSource,
    required this.localProductDataSource,
  });

  //╔══════════════════════════════════════════════════════════════════════════════╗
  //║                               Remote Operations                              ║
  //╚══════════════════════════════════════════════════════════════════════════════╝

  @override
  Future<Either<AppException, List<GetAllProductsModel>>>
  getAllProducts() async {
    try {
      final response = await remoteProductDataSource.getAllProducts();
      return Right(response);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, List<GetPackings>>> getAllPackings() async {
    try {
      final response = await remoteProductDataSource.getAllPackings();
      return Right(response);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  //╔══════════════════════════════════════════════════════════════════════════════╗
  //║                            Local Products Management                         ║
  //╚══════════════════════════════════════════════════════════════════════════════╝

  @override
  Future<Either<AppException, List<GetAllProductsModel>>>
  getAllLocalProducts() async {
    try {
      final response = await localProductDataSource.getAllLocalProducts();
      return Right(response);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, List<int>>> insertProductsLocal(
    List<GetAllProductsModel> products,
  ) async {
    try {
      final response = await localProductDataSource.insertProductsLocal(
        products,
      );
      return Right(response);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, bool>> clearLocalProducts() async {
    try {
      final response = await localProductDataSource.clearLocalProducts();
      return Right(response);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, GetAllProductsModel?>> getLocalProductById({
    required int productId,
  }) async {
    try {
      final response = await localProductDataSource.getLocalProductById(
        productId: productId,
      );
      return Right(response);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }


  @override
  Future<Either<AppException, List<  GetPackings>>> getAllLocalPackings() async {
    try {
      final response = await localProductDataSource.getAllLocalPackings();
      return Right(response);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, List<int>>> insertPackingsLocal(
    List<GetPackings> packings, 
  ) async {
    try {
      final response = await localProductDataSource.insertPackingsLocal(
        packings,
      );
      return Right(response);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, bool>> clearLocalPackings() async {
    try {
      final response = await localProductDataSource.clearLocalPackings();
      return Right(response);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, GetPackings>> getPackingsById({ required int packingId }) async {
    try {
      final response = await localProductDataSource.getPackingsById(
        packingId: packingId,
      );
      return Right(response);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }
}

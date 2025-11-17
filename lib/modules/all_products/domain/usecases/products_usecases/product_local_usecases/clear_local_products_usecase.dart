import 'package:fpdart/fpdart.dart';

import '../../../../../../core/core.dart';

import '../../../repository/product_repository/product_repository.dart';

class ClearLocalProductsUsecase implements Usecase<bool, NoParams> {
  final ProductAbstractRepository productAbstractRepository;
  ClearLocalProductsUsecase({required this.productAbstractRepository});
  @override
  Future<Either<AppException, bool>> call(NoParams params) async {
    return await productAbstractRepository.clearLocalProducts();
  }
}

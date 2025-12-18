import 'package:fpdart/fpdart.dart';

import '../../../../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../../../../core/shared/domain/usecases/usecase.dart';

import '../../../../../../data/all_products_data/data/models/get_products_model/get_all_products_model.dart';
import '../../../repository/product_repository/product_repository.dart';

class GetAllLocalProductsUsecase
    implements Usecase<List<GetAllProductsModel>, NoParams> {
  final ProductAbstractRepository productAbstractRepository;

  GetAllLocalProductsUsecase({required this.productAbstractRepository});

  @override
  Future<Either<AppException, List<GetAllProductsModel>>> call(
    NoParams params,
  ) async {
    return await productAbstractRepository.getAllLocalProducts();
  }
}

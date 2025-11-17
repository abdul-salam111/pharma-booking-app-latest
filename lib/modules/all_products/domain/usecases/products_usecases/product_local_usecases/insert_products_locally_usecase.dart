import 'package:fpdart/fpdart.dart';

import '../../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../../core/shared/domain/usecases/usecase.dart';

import '../../../../data/models/get_products_model/get_all_products_model.dart';
import '../../../repository/product_repository/product_repository.dart';

class InsertProductsLocallyUsecase
    implements Usecase<List<int>, List<GetAllProductsModel>> {
  final ProductAbstractRepository productAbstractRepository;

  InsertProductsLocallyUsecase({required this.productAbstractRepository});
  @override
  Future<Either<AppException, List<int>>> call(
    List<GetAllProductsModel> listofProducts,
  ) async {
    return await productAbstractRepository.insertProductsLocal(listofProducts);
  }
}

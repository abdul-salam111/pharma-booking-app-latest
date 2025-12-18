import 'package:fpdart/fpdart.dart';
import '../../../../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../../../../core/shared/domain/usecases/usecase.dart';
import '../../../../../../data/all_products_data/data/models/get_products_model/get_all_products_model.dart';
import '../../../repository/product_repository/product_repository.dart';

class GetProductByIdUsecase implements Usecase<GetAllProductsModel?, int> {
  final ProductAbstractRepository productRepository;

  GetProductByIdUsecase({required this.productRepository});

  @override
  Future<Either<AppException, GetAllProductsModel?>> call(
    int productId,
  ) async {
    return await productRepository.getLocalProductById(productId: productId);
  }
}

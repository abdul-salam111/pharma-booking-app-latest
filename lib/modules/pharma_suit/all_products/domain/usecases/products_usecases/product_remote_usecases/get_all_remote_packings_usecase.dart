import 'package:fpdart/fpdart.dart';
import 'package:pharma_booking_app/core/core.dart';

import '../../../../data/models/get_products_packing/get_packings.dart';
import '../../../repository/product_repository/product_repository.dart';

class GetAllRemotePackingsUsecase
    implements Usecase<List<GetPackings>, NoParams> {
  final ProductAbstractRepository productRepository;

  GetAllRemotePackingsUsecase({required this.productRepository});

  @override
  Future<Either<AppException, List<GetPackings>>> call(NoParams params) async {
    return await productRepository.getAllPackings();
  }
}

import 'package:fpdart/fpdart.dart';
import 'package:pharma_booking_app/modules/pharma_suit/all_products/data/models/get_products_packing/get_packings.dart';

import '../../../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../../../core/shared/domain/usecases/usecase.dart';

import '../../../repository/product_repository/product_repository.dart';

class InsertPackingsLocallyUsecase
    implements Usecase<List<int>, List<GetPackings>> {
  final ProductAbstractRepository productAbstractRepository;

  InsertPackingsLocallyUsecase({required this.productAbstractRepository});
  @override
  Future<Either<AppException, List<int>>> call(
    List<GetPackings> listofPackings,
  ) async {
    return await productAbstractRepository.insertPackingsLocal(listofPackings);
  }
}

import 'package:fpdart/fpdart.dart';
import 'package:pharma_booking_app/modules/common/data/all_products_data/data/models/get_products_packing/get_packings.dart';
import '../../../../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../../../../core/shared/domain/usecases/usecase.dart';
import '../../../repository/product_repository/product_repository.dart';

class GetPackingsByIdUsecase implements Usecase<GetPackings?, int> {
  final ProductAbstractRepository productRepository;

  GetPackingsByIdUsecase({required this.productRepository});

  @override
  Future<Either<AppException, GetPackings?>> call(int packingId) async {
    return await productRepository.getPackingsById(packingId: packingId);
  }
}

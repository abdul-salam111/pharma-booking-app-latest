import 'package:fpdart/fpdart.dart';
import '../../../../home/presentation/barrel.dart';


class GetLocalSalesmanByIdUsecase
    implements Usecase<GetSalesmanModel?, String> {
  final CustomerAbstractRepository customerRepository;
  GetLocalSalesmanByIdUsecase({required this.customerRepository});
  @override
  Future<Either<AppException, GetSalesmanModel?>> call(
    String salesmanId,
  ) async {
    return await customerRepository.getLocalSalesmanById(
      salesmanId: salesmanId,
    );
  }
}

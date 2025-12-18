import 'package:fpdart/fpdart.dart';

import '../../../../presentations/home/presentation/barrel.dart';

class GetLocalCustomerByIdUsecase
    implements Usecase<GetCustomersModel?, String> {
  final CustomerAbstractRepository repository;

  GetLocalCustomerByIdUsecase({required this.repository});

  @override
  Future<Either<AppException, GetCustomersModel?>> call(
    String customerId,
  ) async {
    return await repository.getLocalCustomerById(customerId: customerId);
  }
}

import 'package:fpdart/fpdart.dart';

import '../../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../../core/shared/domain/usecases/usecase.dart';

import '../../customer_repository/customer_repository.dart';

class ClearCustomersLocalUsecase implements Usecase<bool, NoParams> {
  final CustomerAbstractRepository customerRepository;

  ClearCustomersLocalUsecase({required this.customerRepository});
  @override
  Future<Either<AppException, bool>> call(NoParams params) async {
    return await customerRepository.clearLocalCustomers();
  }
}

import 'package:fpdart/fpdart.dart';

import '../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../core/shared/domain/usecases/usecase.dart';
import '../../customer_repository/customer_repository.dart';

class ClearSectorsLocalUsecase implements Usecase<bool, NoParams> {
  final CustomerAbstractRepository customerRepository;

  ClearSectorsLocalUsecase({required this.customerRepository});
  @override
  Future<Either<AppException, bool>> call(NoParams params)async {
    return await customerRepository.clearAreasLocally();
  }
}

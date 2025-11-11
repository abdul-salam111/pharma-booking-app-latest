import 'package:fpdart/fpdart.dart';
import '../../../../home/presentation/barrel.dart';


class GetAllLocalTownsUsecase
    implements Usecase<List<GetTownsModel>, NoParams> {
  final CustomerAbstractRepository customerRepository;
  GetAllLocalTownsUsecase({required this.customerRepository});
  @override
  Future<Either<AppException, List<GetTownsModel>>> call(
    NoParams params,
  ) async {
    return await customerRepository.getAllLocalTowns();
  }
}

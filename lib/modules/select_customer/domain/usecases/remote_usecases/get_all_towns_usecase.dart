import 'package:fpdart/fpdart.dart';

import '../../../../home/presentation/barrel.dart';


class GetAllTownsUsecase implements Usecase<List<GetTownsModel>, NoParams> {
  final CustomerAbstractRepository customerRepository;
  GetAllTownsUsecase({required this.customerRepository});
  @override
  Future<Either<AppException, List<GetTownsModel>>> call(
    NoParams params,
  ) async {
    return await customerRepository.getAllTowns();
  }
}

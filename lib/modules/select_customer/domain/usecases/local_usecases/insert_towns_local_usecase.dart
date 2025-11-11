import 'package:fpdart/fpdart.dart';

import '../../../../home/presentation/barrel.dart';


class InsertAllTownsLocalUsecase
    implements Usecase<List<int>, List<GetTownsModel>> {
  final CustomerAbstractRepository customerRepository;
  InsertAllTownsLocalUsecase({required this.customerRepository});
  @override
  Future<Either<AppException, List<int>>> call(
    List<GetTownsModel> towns,
  ) async {
    return await customerRepository.insertLocalTowns(towns);
  }
}

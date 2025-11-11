import 'package:fpdart/fpdart.dart';

import '../../../../home/presentation/barrel.dart';


class InsertAllSalesmansLocalUsecase
    implements Usecase<List<int>, List<GetSalesmanModel>> {
  final CustomerAbstractRepository customerRepository;
  InsertAllSalesmansLocalUsecase({required this.customerRepository});
  @override
  Future<Either<AppException, List<int>>> call(
    List<GetSalesmanModel> salesmans,
  ) async {
    return await customerRepository.insertLocalSalesmans(salesmans);
  }
}

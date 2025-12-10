import 'package:fpdart/fpdart.dart';

import '../../../../home/presentation/barrel.dart';

class InsertAllAreasLocalUsecase
    implements Usecase<List<int>, List<GetAreaListModel>> {
  final CustomerAbstractRepository customerRepository;
  InsertAllAreasLocalUsecase({required this.customerRepository});
  @override
  Future<Either<AppException, List<int>>> call(
    List<GetAreaListModel> sectors,
  ) async {
    return await customerRepository.insertAreasLocally(sectors);
  }
}

import 'package:fpdart/fpdart.dart';

import '../../../../presentations/home/presentation/barrel.dart';


class InsertAllSubAreasLocalUsecase
    implements Usecase<List<int>, List<GetSubAreaListModel>> {
  final CustomerAbstractRepository customerRepository;
  InsertAllSubAreasLocalUsecase({required this.customerRepository});
  @override
  Future<Either<AppException, List<int>>> call(
    List<GetSubAreaListModel> towns,
  ) async {
    return await customerRepository.insertSubAreasLocally(towns);
  }
}

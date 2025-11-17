import 'package:fpdart/fpdart.dart';
import '../../../../home/presentation/barrel.dart';


class GetAllLocalAreasUsecase
    implements Usecase<List<GetAreaListModel>, NoParams> {
  final CustomerAbstractRepository customerRepository;
  GetAllLocalAreasUsecase({required this.customerRepository});
  @override
  Future<Either<AppException, List<GetAreaListModel>>> call(
    NoParams params,
  ) async {
    return await customerRepository.getAllLocalAreas();
  }
}

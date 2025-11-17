import 'package:fpdart/fpdart.dart';
import '../../../../home/presentation/barrel.dart';


class GetAllLocalSubAreasUsecase
    implements Usecase<List<GetSubAreaListModel>, NoParams> {
  final CustomerAbstractRepository customerRepository;
  GetAllLocalSubAreasUsecase({required this.customerRepository});
  @override
  Future<Either<AppException, List<GetSubAreaListModel>>> call(
    NoParams params,
  ) async {
    return await customerRepository.getAllLocalSubAreas();
  }
}

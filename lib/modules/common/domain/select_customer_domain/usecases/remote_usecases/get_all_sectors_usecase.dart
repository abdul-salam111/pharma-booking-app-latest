import 'package:fpdart/fpdart.dart';
import '../../../../presentations/home/presentation/barrel.dart';


class GetAllSectorsUsecase implements Usecase<List<GetAreaListModel>, NoParams> {
  final CustomerAbstractRepository customerRepository;
  GetAllSectorsUsecase({required this.customerRepository});
  @override
  Future<Either<AppException, List<GetAreaListModel>>> call(
    NoParams params,
  ) async {
    return await customerRepository.getAllAreas();
  }
}

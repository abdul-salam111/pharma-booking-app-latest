import 'package:fpdart/fpdart.dart';
import '../../../../home/presentation/barrel.dart';


class GetAllSalesmanUsecase
    implements Usecase<List<GetSalesmanModel>, NoParams> {
  final CustomerAbstractRepository customerRepository;
  GetAllSalesmanUsecase({required this.customerRepository});
  @override
  Future<Either<AppException, List<GetSalesmanModel>>> call(
    NoParams params,
  ) async {
    return await customerRepository.getAllSalesman();
  }
}

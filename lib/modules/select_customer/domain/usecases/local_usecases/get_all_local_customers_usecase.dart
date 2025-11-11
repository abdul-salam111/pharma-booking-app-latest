import 'package:fpdart/fpdart.dart';



import '../../../../home/presentation/barrel.dart';


class GetAllLocalCustomersUsecase
    implements Usecase<List<GetCustomersModel>, NoParams> {
  final CustomerAbstractRepository customerRepository;
  GetAllLocalCustomersUsecase({required this.customerRepository});
  @override
  Future<Either<AppException, List<GetCustomersModel>>> call(
    NoParams params,
  ) async {
    return await customerRepository.getAllLocalCustomers();
  }
}

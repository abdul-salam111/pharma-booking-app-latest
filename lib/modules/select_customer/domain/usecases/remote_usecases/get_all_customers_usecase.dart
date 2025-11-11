import 'package:fpdart/fpdart.dart';


import '../../../../home/presentation/barrel.dart';


class GetAllCustomersUsecase
    implements Usecase<List<GetCustomersModel>, NoParams> {
  final CustomerAbstractRepository customerRepository;
  GetAllCustomersUsecase({required this.customerRepository});
  @override
  Future<Either<AppException, List<GetCustomersModel>>> call(NoParams params) {
    return customerRepository.getAllCustomers();
  }
}

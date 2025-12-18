import 'package:fpdart/fpdart.dart';
import '../../../../presentations/home/presentation/barrel.dart';


class InsertAllCustomersLocalUsecase
    implements Usecase<List<int>, List<GetCustomersModel>> {
  final CustomerAbstractRepository customerRepository;
  InsertAllCustomersLocalUsecase({required this.customerRepository});
  @override
  Future<Either<AppException, List<int>>> call(
    List<GetCustomersModel> customers,
  ) async {
    return await customerRepository.insertLocalCustomers(customers);
  }
}

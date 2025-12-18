import 'package:fpdart/fpdart.dart';
import '../../../../../../../../core/core.dart';
import '../../../repository/companies_repository/companies_repository.dart';

class ClearLocalCompaniesUsecase implements Usecase<bool, NoParams> {
  final CompaniesAbstractRepository companiesAbstractRepository;
  ClearLocalCompaniesUsecase({required this.companiesAbstractRepository});
  @override
  Future<Either<AppException, bool>> call(NoParams params) async {
    return await companiesAbstractRepository.clearLocalCompanies();
  }
}

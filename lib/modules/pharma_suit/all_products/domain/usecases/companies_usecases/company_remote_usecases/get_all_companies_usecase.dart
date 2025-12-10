import 'package:fpdart/fpdart.dart';
import '../../../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../../../core/shared/domain/usecases/usecase.dart';
import '../../../../data/models/get_companies_model/companies_model.dart';
import '../../../repository/companies_repository/companies_repository.dart';

class GetAllCompaniesUsecase
    implements Usecase<List<CompaniesModel>, NoParams> {
  final CompaniesAbstractRepository companiesAbstractRepository;
  GetAllCompaniesUsecase({required this.companiesAbstractRepository});
  @override
  Future<Either<AppException, List<CompaniesModel>>> call(
    NoParams params,
  ) async {
    return await companiesAbstractRepository.getAllCompanies();
  }
}

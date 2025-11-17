// import 'package:fpdart/fpdart.dart';
// import '../../../../../../core/networks/exceptions/app_exceptions.dart';
// import '../../../../../../core/shared/domain/usecases/usecase.dart';
// import '../../../../data/models/get_companies_model/get_companies_model.dart';
// import '../../../repository/companies_repository/companies_repository.dart';

// class GetAllLocalCompaniesUsecase
//     implements Usecase<List<GetCompaniesModel>, NoParams> {
//   final CompaniesAbstractRepository companiesAbstractRepository;

//   GetAllLocalCompaniesUsecase({required this.companiesAbstractRepository});
//   @override
//   Future<Either<AppException, List<GetCompaniesModel>>> call(
//     NoParams params,
//   ) async {
//     return await companiesAbstractRepository.getAllLocalCompanies();
//   }
// }

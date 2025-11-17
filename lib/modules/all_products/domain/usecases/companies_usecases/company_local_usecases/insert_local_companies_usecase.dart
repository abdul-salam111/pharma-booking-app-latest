// import 'package:fpdart/fpdart.dart';
// import '../../../../../../core/networks/exceptions/app_exceptions.dart';
// import '../../../../../../core/shared/domain/usecases/usecase.dart';
// import '../../../../data/models/get_companies_model/get_companies_model.dart';
// import '../../../repository/companies_repository/companies_repository.dart';

// class InsertLocalCompaniesUsecase
//     implements Usecase<List<int>, List<GetCompaniesModel>> {
//   final CompaniesAbstractRepository companiesAbstractRepository;

//   InsertLocalCompaniesUsecase({required this.companiesAbstractRepository});
//   @override
//   Future<Either<AppException, List<int>>> call(
//     List<GetCompaniesModel> params,
//   ) async {
//     return await companiesAbstractRepository.insertCompaniesLocal(params);
//   }
// }

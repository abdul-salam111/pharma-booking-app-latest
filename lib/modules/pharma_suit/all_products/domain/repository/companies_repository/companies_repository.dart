import 'package:fpdart/fpdart.dart';
import '../../../../../../core/core.dart';
import '../../../data/models/get_companies_model/companies_model.dart';




abstract interface class CompaniesAbstractRepository {
  //╔══════════════════════════════════════════════════════════════════════════════╗
  //║                               Remote Operations                              ║
  //╚══════════════════════════════════════════════════════════════════════════════╝

  Future<Either<AppException, List<CompaniesModel>>> getAllCompanies();

  //╔══════════════════════════════════════════════════════════════════════════════╗
  //║                            Local Companies Management                        ║
  //╚══════════════════════════════════════════════════════════════════════════════╝

  /// Retrieves all companies from local database
  Future<Either<AppException, List<CompaniesModel>>> getAllLocalCompanies();

  /// Retrieves a specific company by ID from local database
  Future<Either<AppException, CompaniesModel?>> getCompanyByIdFromLocal({
    required String companyId,
  });

  /// Inserts companies into local database
  Future<Either<AppException, List<int>>> insertCompaniesLocal(
    List<CompaniesModel> companies,
  );

  /// Clears all companies from local database
  Future<Either<AppException, bool>> clearLocalCompanies();
}
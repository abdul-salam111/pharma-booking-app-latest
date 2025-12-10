import 'package:fpdart/fpdart.dart';

import '../../../../../../core/core.dart';
import '../../../domain/repository/companies_repository/companies_repository.dart';
import '../../datasources/local_datasource/local_company_datasource/local_company_datasource.dart';
import '../../datasources/remote_datasource/remote_companies_datasource/remote_companies_datasource.dart';
import '../../models/get_companies_model/companies_model.dart';


class CompaniesRepoImpl implements CompaniesAbstractRepository {
  final RemoteCompaniesDatasource remoteCompaniesDatasource;
  final LocalCompanyDatasource localCompanyDatasource;

  const CompaniesRepoImpl({
    required this.remoteCompaniesDatasource,
    required this.localCompanyDatasource,
  });

  //╔══════════════════════════════════════════════════════════════════════════════╗
  //║                               Remote Operations                              ║
  //╚══════════════════════════════════════════════════════════════════════════════╝

  @override
  Future<Either<AppException, List<CompaniesModel>>>
  getAllCompanies() async {
    try {
      final response = await remoteCompaniesDatasource.getAllCompanies();
      return Right(response);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  //╔══════════════════════════════════════════════════════════════════════════════╗
  //║                            Local Companies Management                        ║
  //╚══════════════════════════════════════════════════════════════════════════════╝

  @override
  Future<Either<AppException, List<CompaniesModel>>>
  getAllLocalCompanies() async {
    try {
      final response = await localCompanyDatasource.getAllCompanies();
      return Right(response);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, CompaniesModel>> getCompanyByIdFromLocal({
    required String companyId,
  }) async {
    try {
      final response = await localCompanyDatasource.getCompanyById(companyId);
      return Right(response!);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, List<int>>> insertCompaniesLocal(
    List<CompaniesModel> companies,
  ) async {
    try {
      final response = await localCompanyDatasource.insertCompanies(companies);
      return Right(response);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, bool>> clearLocalCompanies() async {
    try {
      final response = await localCompanyDatasource.clearCompanies();
      return Right(response);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }
}

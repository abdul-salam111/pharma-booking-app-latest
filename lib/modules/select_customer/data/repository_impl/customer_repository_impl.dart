import 'package:fpdart/fpdart.dart';
import '../../../home/presentation/barrel.dart';


// ============================================================================
// CUSTOMER REPOSITORY IMPLEMENTATION
// ============================================================================

class CustomerRepositoryImpl implements CustomerAbstractRepository {
  final CustomerRemoteDatasource customerRemoteDatasource;
  final CustomerLocalDataSource customerLocalDataSource;

  CustomerRepositoryImpl({
    required this.customerRemoteDatasource,
    required this.customerLocalDataSource,
  });

  // ==========================================================================
  // REMOTE OPERATIONS (API)
  // ==========================================================================

  @override
  Future<Either<AppException, List<GetCustomersModel>>>
  getAllCustomers() async {
    try {
      final response = await customerRemoteDatasource.getAllCustomers();
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, List<GetTownsModel>>> getAllTowns() async {
    try {
      final response = await customerRemoteDatasource.getAllTowns();
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, List<GetSectorsModel>>> getAllSectors() async {
    try {
      final response = await customerRemoteDatasource.getAllSectors();
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, List<GetSalesmanModel>>> getAllSalesman() async {
    try {
      final response = await customerRemoteDatasource.getAllSalesmans();
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  // ==========================================================================
  // LOCAL READ OPERATIONS (DATABASE)
  // ==========================================================================

  @override
  Future<Either<AppException, List<GetCustomersModel>>>
  getAllLocalCustomers() async {
    try {
      final response = await customerLocalDataSource.getAllLocalCustomers();
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, List<GetTownsModel>>> getAllLocalTowns() async {
    try {
      final response = await customerLocalDataSource.getAllLocalTowns();
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, List<GetSectorsModel>>>
  getAllLocalSectors() async {
    try {
      final response = await customerLocalDataSource.getAllLocalSectors();
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, GetSalesmanModel?>> getLocalSalesmanById({
    required String salesmanId,
  }) async {
    try {
      final response = await customerLocalDataSource.getLocalSalesmanById(
        salesmanId: salesmanId,
      );
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  // ==========================================================================
  // LOCAL INSERT OPERATIONS (DATABASE)
  // ==========================================================================

  @override
  Future<Either<AppException, List<int>>> insertLocalCustomers(
    List<GetCustomersModel> customers,
  ) async {
    try {
      final response = await customerLocalDataSource.insertLocalCustomers(
        customers,
      );
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, List<int>>> insertLocalTowns(
    List<GetTownsModel> towns,
  ) async {
    try {
      final response = await customerLocalDataSource.insertLocalTowns(towns);
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, List<int>>> insertLocalSectors(
    List<GetSectorsModel> sectors,
  ) async {
    try {
      final response = await customerLocalDataSource.insertLocalSectors(
        sectors,
      );
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, List<int>>> insertLocalSalesmans(
    List<GetSalesmanModel> salesmans,
  ) async {
    try {
      final response = await customerLocalDataSource.insertLocalSalesmans(
        salesmans,
      );
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  // ==========================================================================
  // LOCAL CLEAR OPERATIONS (DATABASE)
  // ==========================================================================

  @override
  Future<Either<AppException, bool>> clearLocalCustomers() async {
    try {
      final response = await customerLocalDataSource.clearLocalCustomers();
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, bool>> clearLocalTowns() async {
    try {
      final response = await customerLocalDataSource.clearLocalTowns();
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, bool>> clearLocalSectors() async {
    try {
      final response = await customerLocalDataSource.clearLocalSectors();
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, bool>> clearLocalSalesmans() async {
    try {
      final response = await customerLocalDataSource.clearLocalSalesmans();
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, GetCustomersModel?>> getLocalCustomerById({
    required String customerId,
  }) async {
    try {
      final response = await customerLocalDataSource.getLocalCustomerById(
        customerId: customerId,
      );
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }
}

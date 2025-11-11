import 'package:fpdart/fpdart.dart';
import '../../../home/presentation/barrel.dart';

// ============================================================================
// CUSTOMER ABSTRACT REPOSITORY
// ============================================================================

abstract interface class CustomerAbstractRepository {
  // ==========================================================================
  // REMOTE OPERATIONS (API)
  // ==========================================================================

  Future<Either<AppException, List<GetCustomersModel>>> getAllCustomers();
  Future<Either<AppException, List<GetTownsModel>>> getAllTowns();
  Future<Either<AppException, List<GetSectorsModel>>> getAllSectors();
  Future<Either<AppException, List<GetSalesmanModel>>> getAllSalesman();

  // ==========================================================================
  // LOCAL READ OPERATIONS (DATABASE)
  // ==========================================================================

  Future<Either<AppException, List<GetCustomersModel>>> getAllLocalCustomers();
  Future<Either<AppException, List<GetTownsModel>>> getAllLocalTowns();
  Future<Either<AppException, List<GetSectorsModel>>> getAllLocalSectors();
  Future<Either<AppException, GetSalesmanModel?>> getLocalSalesmanById({
    required String salesmanId,
  });
  Future<Either<AppException, GetCustomersModel?>> getLocalCustomerById({
    required String customerId,
  });

  // ==========================================================================
  // LOCAL INSERT OPERATIONS (DATABASE)
  // ==========================================================================

  Future<Either<AppException, List<int>>> insertLocalCustomers(
    List<GetCustomersModel> customers,
  );
  Future<Either<AppException, List<int>>> insertLocalTowns(
    List<GetTownsModel> towns,
  );
  Future<Either<AppException, List<int>>> insertLocalSectors(
    List<GetSectorsModel> sectors,
  );
  Future<Either<AppException, List<int>>> insertLocalSalesmans(
    List<GetSalesmanModel> salesmans,
  );

  // ==========================================================================
  // LOCAL CLEAR OPERATIONS (DATABASE)
  // ==========================================================================

  Future<Either<AppException, bool>> clearLocalCustomers();
  Future<Either<AppException, bool>> clearLocalTowns();
  Future<Either<AppException, bool>> clearLocalSectors();
  Future<Either<AppException, bool>> clearLocalSalesmans();
}

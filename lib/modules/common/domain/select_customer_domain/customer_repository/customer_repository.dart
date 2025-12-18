import 'package:fpdart/fpdart.dart';
import '../../../presentations/home/presentation/barrel.dart';

// ============================================================================
// CUSTOMER ABSTRACT REPOSITORY
// ============================================================================

abstract interface class CustomerAbstractRepository {
  // ==========================================================================
  // REMOTE OPERATIONS (API)
  // ==========================================================================

  Future<Either<AppException, List<GetCustomersModel>>> getAllCustomers();
  Future<Either<AppException, List<GetSubAreaListModel>>> getAllSubAreas();
  Future<Either<AppException, List<GetAreaListModel>>> getAllAreas();


  // ==========================================================================
  // LOCAL READ OPERATIONS (DATABASE)
  // ==========================================================================

  Future<Either<AppException, List<GetCustomersModel>>> getAllLocalCustomers();
  Future<Either<AppException, List<GetSubAreaListModel>>> getAllLocalSubAreas();
  Future<Either<AppException, List<GetAreaListModel>>> getAllLocalAreas();

  Future<Either<AppException, GetCustomersModel?>> getLocalCustomerById({
    required String customerId,
  });

  // ==========================================================================
  // LOCAL INSERT OPERATIONS (DATABASE)
  // ==========================================================================

  Future<Either<AppException, List<int>>> insertLocalCustomers(
    List<GetCustomersModel> customers,
  );
  Future<Either<AppException, List<int>>> insertSubAreasLocally(
    List<GetSubAreaListModel> towns,
  );
  Future<Either<AppException, List<int>>> insertAreasLocally(
    List<GetAreaListModel> sectors,
  );


  // ==========================================================================
  // LOCAL CLEAR OPERATIONS (DATABASE)
  // ==========================================================================

  Future<Either<AppException, bool>> clearLocalCustomers();
  Future<Either<AppException, bool>> clearSubAreasLocally();
  Future<Either<AppException, bool>> clearAreasLocally();

}

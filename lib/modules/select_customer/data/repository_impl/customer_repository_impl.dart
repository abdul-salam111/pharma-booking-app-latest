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
  Future<Either<AppException, List<GetSubAreaListModel>>> getAllSubAreas() async {
    try {
      final response = await customerRemoteDatasource.getSubAreaList();
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, List<GetAreaListModel>>> getAllAreas() async {
    try {
      final response = await customerRemoteDatasource.getAreaList();
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
  Future<Either<AppException, List<GetSubAreaListModel>>> getAllLocalSubAreas() async {
    try {
      final response = await customerLocalDataSource.getAllLocalTowns();
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, List<GetAreaListModel>>>
  getAllLocalAreas() async {
    try {
      final response = await customerLocalDataSource.getAllLocalSectors();
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
  Future<Either<AppException, List<int>>> insertSubAreasLocally(
    List<GetSubAreaListModel> towns,
  ) async {
    try {
      final response = await customerLocalDataSource.insertLocalTowns(towns);
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, List<int>>> insertAreasLocally(
    List<GetAreaListModel> sectors,
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
  Future<Either<AppException, bool>> clearSubAreasLocally() async {
    try {
      final response = await customerLocalDataSource.clearLocalTowns();
      return right(response);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, bool>> clearAreasLocally() async {
    try {
      final response = await customerLocalDataSource.clearLocalSectors();
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

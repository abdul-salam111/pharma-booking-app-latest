// ============================================================================
// HOME BINDING
// ============================================================================

import '../../../select_customer/domain/usecases/local_usecases/insert_sub_areas_local_usecase.dart';
import '../barrel.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    _registerCustomerDependencies();
    _registerProductDependencies();
    _registerCompanyDependencies();
    registerOrdersDepenencies();
    _registerController();
  }

  // ==========================================================================
  // CUSTOMER MODULE DEPENDENCIES
  // ==========================================================================

  void _registerCustomerDependencies() {
    _registerCustomerDataSources();
    _registerCustomerRepository();
    _registerCustomerUseCases();
  }

  void _registerCustomerDataSources() {
    Get.lazyPut<CustomerRemoteDatasource>(
      () => CustomerRemoteDatasourceImpl(dioHelper: Get.find<DioHelper>()),
      fenix: true,
    );

    Get.lazyPut<CustomerLocalDataSource>(
      () => CustomerLocalDataSourceImpl(
        databaseHelper: Get.find<PharmaDatabase>(),
      ),
      fenix: true,
    );
  }

  void _registerCustomerRepository() {
    Get.lazyPut<CustomerAbstractRepository>(
      () => CustomerRepositoryImpl(
        customerRemoteDatasource: Get.find<CustomerRemoteDatasource>(),
        customerLocalDataSource: Get.find<CustomerLocalDataSource>(),
      ),
      fenix: true,
    );
  }

  void _registerCustomerUseCases() {
    // Remote use cases
    Get.lazyPut(
      () => GetAllCustomersUsecase(
        customerRepository: Get.find<CustomerAbstractRepository>(),
      ),
    );
    Get.lazyPut(
      () => GetAllTownsUsecase(
        customerRepository: Get.find<CustomerAbstractRepository>(),
      ),
    );
    Get.lazyPut(
      () => GetAllSectorsUsecase(
        customerRepository: Get.find<CustomerAbstractRepository>(),
      ),
    );

    // Customer local use cases
    Get.lazyPut(
      () => GetAllLocalCustomersUsecase(
        customerRepository: Get.find<CustomerAbstractRepository>(),
      ),
    );
    Get.lazyPut(
      () => InsertAllCustomersLocalUsecase(
        customerRepository: Get.find<CustomerAbstractRepository>(),
      ),
    );
    Get.lazyPut(
      () => ClearCustomersLocalUsecase(
        customerRepository: Get.find<CustomerAbstractRepository>(),
      ),
    );

    // Town local use cases
    Get.lazyPut(
      () => GetAllLocalSubAreasUsecase(
        customerRepository: Get.find<CustomerAbstractRepository>(),
      ),
    );
    Get.lazyPut(
      () => InsertAllSubAreasLocalUsecase(
        customerRepository: Get.find<CustomerAbstractRepository>(),
      ),
    );
    Get.lazyPut(
      () => ClearTownsLocalUsecase(
        customerRepository: Get.find<CustomerAbstractRepository>(),
      ),
    );

    // Sector local use cases
    Get.lazyPut(
      () => GetAllLocalAreasUsecase(
        customerRepository: Get.find<CustomerAbstractRepository>(),
      ),
    );
    Get.lazyPut(
      () => InsertAllAreasLocalUsecase(
        customerRepository: Get.find<CustomerAbstractRepository>(),
      ),
    );
    Get.lazyPut(
      () => ClearSectorsLocalUsecase(
        customerRepository: Get.find<CustomerAbstractRepository>(),
      ),
    );

  
  }

  // ==========================================================================
  // PRODUCT MODULE DEPENDENCIES
  // ==========================================================================

  void _registerProductDependencies() {
    _registerProductDataSources();
    _registerProductRepository();
    _registerProductUseCases();
  }

  void _registerProductDataSources() {
    Get.lazyPut<RemoteProductDatasource>(
      () => RemoteProductDataSourceImpl(dioHelper: Get.find<DioHelper>()),
    );

    Get.lazyPut<LocalProductDatasource>(
      () => LocalProductDatasourceImpl(
        databaseHelper: Get.find<PharmaDatabase>(),
      ),
    );
  }

  void _registerProductRepository() {
    Get.lazyPut<ProductAbstractRepository>(
      () => ProductRepoImpl(
        remoteProductDataSource: Get.find<RemoteProductDatasource>(),
        localProductDataSource: Get.find<LocalProductDatasource>(),
      ),
    );
  }

  void _registerProductUseCases() {
    Get.lazyPut(
      () => GetAllRemoteProductsUsecase(
        productAbstractRepository: Get.find<ProductAbstractRepository>(),
      ),
    );
    Get.lazyPut(
      () => GetAllLocalProductsUsecase(
        productAbstractRepository: Get.find<ProductAbstractRepository>(),
      ),
    );
    Get.lazyPut(
      () => InsertProductsLocallyUsecase(
        productAbstractRepository: Get.find<ProductAbstractRepository>(),
      ),
    );
    Get.lazyPut(
      () => ClearLocalProductsUsecase(
        productAbstractRepository: Get.find<ProductAbstractRepository>(),
      ),
    );
  }

  // ==========================================================================
  // COMPANY MODULE DEPENDENCIES
  // ==========================================================================

  void _registerCompanyDependencies() {
    _registerCompanyDataSources();
    _registerCompanyRepository();
    _registerCompanyUseCases();
  }

  void _registerCompanyDataSources() {
    Get.lazyPut<RemoteCompaniesDatasource>(
      () => RemoteCompaniesDatasourceImpl(dioHelper: Get.find<DioHelper>()),
    );

    Get.lazyPut<LocalCompanyDatasource>(
      () => LocalCompanyDatasourceImpl(
        databaseHelper: Get.find<PharmaDatabase>(),
      ),
    );
  }

  void _registerCompanyRepository() {
    Get.lazyPut<CompaniesAbstractRepository>(
      () => CompaniesRepoImpl(
        remoteCompaniesDatasource: Get.find<RemoteCompaniesDatasource>(),
        localCompanyDatasource: Get.find<LocalCompanyDatasource>(),
      ),
    );
  }

  void _registerCompanyUseCases() {
    Get.lazyPut(
      () => GetAllCompaniesUsecase(
        companiesAbstractRepository: Get.find<CompaniesAbstractRepository>(),
      ),
    );
    Get.lazyPut(
      () => GetAllLocalCompaniesUsecase(
        companiesAbstractRepository: Get.find<CompaniesAbstractRepository>(),
      ),
    );
    Get.lazyPut(
      () => InsertLocalCompaniesUsecase(
        companiesAbstractRepository: Get.find<CompaniesAbstractRepository>(),
      ),
    );
    Get.lazyPut(
      () => ClearLocalCompaniesUsecase(
        companiesAbstractRepository: Get.find<CompaniesAbstractRepository>(),
      ),
    );
  }

  // ==========================================================================
  // Orders MODULE DEPENDENCIES
  // ==========================================================================
  void registerOrdersDepenencies() {
    registerOrdersDatasources();
    registerOrdersRepositories();
    registerOrdersUseCases();
  }

  void registerOrdersDatasources() {
    Get.lazyPut<CreateOrdersLocalDatasource>(
      () => CreateOrdersLocalDatasourceImpl(
        databaseHelper: Get.find<PharmaDatabase>(),
      ),
    );

    Get.lazyPut<CreateOrdersRemoteDatasource>(
      () => CreateOrdersRemoteDatasourceImpl(dioHelper: Get.find<DioHelper>()),
    );
  }

  void registerOrdersRepositories() {
    Get.lazyPut<CreateOrdersRepository>(
      () => CreateOrdersRepositoryImpl(
        createOrdersLocalDatasource: Get.find<CreateOrdersLocalDatasource>(),
        createOrdersRemoteDatasource: Get.find<CreateOrdersRemoteDatasource>(),
      ),
    );
  }

  void registerOrdersUseCases() {
    Get.lazyPut(
      () => GetCountUnsyncordersUsecase(
        createOrdersRepository: Get.find<CreateOrdersRepository>(),
      ),
    );

    Get.lazyPut(
      () => GetUnsyncOrdersUsecase(
        createOrdersRepository: Get.find<CreateOrdersRepository>(),
      ),
    );

    Get.lazyPut(
      () => UpdateOrdersSyncStatusUsecase(
        createOrdersRepository: Get.find<CreateOrdersRepository>(),
      ),
    );

    Get.lazyPut(
      () => CreateOrdersRemotelyUsecase(
        createOrdersRepository: Get.find<CreateOrdersRepository>(),
      ),
    );
  }

  // ==========================================================================
  // CONTROLLER REGISTRATION
  // ==========================================================================

  void _registerController() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        // Product use cases
        getAllProductsUsecase: Get.find<GetAllRemoteProductsUsecase>(),
        getAllLocalProductsUsecase: Get.find<GetAllLocalProductsUsecase>(),
        insertProductsLocallyUsecase: Get.find<InsertProductsLocallyUsecase>(),
        clearLocalProductsUsecase: Get.find<ClearLocalProductsUsecase>(),
        // Company use cases
        getAllCompaniesUsecase: Get.find<GetAllCompaniesUsecase>(),
        getAllLocalCompaniesUsecase: Get.find<GetAllLocalCompaniesUsecase>(),
        insertLocalCompaniesUsecase: Get.find<InsertLocalCompaniesUsecase>(),
        clearLocalCompaniesUsecase: Get.find<ClearLocalCompaniesUsecase>(),
        // Customer remote use cases
        getAllCustomersUsecase: Get.find<GetAllCustomersUsecase>(),
        getAllTownsUsecase: Get.find<GetAllTownsUsecase>(),
        getAllSectorsUseCase: Get.find<GetAllSectorsUsecase>(),

        // Customer local use cases
        getAllLocalCustomersUsecase: Get.find<GetAllLocalCustomersUsecase>(),
        getAllLocalSubAreasUsecase: Get.find<GetAllLocalSubAreasUsecase>(),
        getAllLocalAreasUsecase: Get.find<GetAllLocalAreasUsecase>(),

        insertAllCustomersLocalUsecase:
            Get.find<InsertAllCustomersLocalUsecase>(),
        insertAllSubAreasLocalUsecase: Get.find<InsertAllSubAreasLocalUsecase>(),
        insertAllAreasLocalUsecase: Get.find<InsertAllAreasLocalUsecase>(),

        clearCustomersLocalUsecase: Get.find<ClearCustomersLocalUsecase>(),
        clearSubAreasLocalUsecase: Get.find<ClearTownsLocalUsecase>(),
        clearAreasLocalUsecase: Get.find<ClearSectorsLocalUsecase>(),

        // Order use cases
        getCountUnsyncordersUsecase: Get.find<GetCountUnsyncordersUsecase>(),
        getUnsyncOrdersUsecase: Get.find<GetUnsyncOrdersUsecase>(),
        updateOrdersSyncStatusUsecase:
            Get.find<UpdateOrdersSyncStatusUsecase>(),
        createOrdersRemotelyUsecase: Get.find<CreateOrdersRemotelyUsecase>(),
      ),
    );
  }
}

import '../../../home/presentation/barrel.dart';

/// Controller to manage the selection of Sector → Town → Customer
/// with SharedPreferences integration for persistent storage
class SelectCustomerController extends GetxController {
  // ==================== INTERNAL DATA ==================== //

  final List<GetAreaListModel> _allSectors = [];
  final List<GetSubAreaListModel> _allTowns = [];
  final List<GetCustomersModel> _allCustomers = [];

  // ==================== OBSERVABLES ==================== //

  final sectors = <GetAreaListModel>[].obs;
  final towns = <GetSubAreaListModel>[].obs;
  final customers = <GetCustomersModel>[].obs;

  final Rx<GetAreaListModel?> selectedSector = Rx<GetAreaListModel?>(null);
  final Rx<GetSubAreaListModel?> selectedTown = Rx<GetSubAreaListModel?>(null);
  final Rx<GetCustomersModel?> selectedCustomer = Rx<GetCustomersModel?>(null);

  final isLoadingSectors = false.obs;
  final isLoadingTowns = false.obs;
  final isLoadingCustomers = false.obs;

  // ==================== SAFE ARGUMENTS ==================== //

  Map<String, dynamic> get _args {
    final args = Get.arguments;
    if (args is Map<String, dynamic>) return args;
    return {};
  }

  // ==================== LIFECYCLE ==================== //

  @override
  void onInit() {
    super.onInit();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    await _fetchAllData();
    await _loadSavedSelections();
    _setupInitialDropdowns();
  }

  // ==================== DATA FETCHING ==================== //

  Future<void> _fetchAllData() async {
    await Future.wait([_fetchSectors(), _fetchTowns(), _fetchCustomers()]);
  }

  Future<void> _fetchSectors() async {
    try {
      isLoadingSectors.value = true;
      final data = _args['getAllSectors'];
      if (data is List<GetAreaListModel>) {
        _allSectors
          ..clear()
          ..addAll(data);
      }
    } catch (e) {
      AppToasts.showErrorToast(Get.context!, 'Failed to load sectors: $e');
    } finally {
      isLoadingSectors.value = false;
    }
  }

  Future<void> _fetchTowns() async {
    try {
      isLoadingTowns.value = true;
      final data = _args['getAllTowns'];
      if (data is List<GetSubAreaListModel>) {
        _allTowns
          ..clear()
          ..addAll(data);
      }
    } catch (e) {
      AppToasts.showErrorToast(Get.context!, 'Failed to load towns: $e');
    } finally {
      isLoadingTowns.value = false;
    }
  }

  Future<void> _fetchCustomers() async {
    try {
      isLoadingCustomers.value = true;
      final data = _args['getAllCustomers'];
      if (data is List<GetCustomersModel>) {
        _allCustomers
          ..clear()
          ..addAll(data);
      }
    } catch (e) {
      AppToasts.showErrorToast(Get.context!, 'Failed to load customers: $e');
    } finally {
      isLoadingCustomers.value = false;
    }
  }

  // ==================== FILTERING ==================== //

  void _filterTownsBySector(GetAreaListModel sector) {
    towns.assignAll(_allTowns.where((t) => 1 == sector.id).toList());
  }

  void _filterCustomersByTown(GetSubAreaListModel town) {
    customers.assignAll(
      _allCustomers.where((c) {
     
        return c.subArea!.id.toString() == town.id.toString();
      }).toList(),
    );
  }

  // ==================== SELECTION HANDLERS ==================== //

  void onSectorChanged(GetAreaListModel? sector) async {
    selectedSector.value = sector;
    selectedTown.value = null;
    selectedCustomer.value = null;

    await _saveSelectedSector(sector);

    if (sector != null) {
      _filterTownsBySector(sector);
    } else {
      towns.clear();
    }

    customers.clear();
  }

  void onTownChanged(GetSubAreaListModel? town) async {
    selectedTown.value = town;
    selectedCustomer.value = null;

    await _saveSelectedTown(town);

    if (town != null && selectedSector.value != null) {
      _filterCustomersByTown(town);
    } else {
      customers.clear();
    }
  }

  void onCustomerChanged(GetCustomersModel? customer) {
    selectedCustomer.value = customer;
  }

  // ==================== ACTIONS ==================== //

  void onCustomerSelected() {
    final customer = selectedCustomer.value;
    final sector = selectedSector.value;
    final town = selectedTown.value;

    if (customer != null && sector != null && town != null) {
      Get.toNamed(
        Routes.ALL_PRODUCTS,
        arguments: {
          'selectedCustomer': customer,
          'selectedTown': town,
          'selectedSector': sector,
          'getAllProducts': _args['getAllProducts'],
          'getCompaniesModel': _args['getCompaniesModel'],
        },
      );
    } else {
      AppToasts.showErrorToast(
        Get.context!,
        "Please select sector, town and customer before continuing.",
      );
    }
  }

  Future<void> refreshData() async {
    selectedSector.value = null;
    selectedTown.value = null;
    selectedCustomer.value = null;

    await _fetchAllData();
    _setupInitialDropdowns();
  }

  // ==================== PERSISTENCE ==================== //

  Future<void> _saveSelectedSector(GetAreaListModel? sector) async {
    if (sector != null) {
      await storage.setValues(StorageKeys.selectedSector, sector.id.toString());
    } else {
      await storage.clearValues(StorageKeys.selectedSector);
    }
  }

  Future<void> _saveSelectedTown(GetSubAreaListModel? town) async {
    if (town != null) {
      await storage.setValues(StorageKeys.selectedTown, town.id.toString());
    } else {
      await storage.clearValues(StorageKeys.selectedTown);
    }
  }

  Future<void> _loadSavedSelections() async {
    final savedSectorId = await storage.readValues(StorageKeys.selectedSector);
    if (savedSectorId != null && savedSectorId.isNotEmpty) {
      final sector = _allSectors.firstWhereOrNull(
        (s) => s.id.toString() == savedSectorId,
      );
      if (sector != null) {
        selectedSector.value = sector;
      }
    }

    final savedTownId = await storage.readValues(StorageKeys.selectedTown);
    if (savedTownId != null &&
        savedTownId.isNotEmpty &&
        selectedSector.value != null) {
      final town = _allTowns.firstWhereOrNull(
        (t) => t.id.toString() == savedTownId,
      );
      if (town != null) {
        selectedTown.value = town;
        _filterCustomersByTown(town);
      }
    }
  }

  Future<void> clearSavedSelections() async {
    await storage.clearValues(StorageKeys.selectedSector);
    await storage.clearValues(StorageKeys.selectedTown);
    selectedSector.value = null;
    selectedTown.value = null;
    selectedCustomer.value = null;
    _setupInitialDropdowns();
  }

  // ==================== UI HELPERS ==================== //

  void _setupInitialDropdowns() {
    sectors.assignAll(_allSectors);

    if (selectedSector.value != null) {
      _filterTownsBySector(selectedSector.value!);
    } else {
      towns.clear();
    }

    if (selectedTown.value != null) {
      _filterCustomersByTown(selectedTown.value!);
    } else {
      customers.clear();
    }
  }

  bool get isSelectionComplete =>
      selectedSector.value != null &&
      selectedTown.value != null &&
      selectedCustomer.value != null;

  String get selectedSectorName => selectedSector.value?.name ?? "";
  String get selectedTownName => selectedTown.value?.name ?? "";
  GetCustomersModel? get selectedCustomerModel => selectedCustomer.value;

  bool get isAnyLoading =>
      isLoadingSectors.value ||
      isLoadingTowns.value ||
      isLoadingCustomers.value;
}

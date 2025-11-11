
import 'core/local_storage/database/database_helper.dart';
import 'core/networks/network_manager/dio_helper.dart';
import 'core/routes/app_pages.dart';
import 'core/theme/theme.dart';
import 'modules/home/presentation/barrel.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pharma App Production",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.lightTheme,
      initialBinding: AppBindings(),
    ),
  );
}


class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(DioHelper(), permanent: true);
    Get.put(PharmaDatabase()..initializeDatabase(), permanent: true);
  }
}

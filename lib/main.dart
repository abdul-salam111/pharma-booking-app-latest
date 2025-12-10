import 'modules/common/home/presentation/barrel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pharma App Latest",
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

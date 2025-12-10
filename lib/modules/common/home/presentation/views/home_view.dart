import 'dart:io';

import 'package:pharma_booking_app/core/utils/current_user_helper.dart';

import '../barrel.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.appBg),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: padding16,
          child: Column(
            crossAxisAlignment: crossAxisStart,
            children: [
              heightBox(Platform.isAndroid ? 20 : 40),
              Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 50,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              heightBox(100),
              Text(
                "Welcome, ${CurrentUserHelper.userName}",

                style: context.headlineSmallStyle!.copyWith(
                  color: AppColors.blackTextColor,
                ),
              ),
              heightBox(20),
              GestureDetector(
                onTap: () {
                  Get.toNamed(
                    Routes.SELECT_CUSTOMER,
                    arguments: {
                      'getAllProducts': controller.getAllProducts,
                      'getCompaniesModel': controller.getCompaniesModel,
                      'getAllSectors': controller.getAllSectors,
                      'getAllTowns': controller.getAllTowns,
                      'getAllCustomers': controller.getAllCustomers,
                    },
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: context.screenHeight * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFFE7D3).withAlpha((0.5 * 255).toInt()),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: mainAxisCenter,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white.withAlpha(
                            (0.7 * 255).toInt(),
                          ),
                          child: Image.asset(
                            "assets/icons/cart.png",
                            width: 30,
                            height: 30,
                          ),
                        ),
                        heightBox(5),
                        Text(
                          "Create New Order",
                          style: context.bodySmallStyle!.copyWith(
                            color: Color(0xffFE7A07),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              heightBox(12),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: controller.cardList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    crossAxisCount: 2,
                    mainAxisExtent: context.screenHeight * 0.15,
                  ),
                  itemBuilder: (context, index) {
                    final card = controller.cardList[index];
                    return GestureDetector(
                      onTap: card.onTap,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: card.cardColor.withAlpha((0.3 * 255).toInt()),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: mainAxisCenter,
                            children: [
                              if (index == 0)
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.white.withAlpha(
                                        (0.7 * 255).toInt(),
                                      ),
                                      child: Image.asset(
                                        card.cardIcon,
                                        width: 30,
                                        height: 30,
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      top: 0,
                                      child: Obx(() {
                                        return controller
                                                    .unsyncedOrdersCount
                                                    .value >
                                                0
                                            ? Container(
                                                padding: const EdgeInsets.all(
                                                  6,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color: Colors.white,
                                                    width: 1.5,
                                                  ),
                                                ),
                                                child: Text(
                                                  '${controller.unsyncedOrdersCount.value}',
                                                  style: context.bodySmallStyle!
                                                      .copyWith(
                                                        color: Colors.white,
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              )
                                            : SizedBox.shrink();
                                      }),
                                    ),
                                  ],
                                ),
                              heightBox(5),
                              if (index != 0)
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.white.withAlpha(
                                    (0.7 * 255).toInt(),
                                  ),
                                  child: Image.asset(
                                    card.cardIcon,
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              Text(
                                card.cardName,
                                style: context.bodySmallStyle!.copyWith(
                                  color: card.textColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: mainAxisSpaceBetween,
                children: [
                  Text(
                    "Version: ${1.0}",
                    style: context.bodySmallStyle!.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Get.dialog(
                        AlertDialog(
                          backgroundColor: Colors.white,
                          title: const Text("Logout"),
                          content: const Text(
                            "Are you sure you want to logout?",
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: const Text("Cancel"),
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                Get.back();
                                await storage.clearValues(StorageKeys.userId);
                                await storage.clearValues(StorageKeys.loggedIn);
                                await storage.clearValues(
                                  StorageKeys.isDatasynced,
                                );
                                await storage.clearValues(StorageKeys.softwareVersion);
                                Get.offAllNamed(Routes.LOGIN_SCREEN);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                              ),
                              child: Text(
                                "Logout",
                                style: context.bodySmallStyle!.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    label: Text(
                      "Logout",
                      style: context.bodyMediumStyle!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    icon: Image.asset(
                      "assets/icons/logout.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ),

              heightBox(40),
            ],
          ),
        ),
      ),
    );
  }
}

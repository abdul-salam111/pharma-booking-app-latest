// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/core.dart';
import '../../../../../core/widgets/widgets.dart';
import '../controllers/create_order_intellibiz_controller.dart';

class CreateOrderIntellibizView
    extends GetView<CreateOrderIntellibizController> {
  const CreateOrderIntellibizView({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) => false,
      canPop: false,
      child: Scaffold(
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              color: AppColors.appPrimaryColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Order Items",
                          style: context.bodySmallStyle!.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        heightBox(5),
                        Text(
                          "Order Amount",
                          style: context.bodySmallStyle!.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Obx(
                          () => Text(
                            "${controller.selectedProducts.length}", // Show count of distinct products
                            style: context.bodySmallStyle!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        heightBox(5),
                        Obx(
                          () => Text(
                            controller.totalAmount
                                .toDouble()
                                .withCommasAndDecimals,
                            style: context.bodySmallStyle!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Obx(
                      () => controller.isSaving.value
                          ? const CircularProgressIndicator()
                          : SizedBox(
                              width: 80,
                              child: CustomButton(
                                backgroundColor:
                                    AppColors.appLightThemeBackground,
                                text: controller.isEditing ? "Update" : "Save",
                                fontsize: 14,
                                onPressed: () {
                                  controller.isEditing
                                      ? controller.updateOrder()
                                      : controller.saveOrder();
                                },
                                textColor: AppColors.blackTextColor,
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: context.screenWidth / 2,
                  height: 50,
                  child: CustomButton(
                    radius: 0,
                    text: "Add Products",
                    fontsize: 14,
                    onPressed: () {
                      controller.addMoreProducts();
                    },
                    backgroundColor: Colors.green,
                  ),
                ),
                SizedBox(
                  width: context.screenWidth / 2,
                  height: 50,
                  child: CustomButton(
                    radius: 0,
                    text: "Close",
                    fontsize: 14,
                    onPressed: () {
                      controller.closeOrder();
                    },
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Column(
            children: [
              Text(
                '${controller.selectedCustomer.value!.customerName}',
                style: context.bodyMediumStyle!.copyWith(
                  color: AppColors.whiteTextColor,
                ),
              ),
              Text(
                '${controller.selectedSector.value?.name} - ${controller.selectedTown.value?.name}',
                style: context.displayLargeStyle!.copyWith(
                  color: AppColors.whiteTextColor,
                ),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: screenPadding,
          child: Column(
            children: [
              heightBox(10),
              // CustomSearchField(
              //   controller: controller.searchController,

              //   hintText: "Search companies...",
              //   onChanged: (query) {
              //     controller.filterCompanies();
              //   },
              // ),
              // heightBox(10),
              Obx(
                () => controller.isLoading.value
                    ? const Center(child: CircularProgressIndicator())
                    : controller.filteredCompanies.isEmpty
                    ? const Expanded(
                        child: Center(
                          child: Text(
                            "No companies found with orders",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ),
                      )
                    : Expanded(
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            final company = controller.filteredCompanies[index];
                            final companyId = company.id.toString();
                            final companyName =
                                company.name ?? 'Unknown Company';
                            final totalAmount = controller.getCompanyTotal(
                              companyId,
                            );

                            return InkWell(
                              onTap: () {
                                controller.goToAllProducts(companyId);
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8.0,
                                ),
                                child: Row(
                                  mainAxisAlignment: mainAxisSpaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Company Name",
                                          style: context.bodySmallStyle!
                                              .copyWith(
                                                color: AppColors.greyTextColor,
                                              ),
                                        ),
                                        Text(
                                          companyName,
                                          style: context.bodySmallStyle!
                                              .copyWith(
                                                color: AppColors.blackTextColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Items",
                                          style: context.bodySmallStyle!
                                              .copyWith(
                                                color: AppColors.greyTextColor,
                                              ),
                                        ),
                                        Text(
                                          "${controller.getCompanyProducts(companyId).length}",
                                          style: context.bodySmallStyle!
                                              .copyWith(
                                                color: AppColors.blackTextColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),

                                    Column(
                                      children: [
                                        Text(
                                          "Amount",
                                          style: context.bodySmallStyle!
                                              .copyWith(
                                                color: AppColors.greyTextColor,
                                              ),
                                        ),
                                        Text(
                                          totalAmount.withCommasAndDecimals,
                                          style: context.bodySmallStyle!
                                              .copyWith(
                                                color: AppColors.blackTextColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(
                                      width: 30,
                                      child: IconButton(
                                        padding: EdgeInsets.zero,

                                        icon: const Icon(
                                          Icons.arrow_forward_ios,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          controller.goToAllProducts(companyId);
                                        },
                                        color: AppColors.appPrimaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => Divider(
                            color: AppColors.greyColor.withOpacity(0.3),
                            height: 10,
                          ),
                          itemCount: controller.filteredCompanies.length,
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

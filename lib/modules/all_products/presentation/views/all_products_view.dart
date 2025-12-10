// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharma_booking_app/core/utils/current_user_helper.dart';
import '../../../../core/core.dart';
import '../../../../core/routes/app_pages.dart';
import '../../../../core/shared/models/post_models/create_order_for_local.dart';
import '../../../../core/widgets/widgets.dart';
import '../../data/models/get_products_model/get_all_products_model.dart';
import '../controllers/all_products_controller.dart';


class AllProductsView extends GetView<AllProductsController> {
  const AllProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: Container(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 8),
          height: context.screenHeight * 0.12,
          width: double.infinity,
          color: AppColors.appPrimaryColor,
          child: Row(
            mainAxisAlignment: mainAxisSpaceBetween,
            crossAxisAlignment: crossAxisCenter,
            children: [
              Column(
                crossAxisAlignment: crossAxisStart,
                mainAxisAlignment: mainAxisCenter,
                children: [
                  Text(""),
                  Text(
                    "Amount",
                    style: context.bodySmallStyle!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Items",
                    style: context.bodySmallStyle!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  heightBox(3),
                ],
              ),
              Obx(
                () => controller.selectedCompanyId.isNotEmpty
                    ? Column(
                        crossAxisAlignment: crossAxisStart,
                        mainAxisAlignment: mainAxisCenter,

                        children: [
                          Text(
                            "Company",
                            style: context.bodySmallStyle!.copyWith(
                              color: Colors.white,
                            ),
                          ),

                          Obx(
                            () => Text(
                              controller.companyTotal.value.withCommas,
                              style: context.bodySmallStyle!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Obx(
                            () => Text(
                              controller.companyTotalItems.value.withCommas,
                              style: context.bodySmallStyle!.copyWith(
                                color: Colors.white,

                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                    : SizedBox.shrink(),
              ),
              Column(
                crossAxisAlignment: crossAxisStart,
                mainAxisAlignment: mainAxisCenter,
                children: [
                  heightBox(3),
                  Text(
                    "Order",
                    style: context.bodySmallStyle!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Obx(
                    () => Text(
                      controller.totalAmount.value.withCommas,
                      style: context.bodySmallStyle!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Obx(
                    () => Text(
                      "${controller.totalItems.value}",
                      style: context.bodySmallStyle!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 80,
                child: CustomButton(
                  backgroundColor: AppColors.appLightThemeBackground,
                  text: "Finalize",
                  fontsize: 14,
                  onPressed: () {
                    if (controller.selectedProducts.isEmpty) {
                      AppToasts.showErrorToast(
                        context,
                        'Please add products to order',
                      );
                      return;
                    }

                    Get.toNamed(
                      Routes.CREATE_ORDER,
                      arguments: {
                        'selectedCustomer': controller.selectedCustomer.value,
                        'selectedSector': controller.selectedSector.value,
                        'selectedTown': controller.selectedTown.value,
                        'selectedProducts': controller.selectedProducts
                            .toList(),
                        'getAllProducts': controller.getAllProducts.toList(),
                        'getCompaniesModel': controller.getAllCompanies
                            .toList(),
                        'isEditing': false,
                      },
                    );
                  },
                  textColor: AppColors.blackTextColor,
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: GestureDetector(
            onTap: () {
              _showCompanySelectionBottomSheet(context);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Obx(
                  () => Text(
                    controller.selectedCompany.value,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(Icons.keyboard_arrow_down, size: 20),
              ],
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: defaultPadding,
          child: Column(
            children: [
              CustomSearchField(
                controller: controller.searchController,

                hintText: "Search medicines...",
                onChanged: (query) {
                  controller.filterProducts();
                },
              ),
              Obx(
                () => controller.isLoading.value
                    ? const Center(child: LoadingIndicator())
                    : Expanded(
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          itemCount: controller.filteredProducts.length,
                          itemBuilder: (context, index) {
                            final product = controller.filteredProducts[index];
                            final selectedProduct = controller
                                .getProductFromOrder(product.id.toString());

                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 4,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "${product.productName}",
                                              style: context.bodySmallStyle!
                                                  .copyWith(
                                                    color: AppColors
                                                        .blackTextColor,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                            Text(
                                              " (${product.packSize}) ",
                                              style: context.displayLargeStyle!
                                                  .copyWith(
                                                    color: AppColors.greyColor,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        heightBox(5),
                                        Row(
                                          mainAxisAlignment:
                                              mainAxisSpaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "T.P: ${product.tradePrice}",
                                                  style: context
                                                      .displayLargeStyle!
                                                      .copyWith(
                                                        color: AppColors
                                                            .greyTextColor,
                                                      ),
                                                ),
                                                widthBox(5),
                                                Text(
                                                  "( CS: ${product.discRatioSal1} )",
                                                  style: context
                                                      .displayLargeStyle!
                                                      .copyWith(
                                                        color: AppColors
                                                            .greyTextColor,
                                                      ),
                                                ),
                                              ],
                                            ),

                                            SizedBox(
                                              width: context.width * 0.56,

                                              child: Row(
                                                mainAxisAlignment:
                                                    mainAxisSpaceBetween,
                                                children: [
                                                  if (CurrentUserHelper
                                                      .isAllowChangeBookingPrice)
                                                    SizedBox(
                                                      width:
                                                          context.width * 0.15,
                                                      child: RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: "P: ",
                                                              style: context
                                                                  .displayLargeStyle!
                                                                  .copyWith(
                                                                    color: AppColors
                                                                        .greyTextColor,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  selectedProduct !=
                                                                      null
                                                                  ? "${selectedProduct.price}"
                                                                  : "${product.tradePrice}",
                                                              style: context
                                                                  .displayLargeStyle! //change the color to blue when the price is changed
                                                                  .copyWith(
                                                                    color:
                                                                        selectedProduct !=
                                                                                null &&
                                                                            selectedProduct.price !=
                                                                                product.tradePrice
                                                                        ? Colors
                                                                              .blue
                                                                        : AppColors
                                                                              .blackTextColor,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),

                                                  SizedBox(
                                                    width: context.width * 0.1,
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: "Q: ",
                                                            style: context
                                                                .displayLargeStyle!
                                                                .copyWith(
                                                                  color: AppColors
                                                                      .greyTextColor,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                selectedProduct
                                                                    ?.quantity
                                                                    .toString() ??
                                                                "",
                                                            style: context
                                                                .displayLargeStyle!
                                                                .copyWith(
                                                                  color: AppColors
                                                                      .blackTextColor,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),

                                                  if (CurrentUserHelper
                                                      .isAllowChangeBookingBonus)
                                                    SizedBox(
                                                      width:
                                                          context.width * 0.1,

                                                      child: RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: "B: ",
                                                              style: context
                                                                  .displayLargeStyle!
                                                                  .copyWith(
                                                                    color: AppColors
                                                                        .greyTextColor,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  selectedProduct
                                                                          ?.bonus !=
                                                                      0
                                                                  ? selectedProduct
                                                                        ?.bonus
                                                                        .toString()
                                                                  : "",

                                                              style: context
                                                                  .displayLargeStyle!
                                                                  .copyWith(
                                                                    color: AppColors
                                                                        .blackTextColor,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),

                                                  if (CurrentUserHelper
                                                      .isAllowChangeBookingDisc)
                                                    SizedBox(
                                                      width:
                                                          context.width * 0.13,

                                                      child: RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: "D: ",
                                                              style: context
                                                                  .displayLargeStyle!
                                                                  .copyWith(
                                                                    color: AppColors
                                                                        .greyTextColor,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  (selectedProduct
                                                                              ?.discRatio !=
                                                                          0.0 &&
                                                                      selectedProduct
                                                                              ?.discRatio !=
                                                                          null)
                                                                  ? "${selectedProduct?.discRatio.toString()}%"
                                                                  : "",
                                                              style: context
                                                                  .displayLargeStyle!
                                                                  .copyWith(
                                                                    color: Colors
                                                                        .red,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),

                                                  SizedBox(
                                                    height: 24,
                                                    width: 24,
                                                    child: IconButton(
                                                      padding: EdgeInsets.zero,
                                                      constraints:
                                                          const BoxConstraints(),
                                                      icon: const Icon(
                                                        Icons.unfold_more,
                                                        size: 15,
                                                      ),
                                                      onPressed: () async {
                                                        controller
                                                            .searchFocusNode
                                                            .unfocus();

                                                        await Get.bottomSheet(
                                                          ProductBottomSheetPharmaSuit(
                                                            product: product,
                                                          ),
                                                          isScrollControlled:
                                                              true,
                                                        );
                                                        controller
                                                            .searchFocusNode
                                                            .unfocus();
                                                      },
                                                      color: AppColors
                                                          .appPrimaryColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => Divider(
                            color: AppColors.greyColor.withOpacity(0.3),
                            height: 2,
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCompanySelectionBottomSheet(BuildContext context) {
    controller.searchFocusNode.unfocus();
    Get.bottomSheet(
      CompanySelectionBottomSheet(),
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
    );
    controller.searchFocusNode.unfocus();
  }
}

class CompanySelectionBottomSheet extends GetView<AllProductsController> {
  const CompanySelectionBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.85,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          // Handle bar
          Container(
            width: 40,
            height: 4,
            margin: const EdgeInsets.only(top: 12, bottom: 16),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
          ),

          // Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select Company",
                  style: context.bodyLargeStyle!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackTextColor,
                  ),
                ),
                IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
          ),

          const Divider(height: 1),

          // Search field
          Padding(
            padding: const EdgeInsets.all(16),
            child: CustomSearchField(
              controller: controller.companySearchController,

              hintText: "Search companies...",
              onChanged: (query) {
                controller.filterCompanies();
              },
            ),
          ),

          // All Companies option
          ListTile(
            title: Text("All Companies", style: context.bodyMediumStyle),
            subtitle: Obx(
              () => Text(
                "${controller.getAllProducts.length} products",
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),

            onTap: () {
              controller.selectCompany("All Companies", "");
            },
          ),

          const Divider(height: 1),

          // Companies list
          Expanded(
            child: Obx(
              () => controller.isCompaniesLoading.value
                  ? const Center(child: LoadingIndicator())
                  : controller.filteredCompanies.isEmpty
                  ? const Center(
                      child: Text(
                        "No companies found",
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      itemCount: controller.filteredCompanies.length,
                      itemBuilder: (context, index) {
                        final company = controller.filteredCompanies[index];
                        final isSelected =
                            controller.selectedCompany.value == company.name;

                        return ListTile(
                          title: Text(
                            company.name ?? "Unknown Company",
                            style: context.bodyMediumStyle!.copyWith(
                              fontWeight: isSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                          subtitle: Text(
                            "${controller.getProductsCountForCompany(company.id?.toString() ?? "")} products",
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          trailing: isSelected
                              ? const Icon(Icons.check, color: Colors.green)
                              : null,
                          onTap: () {
                            // Use company.id (which is 137) instead of company.companyId (which is "01")
                            // because products have CompanyId: 137 matching company.id
                            controller.selectCompany(
                              company.name ?? "Unknown Company",
                              company.id?.toString() ?? "",
                            );
                          },
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductBottomSheetPharmaSuit extends StatefulWidget {
  final GetAllProductsModel product;
  const ProductBottomSheetPharmaSuit({super.key, required this.product});

  @override
  State<ProductBottomSheetPharmaSuit> createState() =>
      _ProductBottomSheetPharmaSuitState();
}

class _ProductBottomSheetPharmaSuitState
    extends State<ProductBottomSheetPharmaSuit> {
  late TextEditingController qtyController;
  late TextEditingController bonusController;
  late TextEditingController discController;
  late TextEditingController priceController;
  late FocusNode qtyFocusNode;

  final RxDouble totalAmount = 0.0.obs;
  final RxDouble discountAmount = 0.0.obs;
  final RxDouble finalAmount = 0.0.obs;

  @override
  void initState() {
    super.initState();
    final controller = Get.find<AllProductsController>();
    final existingProduct = controller.getProductFromOrder(
      widget.product.id.toString(),
    );

    // Initialize controllers with existing values or defaults
    qtyController = TextEditingController(
      text: existingProduct?.quantity.toString() ?? '',
    );
    bonusController = TextEditingController(
      text: existingProduct?.bonus.toString() ?? '0',
    );
    discController = TextEditingController(
      text: existingProduct?.discRatio.toString() ?? '0',
    );
    priceController = TextEditingController(
      text:
          existingProduct?.price.toString() ??
          widget.product.tradePrice.toString(),
    );

    qtyFocusNode = FocusNode();

    // Add listeners
    qtyController.addListener(calculateTotals);
    priceController.addListener(calculateTotals);
    discController.addListener(calculateTotals);

    // Calculate initial totals
    WidgetsBinding.instance.addPostFrameCallback((_) {
      calculateTotals();
      qtyFocusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    // Clean up controllers and focus nodes
    qtyController.dispose();
    bonusController.dispose();
    discController.dispose();
    priceController.dispose();
    qtyFocusNode.dispose();
    super.dispose();
  }

  void calculateTotals() {
    final quantity = int.tryParse(qtyController.text) ?? 0;
    final price = double.tryParse(priceController.text) ?? 0.0;
    final discount = double.tryParse(discController.text) ?? 0.0;

    final subtotal = quantity * price;
    final discountValue = (subtotal * discount) / 100;
    final final_amount = subtotal - discountValue;

    totalAmount.value = subtotal;
    discountAmount.value = discountValue;
    finalAmount.value = final_amount;
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AllProductsController>();
    final existingProduct = controller.getProductFromOrder(
      widget.product.id.toString(),
    );

    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.9,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            heightBox(10),
            Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
            ),

            Row(
              mainAxisAlignment: mainAxisCenter,
              children: [
                Text(
                  "${widget.product.productName}",
                  style: context.bodyLargeStyle!.copyWith(
                    color: AppColors.blackTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  " (${widget.product.packSize}) ",
                  style: context.displayLargeStyle!.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    label: "Quantity*",
                    labelColor: AppColors.blackTextColor,
                    controller: qtyController,
                    hintText: "Qty",
                    keyboardType: TextInputType.number,
                    borderColor: AppColors.darkGreyColor,
                    labelfontSize: 14,
                  ),
                ),
                if (CurrentUserHelper.isAllowChangeBookingBonus) widthBox(20),

                if (CurrentUserHelper.isAllowChangeBookingBonus)
                  Expanded(
                    child: CustomTextFormField(
                      controller: bonusController,
                      label: "Bonus",
                      labelColor: AppColors.blackTextColor,
                      hintText: "Bns",
                      keyboardType: TextInputType.number,
                      borderColor: AppColors.darkGreyColor,
                      labelfontSize: 14,
                    ),
                  ),
              ],
            ),

            const SizedBox(height: 10),
            Row(
              children: [
                if (CurrentUserHelper.isAllowChangeBookingDisc)
                  Expanded(
                    child: CustomTextFormField(
                      label: "Discount %",
                      labelColor: AppColors.blackTextColor,
                      controller: discController,
                      hintText: "Disc%",
                      keyboardType: TextInputType.number,
                      borderColor: AppColors.darkGreyColor,
                      labelfontSize: 14,
                    ),
                  ),

                widthBox(20),

                if (CurrentUserHelper.isAllowChangeBookingPrice)
                  Expanded(
                    child: CustomTextFormField(
                      controller: priceController,
                      label: "Price",
                      labelColor: AppColors.blackTextColor,
                      hintText: "${widget.product.tradePrice}",
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      borderColor: AppColors.darkGreyColor,
                      labelfontSize: 14,
                    ),
                  ),
              ],
            ),
            heightBox(20),

            // Calculation Summary Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subtotal:",
                        style: context.bodyMediumStyle!.copyWith(
                          color: AppColors.greyTextColor,
                        ),
                      ),
                      Obx(
                        () => Text(
                          totalAmount.value.withCommas,
                          style: context.bodyMediumStyle!.copyWith(
                            color: AppColors.blackTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  heightBox(8),
                  Obx(
                    () => discountAmount.value > 0
                        ? Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Discount:",
                                    style: context.bodyMediumStyle!.copyWith(
                                      color: Colors.red,
                                    ),
                                  ),
                                  Text(
                                    "- ${discountAmount.value.withCommas}",
                                    style: context.bodyMediumStyle!.copyWith(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              heightBox(8),
                              Divider(color: Colors.grey[300], height: 1),
                              heightBox(8),
                            ],
                          )
                        : SizedBox.shrink(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Amount:",
                        style: context.bodyMediumStyle!.copyWith(
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Obx(
                        () => Text(
                          finalAmount.value.withCommas,
                          style: context.bodyLargeStyle!.copyWith(
                            color: AppColors.appPrimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            heightBox(20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Available Stock: ",
                    style: const TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: "${widget.product.discRatioSal3}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: "Trade Price: ",
                    style: const TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: "${widget.product.tradePrice}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Remove and Update buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      if (existingProduct != null) {
                        controller.removeProductFromOrder(
                          widget.product.id.toString(),
                        );
                      }
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      existingProduct != null ? "Remove" : "Cancel",
                      style: context.bodySmallStyle!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate quantity
                      if (qtyController.text.isEmpty ||
                          int.parse(qtyController.text) <= 0) {
                        AppToasts.showErrorToast(
                          context,
                          'Please enter a valid quantity',
                        );
                        return;
                      }

                      // Store the original price (not discounted)
                      final originalPrice = double.parse(
                        priceController.text.isEmpty
                            ? widget.product.tradePrice.toString()
                            : priceController.text,
                      );

                      controller.addProductToOrder(
                        OrderProducts(
                          companyOrderId: widget.product.companyId!,
                          productId: widget.product.id.toString(),
                          productName: widget.product.productName!,
                          quantity: int.parse(qtyController.text),
                          price: originalPrice, // Store original price
                          bonus: int.parse(
                            bonusController.text.isEmpty
                                ? '0'
                                : bonusController.text,
                          ),
                          discRatio: double.parse(
                            discController.text.isEmpty
                                ? '0.0'
                                : discController.text,
                          ),
                        ),
                      );

                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      existingProduct != null ? "Update" : "Add to Order",
                      style: context.bodySmallStyle!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            heightBox(20),
          ],
        ),
      ),
    );
  }
}

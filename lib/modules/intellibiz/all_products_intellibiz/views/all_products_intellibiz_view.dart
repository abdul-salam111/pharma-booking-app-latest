import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharma_booking_app/core/utils/current_user_helper.dart';
import 'package:pharma_booking_app/modules/intellibiz/all_products_intellibiz/widgets/packing_dropdown.dart';
import '../../../../../core/core.dart';
import '../../../../../core/routes/app_pages.dart';
import '../../../common/data/create_order_data/data/models/request_models/create_order_for_local.dart';
import '../../../../../core/widgets/widgets.dart';
import '../../../common/data/all_products_data/data/models/get_products_model/get_all_products_model.dart';
import '../controllers/all_products_intellibiz_controller.dart';

class AllProductsIntellibizView
    extends GetView<AllProductsIntellibizController> {
  const AllProductsIntellibizView({super.key});

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
                              controller
                                  .companyTotal
                                  .value
                                  .withCommasAndDecimals,
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
                      controller.totalAmount.value.withCommasAndDecimals,
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
                width: 70,
                child: CustomButton(
                  backgroundColor: AppColors.appLightThemeBackground,
                  text: "Finalize",
                  fontsize: 12,
                  onPressed: () {
                    if (controller.selectedProducts.isEmpty) {
                      AppToasts.showErrorToast(
                        context,
                        'Please add products to order',
                      );
                      return;
                    }

                    Get.toNamed(
                      Routes.CREATE_ORDER_INTELLIBIZ,
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

                            // Get default packing based on salPackingId
                            Packing? defaultPacking;
                            if (product.packings != null &&
                                product.packings!.isNotEmpty &&
                                product.salPackingId != null) {
                              try {
                                defaultPacking = product.packings!.firstWhere(
                                  (p) => p.packingId == product.salPackingId,
                                );
                              } catch (e) {
                                defaultPacking = product.packings!.first;
                              }
                            }

                            // Get display packing (selected product's packing or default)
                            String packingDisplay = "";
                            if (selectedProduct != null &&
                                selectedProduct.packingName != null) {
                              packingDisplay =
                                  " (${selectedProduct.packingName} x ${selectedProduct.multiplier})";
                            } else if (defaultPacking != null) {
                              packingDisplay =
                                  " (${defaultPacking.packingName} x ${defaultPacking.multiplier})";
                            }

                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 4.0,
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
                                            Flexible(
                                              child: RichText(
                                                text: TextSpan(
                                                  text: product.productName,
                                                  style: context.bodySmallStyle!
                                                      .copyWith(
                                                        color: AppColors
                                                            .blackTextColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                  children: [
                                                    TextSpan(
                                                      text: packingDisplay,
                                                      style: context
                                                          .displayLargeStyle!
                                                          .copyWith(
                                                            color: AppColors
                                                                .greyTextColor,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        heightBox(5),
                                        Row(
                                          mainAxisAlignment:
                                              mainAxisSpaceBetween,
                                          crossAxisAlignment: crossAxisStart,
                                          children: [
                                            SizedBox(
                                              width: context.screenWidth * 0.03,
                                            ),
                                            if (CurrentUserHelper
                                                .isShowCurrentStock)
                                              SizedBox(
                                                height: 27,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      crossAxisCenter,
                                                  mainAxisAlignment:
                                                      mainAxisSpaceBetween,
                                                  children: [
                                                    Text(
                                                      "Stock",
                                                      style: context
                                                          .displayMediumStyle!
                                                          .copyWith(
                                                            color: AppColors
                                                                .greyTextColor,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontFamily:
                                                                GoogleFonts.roboto()
                                                                    .fontFamily,
                                                          ),
                                                    ),

                                                    Text(
                                                      product.currentStock
                                                          .toString(),
                                                      style: context
                                                          .displayMediumStyle!
                                                          .copyWith(
                                                            color:
                                                                selectedProduct !=
                                                                        null &&
                                                                    selectedProduct
                                                                            .pricePack !=
                                                                        product
                                                                            .pricePackSal1
                                                                ? Colors.blue
                                                                : AppColors
                                                                      .blackTextColor,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            SizedBox(
                                              height: 27,
                                              child: Column(
                                                crossAxisAlignment:
                                                    crossAxisCenter,
                                                mainAxisAlignment:
                                                    mainAxisSpaceBetween,
                                                children: [
                                                  Text(
                                                    "Price P",
                                                    style: context
                                                        .displayMediumStyle!
                                                        .copyWith(
                                                          color: AppColors
                                                              .greyTextColor,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              GoogleFonts.dmSans()
                                                                  .fontFamily,
                                                        ),
                                                  ),

                                                  Text(
                                                    selectedProduct != null
                                                        ? "${selectedProduct.pricePack}"
                                                        : "${product.pricePackSal1}",
                                                    style: context
                                                        .displayMediumStyle!
                                                        .copyWith(
                                                          color:
                                                              selectedProduct !=
                                                                      null &&
                                                                  selectedProduct
                                                                          .pricePack !=
                                                                      product
                                                                          .pricePackSal1
                                                              ? Colors.blue
                                                              : AppColors
                                                                    .blackTextColor,
                                                          fontFamily:
                                                              GoogleFonts.dmSans()
                                                                  .fontFamily,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            SizedBox(
                                              height: 27,
                                              child: Column(
                                                crossAxisAlignment:
                                                    crossAxisCenter,
                                                mainAxisAlignment:
                                                    mainAxisSpaceBetween,
                                                children: [
                                                  Text(
                                                    "Qty",
                                                    style: context
                                                        .displayMediumStyle!
                                                        .copyWith(
                                                          color: AppColors
                                                              .greyTextColor,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              GoogleFonts.dmSans()
                                                                  .fontFamily,
                                                        ),
                                                  ),

                                                  if (selectedProduct != null)
                                                    Text(
                                                      "${selectedProduct.quantityPack} - ${selectedProduct.quantityLose}",
                                                      style: context
                                                          .displayMediumStyle!
                                                          .copyWith(
                                                            color: Colors.green,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily:
                                                                GoogleFonts.dmSans()
                                                                    .fontFamily,
                                                          ),
                                                    ),
                                                ],
                                              ),
                                            ),

                                            SizedBox(
                                              height: 27,
                                              child: Column(
                                                crossAxisAlignment:
                                                    crossAxisCenter,
                                                mainAxisAlignment:
                                                    mainAxisSpaceBetween,
                                                children: [
                                                  Text(
                                                    "Bns",
                                                    style: context
                                                        .displayMediumStyle!
                                                        .copyWith(
                                                          color: AppColors
                                                              .greyTextColor,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              GoogleFonts.dmSans()
                                                                  .fontFamily,
                                                        ),
                                                  ),

                                                  Text(
                                                    (selectedProduct?.bonus ??
                                                                0) !=
                                                            0
                                                        ? selectedProduct!.bonus
                                                              .toString()
                                                        : "",
                                                    style: context
                                                        .displayMediumStyle!
                                                        .copyWith(
                                                          color: AppColors
                                                              .blackTextColor,
                                                          fontFamily:
                                                              GoogleFonts.dmSans()
                                                                  .fontFamily,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            SizedBox(
                                              height: 27,
                                              child: Column(
                                                crossAxisAlignment:
                                                    crossAxisCenter,
                                                mainAxisAlignment:
                                                    mainAxisSpaceBetween,
                                                children: [
                                                  Text(
                                                    "Disc%",
                                                    style: context
                                                        .displayMediumStyle!
                                                        .copyWith(
                                                          color: AppColors
                                                              .greyTextColor,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              GoogleFonts.dmSans()
                                                                  .fontFamily,
                                                        ),
                                                  ),

                                                  Text(
                                                    (selectedProduct?.discRatio !=
                                                                0.0 &&
                                                            selectedProduct
                                                                    ?.discRatio !=
                                                                null)
                                                        ? "${selectedProduct?.discRatio.toString()}"
                                                        : "",
                                                    style: context
                                                        .displayMediumStyle!
                                                        .copyWith(
                                                          color: Colors.red,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontFamily:
                                                              GoogleFonts.dmSans()
                                                                  .fontFamily,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                             SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.only(bottom: 10),
                                          constraints: const BoxConstraints(),
                                          icon: const Icon(
                                            Icons.add_shopping_cart,
                                            size: 18,
                                          ),
                                          onPressed: () async {
                                            await Get.bottomSheet(
                                              ProductBottomSheetIntellibiz(
                                                product: product,
                                              ),
                                              isScrollControlled: true,
                                            );
                                          },
                                          color: Colors.blue,
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

class CompanySelectionBottomSheet
    extends GetView<AllProductsIntellibizController> {
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
          Container(
            width: 40,
            height: 4,
            margin: const EdgeInsets.only(top: 12, bottom: 16),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
          ),
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

class ProductBottomSheetIntellibiz extends StatefulWidget {
  final GetAllProductsModel product;
  const ProductBottomSheetIntellibiz({super.key, required this.product});

  @override
  State<ProductBottomSheetIntellibiz> createState() =>
      _ProductBottomSheetIntellibizState();
}

class _ProductBottomSheetIntellibizState
    extends State<ProductBottomSheetIntellibiz> {
  late TextEditingController packingQtyController = TextEditingController();
  late TextEditingController qtyloseController = TextEditingController();
  late TextEditingController bonusController = TextEditingController();
  late TextEditingController discController = TextEditingController();
  late TextEditingController priceController = TextEditingController();
  late FocusNode qtyFocusNode = FocusNode();
  Rx<Packing?> selectedPacking = Rx<Packing?>(null);
  late Packing defaultPacking;
  late OrderProducts? existingProduct;
  late String? productCompany;
  @override
  void initState() {
    super.initState();
    final controller = Get.find<AllProductsIntellibizController>();
    existingProduct = controller.getProductFromOrder(
      widget.product.id.toString(),
    );

    productCompany = controller.getAllCompanies
        .where((company) => company.id == widget.product.companyId)
        .first
        .name;

    // Set initial values based on the already existing product
    if (existingProduct != null) {
      // Only set text if value is greater than 0
      packingQtyController.text = (existingProduct?.quantityPack ?? 0) > 0
          ? existingProduct!.quantityPack.toString()
          : '';

      qtyloseController.text = (existingProduct?.quantityLose ?? 0) > 0
          ? existingProduct!.quantityLose.toString()
          : '';

      bonusController.text = (existingProduct?.bonus ?? 0) > 0
          ? existingProduct!.bonus.toString()
          : '';

      discController.text = (existingProduct?.discRatio ?? 0.0) > 0
          ? existingProduct!.discRatio.toString()
          : '';

      priceController.text = existingProduct?.pricePack.toString() ?? '0';
    } else {
      packingQtyController.text = '';
      qtyloseController.text = '';
      bonusController.text = '';
      discController.text = '';
      priceController.text = widget.product.pricePackSal1?.toString() ?? '0.0';
    }

    // set default packing
    if (widget.product.packings != null &&
        widget.product.packings!.isNotEmpty) {
      defaultPacking = widget.product.packings!.first;

      if (existingProduct != null &&
          existingProduct?.packingName != null &&
          existingProduct?.multiplier != null) {
        try {
          selectedPacking.value = widget.product.packings!.firstWhere(
            (p) =>
                p.packingName == existingProduct?.packingName &&
                p.multiplier == existingProduct?.multiplier,
          );
        } catch (e) {
          selectedPacking.value = defaultPacking;
        }
      } else {
        selectedPacking.value = defaultPacking;
      }
    }

    // Add listeners after initialization
    packingQtyController.addListener(calculateTotals);
    priceController.addListener(calculateTotals);
    discController.addListener(calculateTotals);
    qtyloseController.addListener(calculateTotals);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      calculateTotals();
      qtyFocusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    packingQtyController.dispose();
    bonusController.dispose();
    discController.dispose();
    priceController.dispose();
    qtyloseController.dispose();
    qtyFocusNode.dispose();
    super.dispose();
  }

  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║        Total Amount calculation variables  & Methods                         ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝
  final RxDouble totalAmount = 0.0.obs;
  final RxDouble discountAmount = 0.0.obs;
  final RxDouble finalAmount = 0.0.obs;
  final RxDouble salesTaxAmount = 0.0.obs;
  void calculateTotals() {
    final controller = Get.find<AllProductsIntellibizController>();
    final packingQty = int.tryParse(packingQtyController.text) ?? 0;
    final loseQty = int.tryParse(qtyloseController.text) ?? 0;
    final price = double.tryParse(priceController.text) ?? 0.0;
    final discount = double.tryParse(discController.text) ?? 0.0;
    if (selectedPacking.value == null) {
      totalAmount.value = 0.0;
      discountAmount.value = 0.0;
      salesTaxAmount.value = 0.0;
      finalAmount.value = 0.0;
      return;
    }

    final result = controller.calculateProductAmounts(
      productId: widget.product.id.toString(),
      quantityPack: packingQty,
      quantityLose: loseQty,
      price: price,
      discountPercent: discount,
      selectedPacking: selectedPacking.value,
    );
    totalAmount.value = result.subtotal;
    discountAmount.value = result.discountAmount;
    salesTaxAmount.value = result.salesTaxAmount;
    finalAmount.value = result.finalAmount;
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AllProductsIntellibizController>();

    final productCompany = controller.getAllCompanies
        .where((company) => company.id == widget.product.companyId)
        .first
        .name;

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

            Column(
              crossAxisAlignment: crossAxisStart,
              children: [
                Row(
                  children: [
                    Text(
                      "${widget.product.productName}",
                      style: context.bodyMediumStyle!.copyWith(
                        color: AppColors.blackTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    if (CurrentUserHelper.isShowCurrentStock)
                      Text.rich(
                        TextSpan(
                          text: "Stock: ",
                          style: context.bodySmallStyle!.copyWith(
                            color: AppColors.greyColor,
                          ),
                          children: [
                            TextSpan(
                              text: "${widget.product.currentStock}",
                              style: context.bodySmallStyle!.copyWith(
                                color: AppColors.blackTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
                Text.rich(
                  TextSpan(
                    text: productCompany.toString(),
                    style: context.displayLargeStyle!.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: PackingDropdown(
                    packings: widget.product.packings,
                    selectedPacking: selectedPacking.value,
                    onChanged: (val) {
                      selectedPacking.value = val;
                      calculateTotals();
                    },
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: CustomTextFormField(
                    focusNode: qtyFocusNode,
                    labelColor: AppColors.greyColor,
                    textfieldHeight: 30,
                    labelfontSize: 12,
                    hintStyle: context.displayLargeStyle!.copyWith(
                      color: AppColors.greyTextColor,
                    ),
                    borderRadius: 5,
                    label: "Qty Pack",
                    controller: packingQtyController,
                    hintText: "0",
                    keyboardType: TextInputType.number,
                    borderColor: AppColors.darkGreyColor,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: CustomTextFormField(
                    hintStyle: context.displayLargeStyle!.copyWith(
                      color: AppColors.greyTextColor,
                    ),
                    borderRadius: 5,
                    labelColor: AppColors.greyColor,
                    textfieldHeight: 30,
                    labelfontSize: 12,
                    label: "Qty Lose",
                    controller: qtyloseController,
                    hintText: "0",
                    keyboardType: TextInputType.number,
                    borderColor: AppColors.darkGreyColor,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 5),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: CustomTextFormField(
                    readonly: !CurrentUserHelper.isAllowChangeBookingPrice,
                    labelColor: AppColors.greyColor,
                    textfieldHeight: 30,
                    labelfontSize: 12,
                    hintStyle: context.displayLargeStyle!.copyWith(
                      color: AppColors.greyTextColor,
                    ),
                    borderRadius: 5,
                    controller: priceController,
                    label: "Price Pack",
                    hintText: "${widget.product.pricePackSal1}",
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    borderColor: CurrentUserHelper.isAllowChangeBookingPrice
                        ? AppColors.darkGreyColor
                        : AppColors.mostLightGreyColor,
                    fillColor: CurrentUserHelper.isAllowChangeBookingPrice
                        ? AppColors.whiteTextColor
                        : AppColors.mostLightGreyColor,
                  ),
                ),
                widthBox(10),

                Expanded(
                  flex: 1,
                  child: CustomTextFormField(
                    readonly: !CurrentUserHelper.isAllowChangeBookingDisc,
                    labelColor: AppColors.greyColor,
                    textfieldHeight: 30,
                    labelfontSize: 12,
                    label: "Discount %",
                    hintStyle: context.displayLargeStyle!.copyWith(
                      color: AppColors.greyTextColor,
                    ),
                    borderRadius: 5,
                    controller: discController,
                    hintText: "0.0%",
                    keyboardType: TextInputType.number,
                    borderColor: CurrentUserHelper.isAllowChangeBookingDisc
                        ? AppColors.darkGreyColor
                        : AppColors.mostLightGreyColor,
                    fillColor: CurrentUserHelper.isAllowChangeBookingDisc
                        ? AppColors.whiteTextColor
                        : AppColors.mostLightGreyColor,
                  ),
                ),
                widthBox(10),

                Expanded(
                  flex: 1,
                  child: CustomTextFormField(
                    readonly: !CurrentUserHelper.isAllowChangeBookingBonus,
                    labelColor: AppColors.greyColor,
                    textfieldHeight: 30,
                    labelfontSize: 12,

                    borderRadius: 5,
                    controller: bonusController,
                    label: "Bonus",
                    hintText: "0",
                    keyboardType: TextInputType.number,
                    borderColor: CurrentUserHelper.isAllowChangeBookingBonus
                        ? AppColors.darkGreyColor
                        : AppColors.mostLightGreyColor,
                    fillColor: CurrentUserHelper.isAllowChangeBookingBonus
                        ? AppColors.whiteTextColor
                        : AppColors.mostLightGreyColor,
                    hintStyle: context.displayLargeStyle!.copyWith(
                      color: AppColors.greyTextColor,
                    ),
                  ),
                ),
              ],
            ),

            heightBox(20),

            // Calculation Summary Card
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: Column(
                children: [
                  Obx(
                    () => discountAmount.value > 0
                        ? heightBox(8)
                        : SizedBox.shrink(),
                  ),
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
                                    style: context.bodySmallStyle!.copyWith(
                                      color: AppColors.greyTextColor,
                                    ),
                                  ),
                                  Text(
                                    "- Rs. ${discountAmount.value.withCommasAndDecimals}",
                                    style: context.bodySmallStyle!.copyWith(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              heightBox(4),
                              Divider(color: Colors.grey[300], height: 1),
                              heightBox(4),
                            ],
                          )
                        : SizedBox.shrink(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subtotal:",
                        style: context.bodySmallStyle!.copyWith(
                          color: AppColors.greyTextColor,
                        ),
                      ),
                      Obx(
                        () => Text(
                          " Rs. ${(totalAmount.value - discountAmount.value).withCommasAndDecimals}",
                          style: context.bodySmallStyle!.copyWith(
                            color: AppColors.blackTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),

                  heightBox(8),

                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sales Tax ( ${widget.product.sTaxRatio}% ):",
                            style: context.bodySmallStyle!.copyWith(
                              color: AppColors.greyTextColor,
                            ),
                          ),
                          Obx(
                            () => Text(
                              "+ Rs. ${salesTaxAmount.value.withCommasAndDecimals}",
                              style: context.bodySmallStyle!.copyWith(
                                color: AppColors.blackTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      heightBox(8),
                      Divider(color: Colors.grey[300], height: 1),
                      heightBox(8),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Amount:",
                        style: context.bodySmallStyle!.copyWith(
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Obx(
                        () => Text(
                          "Rs. ${finalAmount.value.withCommasAndDecimals}",
                          style: context.bodySmallStyle!.copyWith(
                            color: AppColors.blackTextColor,
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

            const SizedBox(height: 24),

            // Remove and Update buttons
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      if (existingProduct != null) {
                        controller.removeProductFromOrder(
                          widget.product.id.toString(),
                        );
                      }
                      Get.back();
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.red),

                      padding: const EdgeInsets.symmetric(vertical: 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      existingProduct != null ? "Remove" : "Cancel",
                      style: context.bodySmallStyle!.copyWith(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      if (packingQtyController.text.isEmpty &&
                          qtyloseController.text.isEmpty) {
                        AppToasts.showErrorToast(
                          context,
                          "Please enter quantity",
                        );
                        return;
                      }

                      final originalPrice = double.parse(
                        priceController.text.isEmpty
                            ? widget.product.pricePackSal1.toString()
                            : priceController.text,
                      );

                      controller.addProductToOrder(
                        OrderProducts(
                          quantityLose: int.parse(
                            qtyloseController.text.isEmpty
                                ? '0'
                                : qtyloseController.text,
                          ),
                          companyOrderId: widget.product.companyId!,
                          productId: widget.product.id.toString(),
                          productName: widget.product.productName!,
                          quantityPack: int.parse(
                            packingQtyController.text.isEmpty
                                ? '0'
                                : packingQtyController.text,
                          ),
                          pricePack: originalPrice,
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
                          packingName: selectedPacking.value?.packingName,
                          multiplier: selectedPacking.value?.multiplier,
                          packingId: selectedPacking.value?.packingId,
                          sTaxRatio: widget.product.sTaxRatio,
                        ),
                      );

                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(vertical: 0),
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

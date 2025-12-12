// ignore_for_file: deprecated_member_use
import '../../../core/widgets/custom_button.dart';
import '../../common/home/presentation/barrel.dart';
import '../controllers/order_details_on_date_controller.dart';

class OrderDetailsOnDateView extends GetView<OrderDetailsOnDateController> {
  const OrderDetailsOnDateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Column(
            children: [
              Text(controller.order.value?.customerName ?? 'Customer'),
              heightBox(5),
              Text(
                controller.order.value?.customerAddress ??
                    'Address not available',
                style: context.displayLargeStyle!.copyWith(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.order.value == null) {
          return const Center(child: CircularProgressIndicator());
        }

        final order = controller.order.value!;

        return Padding(
          padding: defaultPadding,
          child: Column(
            children: [
              heightBox(2),
              // Order Summary Card
              Container(
                padding: padding12,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: crossAxisStart,
                          children: [
                            Text(
                              "Order Date & Time: ",
                              style: context.bodySmallStyle,
                            ),
                            Text(
                              controller.getFormattedOrderDate(),
                              style: context.displayLargeStyle!.copyWith(
                                color: AppColors.greyColor,
                                height: 2,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text(
                          "Rs. ${order.totalAmount.withCommas}",
                          style: context.bodySmallStyle!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    heightBox(5),
                    Row(
                      children: [
                        Text(
                          "Device Order Id: ",
                          style: context.bodySmallStyle,
                        ),
                        Text(
                          "${controller.orderIndex.value + 1}",
                          style: context.displayLargeStyle!.copyWith(
                            color: AppColors.greyColor,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "${controller.getTotalItems()} Items",
                          style: context.bodySmallStyle!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    heightBox(5),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: crossAxisStart,
                          children: [
                            Text("Sync Date: ", style: context.bodySmallStyle),
                            Text(
                              controller.getFormattedSyncDate(),
                              style: context.displayLargeStyle!.copyWith(
                                color: AppColors.greyColor,
                                height: 2,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        order.syncedStatus != "Yes"
                            ? SizedBox(
                                height: 30,
                                width: 70,
                                child: CustomButton(
                                  onPressed: () {
                                    controller.editOrder();
                                  },
                                  fontsize: 12,
                                  text: "Edit",
                                  backgroundColor: AppColors.appPrimaryColor,
                                  radius: 5,
                                ),
                              )
                            : SizedBox.shrink(),
                      ],
                    ),
                  ],
                ),
              ),
              heightBox(10),

              // Companies and Products List
              Expanded(
                child: ListView.builder(
                  itemCount: order.companies.length,
                  itemBuilder: (context, companyIndex) {
                    final company = order.companies[companyIndex];

                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        children: [
                          // Company Header
                          Container(
                            padding: defaultPadding,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.appPrimaryColor,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: mainAxisSpaceBetween,
                              children: [
                                Text(
                                  "${companyIndex + 1}",
                                  style: context.bodySmallStyle!.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  company.companyName,
                                  style: context.bodySmallStyle!.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Rs. ${company.companyTotalAmount.withCommas}",
                                  style: context.bodySmallStyle!.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Products Table Header
                          Container(
                            padding: defaultPadding,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.borderColor,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    "Product Name",
                                    style: context.bodySmallStyle,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Center(
                                    child: Text(
                                      "Price",
                                      style: context.bodySmallStyle,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Center(
                                    child: Text(
                                      "Qty",
                                      style: context.bodySmallStyle,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Center(
                                    child: Text(
                                      "Bns",
                                      style: context.bodySmallStyle,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Center(
                                    child: Text(
                                      "Disc%",
                                      style: context.bodySmallStyle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Products List
                          Container(
                            padding: defaultPadding,
                            child: Column(
                              children: List.generate(company.products.length, (
                                productIndex,
                              ) {
                                final product = company.products[productIndex];

                                return Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment: crossAxisStart,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            product.productName,
                                            style: context.displayLargeStyle!
                                                .copyWith(
                                                  color:
                                                      AppColors.greyTextColor,
                                                ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Center(
                                            child: Text(
                                              product.pricePack.toStringAsFixed(1),
                                              style: context.displayLargeStyle!
                                                  .copyWith(
                                                    color:
                                                        AppColors.greyTextColor,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Center(
                                            child: Text(
                                              product.quantityPack.toString(),
                                              style: context.displayLargeStyle!
                                                  .copyWith(
                                                    color:
                                                        AppColors.greyTextColor,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Center(
                                            child: Text(
                                              product.bonus.toString(),
                                              style: context.displayLargeStyle!
                                                  .copyWith(
                                                    color:
                                                        AppColors.greyTextColor,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Center(
                                            child: Text(
                                              product.discPercent!.toStringAsFixed(
                                                0,
                                              ),
                                              style: context.displayLargeStyle!
                                                  .copyWith(
                                                    color:
                                                        AppColors.greyTextColor,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    if (productIndex <
                                        company.products.length - 1)
                                      const Divider()
                                    else
                                      const SizedBox.shrink(),
                                  ],
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

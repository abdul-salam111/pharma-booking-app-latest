// ignore_for_file: deprecated_member_use
import '../../../../core/widgets/custom_button.dart';
import '../../../common/presentations/home/presentation/barrel.dart';
import '../controllers/order_details_on_date_controller_intellibiz.dart';

class OrderDetailsOnDateViewIntellibiz
    extends GetView<OrderDetailsOnDateControllerIntellibiz> {
  const OrderDetailsOnDateViewIntellibiz({super.key});

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
                          "Rs. ${order.totalAmount.withCommasAndDecimals}",
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

              // Companies and Products
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
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  company.companyName,
                                  style: context.bodySmallStyle!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Rs. ${company.companyTotalAmount.withCommasAndDecimals}",
                                  style: context.bodySmallStyle!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Products List
                          ...List.generate(company.products.length, (
                            productIndex,
                          ) {
                            final product = company.products[productIndex];

                            return Column(
                              children: [
                                Container(
                                  padding: defaultPadding,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: AppColors.halfWhiteColor,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "${productIndex + 1}",
                                        style: context.displayLargeStyle!
                                            .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      widthBox(10),
                                      Expanded(
                                        child: Text(
                                          product.productName,
                                          style: context.displayLargeStyle!
                                              .copyWith(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      widthBox(10),
                                      Text(
                                        "Rs. ${product.rowTotal.withCommasAndDecimals}",
                                        style: context.displayLargeStyle!
                                            .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),

                                Table(
                                  columnWidths: const {
                                    0: FlexColumnWidth(1),
                                    1: FlexColumnWidth(1),
                                    2: FlexColumnWidth(1),
                                    3: FlexColumnWidth(1),
                                    4: FlexColumnWidth(1),
                                  },
                                  children: [
                                    // Table Header
                                    TableRow(
                                      decoration: BoxDecoration(),
                                      children: [
                                        _buildHeaderCell(context, "Pack"),
                                        _buildHeaderCell(context, "P. Price"),
                                        _buildHeaderCell(context, "Qty (P-L)"),
                                        _buildHeaderCell(context, "Bns"),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            right: 8.0,
                                          ),
                                          child: _buildHeaderCell(
                                            context,
                                            "Disc%",
                                            alignment: Alignment.centerRight,
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Table Row
                                    TableRow(
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      children: [
                                        Obx(
                                          () => controller.isLoading.value
                                              ? SizedBox.shrink()
                                              : Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                        left: 8.0,
                                                      ),
                                                  child: _buildDataCell(
                                                    context,
                                                    "${controller.getPackingAbbrivation(product.packingId ?? 1)} (${product.multiplier.toString()})",
                                                  ),
                                                ),
                                        ),
                                        _buildDataCell(
                                          context,
                                          product.pricePack.toString(),
                                        ),
                                        _buildDataCell(
                                          context,
                                          "${product.quantityPack.toString()} - ${product.quantityLose.toString()}",
                                        ),
                                        _buildDataCell(
                                          context,
                                          product.bonus.toString(),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            right: 10,
                                          ),
                                          child: _buildDataCell(
                                            context,
                                            product.discRatio!.toStringAsFixed(
                                              0,
                                            ),
                                            alignment: Alignment.centerRight,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            );
                          }),
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

  Widget _buildHeaderCell(
    BuildContext context,
    String text, {
    Alignment alignment = Alignment.center,
  }) {
    return Container(
      padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
      alignment: alignment,
      child: Text(
        text,
        style: context.displayLargeStyle!.copyWith(
          fontWeight: FontWeight.normal,
          color: AppColors.greyTextColor,
        ),
      ),
    );
  }

  Widget _buildDataCell(
    BuildContext context,
    String text, {
    Alignment alignment = Alignment.center,
  }) {
    return Container(
      padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
      alignment: alignment,
      child: Text(
        text,
        style: context.displayLargeStyle!.copyWith(
          color: AppColors.blackTextColor,
        ),
      ),
    );
  }
}

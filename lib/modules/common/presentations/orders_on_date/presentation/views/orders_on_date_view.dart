import 'package:pharma_booking_app/core/utils/current_user_helper.dart';

import '../../../home/presentation/barrel.dart';
import '../controllers/orders_on_date_controller.dart';

class OrdersOnDateView extends GetView<OrdersOnDateController> {
  const OrdersOnDateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text('Orders - ${controller.selectedDate.value}')),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              await controller.exportOrders();
            },
            icon: Icon(Icons.download),
          ),
        ],
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.ordersForDate.isEmpty) {
          return Center(
            child: Text(
              'No Orders Found for this date',
              style: context.bodyLargeStyle?.copyWith(color: Colors.grey[600]),
            ),
          );
        }

        return ListView.separated(
          itemCount: controller.ordersForDate.length,
          padding: EdgeInsets.only(top: 5, left: 8, right: 8, bottom: 20),
          itemBuilder: (context, index) {
            final order = controller.ordersForDate[index];

            return GestureDetector(
              onTap: () async {
                if (CurrentUserHelper.softwareVersion.toString() == "1") {
                  Get.toNamed(
                    Routes.ORDER_DETAILS_ON_DATE,
                    arguments: {'order': order, 'orderIndex': index},
                  );
                } else {
                  Get.toNamed(
                    Routes.ORDER_DETAILS_ON_DATE_INTELLIBIZ,
                    arguments: {'order': order, 'orderIndex': index},
                  );
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: crossAxisStart,
                        children: [
                          Text(
                            controller.getOrderIdentifier(order),
                            style: context.bodyMediumStyle!.copyWith(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          heightBox(2),
                          Text(
                            controller.getCustomerAddress(order),
                            style: context.displayLargeStyle!.copyWith(
                              color: AppColors.greyColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    widthBox(20),
                    Column(
                      crossAxisAlignment: crossAxisEnd,
                      children: [
                        Text(
                          "Rs. ${(controller.getOrderTotal(order)).withCommasAndDecimals}",
                          style: context.bodyMediumStyle!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: mainAxisEnd,
                          children: [
                            if (order.isFailed == 1)
                              Row(
                                children: [
                                  Text(
                                    "Sync Retries : ",
                                    style: context.displayLargeStyle!.copyWith(
                                      color: AppColors.darkGreyColor,
                                    ),
                                  ),
                                  Text(
                                    "${order.syncTries}",
                                    style: context.displayLargeStyle!.copyWith(
                                      color: AppColors.blackTextColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            widthBox(5),
                            Icon(
                              (order.syncedStatus == 'Yes' &&
                                      order.isFailed == 0)
                                  ? Icons.cloud_done
                                  : Icons.cloud_upload_outlined,
                              size: 20,
                              color:
                                  (order.syncedStatus == 'Yes' &&
                                      order.isFailed == 0)
                                  ? Colors.green[700]
                                  : order.isFailed == 1
                                  ? AppColors.appPrimaryColor
                                  : AppColors.greyColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(height: 10),
        );
      }),
    );
  }
}

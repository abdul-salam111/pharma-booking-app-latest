import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/home/presentation/barrel.dart';
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
          IconButton(onPressed: ()async {
           await controller.exportOrders();
          }, icon: Icon(Icons.download))
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
              style: context.bodyLargeStyle?.copyWith(
                color: Colors.grey[600],
              ),
            ),
          );
        }

        return ListView.separated(
          itemCount: controller.ordersForDate.length,
          padding: screenPadding,
          itemBuilder: (context, index) {
            final order = controller.ordersForDate[index];
            
            return GestureDetector(
              onTap: () {
                Get.toNamed(
                  Routes.ORDER_DETAILS_ON_DATE,
                  arguments: {
                    'order': order,
                    'orderIndex': index,
                    
                  },
                );
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
                            style: context.bodySmallStyle!.copyWith(
                              color: AppColors.greyColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Rs. ${(controller.getOrderTotal(order)).withCommas}",
                      style: context.bodyMediumStyle!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    widthBox(20),
                    Container(
                      padding: const EdgeInsets.all(4),
                   
                      child: Icon(
                        order.syncedStatus == 'Yes' 
                          ? Icons.cloud_done 
                          : Icons.cloud_upload_outlined,
                        size: 20,
                        color: order.syncedStatus == 'Yes' 
                          ? Colors.green[700] 
                          : Colors.orange[700],
                      ),
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
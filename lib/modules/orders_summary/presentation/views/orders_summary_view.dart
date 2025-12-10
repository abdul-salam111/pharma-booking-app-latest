

import '../../../common/home/presentation/barrel.dart';
import '../controllers/orders_summary_controller.dart';

class OrdersSummaryView extends GetView<OrdersSummaryController> {
  const OrdersSummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders Summary'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => controller.refreshData(),
          ),
        ],
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.ordersSummaryByDate.isEmpty) {
          return Center(
            child: Text(
              'No Orders Found',
              style: context.bodyMediumStyle?.copyWith(color: Colors.grey[600]),
            ),
          );
        }

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: _buildOrderTable(context),
        );
      }),
    );
  }

  Widget _buildOrderTable(BuildContext context) {
    return Table(
      border: const TableBorder(
        horizontalInside: BorderSide(color: Colors.grey, width: 0.5),
      ),
      columnWidths: const {
        0: FlexColumnWidth(1.5), // Date
        1: FlexColumnWidth(1), // Synced
        2: FlexColumnWidth(1), // Orders
        3: FlexColumnWidth(1), // Amount
      },
      children: [_buildTableHeader(context), ..._buildTableRows(context)],
    );
  }

  TableRow _buildTableHeader(BuildContext context) {
    return TableRow(
      decoration: BoxDecoration(color: Colors.grey[200]),
      children: [
        _buildHeaderCell("Date", leftPadding: 12, context: context),
        _buildHeaderCell("Synced", context: context),
        _buildHeaderCell("Orders", context: context),
        _buildHeaderCell("Amount", context: context),
      ],
    );
  }

  Widget _buildHeaderCell(
    String text, {
    double leftPadding = 0,
    required BuildContext context,
  }) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0, bottom: 8, left: leftPadding),
      child: text != "Date"
          ? Center(
              child: Text(
                text,
                style: context.bodySmallStyle!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : Text(
              text,
              style: context.bodySmallStyle!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
    );
  }

  List<TableRow> _buildTableRows(BuildContext context) {
    return controller.ordersSummaryByDate.asMap().entries.map((entry) {
      int index = entry.key;
      var summary = entry.value;

      return TableRow(
        decoration: BoxDecoration(
          color: index.isEven ? Colors.white : Colors.grey[50],
        ),
        children: [
          _buildClickableCell(summary.date, index, context),
          _buildClickableCell(
            summary.syncStatus,
            index,
            context,
            textColor: summary.syncStatus == 'All'
                ? Colors.green[700]
                : Colors.red[700],
          ),
          _buildClickableCell(summary.totalOrders.toString(), index, context),
          _buildClickableCell(summary.totalAmount.withCommas, index, context),
        ],
      );
    }).toList();
  }

  Widget _buildClickableCell(
    String text,
    int rowIndex,
    BuildContext context, {
    Color? textColor,
  }) {
    return InkWell(
      onTap: () => _handleRowTap(rowIndex),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Text(
            text,
            style: context.bodySmallStyle!.copyWith(
              color: textColor ?? AppColors.greyTextColor,
            ),
          ),
        ),
      ),
    );
  }

  void _handleRowTap(int index) {
    if (index < controller.ordersSummaryByDate.length) {
      final summary = controller.ordersSummaryByDate[index];

      Get.toNamed(
        Routes.ORDERS_ON_DATE,
        arguments: {
          'date': summary.date,
          'orders': summary.orders,
          'syncStatus': summary.syncStatus,
          'totalOrders': summary.totalOrders,
          'totalAmount': summary.totalAmount.withCommas,
        },
      );
    }
  }
}

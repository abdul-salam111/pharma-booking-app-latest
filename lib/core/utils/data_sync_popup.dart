// ============================================================================
// SYNC PROGRESS DIALOG
// ============================================================================
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SyncStatus { pending, syncing, completed, failed }

class SyncItem {
  final String name;
  final Rx<SyncStatus> status;

  SyncItem({required this.name, SyncStatus initialStatus = SyncStatus.pending})
    : status = initialStatus.obs;
}

class SyncProgressDialog extends StatelessWidget {
  final RxList<SyncItem> syncItems;

  const SyncProgressDialog({super.key, required this.syncItems});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false, // Prevent dismissing
      child: Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xff90FDF0).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.sync,
                      color: Color(0xff09877A),
                      size: 28,
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Text(
                      'Syncing Data',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1A1A1A),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                'Please wait while we sync your data',
                style: TextStyle(fontSize: 14, color: Color(0xff666666)),
              ),
              const SizedBox(height: 24),

              // Sync Items List
              Obx(
                () => ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: syncItems.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    return _SyncItemRow(item: syncItems[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SyncItemRow extends StatelessWidget {
  final SyncItem item;

  const _SyncItemRow({required this.item});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final status = item.status.value;

      return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),

        child: Row(
          children: [
            // Status Icon
            _buildStatusIcon(status),
            const SizedBox(width: 12),

            // Item Name
            Expanded(
              child: Text(
                item.name,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: status == SyncStatus.syncing
                      ? FontWeight.w600
                      : FontWeight.w500,
                  color: _getTextColor(status),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget _buildStatusIcon(SyncStatus status) {
    switch (status) {
      case SyncStatus.pending:
        return Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
            color: const Color(0xffE0E0E0),
            shape: BoxShape.circle,
          ),
        );

      case SyncStatus.syncing:
        return SizedBox(
          width: 18,
          height: 18,
          child: CircularProgressIndicator(
            strokeWidth: 1.5,
            valueColor: AlwaysStoppedAnimation<Color>(const Color(0xff09877A)),
          ),
        );

      case SyncStatus.completed:
        return Container(
          width: 18,
          height: 18,
          decoration: const BoxDecoration(
            color: Color(0xff4CAF50),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.check, color: Colors.white, size: 12),
        );

      case SyncStatus.failed:
        return Container(
          width: 18,
          height: 18,
          decoration: const BoxDecoration(
            color: Color(0xffF44336),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.close, color: Colors.white, size: 12),
        );
    }
  }

  // Color _getBackgroundColor(SyncStatus status) {
  //   switch (status) {
  //     case SyncStatus.pending:
  //       return const Color(0xffF5F5F5);
  //     case SyncStatus.syncing:
  //       return const Color(0xff90FDF0).withOpacity(0.15);
  //     case SyncStatus.completed:
  //       return const Color(0xff4CAF50).withOpacity(0.1);
  //     case SyncStatus.failed:
  //       return const Color(0xffF44336).withOpacity(0.1);
  //   }
  // }

  // Color _getBorderColor(SyncStatus status) {
  //   switch (status) {
  //     case SyncStatus.pending:
  //       return const Color(0xffE0E0E0);
  //     case SyncStatus.syncing:
  //       return const Color(0xff09877A);
  //     case SyncStatus.completed:
  //       return const Color(0xff4CAF50);
  //     case SyncStatus.failed:
  //       return const Color(0xffF44336);
  //   }
  // }

  Color _getTextColor(SyncStatus status) {
    switch (status) {
      case SyncStatus.pending:
        return const Color(0xff999999);
      case SyncStatus.syncing:
        return const Color(0xff1A1A1A);
      case SyncStatus.completed:
        return const Color(0xff2E7D32);
      case SyncStatus.failed:
        return const Color(0xffC62828);
    }
  }
}

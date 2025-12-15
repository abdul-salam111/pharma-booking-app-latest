// Yeh file create karo: lib/core/utils/product_calculation_utils.dart

import 'package:pharma_booking_app/modules/common/home/presentation/barrel.dart';

// ============================================
// Yeh class calculation ka result hold karegi
// ============================================
class ProductCalculationResult {
  final double subtotal;        // Amount before discount
  final double discountAmount;  // Discount amount
  final double finalAmount;     // Final amount after discount

  ProductCalculationResult({
    required this.subtotal,
    required this.discountAmount,
    required this.finalAmount,
  });
}

// ============================================
// Yeh main utility class hai - SARI calculations yahan!
// ============================================
class ProductCalculationUtils {
  
  // Yeh method sari calculations karega
  static ProductCalculationResult calculateProductAmounts({
    required GetAllProductsModel productDetails,
    required int quantityPack,
    required int quantityLose,
    required double price,
    required double discountPercent,
    Packing? selectedPacking,
  }) {
    // Step 1: Default packing nikalo
    Packing? defaultPacking;
    if (productDetails.packings != null && productDetails.packings!.isNotEmpty) {
      defaultPacking = productDetails.packings!.first;
    }

    // Step 2: Agar packing nahi hai toh simple calculation
    if (defaultPacking == null || selectedPacking == null) {
      final subtotal = quantityPack * price;
      final discountAmount = (subtotal * discountPercent) / 100;
      final finalAmount = subtotal - discountAmount;
      
      return ProductCalculationResult(
        subtotal: subtotal,
        discountAmount: discountAmount,
        finalAmount: finalAmount,
      );
    }

    // Step 3: Packing wali calculation
    final selectedMultiplier = selectedPacking.multiplier ?? 1;
    final defaultMultiplier = defaultPacking.multiplier ?? 1;
    final factor = selectedMultiplier / defaultMultiplier;

    final packingAmount = quantityPack * factor * price;
    final loseAmount = quantityLose * price / defaultMultiplier;
    final subtotal = packingAmount + loseAmount;
    final discountAmount = (subtotal * discountPercent) / 100;
    final finalAmount = subtotal - discountAmount;

    return ProductCalculationResult(
      subtotal: subtotal,
      discountAmount: discountAmount,
      finalAmount: finalAmount,
    );
  }

  // Helper method - OrderProduct se calculation ke liye
  static ProductCalculationResult calculateFromOrderProduct({
    required OrderProducts orderProduct,
    required GetAllProductsModel productDetails,
  }) {
    Packing? selectedPacking;
    if (orderProduct.packingName != null && orderProduct.multiplier != null) {
      selectedPacking = Packing(
        packingName: orderProduct.packingName,
        multiplier: orderProduct.multiplier,
      );
    }

    return calculateProductAmounts(
      productDetails: productDetails,
      quantityPack: orderProduct.quantityPack,
      quantityLose: orderProduct.quantityLose ?? 0,
      price: orderProduct.pricePack,
      discountPercent: orderProduct.discPercent ?? 0,
      selectedPacking: selectedPacking,
    );
  }
}
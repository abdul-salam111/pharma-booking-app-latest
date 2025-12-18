import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:pharma_booking_app/modules/common/presentations/home/presentation/barrel.dart';

class SuccessPopup extends StatefulWidget {
  final int totalOrders;
  final String? successMessage;

  const SuccessPopup({Key? key, required this.totalOrders, this.successMessage})
    : super(key: key);

  @override
  State<SuccessPopup> createState() => _SuccessPopupState();
}

class _SuccessPopupState extends State<SuccessPopup>
    with TickerProviderStateMixin {
  late AnimationController _scaleController;
  late AnimationController _checkController;
  late AnimationController _confettiController;
  late AnimationController _pulseController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _checkAnimation;

  @override
  void initState() {
    super.initState();

    // Scale animation for the dialog
    _scaleController = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    // Check mark animation
    _checkController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    // Confetti animation
    _confettiController = AnimationController(
      duration: const Duration(milliseconds: 2500),
      vsync: this,
    );

    // Pulse animation for the badge
    _pulseController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..repeat(reverse: true);

    _scaleAnimation = CurvedAnimation(
      parent: _scaleController,
      curve: Curves.elasticOut,
    );

    _checkAnimation = CurvedAnimation(
      parent: _checkController,
      curve: Curves.easeInOut,
    );

    // Start animations in sequence
    _scaleController.forward().then((_) {
      _checkController.forward();
      _confettiController.forward();
    });
  }

  @override
  void dispose() {
    _scaleController.dispose();
    _checkController.dispose();
    _confettiController.dispose();
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Confetti particles
              ...List.generate(16, (index) {
                return AnimatedConfetti(
                  animation: _confettiController,
                  index: index,
                );
              }),


              // Main content
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Success icon with animated check
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFF4CAF50), Color(0xFF45a049)],
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF4CAF50).withOpacity(0.3),
                              blurRadius: 15,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: AnimatedBuilder(
                          animation: _checkAnimation,
                          builder: (context, child) {
                            return CustomPaint(
                              painter: CheckmarkPainter(
                                progress: _checkAnimation.value,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Success title with gradient
                  ShaderMask(
                    shaderCallback: (bounds) => const LinearGradient(
                      colors: [Color(0xFF4CAF50), Color(0xFF2E7D32)],
                    ).createShader(bounds),
                    child: const Text(
                      'Order Successful!',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Subtitle
                  Text(
                    'All orders placed successfully',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F8F4),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFFC8E6C9),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.check_circle_outline,
                          color: Color(0xFF4CAF50),
                          size: 20,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            widget.successMessage ??
                                'Your ${widget.totalOrders} ${widget.totalOrders == 1 ? 'Order' : 'Orders'} has been confirmed and is being processed.',
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color(0xFF2E7D32),
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Action buttons
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).pop('view_orders');
                          },
                          style: OutlinedButton.styleFrom(
                            foregroundColor: const Color(0xFF4CAF50),
                            side: const BorderSide(
                              color: Color(0xFF4CAF50),
                              width: 2,
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            'View Orders',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop('continue');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF4CAF50),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 0,
                          ),
                          child: const Text(
                            'Continue',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Custom painter for animated checkmark
class CheckmarkPainter extends CustomPainter {
  final double progress;

  CheckmarkPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final path = Path();
    final center = Offset(size.width / 2, size.height / 2);

    // Define checkmark path
    final startPoint = Offset(center.dx - 12, center.dy);
    final middlePoint = Offset(center.dx - 4, center.dy + 8);
    final endPoint = Offset(center.dx + 12, center.dy - 8);

    if (progress <= 0.5) {
      // First part of checkmark
      final firstProgress = progress * 2;
      path.moveTo(startPoint.dx, startPoint.dy);
      path.lineTo(
        startPoint.dx + (middlePoint.dx - startPoint.dx) * firstProgress,
        startPoint.dy + (middlePoint.dy - startPoint.dy) * firstProgress,
      );
    } else {
      // Complete first part and draw second part
      path.moveTo(startPoint.dx, startPoint.dy);
      path.lineTo(middlePoint.dx, middlePoint.dy);

      final secondProgress = (progress - 0.5) * 2;
      path.lineTo(
        middlePoint.dx + (endPoint.dx - middlePoint.dx) * secondProgress,
        middlePoint.dy + (endPoint.dy - middlePoint.dy) * secondProgress,
      );
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CheckmarkPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}

// Animated confetti particle
class AnimatedConfetti extends StatelessWidget {
  final Animation<double> animation;
  final int index;

  const AnimatedConfetti({
    Key? key,
    required this.animation,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final angle = (index * 22.5) * (math.pi / 180);
    final distance = 70.0 + (index % 4) * 15.0;
    final delay = (index % 4) * 0.1;

    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final adjustedProgress = ((animation.value - delay).clamp(0.0, 1.0));
        final opacity = (1 - adjustedProgress).clamp(0.0, 1.0);

        return Positioned(
          left: 140 + math.cos(angle) * distance * adjustedProgress,
          top:
              40 +
              math.sin(angle) * distance * adjustedProgress +
              (adjustedProgress * adjustedProgress * 30),
          child: Opacity(
            opacity: opacity,
            child: Transform.rotate(
              angle: adjustedProgress * math.pi * 6,
              child: Container(
                width: index % 3 == 0 ? 8 : 6,
                height: index % 3 == 0 ? 8 : 6,
                decoration: BoxDecoration(
                  color: _getConfettiColor(index),
                  shape: index % 2 == 0 ? BoxShape.circle : BoxShape.rectangle,
                  borderRadius: index % 2 == 0
                      ? null
                      : BorderRadius.circular(2),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Color _getConfettiColor(int index) {
    final colors = [
      const Color(0xFF4CAF50),
      const Color(0xFF66BB6A),
      const Color(0xFF81C784),
      const Color(0xFFFFC107),
      const Color(0xFFFF9800),
      const Color(0xFF2196F3),
      const Color(0xFF64B5F6),
      const Color(0xFFE91E63),
    ];
    return colors[index % colors.length];
  }
}

// Example usage
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF5F5F5),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return const SuccessPopup(
                    totalOrders: 12,
                    successMessage:
                        'Your order has been confirmed and is being processed. Track your delivery status in the orders section.',
                  );
                },
              ).then((result) {
                if (result == 'view_orders') {
                  // Navigate to orders page
                  print('User wants to view orders');
                } else if (result == 'continue') {
                  // Continue shopping or close
                  print('User chose to continue');
                }
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF4CAF50),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              'Show Success Popup',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

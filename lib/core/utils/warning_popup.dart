import 'package:flutter/material.dart';
import 'package:pharma_booking_app/modules/common/home/presentation/barrel.dart';

class WarningPopup extends StatefulWidget {
  final int successfulOrders;
  final int failedOrders;

  const WarningPopup({
    Key? key,
    required this.successfulOrders,
    required this.failedOrders,
  }) : super(key: key);

  @override
  State<WarningPopup> createState() => _WarningPopupState();
}

class _WarningPopupState extends State<WarningPopup>
    with TickerProviderStateMixin {
  late AnimationController _scaleController;
  late AnimationController _iconController;
  late AnimationController _pulseController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();

    // Scale animation for the dialog
    _scaleController = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    // Warning icon animation
    _iconController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    // Pulse animation for attention
    _pulseController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat(reverse: true);

    _scaleAnimation = CurvedAnimation(
      parent: _scaleController,
      curve: Curves.elasticOut,
    );

    _iconAnimation = CurvedAnimation(
      parent: _iconController,
      curve: Curves.easeInOut,
    );

    // Start animations
    _scaleController.forward().then((_) {
      _iconController.forward();
    });
  }

  @override
  void dispose() {
    _scaleController.dispose();
    _iconController.dispose();
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final totalOrders = widget.successfulOrders + widget.failedOrders;

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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Warning icon with pulse effect
              AnimatedBuilder(
                animation: _pulseController,
                builder: (context, child) {
                  return Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xFFFF9800), Color(0xFFF57C00)],
                      ),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(
                            0xFFFF9800,
                          ).withOpacity(0.3 + _pulseController.value * 0.2),
                          blurRadius: 15 + _pulseController.value * 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: AnimatedBuilder(
                      animation: _iconAnimation,
                      builder: (context, child) {
                        return CustomPaint(
                          painter: WarningIconPainter(
                            progress: _iconAnimation.value,
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
              const SizedBox(height: 15),

              // Warning title with gradient
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [Color(0xFFFF9800), Color(0xFFF57C00)],
                ).createShader(bounds),
                child: const Text(
                  'Partial Success',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Order status cards
              Row(
                children: [
                  Expanded(
                    child: _buildStatusCard(
                      icon: Icons.check_circle,
                      color: const Color(0xFF4CAF50),
                      label: 'Placed',
                      count: widget.successfulOrders,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildStatusCard(
                      icon: Icons.error,
                      color: const Color(0xFFE53935),
                      label: 'Failed',
                      count: widget.failedOrders,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Description
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF3E0),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFFFE0B2), width: 1),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.info_outline,
                      color: Color(0xFFFF9800),
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        '${widget.successfulOrders} of $totalOrders orders were successfully placed. ${widget.failedOrders} ${widget.failedOrders == 1 ? 'order' : 'orders'} could not be processed.',
                        style: const TextStyle(
                          fontSize: 13,
                          color: Color(0xFF6D4C41),
                          height: 1.4,
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
                        Navigator.of(context).pop('download');
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: AppColors.whiteTextColor,
                        side: const BorderSide(
                          color: AppColors.darkGreyColor,
                          width: 2,
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: const Text(
                        'Download Failed Orders',
                        textAlign: textAlignCenter,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.greyColor
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
                        backgroundColor: const Color(0xFFFF9800),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusCard({
    required IconData icon,
    required Color color,
    required String label,
    required int count,
  }) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeOutBack,
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: color.withOpacity(0.3), width: 1.5),
            ),
            child: Column(
              children: [
                Icon(icon, color: color, size: 25),
                const SizedBox(height: 8),
                Text(
                  count.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    color: color.withOpacity(0.8),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

// Custom painter for warning icon (exclamation mark)
class WarningIconPainter extends CustomPainter {
  final double progress;

  WarningIconPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final fillPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final center = Offset(size.width / 2, size.height / 2);

    // Exclamation line
    if (progress > 0) {
      final lineProgress = (progress * 1.5).clamp(0.0, 1.0);
      final lineStart = Offset(center.dx, center.dy - 15);
      final lineEnd = Offset(center.dx, center.dy + 5);

      canvas.drawLine(
        lineStart,
        Offset(
          lineStart.dx,
          lineStart.dy + (lineEnd.dy - lineStart.dy) * lineProgress,
        ),
        paint,
      );
    }

    // Exclamation dot
    if (progress > 0.6) {
      final dotProgress = ((progress - 0.6) / 0.4).clamp(0.0, 1.0);
      final dotRadius = 3.0 * dotProgress;

      canvas.drawCircle(
        Offset(center.dx, center.dy + 12),
        dotRadius,
        fillPaint,
      );
    }
  }

  @override
  bool shouldRepaint(WarningIconPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}

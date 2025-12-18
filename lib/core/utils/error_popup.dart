import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../core.dart';

class ErrorPopup extends StatefulWidget {
  final int failedOrders;
  final String? errorMessage;

  const ErrorPopup({Key? key, required this.failedOrders, this.errorMessage})
    : super(key: key);

  @override
  State<ErrorPopup> createState() => _ErrorPopupState();
}

class _ErrorPopupState extends State<ErrorPopup> with TickerProviderStateMixin {
  late AnimationController _scaleController;
  late AnimationController _crossController;
  late AnimationController _shakeController;
  late AnimationController _waveController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _shakeAnimation;

  @override
  void initState() {
    super.initState();

    // Scale animation for the dialog
    _scaleController = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    // Cross mark animation
    _crossController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    // Shake animation for emphasis
    _shakeController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    // Wave animation for error particles
    _waveController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    _scaleAnimation = CurvedAnimation(
      parent: _scaleController,
      curve: Curves.elasticOut,
    );

    _shakeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _shakeController, curve: Curves.elasticIn),
    );

    // Start animations in sequence
    _scaleController.forward().then((_) {
      _crossController.forward();
      _shakeController.forward();
      _waveController.forward();
    });
  }

  @override
  void dispose() {
    _scaleController.dispose();
    _crossController.dispose();
    _shakeController.dispose();
    _waveController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: AnimatedBuilder(
          animation: _shakeAnimation,
          builder: (context, child) {
            final shake = math.sin(_shakeAnimation.value * math.pi * 2) * 3;
            return Transform.translate(offset: Offset(shake, 0), child: child);
          },
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
                // Error wave particles
                ...List.generate(8, (index) {
                  return AnimatedErrorWave(
                    animation: _waveController,
                    index: index,
                  );
                }),

                // Main content
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Error icon with animated cross
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFFE53935), Color(0xFFC62828)],
                        ),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFE53935).withOpacity(0.3),
                            blurRadius: 15,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Error title with gradient
                    ShaderMask(
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [Color(0xFFE53935), Color(0xFFC62828)],
                      ).createShader(bounds),
                      child: const Text(
                        'Order Failed',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Failed orders count
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFEBEE),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xFFFFCDD2),
                          width: 1.5,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.shopping_cart_outlined,
                            color: Color(0xFFE53935),
                            size: 24,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            '${widget.failedOrders} ${widget.failedOrders == 1 ? 'Order' : 'Orders'} Not Placed',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFE53935),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Error message box
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFF8F8),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xFFFFCDD2),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.error_outline,
                                color: Color(0xFFE53935),
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'What went wrong?',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFE53935),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            widget.errorMessage ??
                                'Unfortunately, we couldn\'t process any of your orders at this time. This could be due to network issues, payment problems, or system unavailability.',
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color(0xFF6D4C41),
                              height: 1.5,
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
                                color: AppColors.greyColor,
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
                              backgroundColor: AppColors.appPrimaryColor,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Animated error wave particle
class AnimatedErrorWave extends StatelessWidget {
  final Animation<double> animation;
  final int index;

  const AnimatedErrorWave({
    Key? key,
    required this.animation,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final angle = (index * 45.0) * (math.pi / 180);
    final distance = 50.0 + (index % 2) * 15.0;

    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final progress = animation.value;
        final opacity = (1 - progress).clamp(0.0, 1.0);
        final scale = 1.0 - progress * 0.5;

        return Positioned(
          left: 140 + math.cos(angle) * distance * progress,
          top: 40 + math.sin(angle) * distance * progress,
          child: Opacity(
            opacity: opacity,
            child: Transform.scale(
              scale: scale,
              child: Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: const Color(0xFFE53935).withOpacity(0.8),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/core.dart';
import '../../../../core/utils/input_formatters.dart';
import '../../../../core/widgets/widgets.dart';
import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  const LoginScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.focusScope.unfocus();
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.appBg),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: padding30,
              child: Column(
                crossAxisAlignment: crossAxisStart,
                children: [
                  heightBox(Platform.isAndroid ? 20 : 40),
                  Center(
                    child: Image.asset(
                      "assets/images/logo.png",
                      height: 50,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  heightBox(100),
                  Text(
                    "Welcome Back",
                    style: context.headlineMediumStyle!.copyWith(
                      color: AppColors.blackTextColor,
                    ),
                  ),
                  heightBox(5),
                  Text(
                    "Please login to continue",
                    style: context.bodyMediumStyle!.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                  heightBox(40),
                  Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        CustomTextFormField(
                          controller: controller.phoneController,
                          hintText: "0300-0000000",
                          prefixIcon: Iconsax.call,
                          keyboardType: TextInputType.phone,
                          borderColor: AppColors.darkGreyColor,
                          fillColor: AppColors.halfWhiteColor,
                          inputFormatters: [PhoneNumberFormatter()],
                          validator: (p0) {
                            if (p0 == null || p0.isEmpty) {
                              return "Mobile Number is required";
                            }
                            String digitsOnly = p0.replaceAll('-', '');
                            if (digitsOnly.length != 11) {
                              return "Mobile Number must be 11 digits";
                            }
                            return null;
                          },
                        ),
                        heightBox(10),
                        CustomTextFormField(
                          obscureText: true,
                          controller: controller.passwordController,
                          hintText: "Password",
                          prefixIcon: Iconsax.lock,
                          keyboardType: TextInputType.text,
                          borderColor: AppColors.darkGreyColor,
                          fillColor: AppColors.halfWhiteColor,
                          validator: (p0) =>
                              Validator.validateRequired("Password"),
                        ),
                        heightBox(40),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: Obx(
                            () => CustomButton(
                              isLoading: controller.isLoading.value,
                              radius: 10,
                              text: "Sign In",
                              onPressed: () async {
                                if (controller.formKey.currentState!
                                    .validate()) {
                                  await controller.loginUser();
                                }
                              },
                              backgroundColor: AppColors.appPrimaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

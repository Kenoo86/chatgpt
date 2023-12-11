import 'models/buffer_model.dart';
import 'package:flutter/material.dart';
import 'package:karim_s_application1/core/app_export.dart';
import 'package:karim_s_application1/widgets/app_bar/appbar_title_button.dart';
import 'package:karim_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:karim_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'provider/buffer_provider.dart';

class BufferScreen extends StatefulWidget {
  const BufferScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BufferScreenState createState() => BufferScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BufferProvider(),
      child: BufferScreen(),
    );
  }
}

class BufferScreenState extends State<BufferScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 61.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 267.h,
                  margin: EdgeInsets.only(left: 68.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 10.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.v),
                      Text(
                        "msg_why_is_the_sky_blue".tr,
                        style: CustomTextStyles.titleMediumSemiBold,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              CustomImageView(
                imagePath: ImageConstant.imgFrame15,
                height: 43.v,
                width: 61.h,
                radius: BorderRadius.only(
                  topLeft: Radius.circular(8.h),
                  topRight: Radius.circular(8.h),
                  bottomRight: Radius.circular(8.h),
                ),
              ),
              SizedBox(height: 44.v),
              CustomImageView(
                imagePath: ImageConstant.imgFrame11,
                height: 52.v,
                width: 335.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitleButton(
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgTelevision,
          margin: EdgeInsets.all(20.h),
        ),
      ],
      styleType: Style.bgOutline,
    );
  }
}

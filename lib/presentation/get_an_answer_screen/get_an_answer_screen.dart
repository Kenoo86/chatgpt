import 'models/get_an_answer_model.dart';
import 'package:flutter/material.dart';
import 'package:karim_s_application1/core/app_export.dart';
import 'package:karim_s_application1/widgets/app_bar/appbar_title_button.dart';
import 'package:karim_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:karim_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:karim_s_application1/widgets/custom_outlined_button.dart';
import 'provider/get_an_answer_provider.dart';

class GetAnAnswerScreen extends StatefulWidget {
  const GetAnAnswerScreen({Key? key}) : super(key: key);

  @override
  GetAnAnswerScreenState createState() => GetAnAnswerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => GetAnAnswerProvider(), child: GetAnAnswerScreen());
  }
}

class GetAnAnswerScreenState extends State<GetAnAnswerScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 1.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: 267.h,
                              margin: EdgeInsets.only(left: 68.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.h, vertical: 10.v),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 2.v),
                                    Text("msg_why_is_the_sky_blue".tr,
                                        style: CustomTextStyles
                                            .titleMediumSemiBold)
                                  ]))),
                      SizedBox(height: 32.v),
                      Container(
                          margin: EdgeInsets.only(right: 40.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.h, vertical: 9.v),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL81),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 4.v),
                                SizedBox(
                                    width: 266.h,
                                    child: Text("msg_the_sky_appears".tr,
                                        maxLines: 13,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleMediumSemiBold
                                            .copyWith(height: 1.50)))
                              ])),
                      SizedBox(height: 12.v),
                      Opacity(
                          opacity: 0.4,
                          child: Padding(
                              padding: EdgeInsets.only(right: 180.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgOffer,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgUserWhiteA700,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        margin: EdgeInsets.only(left: 16.h)),
                                    Spacer(),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgThumbsUp,
                                        height: 12.adaptSize,
                                        width: 12.adaptSize,
                                        margin: EdgeInsets.only(bottom: 6.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 12.h),
                                        child: Text("lbl_copy".tr,
                                            style: CustomTextStyles
                                                .titleSmallSemiBold))
                                  ]))),
                      SizedBox(height: 40.v),
                      CustomOutlinedButton(
                          width: 189.h,
                          text: "msg_regenerate_response".tr,
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 10.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgFrame,
                                  height: 12.adaptSize,
                                  width: 12.adaptSize)),
                          onPressed: () {
                            onTapRegenerateResponse(context);
                          },
                          alignment: Alignment.center),
                      SizedBox(height: 16.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgFrame11,
                          height: 52.v,
                          width: 335.h,
                          radius: BorderRadius.circular(8.h))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitleButton(
            margin: EdgeInsets.only(left: 20.h),
            onTap: () {
              onTapBack(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgTelevision,
              margin: EdgeInsets.all(20.h))
        ],
        styleType: Style.bgOutline);
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapBack(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardScreen,
    );
  }

  /// Navigates to the bufferScreen when the action is triggered.
  onTapRegenerateResponse(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.bufferScreen,
    );
  }
}

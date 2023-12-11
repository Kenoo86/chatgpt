import 'models/dashboard_one_model.dart';
import 'package:flutter/material.dart';
import 'package:karim_s_application1/core/app_export.dart';
import 'package:karim_s_application1/widgets/custom_elevated_button.dart';
import 'provider/dashboard_one_provider.dart';

class DashboardOneScreen extends StatefulWidget {
  const DashboardOneScreen({Key? key}) : super(key: key);

  @override
  DashboardOneScreenState createState() => DashboardOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DashboardOneProvider(),
        child: DashboardOneScreen());
  }
}

class DashboardOneScreenState extends State<DashboardOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 20.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildFrameSix(context),
                      Spacer(),
                      SizedBox(height: 3.v),
                      _buildDashboardOne(context)
                    ]))));
  }

  /// Section Widget
  Widget _buildFrameSix(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFrameSix(context);
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            padding: EdgeInsets.symmetric(vertical: 15.v),
            decoration: AppDecoration.outlineWhiteA,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 20.adaptSize,
                      width: 20.adaptSize),
                  Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text("lbl_new_chat".tr,
                          style: CustomTextStyles.titleMediumBold)),
                  Spacer(),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 12.v,
                      width: 6.h,
                      margin: EdgeInsets.symmetric(vertical: 4.v))
                ])));
  }

  /// Section Widget
  Widget _buildDashboardOne(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(20.h, 26.v, 20.h, 27.v),
        decoration: AppDecoration.outlineWhiteA700,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgFrameWhiteA70020x20,
                height: 20.adaptSize,
                width: 20.adaptSize),
            Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text("msg_clear_conversations".tr,
                    style: theme.textTheme.titleMedium))
          ]),
          SizedBox(height: 40.v),
          Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgFrame20x20,
                height: 20.adaptSize,
                width: 20.adaptSize),
            Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text("lbl_upgrade_to_plus".tr,
                    style: theme.textTheme.titleMedium)),
            Spacer(),
            Container(
                width: 46.h,
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 2.v),
                decoration: AppDecoration.fillAmber
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                child: Text("lbl_new".tr, style: theme.textTheme.labelLarge))
          ]),
          SizedBox(height: 39.v),
          Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgFrameWhiteA700,
                height: 20.adaptSize,
                width: 20.adaptSize),
            Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text("lbl_light_mode".tr,
                    style: theme.textTheme.titleMedium))
          ]),
          SizedBox(height: 39.v),
          Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgLink,
                height: 20.adaptSize,
                width: 20.adaptSize),
            Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text("lbl_updates_faq".tr,
                    style: theme.textTheme.titleMedium))
          ]),
          SizedBox(height: 39.v),
          CustomElevatedButton(
              height: 20.v,
              width: 90.h,
              text: "lbl_logout".tr,
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 16.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowleft,
                      height: 20.adaptSize,
                      width: 20.adaptSize)),
              buttonStyle: CustomButtonStyles.none,
              buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
              onPressed: () {
                onTapLogout(context);
              })
        ]));
  }

  /// Navigates to the emptyConversationScreen when the action is triggered.
  onTapFrameSix(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.emptyConversationScreen,
    );
  }

  /// Navigates to the appScreen when the action is triggered.
  onTapLogout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.appScreen,
    );
  }
}

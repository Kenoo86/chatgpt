import 'models/welcome_screen_two_model.dart';
import 'package:flutter/material.dart';
import 'package:karim_s_application1/core/app_export.dart';
import 'package:karim_s_application1/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/welcome_screen_two_provider.dart';

class WelcomeScreenTwoScreen extends StatefulWidget {
  const WelcomeScreenTwoScreen({Key? key}) : super(key: key);

  @override
  WelcomeScreenTwoScreenState createState() => WelcomeScreenTwoScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => WelcomeScreenTwoProvider(),
        child: WelcomeScreenTwoScreen());
  }
}

class WelcomeScreenTwoScreenState extends State<WelcomeScreenTwoScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(20.h),
                child: Column(children: [
                  SizedBox(height: 18.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgTelevision,
                      height: 24.adaptSize,
                      width: 24.adaptSize),
                  SizedBox(height: 23.v),
                  SizedBox(
                      width: 189.h,
                      child: Text("msg_welcome_to_chatgpt".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineLarge)),
                  SizedBox(height: 25.v),
                  Text("msg_ask_anything_get".tr,
                      style: CustomTextStyles.titleMediumSemiBold),
                  SizedBox(height: 58.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgAirplane,
                      height: 20.v,
                      width: 16.h),
                  SizedBox(height: 13.v),
                  Text("lbl_capabilities".tr,
                      style: theme.textTheme.titleLarge),
                  SizedBox(height: 37.v),
                  _buildFrameThree(context),
                  SizedBox(height: 16.v),
                  _buildFrameFour(context),
                  SizedBox(height: 16.v),
                  _buildFrameFive(context),
                  SizedBox(height: 60.v),
                  SizedBox(
                      height: 2.v,
                      child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 3,
                          effect: ScrollingDotsEffect(
                              spacing: 12,
                              activeDotColor: theme.colorScheme.primary,
                              dotColor: appTheme.whiteA700.withOpacity(0.2),
                              dotHeight: 2.v,
                              dotWidth: 28.h)))
                ])),
            bottomNavigationBar: _buildNext(context)));
  }

  /// Section Widget
  Widget _buildFrameThree(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 11.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: SizedBox(
            width: 255.h,
            child: Text("msg_remembers_what_user".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium)));
  }

  /// Section Widget
  Widget _buildFrameFour(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 45.h, vertical: 11.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: SizedBox(
            width: 244.h,
            child: Text("msg_allows_user_to_provide".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium)));
  }

  /// Section Widget
  Widget _buildFrameFive(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 47.h, vertical: 8.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              SizedBox(
                  width: 240.h,
                  child: Text("msg_trained_to_decline".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleMedium))
            ]));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_next".tr,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 60.v),
        onPressed: () {
          onTapNext(context);
        });
  }

  /// Navigates to the welcomeScreenThreeScreen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.welcomeScreenThreeScreen,
    );
  }
}

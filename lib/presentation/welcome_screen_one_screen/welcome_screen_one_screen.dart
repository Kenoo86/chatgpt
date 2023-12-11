import 'models/welcome_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:karim_s_application1/core/app_export.dart';
import 'package:karim_s_application1/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/welcome_screen_one_provider.dart';

class WelcomeScreenOneScreen extends StatefulWidget {
  const WelcomeScreenOneScreen({Key? key}) : super(key: key);

  @override
  WelcomeScreenOneScreenState createState() => WelcomeScreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => WelcomeScreenOneProvider(),
        child: WelcomeScreenOneScreen());
  }
}

class WelcomeScreenOneScreenState extends State<WelcomeScreenOneScreen> {
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
                      imagePath: ImageConstant.imgFrameWhiteA700,
                      height: 20.adaptSize,
                      width: 20.adaptSize),
                  SizedBox(height: 13.v),
                  Text("lbl_examples".tr, style: theme.textTheme.titleLarge),
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
        padding: EdgeInsets.symmetric(horizontal: 50.h, vertical: 8.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              SizedBox(
                  width: 234.h,
                  child: Text("msg_explain_quantum".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleMedium))
            ]));
  }

  /// Section Widget
  Widget _buildFrameFour(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 53.h, vertical: 8.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              SizedBox(
                  width: 228.h,
                  child: Text("msg_got_any_creative".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleMedium))
            ]));
  }

  /// Section Widget
  Widget _buildFrameFive(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 43.h, vertical: 8.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              SizedBox(
                  width: 246.h,
                  child: Text("msg_how_do_i_make_an".tr,
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

  /// Navigates to the welcomeScreenTwoScreen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.welcomeScreenTwoScreen,
    );
  }
}

import 'models/welcome_screen_three_model.dart';
import 'package:flutter/material.dart';
import 'package:karim_s_application1/core/app_export.dart';
import 'package:karim_s_application1/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/welcome_screen_three_provider.dart';

class WelcomeScreenThreeScreen extends StatefulWidget {
  const WelcomeScreenThreeScreen({Key? key}) : super(key: key);

  @override
  WelcomeScreenThreeScreenState createState() =>
      WelcomeScreenThreeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => WelcomeScreenThreeProvider(),
        child: WelcomeScreenThreeScreen());
  }
}

class WelcomeScreenThreeScreenState extends State<WelcomeScreenThreeScreen> {
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
                      imagePath: ImageConstant.imgVideoCamera,
                      height: 20.v,
                      width: 23.h),
                  SizedBox(height: 11.v),
                  Text("lbl_limitations".tr, style: theme.textTheme.titleLarge),
                  SizedBox(height: 39.v),
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
            bottomNavigationBar: _buildLetsChat(context)));
  }

  /// Section Widget
  Widget _buildFrameThree(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 67.h, vertical: 11.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: SizedBox(
            width: 199.h,
            child: Text("msg_may_occasionally".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium)));
  }

  /// Section Widget
  Widget _buildFrameFour(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 37.h, vertical: 11.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: SizedBox(
            width: 257.h,
            child: Text("msg_may_occasionally2".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium)));
  }

  /// Section Widget
  Widget _buildFrameFive(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 11.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: SizedBox(
            width: 242.h,
            child: Text("msg_limited_knowledge".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium)));
  }

  /// Section Widget
  Widget _buildLetsChat(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_let_s_chat".tr,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 60.v),
        onPressed: () {
          onTapLetsChat(context);
        });
  }

  /// Navigates to the dashboardOneScreen when the action is triggered.
  onTapLetsChat(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardOneScreen,
    );
  }
}

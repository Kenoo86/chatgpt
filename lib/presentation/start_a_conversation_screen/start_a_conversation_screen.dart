import 'models/start_a_conversation_model.dart';
import 'package:flutter/material.dart';
import 'package:karim_s_application1/core/app_export.dart';
import 'package:karim_s_application1/widgets/app_bar/appbar_title_button.dart';
import 'package:karim_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:karim_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:karim_s_application1/widgets/custom_floating_button.dart';
import 'provider/start_a_conversation_provider.dart';

class StartAConversationScreen extends StatefulWidget {
  const StartAConversationScreen({Key? key}) : super(key: key);

  @override
  StartAConversationScreenState createState() =>
      StartAConversationScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => StartAConversationProvider(),
        child: StartAConversationScreen());
  }
}

class StartAConversationScreenState extends State<StartAConversationScreen> {
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
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 64.v, width: double.maxFinite),
                  Spacer()
                ])),
            bottomNavigationBar: _buildFrameEleven(context),
            floatingActionButton: _buildFloatingActionButton(context)));
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

  /// Section Widget
  Widget _buildFrameEleven(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 28.h, right: 180.h, bottom: 73.v),
        decoration: AppDecoration.outlineWhiteA7001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 3.v),
              child: Text("msg_why_is_the_sky_blue".tr,
                  style: CustomTextStyles.titleMediumSemiBold)),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: SizedBox(
                  height: 28.v,
                  child: VerticalDivider(width: 1.h, thickness: 1.v)))
        ]));
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
        height: 36,
        width: 36,
        backgroundColor: theme.colorScheme.primary,
        child: CustomImageView(
            imagePath: ImageConstant.imgSave, height: 18.0.v, width: 18.0.h));
  }

  /// Navigates to the dashboardOneScreen when the action is triggered.
  onTapBack(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardOneScreen,
    );
  }
}

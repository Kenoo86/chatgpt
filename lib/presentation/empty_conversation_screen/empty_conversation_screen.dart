import 'models/empty_conversation_model.dart';
import 'package:flutter/material.dart';
import 'package:karim_s_application1/core/app_export.dart';
import 'package:karim_s_application1/widgets/app_bar/appbar_title_button.dart';
import 'package:karim_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:karim_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'provider/empty_conversation_provider.dart';

class EmptyConversationScreen extends StatefulWidget {
  const EmptyConversationScreen({Key? key}) : super(key: key);

  @override
  EmptyConversationScreenState createState() => EmptyConversationScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => EmptyConversationProvider(),
        child: EmptyConversationScreen());
  }
}

class EmptyConversationScreenState extends State<EmptyConversationScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 61.v),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Spacer(flex: 44),
                  Text("msg_ask_anything_get".tr,
                      style: CustomTextStyles.titleMediumWhiteA700),
                  Spacer(flex: 55),
                  CustomImageView(
                      imagePath: ImageConstant.imgFrame11,
                      height: 52.v,
                      width: 335.h,
                      radius: BorderRadius.circular(8.h),
                      onTap: () {
                        onTapImgImage(context);
                      })
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

  /// Navigates to the dashboardOneScreen when the action is triggered.
  onTapBack(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardOneScreen,
    );
  }

  /// Navigates to the startAConversationScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.startAConversationScreen,
    );
  }
}

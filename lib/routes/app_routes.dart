import 'package:flutter/material.dart';
import 'package:karim_s_application1/presentation/app_screen/app_screen.dart';
import 'package:karim_s_application1/presentation/welcome_screen_one_screen/welcome_screen_one_screen.dart';
import 'package:karim_s_application1/presentation/welcome_screen_two_screen/welcome_screen_two_screen.dart';
import 'package:karim_s_application1/presentation/welcome_screen_three_screen/welcome_screen_three_screen.dart';
import 'package:karim_s_application1/presentation/dashboard_one_screen/dashboard_one_screen.dart';
import 'package:karim_s_application1/presentation/empty_conversation_screen/empty_conversation_screen.dart';
import 'package:karim_s_application1/presentation/start_a_conversation_screen/start_a_conversation_screen.dart';
import 'package:karim_s_application1/presentation/ask_a_question_screen/ask_a_question_screen.dart';
import 'package:karim_s_application1/presentation/buffer_screen/buffer_screen.dart';
import 'package:karim_s_application1/presentation/get_an_answer_screen/get_an_answer_screen.dart';
import 'package:karim_s_application1/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:karim_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String appScreen = '/app_screen';

  static const String welcomeScreenOneScreen = '/welcome_screen_one_screen';

  static const String welcomeScreenTwoScreen = '/welcome_screen_two_screen';

  static const String welcomeScreenThreeScreen = '/welcome_screen_three_screen';

  static const String dashboardOneScreen = '/dashboard_one_screen';

  static const String emptyConversationScreen = '/empty_conversation_screen';

  static const String startAConversationScreen = '/start_a_conversation_screen';

  static const String askAQuestionScreen = '/ask_a_question_screen';

  static const String bufferScreen = '/buffer_screen';

  static const String getAnAnswerScreen = '/get_an_answer_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        appScreen: AppScreen.builder,
        welcomeScreenOneScreen: WelcomeScreenOneScreen.builder,
        welcomeScreenTwoScreen: WelcomeScreenTwoScreen.builder,
        welcomeScreenThreeScreen: WelcomeScreenThreeScreen.builder,
        dashboardOneScreen: DashboardOneScreen.builder,
        emptyConversationScreen: EmptyConversationScreen.builder,
        startAConversationScreen: StartAConversationScreen.builder,
        askAQuestionScreen: AskAQuestionScreen.builder,
        bufferScreen: BufferScreen.builder,
        getAnAnswerScreen: GetAnAnswerScreen.builder,
        dashboardScreen: DashboardScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: AppScreen.builder
      };
}
